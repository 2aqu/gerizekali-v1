--Make usable item
function makeUsable(item, cb)
    if Config.ox_inventory then
        exports(item, function(event, itemData, inventory, slot, data)
            cb(inventory.id)
        end)
    else
        if Config.Framework == Frameworks.ESX then
            ESX.RegisterUsableItem(item, cb)
        elseif Config.Framework == Frameworks.QBCORE then
            QBCore.Functions.CreateUseableItem(item, cb)
        end
    end
end

function canUseItem(player, itemName, amount)
    if Config.Framework == Frameworks.ESX then
        local xItem = player.getInventoryItem(itemName)
        if xItem and xItem.count >= amount then
            return true
        end
        return false
    elseif Config.Framework == Frameworks.QBCORE then
        local item = player.Functions.GetItemByName(itemName)
        if item and item.amount >= amount then
            return true
        end
        return false
    end
end

function useItem(player, itemName)
    if Config.Framework == Frameworks.ESX then
        local xItem = player.getInventoryItem(itemName)
        ESX.UseItem(player.source, xItem.name)
    elseif Config.Framework == Frameworks.QBCORE then
        local item = player.Functions.GetItemByName(itemName)
        QBCore.Functions.UseItem(player.source, item)
    end
end

function removeItem(player, itemName, amount)
    if Config.Framework == Frameworks.ESX then
        player.removeInventoryItem(itemName, amount)
    elseif Config.Framework == Frameworks.QBCORE then
        player.Functions.RemoveItem(itemName, amount)
    end
end

function addItem(player, itemName, amount)
    if Config.Framework == Frameworks.ESX then
        player.addInventoryItem(itemName, amount)
    elseif Config.Framework == Frameworks.QBCORE then
        player.Functions.AddItem(itemName, amount)
    end
end

--Get player
function getPlayer(source)
    if Config.Framework == Frameworks.ESX then
        return ESX.GetPlayerFromId(source)
    elseif Config.Framework == Frameworks.QBCORE then
        return QBCore.Functions.GetPlayer(source)
    end
end

function isAllowedGroup(src, group)
    if Config.Framework == Frameworks.ESX then
        local player = getPlayer(src)
        local pGroup = player.getGroup()
        if pGroup == group then
            return true
        end
    elseif Frameworks.QBCORE then
        return QBCore.Functions.HasPermission(src, group)
    end
    return false
end

function basicNotification(source, msg, type)
    type = type or 'success'
    if Config.Framework == Frameworks.ESX then
        TriggerClientEvent('esx:showNotification', source, msg)
    elseif Config.Framework == Frameworks.QBCORE then
        TriggerClientEvent('QBCore:Notify', source, msg, type, 5000)
    end
end
