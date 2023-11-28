local canHandsUp = true
local isdead = false

AddEventHandler('handsup:toggle', function(param)
	canHandsUp = param
end)

AddEventHandler('arob:playerdead', function(dead)
	isdead = dead
end)

RegisterNetEvent("arob-thieffv2f:hands-up")
AddEventHandler("arob-thieffv2f:hands-up", function()
	if canHandsUp then handsUp() end
end)

function handsUp()
	local ped = PlayerPedId()
	local jumping = IsPedJumping(ped)
	if jumping then 
		return 
	else
		local playerPed = PlayerPedId()
		if DoesEntityExist(playerPed) and not isdead and not IsEntityPlayingAnim(playerPed, "re@construction", "out_of_breath", 1) then
			if IsEntityPlayingAnim(playerPed, "random@mugging3", "handsup_standing_base", 3) then
				ClearPedTasks(playerPed)
				TriggerServerEvent('esx_thief:update', false)
			else
				QBCore.Shared.RequestAnimDict('random@mugging3', function()
					TaskPlayAnim(playerPed, 'random@mugging3', 'handsup_standing_base', 2.0, 2.5, -1, 49, 0, 0, 0, 0)
					TriggerServerEvent('esx_thief:update', true)
				end)
			end
		end
	end 
end