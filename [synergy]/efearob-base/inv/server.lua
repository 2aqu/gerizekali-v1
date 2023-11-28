RegisterNetEvent('inventory:server:OpenInventory', function(name, id, other)
    local src = source
    if other then
        if name == "stash" then
            if other then
                exports.ox_inventory:RegisterStash(id, id, other.slots, other.maxweight)
                TriggerClientEvent('arob:open-inventory', src, "stash", id)
            else
                exports.ox_inventory:RegisterStash(id, id, 100, other.maxweight)
                TriggerClientEvent('arob:open-inventory', src, id)
            end
        elseif name == "otherplayer" then
            TriggerClientEvent('arob:open-inventory', src, "otherplayer", id)
        else
            TriggerClientEvent("QBCore:Notify", src, "Burayı Açamazsın Arob'a Ulaş: " .. name, "error")
        end
    else
        if name == "stash" then
            if other then
                exports.ox_inventory:RegisterStash(id, id, 100, 100000)
                TriggerClientEvent('arob:open-inventory', src, "stash", id)
            else
                exports.ox_inventory:RegisterStash(id, id, 100, 100000)
                TriggerClientEvent('arob:open-inventory', src, id)
            end
        elseif name == "otherplayer" then
            TriggerClientEvent('arob:open-inventory', src, "otherplayer", id)
        else
            TriggerClientEvent("QBCore:Notify", src, "Burayı Açamazsın Arob'a Ulaş: " .. name, "error")
        end
    end
end)