if AK4Y.Framework == "qb" then
    QBCore = exports['qb-core']:GetCoreObject()
elseif AK4Y.Framework == "oldqb" then 
    QBCore = nil
    TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)
end

local tasks = {}
Citizen.CreateThread(function()
    for k, v in pairs(AK4Y.Tasks) do 
        tasks[k] = {}
        tasks[k].taskId = v.taskId
        tasks[k].taken = false
        tasks[k].hasCount = 0
        tasks[k].requiredCount = v.requiredcount
        tasks[k].rewardEXP = v.rewardXP
    end
    Citizen.Wait(3000)
    ExecuteSql("UPDATE ak4y_blackmarket SET tasks = '"..json.encode(tasks).."', taskResetTime = (CURDATE() + INTERVAL "..AK4Y.TaskResetPeriod.." DAY) WHERE taskResetTime <= CURDATE()")
end)

QBCore.Functions.CreateCallback('ak4y-blackmarket:getPlayerDetails', function(source, cb)
    local src = source
    local identifier = GetPlayerIdentifiers(src)[1]
    local steamid = tonumber(identifier:gsub("steam:",""), 16)
    local xPlayer = QBCore.Functions.GetPlayer(src)
    local citizenId = xPlayer.PlayerData.citizenid
    local todayRewardDay = todayReward
    local callbackData = {}
    local result = ExecuteSql("SELECT * FROM ak4y_blackmarket WHERE citizenid = '"..citizenId.."'")
    if result[1] == nil then    
        ExecuteSql("INSERT INTO ak4y_blackmarket SET citizenid = '"..citizenId.."', tasks = '"..json.encode(tasks).."', currentXP = '0', taskResetTime = (CURDATE() + INTERVAL "..AK4Y.TaskResetPeriod.." DAY)")
        callbackData = {
            tasks = json.encode(tasks),
            currentXP = 0,
            apiKey = SteamApiKey,
            steamid = steamid,
        }
    else
        callbackData = {
            tasks = result[1].tasks, 
            currentXP = result[1].currentXP,
            taskResetTime = result[1].taskResetTime,
            apiKey = SteamApiKey,
            steamid = steamid,
        }
    end
    cb(callbackData)
end)

