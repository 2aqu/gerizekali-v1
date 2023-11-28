local Users = {}

QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateCallback('esx_thief:getValue', function(source, cb, targetSID)
	if Users[targetSID] then
		cb(Users[targetSID])
	else
		cb({value = false, time = 0})
	end
end)



RegisterServerEvent('esx_thief:update')
AddEventHandler('esx_thief:update', function(bool)
	local src = source
	Users[src] = {value = bool, time = os.time()}
end)

RegisterNetEvent('gener4l:envanterkapat')
AddEventHandler('gener4l:envanterkapat',function(v)
	v = tonumber(v)
	TriggerClientEvent('gener4l:muhur', v)
end)

RegisterServerEvent('esx_thief:getValue')
AddEventHandler('esx_thief:getValue', function(targetSID)
	local src = source
	if Users[targetSID] then
		TriggerClientEvent('esx_thief:returnValue', src, Users[targetSID])
	else
		TriggerClientEvent('esx_thief:returnValue', src, Users[targetSID])
	end
end)

RegisterServerEvent('arob:ust-ara-bildirim')
AddEventHandler('arob:ust-ara-bildirim', function(target_id)
	TriggerClientEvent("QBCore:Notify", target_id, 'Bir Kişi Tarafından Üstün Aranıyor')
end)

RegisterServerEvent('arob:ust-ara-bildirim-polis')
AddEventHandler('arob:ust-ara-bildirim-polis', function(target_id)
	TriggerClientEvent("QBCore:Notify", target_id, 'Polis Tarafından Üstün Aranıyor')
end)

RegisterServerEvent('arob-thiefuser-soygun:discord-log')
AddEventHandler('arob-thiefuser-soygun:discord-log', function(soyulan, soyan)
	local aaaa = QBCore.Functions.GetPlayer(soyan)
	TriggerEvent('qb-log:server:CreateLog', "robbing", "Üst Aradı", "default", "Üst Aradı. Arayan: **".. aaaa.PlayerData.charinfo["firstname"] .. " " .. aaaa.PlayerData.charinfo["lastname"] .. " " .. aaaa.PlayerData.citizenid .. "** Aranan: ", false, soyulan)
end)

RegisterServerEvent('arob-thiefuser-soygun:discord-log-polis')
AddEventHandler('arob-thiefuser-soygun:discord-log-polis', function(soyulan, soyan)
	local aaaa = QBCore.Functions.GetPlayer(soyan)
	TriggerEvent('qb-log:server:CreateLog', "robbing", "Üst Aradı (Polis)", "default", "Üst Aradı. Arayan: **".. aaaa.PlayerData.charinfo["firstname"] .. " " .. aaaa.PlayerData.charinfo["lastname"] .. " " .. aaaa.PlayerData.citizenid .. "** Aranan: ", false, soyulan)
end)