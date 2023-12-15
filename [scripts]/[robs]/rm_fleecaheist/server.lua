local QBCore = exports['qb-core']:GetCoreObject()

lastRob = {
    [1] = 0,
    [2] = 0,
    [3] = 0,
    [4] = 0,
    [5] = 0,
    [6] = 0,
}
discord = {
    ['webhook'] = 'https://discord.com/api/webhooks/1175096558841233438/gFbFbMT9Ln2-dvchgijyAlf2CXhcMZ8wQ42RPQKhyt_4f_VQJESAW1TRVWrr24RneZBU',
    ['name'] = 'arob-rm_heist',
    ['image'] = ''
}


QBCore.Functions.CreateCallback('qb-jewellery:server:getCops', function(source, cb)
	local amount = 0
    for k, v in pairs(QBCore.Functions.GetQBPlayers()) do
        if v.PlayerData.job.type == "leo" and v.PlayerData.job.onduty then
            amount = amount + 1
        end
    end
    cb(amount)
end)


QBCore.Functions.CreateCallback('fleecaheist:server:checkTime', function(source, cb, index)
    local src = source
    local player = QBCore.Functions.GetPlayer(src)
    
    if (os.time() - lastRob[index]) < Config['FleecaHeist'][index]['nextRob'] and lastRob[index] ~= 0 then
        local seconds = Config['FleecaHeist'][index]['nextRob'] - (os.time() - lastRob[index])
       --TriggerClientEvent('fleecaheist:client:showNotification', src, Strings['wait_nextheist'] .. ' ' .. math.floor(seconds / 60) .. ' ' .. Strings['minute'])
        TriggerClientEvent('QBCore:Notify', source, Strings['wait_nextheist'] .. ' ' .. math.floor(seconds / 60) .. ' ' .. Strings['minute'], 'error')
        cb(false)
    else
        lastRob[index] = os.time()
        
        cb(true)
   
        --discordLog(player.PlayerData.charinfo.name() ..  ' - ' .. player.getIdentifier(), ' soyguna başladı!')
    end
end)


--QBCore.Functions.CreateCallback('fleecaheist:server:hasItem', function(source, cb, item)
--    local xPlayer = QBCore.Functions.GetPlayer(source)
--    local amount = xPlayer.Functions.GetItemByName("bag").amount
--   
--    cb(amount)
--end)


QBCore.Functions.CreateCallback('fleecaheist:server:hasItem', function(source, cb)
    src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = Player.Functions.GetItemByName("bag")
    if item ~= nil then
      if item.amount >= 1 then	
        cb(item)
      else
          TriggerClientEvent('QBCore:Notify', source, "Yeterli malzemen yok!", 'error')
          end	
      else
      TriggerClientEvent('QBCore:Notify', source, "Temel malzemelerin yok!", 'error')
      end	
  end)

RegisterNetEvent('fleecaheist:server:policeAlert')
AddEventHandler('fleecaheist:server:policeAlert', function(coords)
    local players = QBCore.Functions.GetPlayers()
    
end)

RegisterServerEvent('fleecaheist:server:rewardItem')
AddEventHandler('fleecaheist:server:rewardItem', function(reward, count)
    local src = source
    local player = QBCore.Functions.GetPlayer(src)

    if player then
        player.Functions.AddMoney("cash", 5000)
    end
end)



RegisterServerEvent('fleecaheist:server:doorSync')
AddEventHandler('fleecaheist:server:doorSync', function(index)
    TriggerClientEvent('fleecaheist:client:doorSync', -1, index)
end)

RegisterServerEvent('fleecaheist:server:lootSync')
AddEventHandler('fleecaheist:server:lootSync', function(index, type, k)
    TriggerClientEvent('fleecaheist:client:lootSync', -1, index, type, k)
end)

RegisterServerEvent('fleecaheist:server:modelSync')
AddEventHandler('fleecaheist:server:modelSync', function(index, k, model)
    TriggerClientEvent('fleecaheist:client:modelSync', -1, index, k, model)
end)

RegisterServerEvent('fleecaheist:server:grabSync')
AddEventHandler('fleecaheist:server:grabSync', function(index, k, model)
    TriggerClientEvent('fleecaheist:client:grabSync', -1, index, k, model)
end)

RegisterServerEvent('fleecaheist:server:resetHeist')
AddEventHandler('fleecaheist:server:resetHeist', function(index)
    TriggerClientEvent('fleecaheist:client:resetHeist', -1, index)
end)

RegisterCommand('pbanka', function(source, args)
    local Player = QBCore.Functions.GetPlayer(source)
    
	local Player = QBCore.Functions.GetPlayer(source)
    if Player.PlayerData.job.name == "police" or Player.PlayerData.job.name == "state" or Player.PlayerData.job.name == "sheriff" then 
            TriggerClientEvent('fleecaheist:client:nearBank', src)
            TriggerClientEvent("QBCore:Notify", source, "İşlemler tamamlandı!", "success")
    else
        TriggerClientEvent("QBCore:Notify", source, "Polis Değilsin!", "error")
    end

end)


function discordLog(name, message)
    local data = {
        {
            ["color"] = '3553600',
            ["title"] = "**".. name .."**",
            ["description"] = message,
        }
    }
    PerformHttpRequest(discord['webhook'], function(err, text, headers) end, 'POST', json.encode({username = discord['name'], embeds = data, avatar_url = discord['image']}), { ['Content-Type'] = 'application/json' })
end