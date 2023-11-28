if GetResourceState('qb-core') ~= 'started' then return end
Framework = {}
Core = exports['qb-core']:GetCoreObject()
PlayerData = {}

AddStateBagChangeHandler('isLoggedIn', '', function(_bagName, _key, value, _reserved, _replicated)
    if value then
        PlayerData = Core.Functions.GetPlayerData()
    else
        table.wipe(PlayerData)
    end
end)

AddEventHandler('onResourceStart', function(resourceName)
    if GetCurrentResourceName() ~= resourceName or not LocalPlayer.state.isLoggedIn then return end
    PlayerData = Core.Functions.GetPlayerData()
end)

RegisterNetEvent('QBCore:Client:OnMoneyChange')
AddEventHandler('QBCore:Client:OnMoneyChange', function()
	PlayerData = Core.Functions.GetPlayerData()
end)

RegisterNetEvent('QBCore:Player:SetPlayerData', function(newPlayerData)
    if source ~= '' and GetInvokingResource() ~= 'qb-core' then return end
    PlayerData = newPlayerData
end)

function Framework.getJob()
    return PlayerData.job
end

function Framework.getMoney()
    return PlayerData.money['cash']
end

function Framework.GetVehicleProperties(vehicle)
    return Core.Functions.GetVehicleProperties(vehicle)
end

function Framework.SetVehicleProperties(vehicle, props)
    return Core.Functions.SetVehicleProperties(vehicle, props)
end