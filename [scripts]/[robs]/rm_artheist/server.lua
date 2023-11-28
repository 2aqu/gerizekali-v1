QBCore = exports['qb-core']:GetCoreObject()

local lastrob = 0

QBCore.Functions.CreateCallback('artheist:server:checkRobTime', function(source, cb)
    local src = source
    local player = QBCore.Functions.GetPlayer(src)
    
    if (os.time() - lastrob) < Config['ArtHeist']['nextRob'] and lastrob ~= 0 then
        local seconds = Config['ArtHeist']['nextRob'] - (os.time() - lastrob)
        --player.showNotification(Strings['wait_nextrob'] .. ' ' .. math.floor(seconds / 60) .. ' ' .. Strings['minute'])
        TriggerClientEvent('QBCore:Notify', src, Strings['wait_nextheist'] .. ' ' .. math.floor(seconds / 60) .. ' ' .. Strings['minute'] , 'error', 3000)
        cb(false)
    else
        lastrob = os.time()
        cb(true)
    end
end)

QBCore.Functions.CreateCallback('artheist:server:checkPoliceCount', function(source, cb)
    local src = source
    local players = QBCore.Functions.GetPlayers()
    local policeCount = 0

    for i = 1, #players do
        local player = QBCore.Functions.GetPlayer(players[i])
        if (player.PlayerData.job.type == "leo" and player.PlayerData.job.onduty) then
         policeCount = policeCount + 1
        end
    end

    if policeCount >= Config.RequiredPolice then
        cb(true)
    else
        cb(false)
        TriggerClientEvent('QBCore:Notify', src, Strings['need_police'] , 'error', 3000)
    end
end)

--[[
RegisterNetEvent('artheist:server:policeAlert')
AddEventHandler('artheist:server:policeAlert', function(coords)
    local players = ESX.GetPlayers()
    
    for i = 1, #players do
        local player = ESX.GetPlayerFromId(players[i])
        if player['job']['name'] == 'police' then
            TriggerClientEvent('artheist:client:policeAlert', players[i], coords)
        end
    end
end)
--]]

RegisterServerEvent('artheist:server:syncHeistStart')
AddEventHandler('artheist:server:syncHeistStart', function()
    TriggerClientEvent('artheist:client:syncHeistStart', -1)
end)

RegisterServerEvent('artheist:server:syncPainting')
AddEventHandler('artheist:server:syncPainting', function(x)
    TriggerClientEvent('artheist:client:syncPainting', -1, x)
end)

RegisterServerEvent('artheist:server:syncAllPainting')
AddEventHandler('artheist:server:syncAllPainting', function()
    TriggerClientEvent('artheist:client:syncAllPainting', -1)
end)

RegisterServerEvent('artheist:server:rewardItem')
AddEventHandler('artheist:server:rewardItem', function(scene)
    local src = source
    local player = QBCore.Functions.GetPlayer(src)
    local item = scene['rewardItem']

    if player then
        --player.addInventoryItem(item, 1)
        player.Functions.AddItem(item, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item], "add")
        TriggerClientEvent('ak4y-blackmarket:addtaskcount', source, 2, 1)
    end
end)

RegisterServerEvent('artheist:server:finishHeist')
AddEventHandler('artheist:server:finishHeist', function()
    local src = source
    local player = QBCore.Functions.GetPlayer(src)

    if player then
        for k, v in pairs(Config['ArtHeist']['painting']) do
            if player.Functions.GetItemByName(v['rewardItem']) ~= nil then
            --local count = player.getInventoryItem(v['rewardItem']).count
            local count = player.Functions.GetItemByName(v['rewardItem']).amount
            if count > 0 then
                --player.removeInventoryItem(v['rewardItem'], 1)
                player.Functions.RemoveItem(v['rewardItem'], count)
               -- player.addMoney(v['paintingPrice'])
                player.Functions.AddMoney('cash', v['paintingPrice'] * count)
            
                
                TriggerEvent("qb-log:server:CreateLog", "robbery", "Art Heist", "green", "**"..GetPlayerName(source) .. "** got $"..v['paintingPrice'] * count.." from selling the art items.")
            end
        end
    end
    end
end)