QBCore = exports['qb-core']:GetCoreObject()

RegisterCommand("aracıdevret", function()
	giveCarKeys()
end)

function giveCarKeys()
	local playerPed = PlayerPedId()
	local coords    = GetEntityCoords(playerPed)
	local aracbulundu = false
	if IsPedInAnyVehicle(playerPed,  false) then
		vehicle = GetVehiclePedIsIn(playerPed, false)
		aracbulundu = true			
    else
		vehicle, distance = QBCore.Functions.GetClosestVehicle(coords)
		if distance < 5 then
			aracbulundu = true	
		end
    end
	
	if aracbulundu then
		local plate = GetVehicleNumberPlateText(vehicle)
		local vehicleProps = QBCore.Functions.GetVehicleProperties(vehicle)

		QBCore.Functions.TriggerCallback('givecars:requestPlayerCars', function(isOwnedVehicle)
			if isOwnedVehicle then

			local closestPlayer, closestDistance = QBCore.Functions.GetClosestPlayer()
				if closestPlayer == -1 or closestDistance > 3.0 then
					QBCore.Functions.Notify('Yakınlarda Kimse Yok!')
				else
					QBCore.Functions.Notify('Aracı Devrettin '..vehicleProps.plate..'!')
					TriggerServerEvent('givecars:setVehicleOwnedPlayerId', GetPlayerServerId(closestPlayer), vehicleProps)
				end
			else
				QBCore.Functions.Notify('Araç Senin Değil')
			end
		end, plate)
	else
		QBCore.Functions.Notify('Yakınlarda Araç Yok')
	end
end
