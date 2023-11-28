RegisterNetEvent('arob:open-inventory', function(type, name, key)
    if type == "stash" then
        TriggerEvent('ox_inventory:openInventory', 'stash', name)
    elseif type == "otherplayer" then
        exports.ox_inventory:openInventory('player', name)
    end
end)