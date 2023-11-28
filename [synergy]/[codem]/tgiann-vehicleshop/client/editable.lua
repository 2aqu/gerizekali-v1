function GeneratePlate(isNpc)
	local generatedPlate = nil
	tgiCore.cbFunction('tgiann-vehicleshop:isPlateTaken', function(plate)
		generatedPlate = plate
	end, isNpc)
	while generatedPlate == nil do Citizen.Wait(100) end
	return generatedPlate
end

function uiOpened()
	TriggerEvent("chat:clear")
	TriggerEvent("tgiann-hud:ui", false)
end

function uiClosed()
	TriggerEvent("tgiann-hud:ui", true)
end

function spawnedTestCar(veh)
	local plate = GetVehicleNumberPlateText(veh)
    TriggerEvent("vehiclekeys:client:SetOwner", plate)
    TriggerEvent("x-hotwire:give-keys", veh) 
    TriggerEvent('tgiann-hotwire:give-keys-with-carid', veh)
end

function spawnedBuyedCar(veh)
	local plate = GetVehicleNumberPlateText(veh)
    TriggerEvent("vehiclekeys:client:SetOwner", plate)
    TriggerEvent("x-hotwire:give-keys", veh) 
    TriggerEvent('tgiann-hotwire:give-keys-with-carid', veh)
end

function spawnedShowroomCar(veh)

end

RegisterNetEvent('tgiann-vehicleshop:giveCarKey')
AddEventHandler('tgiann-vehicleshop:giveCarKey', function(plate)
	TriggerEvent("vehiclekeys:client:SetOwner", plate)
    TriggerEvent("x-hotwire:give-keys", veh) 
    TriggerEvent('tgiann-hotwire:give-keys-with-carid', veh)
end)

RegisterNetEvent('tgiann-vehicleshop:sendBill')
AddEventHandler('tgiann-vehicleshop:sendBill', function(playerId, sender, price)
	if config.framework == "esx" then
		TriggerServerEvent('esx_billing:sendBill', playerId, "society_cardealer", config.langs[config.lang].vehicleGallery, tonumber(price))
	elseif config.framework == "qb" then
		TriggerServerEvent('tgiann-vehicleshop:sendBill', sender, tonumber(price))
	end
end)