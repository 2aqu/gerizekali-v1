local Core

Config.Framework = "STANDALONE"

TriggerEvent("__cfx_export_qb-core_GetCoreObject", function(getCore)
    Core = getCore()
    Config.Framework = "QBCore"
end)

TriggerEvent("__cfx_export_es_extended_getSharedObject", function(getCore)
    Core = getCore()
    Config.Framework = "ESX"
end)

CreateThread(function()
    Citizen.Wait(1000)
    if Core == nil then
        TriggerEvent("esx:getSharedObject", function(obj)
            Core = obj
            Config.Framework = "ESX"
        end)
    end
end)

local cachedNames = {}
function GetPlayerIdentity(source)
    if cachedNames[source] ~= nil then
        return cachedNames[source]
    end

    if Config.Framework == "QBCore" then
        local xPlayer = Core.Functions.GetPlayer(source)

        local timeout = 50
        while xPlayer == nil and timeout > 0 do
            Citizen.Wait(100)
            xPlayer = Core.Functions.GetPlayer(source)
            timeout = timeout - 1
        end

        if xPlayer == nil then return "Example Name" end

        cachedNames[source] = xPlayer.PlayerData.charinfo.firstname .. " " .. xPlayer.PlayerData.charinfo.lastname 
    elseif Config.Framework == "ESX" then
        local xPlayer = Core.GetPlayerFromId(source)

        local timeout = 50
        while xPlayer == nil and timeout > 0 do
            Citizen.Wait(100)
            xPlayer = Core.GetPlayerFromId(source)
            timeout = timeout - 1
        end

        if xPlayer == nil then return "Example Name" end
    
        cachedNames[source] = xPlayer.getName()
    else
        cachedNames[source] = GetPlayerName(source)
    end

    return cachedNames[source]
end    
     
function GetPlayerIdentifierFromId(src)
    if Config.Framework == "QBCore" then
        return Core.Functions.GetPlayer(src).PlayerData.citizenid
    elseif Config.Framework == "ESX" then
        return Core.GetPlayerFromId(src).getIdentifier()
    else
        local license = ""
        for k, v in ipairs(GetPlayerIdentifiers(src)) do
            if string.match(v, "license:") then
               license = v
               break
            end
        end

        return license
    end
end

function Notify(source, msg)
    if Config.UseBuiltInNotifications and Config.useModernUI then
        TriggerClientEvent("17mov_DrawDefaultNotification"..GetCurrentResourceName(), source, msg)
    else
        if Config.Framework == "QBCore" then
            TriggerClientEvent("QBCore:Notify", source, msg)
        elseif Config.Framework == "ESX" then
            TriggerClientEvent("esx:showNotification", source, msg)
        else
            TriggerClientEvent("17mov_DrawDefaultNotification"..GetCurrentResourceName(), source, msg)
        end
    end
end

function Pay(source, amount)
    if Config.Framework == "QBCore" then
        local Player = Core.Functions.GetPlayer(source)
        if Player ~= nil and Player.Functions ~= nil then
            Player.Functions.AddMoney("cash", amount)

            for _, item in pairs(Config.RewardItemsToGive) do
                if math.random(100) <= item.chance then
                    if math.floor(item.amountPerFix) >= 1 then
                        Player.Functions.AddItem(item.item_name, math.floor(item.amountPerFix))
                    end
                end
            end
        end
    elseif Config.Framework == "ESX" then
        local xPlayer = Core.GetPlayerFromId(source)
        if xPlayer ~= nil and xPlayer.addMoney ~= nil then
            xPlayer.addMoney(amount)

            for _, item in pairs(Config.RewardItemsToGive) do
                if math.random(100) <= item.chance then
                    if math.floor(item.amountPerFix) >= 1 then
                        xPlayer.addInventoryItem(item.item_name, math.floor(item.amountPerFix))
                    end
                end
            end
        end
    else
        -- Configure here ur payment
    end
end

