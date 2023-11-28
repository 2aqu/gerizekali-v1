if GetResourceState('es_extended') ~= 'started' then return end
Framework = {}
Core = exports['es_extended']:getSharedObject()
if Core == nil then
	TriggerEvent('esx:getSharedObject', function(obj) Framework = obj end)
end

function Framework.GetPlayer(src)
    return Core.GetPlayerFromId(src)
end

function Framework.CanCarryItem(src, item, amount)
    local player = Framework.GetPlayer(src)
    if player.canCarryItem(item, amount) then
        return true
    else
        return false
    end
end

function Framework.GetItem(src, item)
    local player = Framework.GetPlayer(src)
    return player.getInventoryItem(item).count
end

function Framework.GetMoney(src)
    local player = Framework.GetPlayer(src)
    return player.getMoney()
end

function Framework.GetJob(src)
    local player = Framework.GetPlayer(src)
    return player.job.name
end

function Framework.AddMoney(source, type, amount)
    if type == 'cash' then type = 'money' end
    local player = Framework.GetPlayer(source)
    player.addMoney(amount)
end

function Framework.RemoveMoney(source, type, amount)
    if type == 'cash' then type = 'money' end
    local player = Framework.GetPlayer(source)
    player.removeMoney(amount)
end

function Framework.AddItem(source, item, quantity)
    local player = Framework.GetPlayer(source)
    player.addInventoryItem(item, quantity)
    TriggerClientEvent('chipsUpdated_buysell', source, math.floor(quantity), true)
end

function Framework.RemoveItem(source, item, quantity)
    local player = Framework.GetPlayer(source)
    player.removeInventoryItem(item, quantity)
    TriggerClientEvent('chipsUpdated_buysell', source, math.floor(quantity), false)
end

RegisterServerEvent('DS-Casino_Wheel:giveWinCar', function(props)
	local src = source
	local xPlayer = Framework.GetPlayer(src)
	MySQL.Async.execute('INSERT INTO owned_vehicles (owner, plate, vehicle) VALUES (@owner, @plate, @vehicle)',
	{
		['@owner']   = xPlayer.identifier,
		['@plate']   = props.plate,
		['@vehicle'] = json.encode(props)
	})
end)