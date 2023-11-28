QBCore = exports['qb-core']:GetCoreObject()

AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    PlayerData = QBCore.Functions.GetPlayerData()
    isPlayerWhitelisted = PlayerWhitelisted()
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerData = QBCore.Functions.GetPlayerData()
    isPlayerWhitelisted = PlayerWhitelisted()
end)
--Citizen.CreateThread(function()
--    Wait(3000)
--    PlayerData = QBCore.Functions.GetPlayerData()
--    isPlayerWhitelisted = PlayerWhitelisted()
--end)
Weapons = {
    "weapon_glock18c",
    "weapon_ufkltl",
    "weapon_scarsc",
    "weapon_nightstick",
    "weapon_stungun",
    "weapon_m6ic",
    "weapon_mpx",
    "weapon_p320b",
    "weapon_glock19gen4",
    "weapon_beanbagshotgun"
}

Jobs = {
    "police",
    "fbi",
    "state",
    "sheriff",
    "ranger",
    "davison",
    "ambulance",
    "doj",
    "vpd",
    "dppd"
}

CreateThread(function()
    while true do
        Wait(2000)
        local player = PlayerPedId()
        if not isPlayerWhitelisted then
            for k,v in pairs(Weapons) do
                local player = PlayerPedId()
                local weapon = GetHashKey(v)
                if HasPedGotWeapon(player, weapon, false) then
                    TriggerEvent('ox_inventory:disarm', true)
                    QBCore.Functions.Notify('Bu silahı sen kullanamazsın!', "error")
                    -- RemoveWeaponFromPed(player, weapon)
                    -- TriggerServerEvent("antibadcop:server:RemoveItem", v, 1)
                    -- TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[v], "remove", 1) 
                end
            end
        end
    end
end)

function PlayerWhitelisted()
	for k,v in ipairs(Jobs) do
		if v == PlayerData.job.name then
			return true
		end
	end
	return false
end




