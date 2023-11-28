QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateCallback('givecars:requestPlayerCars', function(source, cb, plate)
	local xPlayer = QBCore.Functions.GetPlayer(source)
	local vehiclePlate = QBCore.Shared.Trim(plate)
	exports.ghmattimysql:execute('SELECT * FROM player_vehicles WHERE citizenid = @citizenid AND plate = @plate', {
		['@citizenid'] = xPlayer.PlayerData.citizenid,
		['@plate'] = vehiclePlate
	}, function(result)
		if result[1] then 
			cb(true)
		else
			cb(false)
		end
	end)
end)

RegisterServerEvent('givecars:setVehicleOwnedPlayerId')
AddEventHandler('givecars:setVehicleOwnedPlayerId', function (playerId, vehicleProps, key)
	local src = source
	local zPlayer = QBCore.Functions.GetPlayer(playerId)
	exports.ghmattimysql:execute('UPDATE player_vehicles SET citizenid = @citizenid WHERE plate = @plate', {
		['@citizenid'] = zPlayer.PlayerData.citizenid,
		['@plate'] = vehicleProps.plate
	}, function()
		TriggerEvent('qb-log:server:CreateLog', "devret", "Araç Devret", "default", vehicleProps.plate .." Plakalı Aracını Devretti. Devreden: " .. QBCore.Functions.GetPlayer(src).PlayerData.citizenid, false, PlayerId)
		TriggerClientEvent("QBCore:Notify", zPlayer.PlayerData.source, vehicleProps.plate..' plakalı aracın anahtarını aldın!')
		TriggerClientEvent("tgiann-arackilit:plakaekle", zPlayer.PlayerData.source, vehicleProps.plate)
		TriggerClientEvent('vehiclekeys:client:SetOwner', zPlayer.PlayerData.source, vehicleProps.plate)
	end)
end)