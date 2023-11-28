if GetResourceState('es_extended') ~= 'started' then return end
Framework = {}

Core = exports['es_extended']:getSharedObject()

if Core == nil then
    CreateThread(function()
        while Core == nil do
            TriggerEvent('esx:getSharedObject', function(obj) Core = obj end)
            Wait(0)
        end
    end)
end
PlayerLoaded, PlayerData = nil, {}

RegisterNetEvent('esx:playerLoaded', function(xPlayer)
    PlayerData = xPlayer
    PlayerLoaded = true
end)

RegisterNetEvent('esx:setAccountMoney', function()
    PlayerData = Core.GetPlayerData()
end)

RegisterNetEvent('esx:onPlayerLogout', function()
    table.wipe(PlayerData)
    PlayerLoaded = false
end)

RegisterNetEvent('esx:setJob', function(job)
    PlayerData.job = job
end)

AddEventHandler('onResourceStart', function(resourceName)
    if GetCurrentResourceName() ~= resourceName or not Core.PlayerLoaded then return end
    PlayerData = Core.GetPlayerData()
    PlayerLoaded = true
end)

AddEventHandler('esx:setPlayerData', function(key, value)
    if GetInvokingResource() ~= 'es_extended' then return end
    PlayerData[key] = value
end)

function Framework.getJob()
    PlayerData = Core.GetPlayerData().job
    return PlayerData
end

function Framework.getMoney()
    for k,v in pairs(Core.GetPlayerData()['accounts']) do
        if v.name == 'money' then
            return v.money
        end
    end
    return Core.GetPlayerData().money or 0
end

function Framework.GetVehicleProperties(vehicle)
    return Core.Game.GetVehicleProperties(vehicle)
end

function Framework.SetVehicleProperties(vehicle, props)
    return Core.Game.SetVehicleProperties(vehicle, props)
end