QBCore.Functions.CreateCallback('ak4y-blackmarket:taskDone', function(source, cb, data)
    local _source = source
    local xPlayer = QBCore.Functions.GetPlayer(_source)
    local citizenId = xPlayer.PlayerData.citizenid
    local currentTaskId = tonumber(data.taskId)
    local result = ExecuteSql("SELECT tasks FROM ak4y_blackmarket WHERE citizenid = '"..citizenId.."'")
    local correct = false
    if result[1] then 
        local tasks = json.decode(result[1].tasks)
        for k, v in pairs(tasks) do 
            if currentTaskId == v.taskId then 
                if v.hasCount >= v.requiredCount and not v.taken then 
                    correct = true
                    v.taken = true
                    local addEXP = v.rewardEXP
                    ExecuteSql("UPDATE ak4y_blackmarket SET tasks = '"..json.encode(tasks).."', currentXP = currentXP + '"..addEXP.."' WHERE citizenid = '"..citizenId.."'")
                    cb(addEXP)
                else
                    cb(false)
                end
                break
            end
        end
    end
    if not correct then 
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('ak4y-blackmarket:buyCart', function(source, cb, data)
    local _source = source
    local xPlayer = QBCore.Functions.GetPlayer(_source)
    local citizenId = xPlayer.PlayerData.citizenid
    local myCart = data.sendCart
    local totalPrice = tonumber(data.totalPrice)
    local currentBank = 0
    local currentCash = 0
    if AK4Y.Framework == "qb" then
        currentBank = xPlayer.Functions.GetMoney('bank')
        currentCash = xPlayer.Functions.GetMoney('cash')
    elseif AK4Y.Framework == "oldqb" then 
        currentBank = xPlayer.PlayerData.money['bank']
        currentCash = xPlayer.PlayerData.money['cash']
    end
    local paymentIsOkay = false
    if data.paymentMethod == "cash" then 
        if currentCash >= totalPrice then 
            paymentIsOkay = true
            xPlayer.Functions.RemoveMoney('cash', totalPrice)
        end
    elseif data.paymentMethod == "bank" then 
        if currentBank >= totalPrice then 
            paymentIsOkay = true
            xPlayer.Functions.RemoveMoney('bank', totalPrice)
        end
    end
    if paymentIsOkay then
        for k, v in pairs(myCart) do 
            local myItem = v.itemData
            local count = v.count
            if myItem.type == "ITEM" then 
                xPlayer.Functions.AddItem(myItem.itemName, myItem.count * count)
            elseif myItem.type == "WEAPON" then 
                for i = 1, myItem.count * count, 1 do 
                    xPlayer.Functions.AddItem(myItem.itemName, 1)
                end
            elseif myItem.type == "VEHICLE" then 
                for i = 1, myItem.count * count do 
                    local plate = GeneratePlate()
                    ExecuteSql("INSERT INTO player_vehicles (license, citizenid, vehicle, hash, mods, plate, garage, state) VALUES ('"..xPlayer.PlayerData.license.."', '"..citizenId.."', '"..myItem.itemName.."', '"..GetHashKey(myItem.itemName).."', '{}', '"..plate.."', '"..AK4Y.DefaultGarage.."', 1)")
                end
            elseif myItem.type == "MONEY" then 
                xPlayer.Functions.AddMoney('cash', myItem.count * count)
            end
        end
        cb(true)
    else
        cb(false)
    end
end)

function GeneratePlate()
    local plate = QBCore.Shared.RandomInt(1) .. QBCore.Shared.RandomStr(2) .. QBCore.Shared.RandomInt(3) .. QBCore.Shared.RandomStr(2)
    local send = false
    local result = ExecuteSql("SELECT plate FROM player_vehicles WHERE plate = '"..plate.."'")
    if result[1] then
        return GeneratePlate()
    else
        return plate:upper()
    end
end

RegisterNetEvent('ak4y-blackmarket:addXP')
AddEventHandler('ak4y-blackmarket:addXP', function(amount)
    local _source = source
    local xPlayer = QBCore.Functions.GetPlayer(_source)
    local citizenId = xPlayer.PlayerData.citizenid
    local deger = tonumber(amount)
    ExecuteSql("UPDATE ak4y_blackmarket SET currentXP = currentXP + '"..deger.."' WHERE citizenid = '"..citizenId.."'")
end)

RegisterNetEvent('ak4y-blackmarket:taskCountAdd')
AddEventHandler('ak4y-blackmarket:taskCountAdd', function(taskId, count)
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)
    local citizenId = xPlayer.PlayerData.citizenid
    local result = ExecuteSql("SELECT tasks FROM ak4y_blackmarket WHERE citizenid = '"..citizenId.."'")
    if result[1] then 
        local kayit = true
        local resultak4y = json.decode(result[1].tasks)
        for k, v in pairs(resultak4y) do 
            if tonumber(v.taskId) == tonumber(taskId) then 
                if v.taken or v.hasCount >= v.requiredCount then 
                    kayit = false
                end
                v.hasCount = v.hasCount + tonumber(count)
                if v.hasCount > v.requiredCount then 
                    v.hasCount = v.requiredCount
                end
                break
            end
        end
        if kayit then 
            ExecuteSql("UPDATE ak4y_blackmarket SET tasks = '"..json.encode(resultak4y).."' WHERE citizenid = '"..citizenId.."'")
        end
    end
end)

function ExecuteSql(query)
    local IsBusy = true
    local result = nil
    if AK4Y.Mysql == "oxmysql" then
        if MySQL == nil then
            exports.oxmysql:execute(query, function(data)
                result = data
                IsBusy = false
            end)
        else
            MySQL.query(query, {}, function(data)
                result = data
                IsBusy = false
            end)
        end
    elseif AK4Y.Mysql == "ghmattimysql" then
        exports.ghmattimysql:execute(query, {}, function(data)
            result = data
            IsBusy = false
        end)
    elseif AK4Y.Mysql == "mysql-async" then   
        MySQL.Async.fetchAll(query, {}, function(data)
            result = data
            IsBusy = false
        end)
    end
    while IsBusy do
        Citizen.Wait(0)
    end
    return result
end