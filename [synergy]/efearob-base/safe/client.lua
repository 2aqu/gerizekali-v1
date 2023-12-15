local QBCore = exports['qb-core']:GetCoreObject()
local belinesok = false

RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
	local PlayerJob = QBCore.Functions.GetPlayerData().job.name
	if PlayerJob == 'police' or PlayerJob == 'sheriff' or PlayerJob == 'ambulance' then
		belinesok = true
	end
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate')
AddEventHandler('QBCore:Client:OnJobUpdate', function()
	local PlayerJob = QBCore.Functions.GetPlayerData().job.name
	if PlayerJob == 'police' or PlayerJob == 'sheriff' or PlayerJob == 'ambulance' then
		belinesok = true
	else
		belinesok = false
	end
end)


local icinde = false
local disinda = false
local guvenliBolge = 1

Citizen.CreateThread(function()
	while true do
		local playerPed = PlayerPedId()
		local x, y, z = table.unpack(GetEntityCoords(playerPed))
		for i = 1, #Safe['bolge'], 1 do
			dist = Vdist(Safe['bolge'][i].x, Safe['bolge'][i].y, Safe['bolge'][i].z, x, y, z)
			if dist < Safe['bolge'][i].alan then
				guvenliBolge = i
			end
		end
		Citizen.Wait(15000)
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local player = PlayerPedId()
		local x,y,z = table.unpack(GetEntityCoords(player))
		local dist = Vdist(Safe['bolge'][guvenliBolge].x, Safe['bolge'][guvenliBolge].y, Safe['bolge'][guvenliBolge].z, x, y, z)
		if dist <= Safe['bolge'][guvenliBolge].alan then
			if not belinesok then
				if dist <= Safe['bolge'][guvenliBolge].alan then
					if not icinde then
						icinde = true
						disinda = false
					end
				else
					if not disinda then
						disinda = true
						icinde = false
					end
				end
				if icinde then
					DisableControlAction(2, 37, true)
					DisableControlAction(0, 106, true)
					DisableControlAction(0, 140, true)
					DisablePlayerFiring(player, true)
					N_0x4757f00bc6323cfe(-1553120962, 0.0)
					veh = GetGamePool('CVehicle')
					SetCurrentPedWeapon(player, GetHashKey("WEAPON_UNARMED"), true) 
					for k,v in pairs(veh) do
						SetEntityNoCollisionEntity(v, PlayerPedId(), true)
					end
				end
			end
		end
	end
end)
