local QBCore = exports['qb-core']:GetCoreObject()

local piggyBackInProgress = false

RegisterKeyMapping('sırt', "Yakınındaki kişiyi sırtına alır.", 'keyboard', 'F9')

RegisterCommand('sırt', function()
	local closestPlayer, distance = QBCore.Functions.GetClosestPlayer()
	if not piggyBackInProgress and not IsPedInAnyVehicle(PlayerPedId(), false) then
		if closestPlayer ~= -1 and distance < 1.5 and not IsPedInAnyVehicle(GetPlayerPed(closestPlayer), false) and not IsEntityPlayingAnim(GetPlayerPed(closestPlayer), 'misslamar1dead_body', 'dead_idle', 3) then
			target = GetPlayerServerId(closestPlayer)
			piggyBackInProgress = true
			local player = PlayerPedId()	
			lib = 'anim@arena@celeb@flat@paired@no_props@'
			anim1 = 'piggyback_c_player_a'
			anim2 = 'piggyback_c_player_b'
			distans = -0.07
			distans2 = 0.0
			height = 0.45
			spin = 0.0		
			length = 100000
			controlFlagMe = 49
			controlFlagTarget = 33
			animFlagTarget = 1
			TriggerServerEvent('cmg2_animations:sync', closestPlayer, lib, anim1, anim2, distans, distans2, height, target, length, spin, controlFlagMe, controlFlagTarget, animFlagTarget)
		else
			QBCore.Functions.Notify('Çevrende sırtına alabileceğin kimse yok!', 'error')
		end
	else
		if closestPlayer ~= -1 and distance < 1.5 then
			piggyBackInProgress = false
			ClearPedSecondaryTask(PlayerPedId())
			DetachEntity(PlayerPedId(), true, false)
			target = GetPlayerServerId(closestPlayer)
			TriggerServerEvent("cmg2_animations:stop", target)
		else
			QBCore.Functions.Notify('Çevrende sırtına alabileceğin kimse yok!', 'error')
		end
	end
end)


RegisterNetEvent('cmg2_animations:syncTarget')
AddEventHandler('cmg2_animations:syncTarget', function(target, animationLib, animation2, distans, distans2, height, length,spin,controlFlag)
	local playerPed = PlayerPedId()
	local targetPed = GetPlayerPed(GetPlayerFromServerId(target))
	piggyBackInProgress = true
	RequestAnimDict(animationLib)

	while not HasAnimDictLoaded(animationLib) do
		Wait(10)
	end
	if spin == nil then spin = 180.0 end
	AttachEntityToEntity(PlayerPedId(), targetPed, 0, distans2, distans, height, 0.5, 0.5, spin, false, false, false, false, 2, false)
	if controlFlag == nil then controlFlag = 0 end
	TaskPlayAnim(playerPed, animationLib, animation2, 8.0, -8.0, length, controlFlag, 0, false, false, false)
end)

RegisterNetEvent('cmg2_animations:syncMe')
AddEventHandler('cmg2_animations:syncMe', function(animationLib, animation,length,controlFlag,animFlag)
	local playerPed = PlayerPedId()
	RequestAnimDict(animationLib)

	while not HasAnimDictLoaded(animationLib) do
		Wait(10)
	end
	Wait(500)
	if controlFlag == nil then controlFlag = 0 end
	TaskPlayAnim(playerPed, animationLib, animation, 8.0, -8.0, length, controlFlag, 0, false, false, false)

	Wait(length)
end)

RegisterNetEvent('cmg2_animations:cl_stop')
AddEventHandler('cmg2_animations:cl_stop', function()
	piggyBackInProgress = false
	ClearPedSecondaryTask(PlayerPedId())
	DetachEntity(PlayerPedId(), true, false)
end)











local carryingBackInProgress = false

RegisterKeyMapping('omuz', "Yakınındaki kişiyi omzuna alır.", 'keyboard', 'F10')

RegisterCommand('omuz', function()
	local closestPlayer, distance = QBCore.Functions.GetClosestPlayer()
	if not carryingBackInProgress and not IsPedInAnyVehicle(PlayerPedId(), false) then
		if closestPlayer ~= -1 and distance < 1.5 and not IsPedInAnyVehicle(GetPlayerPed(closestPlayer), false) then
			target = GetPlayerServerId(closestPlayer)
			carryingBackInProgress = true
			local player = PlayerPedId()	
			lib = 'missfinale_c2mcs_1'
			anim1 = 'fin_c2_mcs_1_camman'
			lib2 = 'nm'
			anim2 = 'firemans_carry'
			distans = 0.15
			distans2 = 0.27
			height = 0.63
			spin = 0.0		
			length = 100000
			controlFlagMe = 49
			controlFlagTarget = 33
			animFlagTarget = 1
			TriggerServerEvent('cmg2_animationsCarry:sync', closestPlayer, lib,lib2, anim1, anim2, distans, distans2, height, target, length, spin, controlFlagMe, controlFlagTarget, animFlagTarget)
		else
			QBCore.Functions.Notify('Çevrende omzuna alabileceğin kimse yok!', 'error')
		end
	else
		local closestPlayer, distance = QBCore.Functions.GetClosestPlayer()
		if closestPlayer ~= -1 and distance < 1.5 then
			carryingBackInProgress = false
			ClearPedSecondaryTask(PlayerPedId())
			DetachEntity(PlayerPedId(), true, false)
			target = GetPlayerServerId(closestPlayer)
			TriggerServerEvent("cmg2_animationsCarry:stop", target)
		else
			QBCore.Functions.Notify('Çevrende omzuna alabileceğin kimse yok!', 'error')
		end
	end
end)

RegisterNetEvent('cmg2_animationsCarry:syncTarget')
AddEventHandler('cmg2_animationsCarry:syncTarget', function(target, animationLib, animation2, distans, distans2, height, length,spin,controlFlag)
	local playerPed = PlayerPedId()
	local targetPed = GetPlayerPed(GetPlayerFromServerId(target))
	carryingBackInProgress = true
	RequestAnimDict(animationLib)

	while not HasAnimDictLoaded(animationLib) do
		Wait(10)
	end
	if spin == nil then spin = 180.0 end
	AttachEntityToEntity(PlayerPedId(), targetPed, 0, distans2, distans, height, 0.5, 0.5, spin, false, false, false, false, 2, false)
	if controlFlag == nil then controlFlag = 0 end
	TaskPlayAnim(playerPed, animationLib, animation2, 8.0, -8.0, length, controlFlag, 0, false, false, false)
end)

RegisterNetEvent('cmg2_animationsCarry:syncMe')
AddEventHandler('cmg2_animationsCarry:syncMe', function(animationLib, animation,length,controlFlag,animFlag)
	local playerPed = PlayerPedId()
	RequestAnimDict(animationLib)

	while not HasAnimDictLoaded(animationLib) do
		Wait(10)
	end
	Wait(500)
	if controlFlag == nil then controlFlag = 0 end
	TaskPlayAnim(playerPed, animationLib, animation, 8.0, -8.0, length, controlFlag, 0, false, false, false)

	Wait(length)
end)

RegisterNetEvent('cmg2_animationsCarry:cl_stop')
AddEventHandler('cmg2_animationsCarry:cl_stop', function()
	carryingBackInProgress = false
	ClearPedSecondaryTask(PlayerPedId())
	DetachEntity(PlayerPedId(), true, false)
end)