function RemoveMoney(src, amount)
    if Config.Framework == "QBCore" then
        local Player = Core.Functions.GetPlayer(source)
        if Player ~= nil and Player.Functions ~= nil then
            Player.Functions.RemoveMoney("cash", amount)
        end
    elseif Config.Framework == "ESX" then
        local xPlayer = Core.GetPlayerFromId(source)
        if xPlayer ~= nil and xPlayer.removeMoney ~= nil then
            xPlayer.removeMoney(amount)
        end
    else
        -- Configure here ur remove money func
    end
end

function GetPlayerMoney()
    if Config.Framework == "QBCore" then
        local Player = Core.Functions.GetPlayer(source)
        return Player.PlayerData.money["cash"]
    elseif Config.Framework == "ESX" then
        local xPlayer = Core.GetPlayerFromId(source)
        return xPlayer.getMoney()
    else
        return Config.VehicleDeposit
    end
end

function isHaveRequiredItem(source)
    if Config.RequiredItem ~= "none" then
        if Config.Framework == "QBCore" then
            local counter = 0
            for k,v in pairs(Core.Functions.GetPlayer(source).PlayerData.items) do
                if v.name == Config.RequiredItem then
                    counter = counter + v.amount
                    if v.amount > 0 then break end
                end
            end

            return counter > 0
        elseif Config.Framework == "ESX" then
            return Core.GetPlayerFromId(source).getInventoryItem(Config.RequiredItem).count > 0
        end
    end

    return true
end

function GetPlayerJob(source)
    if source == nil or type(source) ~= "number" then return "unknown" end
    if Config.Framework == "QBCore" then
        return Core.Functions.GetPlayer(source).PlayerData.job.name or "unknown"
    elseif Config.Framework == "ESX" then
        return Core.GetPlayerFromId(source).job.name or "unknown"
    else
        return "unknown"
    end
end

PlayerCourses = {}

if Config.Framework == "QBCore" then

    AddEventHandler('onResourceStart', function(resourceName)
        if (GetCurrentResourceName() ~= resourceName) then return end
        local xPlayers = Core.Functions.GetPlayers()
        MySQL.Async.fetchAll('SELECT * FROM players', {}, function(result)
            for k,v in pairs(xPlayers) do
                local xPlayer = Core.Functions.GetPlayer(v)
                for k,v in pairs(result) do
                    if xPlayer.PlayerData.citizenid == v.citizenid then
                        PlayerCourses[v.citizenid] = v.electrocourses
                    end
                end
            end
        end)
    end)

    AddEventHandler('onResourceStop', function(resourceName)
        if (GetCurrentResourceName() ~= resourceName) then return end
        for k,v in pairs(PlayerCourses) do
            MySQL.Async.execute('UPDATE players SET electrocourses = @electroCourses WHERE citizenid = @identifier', {
                ['@electroCourses']     = v,
                ['@identifier']         = k
            })
        end
    end)
    
    AddEventHandler('QBCore:Server:PlayerLoaded', function(xPlayer)
        MySQL.Async.fetchAll('SELECT * FROM players WHERE citizenid = @identifier', {
            ['@identifier'] = xPlayer.PlayerData.citizenid
        }, function(result)
            if result[1] ~= nil and result[1].electrocourses ~= nil then
                PlayerCourses[xPlayer.PlayerData.citizenid] = result[1].electrocourses
            end
        end)
    end)
    
    AddEventHandler('playerDropped', function()
        local player = Core.Functions.GetPlayer(source)
        if player ~= nil and player.PlayerData ~= nil then
            local identifier = player.PlayerData.citizenid
            MySQL.Async.execute('UPDATE players SET electrocourses = @electroCourses WHERE citizenid = @identifier', {
                ['@electroCourses'] = PlayerCourses[identifier],
                ['@identifier'] = identifier
            })
        end
    end)
    
    RegisterNetEvent("QBCore:Server:OnPlayerUnload", function(source)
        local identifier = Core.Functions.GetPlayer(source).PlayerData.citizenid
        MySQL.Async.execute('UPDATE players SET electrocourses = @electroCourses WHERE citizenid = @identifier', {
            ['@electroCourses']     = PlayerCourses[identifier],
            ['@identifier'] = identifier
        })
    end)

    CreateThread(function()
        while RegisterServerCallback == nil do
            Citizen.Wait(100)
        end

        RegisterServerCallback("17mov_Electrician:GetMyLevel", function(source)
            local xPlayer = Core.Functions.GetPlayer(source)
            local levels = {{name = Config.Lang["easyLevel"], class = "easyBtn"}}
            local courses = PlayerCourses[xPlayer.PlayerData.citizenid]
            if courses == nil then
                PlayerCourses[xPlayer.PlayerData.citizenid] = 0
                courses = 0
            end

            if courses >= Config.MinimumCoursesToMedium then
                table.insert(levels, {name = Config.Lang["mediumLevel"], class = "mediumBtn"})
            end

            if courses >= Config.MinimumCoursesToHard then
                table.insert(levels, {name = Config.Lang["hardLevel"], class = "dontShowTutorialBtn"})
            end

            return(levels)
        end)
    end)
