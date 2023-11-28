local callF = pcall
local isQB = Config.Framework == "qbcore"
function getFramework()
    local Core = {}
    if Config.Framework == "qbcore" then 
        local success, error = callF(function()
            Core = exports[Config.FrameworkCustomName or "qb-core"]:GetCoreObject()
        end)
        if not success then 
            TriggerEvent('QBCore:GetObject', function(obj) 
                Core = obj 
            end)
        end
    else
        if Config.NewESX then
            Core = exports[Config.FrameworkCustomName or "es_extended"]:getSharedObject()
        else
            TriggerEvent('esx:getSharedObject', function(obj) Core = obj end)
        end
    end
    return Core
end

Framework = getFramework()

function Framework.GetPlayer(source)
    if isQB then
        return Framework.Functions.GetPlayer(source)
    else
        return Framework.GetPlayerFromId(source)
    end
end

function Framework.GetPlayerByIdentifier(identifier)
    if isQB then
        return Framework.Functions.GetPlayerByCitizenId(identifier)
    else
        return Framework.GetPlayerFromIdentifier(identifier)
    end
end

function Framework.CreateCallback(name, func)
    if isQB then
        Framework.Functions.CreateCallback(name, function(source, cb, ...)
            cb(func(source, ...))
        end)
    else
        Framework.RegisterServerCallback(name, function(source, cb, ...)
            cb(func(source, ...))
        end)
    end
end

function Framework.GetIdentifier(source)
    local player = Framework.GetPlayer(source)
    if not player then return false end
    
    if isQB then
        return player.PlayerData.citizenid
    else
        return player.identifier
    end
end

function Framework.GetLicense(source)
    local player = Framework.GetPlayer(source)
    if not player then return false end
    
    if isQB then
        return player.PlayerData.license
    else
        return player.getIdentifier()
    end
end

function Framework.GetPlayerName(source)
    local player = Framework.GetPlayer(source)
    if not player then return false end
    
    if isQB then
        return player.PlayerData.charinfo.firstname .. " " .. player.PlayerData.charinfo.lastname
    else
        return player.name
    end
end

function Framework.GetPlayerMoney(source, type)
    local player = Framework.GetPlayer(source)
    if not player then return false end
    if isQB then
        return type == "bank" and player.PlayerData.money["bank"] or player.PlayerData.money["cash"]
    else
        local esxType = type == "bank" and "bank" or "money"
        return player.getAccount(esxType).money
    end
end

function Framework.GiveMoney(source, type, amount)
    local player = Framework.GetPlayer(source)
    if not player then return false end
    if isQB then
        player.Functions.AddMoney(type, amount)
    else
        local esxType = type == "bank" and "bank" or "money"
        player.addAccountMoney(esxType, amount, reason)
    end
end

function Framework.RemoveMoney(source, type, amount)
    local player = Framework.GetPlayer(source)
    if not player then return false end
    if isQB then
        player.Functions.RemoveMoney(type, amount)
    else
        local esxType = type == "bank" and "bank" or "money"
        player.removeAccountMoney(esxType, amount, reason)
    end
end

function Framework.Notify(source, msg, type)
    if isQB then
        Framework.Functions.Notify(source, msg, type)
    else
        if Framework.ShowNotification then
            Framework.ShowNotification(source, msg)
        else
            local player = Framework.GetPlayer(source)
            player.showNotification(msg)
        end
    end
end

function Framework.GetPlayerJob(source)
    local player = Framework.GetPlayer(source)
    if not player then return false end
    if isQB then
        return player.PlayerData.job.name
    else
        return player.job.name
    end
end

function Framework.GetPermission()
    if Framework == "esx" then
        return  {
            "superadmin",
            "admin",
            "mod",
        }
    else
        return  {
            "god",
            "admin",
        }
    end
end

function CheckPermissions(permission)
    for _,v in pairs(Framework.GetPermission()) do
        if v == permission then
            return true
        end
    end
    return false
end

function CheckIfAdmin(source)
    local src = source
    local Player = Framework.GetPlayer(src)
    if isQB then
        if Framework.Functions.HasPermission(source, Framework.GetPermission()) or IsPlayerAceAllowed(src, 'command') then
            return true
        end
        -- for old qb
        -- return CheckPermissions(Framework.Functions.GetPermission(src))
    else
        return CheckPermissions(Player.getGroup()) 
    end
    return false
end

RegisterCommand("givevehicleshop", function(source, args)
    local hasPerm = CheckIfAdmin(source)
    if not hasPerm then 
        return Framework.Notify(source, Config.Locales["svnotify"]["noperm"], "error")
    end

    local shopId = args[1]
    local shop = VehicleShops[shopId]
    if not shop then 
        return Framework.Notify(source, Config.Locales["svnotify"]["noshopfound"], "error")
    end

    local playerId = tonumber(args[2])
    local player = Framework.GetPlayer(playerId)
    if not player then 
        return Framework.Notify(source, Config.Locales["svnotify"]["noplayerfound"], "error")
    end

    shop.owner = Framework.GetIdentifier(playerId)
    Framework.Notify(source, Config.Locales["svnotify"]["businesstransfer"]:format(Framework.GetPlayerName(source)))

    GlobalState.VehicleShops = VehicleShops
    SaveShop(shopId, {'owner'})
end)

function GeneratePlate()
    -- 2 numbers, 3 letters, 3 numbers (e.g. 12ABC123)
    local plate = string.format("%02d%s%03d", math.random(0, 99), string.char(math.random(65, 90)) .. string.char(math.random(65, 90)) .. string.char(math.random(65, 90)), math.random(0, 999))
    local result = CheckPlate(plate)
    if not result then
        return GeneratePlate()
    end
    return plate
end

exports("GeneratePlate", GeneratePlate)

function GiveVehicle(source, vehicleData, shopid, data,plate)
    local identifier = Framework.GetIdentifier(source)
    local license = Framework.GetLicense(source)
    local shop = GlobalState.VehicleShops[shopid]
    local shopConfig = Config.Locations[shopid]
    local vehCategory = shopConfig.type
    SVConfig.OnVehicleBought(source, license, identifier, vehicleData.hash, plate, shopid, vehCategory)
end

RegisterCommand("addstock", function(source, args) -- /addstock [shopid] [model] [amount] [set]
    local hasPerm = CheckIfAdmin(source)
    if not hasPerm then 
        return Framework.Notify(source, Config.Locales["svnotify"]["noperm"], "error")
    end

    local shopId = args[1]
    local shop = VehicleShops[shopId]
    if not shop then 
        return Framework.Notify(source, Config.Locales["svnotify"]["noshopfound"], "error")
    end

    local model = args[2]
    local amount = tonumber(args[3])
    if not model or not amount then 
        return Framework.Notify(source, Config.Locales["svnotify"]["notfound"], "error")
    end

    local amount = tonumber(args[3]) or 1

    local set = args[4] == "1" or args[4] == "true" or false
    
    for k, category in pairs(shop.vehicles) do
        for k, vehicle in pairs(category) do
            if vehicle.hash == model then
                if set then
                    vehicle.stock = amount
                else
                    vehicle.stock = vehicle.stock + amount
                end

                Framework.Notify(source, Config.Locales["svnotify"]["stockadded"]:format(amount, vehicle.name))
                GlobalState.VehicleShops = VehicleShops
                SaveShop(shopId, {'vehicles'})
                return
            end
        end
    end

    Framework.Notify(source, Config.Locales["svnotify"]["notfound"], "error")
end)