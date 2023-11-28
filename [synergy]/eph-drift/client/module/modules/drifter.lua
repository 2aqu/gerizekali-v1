local QBCore = exports['qb-core']:GetCoreObject()
local carspeed = 0
local driftmode = false

CreateThread(function()
	while true do
		Wait(1)
		if Modules.DriftCounter.IsEnabled then
			if IsPedInAnyVehicle(GetPed(), false) then
				CarSpeed = GetEntitySpeed(GetCar()) * 3.6
				if GetPedInVehicleSeat(GetCar(), -1) == GetPed() then
					if CarSpeed <= 200.0 then  
						if IsControlPressed(1, 21) then
							SetVehicleReduceGrip(GetCar(), true)
						else
							SetVehicleReduceGrip(GetCar(), false)
						end
					end
				end
			end
		end
	end
end)

function GetPed() return GetPlayerPed(-1) end
function GetCar() return GetVehiclePedIsIn(GetPlayerPed(-1),false) end