elseif Config.Framework == "ESX" then
    AddEventHandler('onResourceStart', function(resourceName)
        if (GetCurrentResourceName() ~= resourceName) then return end
        local xPlayers = Core.GetPlayers()
        MySQL.Async.fetchAll('SELECT * FROM users', {}, function(result)
            for k,v in pairs(xPlayers) do
                local xPlayer = Core.GetPlayerFromId(v)
                for k,v in pairs(result) do
                    if xPlayer.getIdentifier() == v.identifier then
                        PlayerCourses[v.identifier] = v.electrocourses
                    end
                end
            end
        end)
    end)
      
    AddEventHandler('onResourceStop', function(resourceName)
        if (GetCurrentResourceName() ~= resourceName) then return end

        while Core == nil do Citizen.Wait(100) end
        
        local xPlayers = Core.GetPlayers()
        for k,v in pairs(PlayerCourses) do
            MySQL.Async.execute('UPDATE users SET electrocourses = @electroCourses WHERE identifier = @identifier', {
                    ['@electroCourses']     = v,
                    ['@identifier']         = k
            })
        end
    end)
    
    AddEventHandler('esx:playerLoaded', function(source)
        if source ~= nil then
            local xPlayer = Core.GetPlayerFromId(source)
            MySQL.Async.fetchAll('SELECT * FROM users WHERE identifier = @identifier', {
                ['@identifier'] = xPlayer.identifier
            }, function(result)
                if result[1] ~= nil and result[1].electrocourses ~= nil then
                    PlayerCourses[xPlayer.identifier] = result[1].electrocourses
                end
            end)
        end
    end)
    
    AddEventHandler('esx:playerDropped', function(source)
        if source ~= nil then
            local xPlayer = Core.GetPlayerFromId(source)
            local courses = PlayerCourses[xPlayer.identifier]
            MySQL.Async.execute('UPDATE users SET electrocourses = @electroCourses WHERE identifier = @identifier', {
                ['@electroCourses']     = courses,
                ['@identifier'] = xPlayer.identifier
            })
        end
    end)

    CreateThread(function()
        while RegisterServerCallback == nil do
            Citizen.Wait(100)
        end
    
        RegisterServerCallback("17mov_Electrician:GetMyLevel", function(source)
            local xPlayer = Core.GetPlayerFromId(source)
            local levels = {{name = Config.Lang["easyLevel"], class = "easyBtn"}}
            local courses = PlayerCourses[xPlayer.identifier]
    
            if courses == nil then
                PlayerCourses[xPlayer.identifier] = 0
                courses = 0
            end

            if courses >= Config.MinimumCoursesToMedium then
                table.insert(levels, {name = Config.Lang["mediumLevel"], class = "mediumBtn"})
            end

            if courses >= Config.MinimumCoursesToHard then
                table.insert(levels, {name = Config.Lang["hardLevel"], class = "dontShowTutorialBtn"})
            end
    
            return(levels)
        end)
    end)
else
    CreateThread(function()
        Citizen.Wait(5000) -- Wait for server.lua to load
        RegisterServerCallback("17mov_Electrician:GetMyLevel", function(source)
            return({
                {name = Config.Lang["easyLevel"], class = "easyBtn"},
                {name = Config.Lang["mediumLevel"], class = "mediumBtn"},
                {name = Config.Lang["hardLevel"], class = "dontShowTutorialBtn"}
            })
        end)
    end)
end
