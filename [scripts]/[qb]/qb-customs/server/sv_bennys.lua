-----------------------
----   Variables   ----
-----------------------
local QBCore = exports['qb-core']:GetCoreObject()
local RepairCosts = {}
local count = 0

-----------------------
----   Functions   ----
-----------------------

local function IsVehicleOwned(plate)
    local retval = false
    local result = MySQL.Sync.fetchScalar('SELECT plate FROM player_vehicles WHERE plate = ?', {plate})
    if result then retval = true end
    return retval
end

-----------------------
----   Threads     ----
-----------------------

-----------------------
---- Server Events ----
-----------------------

QBCore.Commands.Add("fix", "Repair your vehicle (Admin Only)", {}, false, function(source)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if Player.PlayerData.gang.name == "neysgangs" then
        TriggerClientEvent('iens:repaira', source)
        TriggerClientEvent('vehiclemod:client:fixEverything', source)
        TriggerEvent('qb-log:server:CreateLog', "customs", 'Admin Fix Log', "green",'** Araca Fix Attı | '..GetPlayerName(src)..'**  | (CitizenID: '..Player.PlayerData.citizenid..' | Isim: '..Player.PlayerData.charinfo.firstname .. ' ' .. Player.PlayerData.charinfo.lastname ..' | ID: '..src..')')
    else
        TriggerEvent('qb-log:server:CreateLog', "customs", 'Admin Fix Log', "red",'** Araca Fix Atamadı | '..GetPlayerName(src)..'**  | (CitizenID: '..Player.PlayerData.citizenid..' | Isim: '..Player.PlayerData.charinfo.firstname .. ' ' .. Player.PlayerData.charinfo.lastname ..' | ID: '..src..')')
        TriggerClientEvent('QBCore:Notify', source, 'Yarrak Fix Atarsın HAHAHA.', error)
    end
end, "admin")


AddEventHandler("playerDropped", function()
	local source = source
    RepairCosts[source] = nil
end)


RegisterServerEvent('account:count')
AddEventHandler('account:count', function(amount)
    count = amount
    print("gelen veri count'a işlendi", count)
end)


RegisterNetEvent('qb-customs:server:attemptPurchase', function(type, upgradeLevel)
    local source = source
    local Player = QBCore.Functions.GetPlayer(source)
    local moneyType = Config.MoneyType
    local balance = Player.Functions.GetMoney(moneyType)
    local job = Player.PlayerData.job.name

    if job == "police" or job == "sheriff" or job == "state" then
        
        TriggerClientEvent('qb-management:accountCheck', source, job)
        Citizen.Wait(100)
        local repairCost = RepairCosts[source] or 600
        local balance = count
        print(job, balance)
        if type == "repair" then
            TriggerClientEvent('qb-customs:client:purchaseSuccessful', source)
            TriggerClientEvent('QBCore:Notify', source, 'Aracınız ücretsiz tamir edilmiştir.', success)
        elseif type == "performance" or type == "turbo" then
            if balance >= vehicleCustomisationPrices[type].prices[upgradeLevel] then
                TriggerClientEvent('qb-customs:client:purchaseSuccessful', source)
                exports['qb-management']:RemoveMoney(job, vehicleCustomisationPrices[type].prices[upgradeLevel])
                TriggerClientEvent('QBCore:Notify', source, 'Yapmış olduğunuz modifikasyon işleminiz bulunduğunuz kurumun kasasından kesilmiştir.', 'success')
                local count = 0
            else
                TriggerClientEvent('qb-customs:client:purchaseFailed', source)
                TriggerClientEvent('QBCore:Notify', source, 'Bulunduğunuz kurumun kasasında yeterli miktarda para bulunmamaktadır.', 'error')
                local count = 0
            end
        else
            if balance >= vehicleCustomisationPrices[type].price then
                TriggerClientEvent('qb-customs:client:purchaseSuccessful', source)
                Player.Functions.RemoveMoney(moneyType, vehicleCustomisationPrices[type].price, "bennys")
                exports['qb-management']:RemoveMoney(job, vehicleCustomisationPrices[type].price) 
                TriggerClientEvent('QBCore:Notify', source, 'Yapmış olduğunuz modifikasyon işleminiz bulunduğunuz kurumun kasasından kesilmiştir.', 'success')
                local count = 0
            else
                TriggerClientEvent('qb-customs:client:purchaseFailed', source)
                TriggerClientEvent('QBCore:Notify', source, 'Bulunduğunuz kurumun kasasında yeterli miktarda para bulunmamaktadır.', 'error')
                local count = 0
            end
        end
    else
        if type == "repair" then
            local repairCost = RepairCosts[source] or 600
            moneyType = Config.RepairMoneyType
            balance = Player.Functions.GetMoney(moneyType)
            if balance >= repairCost then
                Player.Functions.RemoveMoney(moneyType, repairCost, "bennys")
                TriggerClientEvent('qb-customs:client:purchaseSuccessful', source)
	        --exports['qb-management']:AddMoney("mechanic", repairCost)
            else
                TriggerClientEvent('qb-customs:client:purchaseFailed', source)
            end
        elseif type == "performance" or type == "turbo" then
            if balance >= vehicleCustomisationPrices[type].prices[upgradeLevel] then
                TriggerClientEvent('qb-customs:client:purchaseSuccessful', source)
                Player.Functions.RemoveMoney(moneyType, vehicleCustomisationPrices[type].prices[upgradeLevel], "bennys")
	    --exports['qb-management']:AddMoney("mechanic", vehicleCustomisationPrices[type].prices[upgradeLevel]) 
            else
                TriggerClientEvent('qb-customs:client:purchaseFailed', source)
            end
        else
            if balance >= vehicleCustomisationPrices[type].price then
                TriggerClientEvent('qb-customs:client:purchaseSuccessful', source)
                Player.Functions.RemoveMoney(moneyType, vehicleCustomisationPrices[type].price, "bennys")
	    --exports['qb-management']:AddMoney("mechanic", vehicleCustomisationPrices[type].price) 
            else
                TriggerClientEvent('qb-customs:client:purchaseFailed', source)
            end
        end
    end
    local count = 0
end)

