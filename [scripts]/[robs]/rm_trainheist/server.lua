local QBCore = exports['qb-core']:GetCoreObject()
local lastrob = 0
local start = false
discord = {
    ['webhook'] = 'https://discord.com/api/webhooks/1182319988225347604/lR_TK4Um35UnC38fEKcn1FkmIalsV-ayAbcXQEjoMGDginPbdaPumF7I-9DbozzWh7nd',
    ['name'] = 'arob - train',
    ['image'] = 'x'
}

QBCore.Functions.CreateCallback('trainheist:server:checkPoliceCount', function(source, cb)
    local src = source
    local players = QBCore.Functions.GetPlayers()
    local policeCount = 0

    for i = 1, #players do
        local player = QBCore.Functions.GetPlayer(players[i])
        if player.PlayerData.job.name == 'police' then
            policeCount = policeCount + 1
        end
    end

    if policeCount >= Config['TrainHeist']['requiredPoliceCount'] then
        cb(true)
    else
        cb(false)
        TriggerClientEvent('trainheist:client:showNotification', src, Strings['need_police'])
    end
end)

QBCore.Functions.CreateCallback('trainheist:server:checkTime', function(source, cb)
    local src = source
    local player = QBCore.Functions.GetPlayer(src)
    
    if (os.time() - lastrob) < Config['TrainHeist']['nextRob'] and lastrob ~= 0 then
        local seconds = Config['TrainHeist']['nextRob'] - (os.time() - lastrob)
        TriggerClientEvent('trainheist:client:showNotification', src, Strings['wait_nextrob'] .. ' ' .. math.floor(seconds / 60) .. ' ' .. Strings['minute'])
        cb(false)
    else
        lastrob = os.time()
        start = true
        discordLog(player.PlayerData.name ..  ' - ' .. player.PlayerData.license, ' started the Train Heist!')
        cb(true)
    end
end)

QBCore.Functions.CreateCallback('trainheist:server:hasItem', function(source, cb, item)
    local src = source
    local player = QBCore.Functions.GetPlayer(src)
    local playerItem = player.Functions.GetItemByName(item)

    if player then 
        if playerItem ~= nil then
            if playerItem.amount >= 1 then
                cb(true, playerItem.label)
            end
        else
            cb(false, QBCore.Shared.Items[item].label)
        end
    end
end)

RegisterServerEvent('trainheist:server:policeAlert')
AddEventHandler('trainheist:server:policeAlert', function(coords)
    -- local players = QBCore.Functions.GetPlayers()
    
    -- for i = 1, #players do
    --     local player = QBCore.Functions.GetPlayer(players[i])
    --     if player.PlayerData.job.name == 'police' then
    --        -- TriggerClientEvent('trainheist:client:policeAlert', players[i], coords)
	-- 	--     TriggerEvent('dispatch:addCall', 
	-- 	-- 	"10-33", -- CODE EX: 10-70, 10-71, 10-39 ...
	-- 	-- 	'TRAIN ROBBERY',  -- YOU CAN ADD TITLE OF CALL
	-- 	-- 	{
	-- 	-- 		icon = 'far fa-bell', -- ICON CAN YOU USE FROM https://fontawesome.com/
	-- 	-- 		message = 'Tren Soyma Girişimi.', -- MESSAGE TO DISPLAY
	-- 	-- 		isUrgent = true, -- IF THAT IS TRUE IT WILL BE BLINKING
	-- 	-- 	},
	-- 	-- 	GetEntityCoords(PlayerPedId()),
	-- 	-- 	"police", -- JOB YOU WILL RECEIVE
	-- 	-- 	5000, -- TIMER TO SHOW IN DISPATCH IN MILLISECONDS
	-- 	-- 	628, -- BLIP SPRITE  https://docs.fivem.net/docs/game-references/blips/
	-- 	-- 	1, -- BLIP COLOR
	-- 	-- 	false -- IF IT IS TRUE IT WILL BE LIKE A PHONE CALL
	-- 	--     )
    --     -- end
    -- end
end)

RegisterServerEvent('trainheist:server:rewardItems')
AddEventHandler('trainheist:server:rewardItems', function()
    local src = source
    local player = QBCore.Functions.GetPlayer(src)

    if player then
        player.Functions.AddItem(Config['TrainHeist']['reward']['itemName'], Config['TrainHeist']['reward']['grabCount'])
    end
end)

RegisterServerEvent('trainheist:server:sellRewardItems')
AddEventHandler('trainheist:server:sellRewardItems', function()
    local src = source
    local player = QBCore.Functions.GetPlayer(src)

    if player then
        local playerItem = player.Functions.GetItemByName(Config['TrainHeist']['reward']['itemName'])
        if playerItem ~= nil and playerItem.amount > 0 then
            player.Functions.RemoveItem(Config['TrainHeist']['reward']['itemName'], playerItem.amount)
            player.Functions.AddMoney('cash', Config['TrainHeist']['reward']['sellPrice'] * playerItem.amount, 'trainheist')
            discordLog(player.PlayerData.name ..  ' - ' .. player.PlayerData.license, ' Gain $' .. math.floor(Config['TrainHeist']['reward']['sellPrice'] * playerItem.amount) .. ' on the Train Heist Buyer!')
            TriggerClientEvent('trainheist:client:showNotification', src, Strings['total_money'] .. ' $' .. Config['TrainHeist']['reward']['sellPrice'] * playerItem.amount)
        end
    end
end)

RegisterServerEvent('trainheist:server:containerSync')
AddEventHandler('trainheist:server:containerSync', function(coords, rotation)
    TriggerClientEvent('trainheist:client:containerSync', -1, coords, rotation)
end)

RegisterServerEvent('trainheist:server:objectSync')
AddEventHandler('trainheist:server:objectSync', function(e)
    TriggerClientEvent('trainheist:client:objectSync', -1, e)
end)

RegisterServerEvent('trainheist:server:trainLoop')
AddEventHandler('trainheist:server:trainLoop', function()
    TriggerClientEvent('trainheist:client:trainLoop', -1)
end)

RegisterServerEvent('trainheist:server:lockSync')
AddEventHandler('trainheist:server:lockSync', function(index)
    TriggerClientEvent('trainheist:client:lockSync', -1, index)
end)

RegisterServerEvent('trainheist:server:grabSync')
AddEventHandler('trainheist:server:grabSync', function(index, index2)
    TriggerClientEvent('trainheist:client:grabSync', -1, index, index2)
end)

RegisterServerEvent('trainheist:server:resetHeist')
AddEventHandler('trainheist:server:resetHeist', function()
    if not start then return end
    start = false
    TriggerClientEvent('trainheist:client:resetHeist', -1)
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