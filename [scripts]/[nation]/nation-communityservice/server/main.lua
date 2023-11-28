local QBCore = exports['qb-core']:GetCoreObject()


QBCore.Commands.Add("ykamu", _U('give_player_community'), {{name = "id", help = _U('target_id')}, {name = "actions", help = _U('action_count_suggested')}}, false, function(source, args, user)
	local Player = QBCore.Functions.GetPlayer(source)
	if args[1] and GetPlayerName(args[1]) ~= nil and tonumber(args[2]) then
		TriggerEvent('qb-communityservice:sendToCommunityService', tonumber(args[1]), tonumber(args[2]))
	else
		TriggerClientEvent('QBCore:Notify', source, _U('invalid_player_id_or_actions'), 'error', 5000)
	end
end,"god")

QBCore.Commands.Add("ykamubitir", "Kamu cezasını bitir.", { { name = "id", help = _U('target_id') } }, false, function(source, args, user)
    local Player = QBCore.Functions.GetPlayer(source)
    if args[1] and GetPlayerName(args[1]) ~= nil then
        TriggerEvent('qb-communityservice:endCommunityServiceCommand', tonumber(args[1]))
    else
		TriggerClientEvent('QBCore:Notify', source, _U('invalid_player_id'), 'error', 5000)    
    end
end, "god")

RegisterServerEvent('qb-communityservice:finishCommunityService')
AddEventHandler('qb-communityservice:finishCommunityService', function()
	releaseFromCommunityService(source)
end)


RegisterServerEvent('qb-communityservice:endCommunityServiceCommand')
AddEventHandler('qb-communityservice:endCommunityServiceCommand', function(source)
	if source ~= nil then
		releaseFromCommunityService(source)
	end
end)

RegisterServerEvent('qb-communityservice:completeService')
AddEventHandler('qb-communityservice:completeService', function()
	local _source = source
	local identifier = QBCore.Functions.GetPlayer(_source).PlayerData.citizenid
		MySQL.Async.fetchAll('SELECT * FROM communityservice WHERE identifier = @identifier', {
		['@identifier'] = identifier
	}, function(result)
		if result[1] then
				MySQL.Async.fetchAll('UPDATE communityservice SET actions_remaining = actions_remaining - 1 WHERE identifier = @identifier', {
				['@identifier'] = identifier
			})
		else
			print ("nation-communityservice :: Problem matching player identifier in database to reduce actions.")
		end
	end)
end)


RegisterServerEvent('qb-communityservice:extendService')
AddEventHandler('qb-communityservice:extendService', function()
	local _source = source
	local identifier = QBCore.Functions.GetPlayer(_source).PlayerData.citizenid
		MySQL.Async.fetchAll('SELECT * FROM communityservice WHERE identifier = @identifier', {
		['@identifier'] = identifier
	}, function(result)
		if result[1] then
				MySQL.Async.fetchAll('UPDATE communityservice SET actions_remaining = actions_remaining + @extension_value WHERE identifier = @identifier', {
				['@identifier'] = identifier,
				['@extension_value'] = Config.ServiceExtensionOnEscape
			})
		else
			print ("nation-communityservice :: Problem matching player identifier in database to reduce actions.")
		end
	end)
end)


RegisterServerEvent('qb-communityservice:sendToCommunityService')
AddEventHandler('qb-communityservice:sendToCommunityService', function(target, actions_count)
	local src = source
	local yPlayer = QBCore.Functions.GetPlayer(target)
	local xPlayer = QBCore.Functions.GetPlayer(src)

	local identifier = QBCore.Functions.GetPlayer(target).PlayerData.citizenid
		MySQL.Async.fetchAll('SELECT * FROM communityservice WHERE identifier = @identifier', {
		['@identifier'] = identifier
	}, function(result)
		if result[1] then
				MySQL.Async.fetchAll('UPDATE communityservice SET actions_remaining = @actions_remaining WHERE identifier = @identifier', {
				['@identifier'] = identifier,
				['@actions_remaining'] = actions_count
			})
		else
				MySQL.Async.fetchAll('INSERT INTO communityservice (identifier, actions_remaining) VALUES (@identifier, @actions_remaining)', {
				['@identifier'] = identifier,
				['@actions_remaining'] = actions_count
			})
		end
	end)

	TriggerEvent('qb-log:server:CreateLog', 'society', 'Kamuya Gönderildi', "lightgreen", "Gönderen: "..xPlayer.PlayerData.name .. " (CitizenID: "..xPlayer.PlayerData.citizenid.." | Isim: ".. xPlayer.PlayerData.charinfo.firstname .. " " .. xPlayer.PlayerData.charinfo.lastname .." | ID: "..xPlayer.PlayerData.source..")\nGönderilen: "..yPlayer.PlayerData.name .. " (CitizenID: "..yPlayer.PlayerData.citizenid.." | Isim: ".. yPlayer.PlayerData.charinfo.firstname .. " " .. yPlayer.PlayerData.charinfo.lastname .." | ID: "..yPlayer.PlayerData.source..")\nAdet: ".. actions_count)
	TriggerClientEvent('qb-communityservice:inCommunityService', target, actions_count)
end)


RegisterServerEvent('qb-communityservice:checkIfSentenced')
AddEventHandler('qb-communityservice:checkIfSentenced', function()
	local _source = source -- cannot parse source to client trigger for some weird reason
	local identifier = QBCore.Functions.GetPlayer(_source).PlayerData.citizenid -- get steam identifier

		MySQL.Async.fetchAll('SELECT * FROM communityservice WHERE identifier = @identifier', {
		['@identifier'] = identifier
	}, function(result)
		if result[1] ~= nil and result[1].actions_remaining > 0 then
			TriggerClientEvent('qb-communityservice:inCommunityService', _source, tonumber(result[1].actions_remaining))
		end
	end)
end)


function releaseFromCommunityService(target)
	local identifier = QBCore.Functions.GetPlayer(target).PlayerData.citizenid
		MySQL.Async.fetchAll('SELECT * FROM communityservice WHERE identifier = @identifier', {
		['@identifier'] = identifier
	}, function(result)
		if result[1] then
				MySQL.Async.fetchAll('DELETE from communityservice WHERE identifier = @identifier', {
				['@identifier'] = identifier
			})
		end
	end)
	TriggerClientEvent('qb-communityservice:finishCommunityService', target)
	TriggerClientEvent("fivem-appearance:client:reloadSkin", target)
end

