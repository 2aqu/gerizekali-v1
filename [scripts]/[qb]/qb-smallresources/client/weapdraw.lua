QBCore = exports['qb-core']:GetCoreObject()
local holstered  = true
local canFire = true
local blocked	 = false
local PlayerData = {}

AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    local player = QBCore.Functions.GetPlayerData()
    job = player.job.name
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    local player = QBCore.Functions.GetPlayerData()
    job = player.job.name
end)

local weapons = {
    -- [-1716189206] = "WEAPON_KNIFE",
    -- [1737195953] = "WEAPON_NIGHTSTICK",
    -- [1317494643] = "WEAPON_HAMMER",
    -- [-1786099057] = "WEAPON_BAT",
    -- [1141786504] = "WEAPON_GOLFCLUB",
    -- [-2067956739] = "WEAPON_CROWBAR",
    -- [911657153] = "WEAPON_STUNGUN",
    -- [-102323637] = "WEAPON_BOTTLE",
    -- [1627465347] = "WEAPON_GUSENBERG",
    -- [-1834847097] = "WEAPON_DAGGER",
    -- [-656458692] = "WEAPON_KNUCKLE",
    -- [-581044007] = "WEAPON_MACHETE",
    -- [-853065399] = "WEAPON_BATTLEAXE",
    -- [-1810795771] = "WEAPON_POOLCUE",
	-- [419712736] = "WEAPON_WRENCH",
	-- [GetHashKey("weapon_ufkltl")],
	-- [GetHashKey("WEAPON_BEANBAGSHOTGUN")],

    -- -- GGC Custom Weapons -- Melees
    -- [GetHashKey("WEAPON_KATANA")],
    -- [GetHashKey("WEAPON_SHIV")],
    -- [GetHashKey("WEAPON_SLEDGEHAMMER")],
    -- [GetHashKey("WEAPON_KARAMBIT")],
    -- [GetHashKey("WEAPON_KEYBOARD")],
    -- -- GGC Custom Weapons -- Hand Guns
    -- [GetHashKey("WEAPON_GLOCK17")],
    -- [GetHashKey("WEAPON_GLOCK18C")],
    -- [GetHashKey("WEAPON_GLOCK22")],
    -- [GetHashKey("WEAPON_DEAGLE")],
    -- [GetHashKey("WEAPON_FNX45")],
    -- [GetHashKey("WEAPON_M1911")],
    -- [GetHashKey("WEAPON_GLOCK20")],
    -- [GetHashKey("WEAPON_GLOCK19GEN4")],
	-- [GetHashKey("WEAPON_P320B")],
    -- -- GGC Custom Weapons -- SMGs
    -- [GetHashKey("WEAPON_PMXFM")],
    -- [GetHashKey("WEAPON_MAC10")],
    -- -- GGC Custom Weapons -- Rifles
    -- [GetHashKey("WEAPON_SCARSC")],
    -- [GetHashKey("WEAPON_AK47")],
	-- [GetHashKey("WEAPON_M6IC")],
	-- [GetHashKey("WEAPON_MPX")],
	-- [GetHashKey("WEAPON_AKS74")],
	-- [GetHashKey("WEAPON_COMPACTRIFLE")],
}

CreateThread(function()
	while true do
		Wait(1)
		local ped = PlayerPedId()

		if not IsPedInAnyVehicle(ped, false) then
			if job ~= nil and (job == 'police' or job == 'vpd' or job == 'dppd' or job == 'doj' or job == 'fbi' or job == 'state' or job == 'sheriff' or job == 'ranger' or job == 'davison') then
				local weaponHash = GetSelectedPedWeapon(ped)
				if weapons[weaponHash] then
					if holstered then
                        canFire = false
						loadAnimDict("reaction@intimidation@cop@unarmed")
						TaskPlayAnim(ped, "reaction@intimidation@cop@unarmed", "intro", 10.0, 2.3, -1, 49, 1, 0, 0, 0 )
						Wait(600)
						StopAnimTask(ped, 'reaction@intimidation@cop@unarmed', 'intro', 1.0)
						holstered = false
					end
                    canFire = true
				else
					if not holstered then
                        canFire = false
						loadAnimDict("reaction@intimidation@cop@unarmed")
						TaskPlayAnim(ped, "reaction@intimidation@cop@unarmed", "intro", 10.0, 2.3, -1, 49, 1, 0, 0, 0 )
						Wait(600)
						StopAnimTask(ped, 'reaction@intimidation@cop@unarmed', 'intro', 1.0)
						holstered = true
                        canFire = true
					end
				end
			else
				local weaponHash = GetSelectedPedWeapon(ped)
				if weapons[weaponHash] then
					if holstered then
                        canFire = false
						blocked   = true
						SetPedCurrentWeaponVisible(ped, 1, 1, 1, 1)
						loadAnimDict("reaction@intimidation@1h") 
						TaskPlayAnim(ped, "reaction@intimidation@1h", "intro", 3.0, 1.0, -1, 50, 0, 0, 0, 0 )
						Wait(1800)
						StopAnimTask(ped, 'reaction@intimidation@1h', 'intro', 1.0)
						holstered = false
						blocked = false
					end
                    canFire = true
				else
					if not holstered then
                        canFire = false
						blocked = true
						local animLength = GetAnimDuration("reaction@intimidation@1h", "outro") * 1000
						loadAnimDict("reaction@intimidation@1h") 
						TaskPlayAnim(ped, "reaction@intimidation@1h", "outro", 1.0, 1.0, -1, 50, 0, 0, 0, 0)   
						Wait(animLength - 2550)
						SetCurrentPedWeapon(ped, `WEAPON_UNARMED`, 1)
						Wait(300)
						StopAnimTask(ped, 'reaction@intimidation@1h', 'outro', 1.0)
						Wait(800)
						holstered = true
						blocked = false
                        canFire = true
					end
				end
			end
		else
			holstered = true
		end
	end
end)

if IsPlayerFreeAiming(PlayerId()) or IsPedShooting(playerPed) then
    DisableControlAction(1, 0, true)
end

CreateThread(function()
    while true do
        Wait(0)
        local ped = GetPlayerPed( -1 )
        local weapon = GetSelectedPedWeapon(ped)
      
        if IsPedArmed(ped, 6) then
            DisableControlAction(1, 140, true)
            DisableControlAction(1, 141, true)
            DisableControlAction(1, 142, true)
        end
      
      
        if weapon == GetHashKey("WEAPON_FIREEXTINGUISHER") then     
            if IsPedShooting(ped) then
                SetPedInfiniteAmmo(ped, true, GetHashKey("WEAPON_FIREEXTINGUISHER"))
            end
        end
    end
end)

CreateThread(function()
	if GetResourceState('ps-inventory') == 'missing' then return end -- This part is only made to work with ps-inventory, other inventories might conflict
	local sleep
	while true do
		sleep = 250
		if not canFire then
			sleep = 0
			DisableControlAction(0, 25, true)
			DisablePlayerFiring(PlayerId(), true)
		end
		Wait(sleep)
	end
end)