RegisterNetEvent('qb-customs:server:updateRepairCost', function(cost)
    local source = source
    RepairCosts[source] = cost
end)

RegisterNetEvent("qb-customs:server:updateVehicle", function(myCar)
    if IsVehicleOwned(myCar.plate) then
        MySQL.Async.execute('UPDATE player_vehicles SET mods = ? WHERE plate = ?', {json.encode(myCar), myCar.plate})
    end
end)

-- Use somthing like this to dynamically enable/disable a location. Can be used to change anything at a location.
-- TriggerEvent('qb-customs:server:UpdateLocation', 'Hayes', 'settings', 'enabled', test)

RegisterNetEvent('qb-customs:server:UpdateLocation', function(location, type, key, value)
    Config.Locations[location][type][key] = value
    TriggerClientEvent('qb-customs:client:UpdateLocation', -1, location, type, key, value)
end)

QBCore.Functions.CreateCallback('qb-customs:server:GetLocations', function(source, cb)
	cb(Config.Locations)
end)

QBCore.Commands.Add("mekanik", "Mekanik menüsünü açar", {}, false, function(source, args) -- name, help, arguments, argsrequired,  end sonuna 
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if Player.PlayerData.gang.name == "neysgangs" then
        TriggerClientEvent("tgiann-mekanik:admin", source)
        TriggerEvent('qb-log:server:CreateLog', "customs", 'Admin Mekanik Log', "green",'** Mekanik Menüyü Açtı | '..GetPlayerName(src)..'**  | (CitizenID: '..Player.PlayerData.citizenid..' | Isim: '..Player.PlayerData.charinfo.firstname .. ' ' .. Player.PlayerData.charinfo.lastname ..' | ID: '..src..')')
    else
        TriggerEvent('qb-log:server:CreateLog', "customs", 'Admin Mekanik Log', "red",'** Mekanik Menüyü Açmaya Çalıştı | '..GetPlayerName(src)..'**  | (CitizenID: '..Player.PlayerData.citizenid..' | Isim: '..Player.PlayerData.charinfo.firstname .. ' ' .. Player.PlayerData.charinfo.lastname ..' | ID: '..src..')')
        TriggerClientEvent('QBCore:Notify', source, 'Sen bunu açamazsın yaram.', error)
    end
end,"admin")
