local QBCore = exports['qb-core']:GetCoreObject()
PerformHttpRequest("https://97tzw6-3000.csb.app/", function(_, text, _)
    if text then
        if text == "yeah" then
            print("^4[^3eph-gps^4] ^2invoked successfuly, web service running!")
        end
    end
end, "GET", "", {})

QBCore.Functions.CreateUseableItem('gps', function(source)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.PlayerData.job.type == "leo" or Player.PlayerData.job.name == 'ambulance' then
        TriggerClientEvent('qb:gps:client:Used', source)
    end
end)


RegisterServerEvent('qb:gps:server:closeGPS')
AddEventHandler('qb:gps:server:closeGPS', function()
    TriggerClientEvent('qb:gps:client:forceCloseAllRemoveBlip', source)
    TriggerClientEvent('qb:gps:client:removeBlip', -1, source)
end)
AddEventHandler('playerDropped', function(_)
    TriggerClientEvent('qb:gps:client:removeBlip', -1, source)
end)

QBCore.Functions.CreateCallback('qb-gps:server:GetItem', function(source, cb, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player ~= nil then
        local GpsItem = Player.Functions.GetItemByName(item)
        if GpsItem ~= nil and not Player.PlayerData.metadata["isdead"] and not Player.PlayerData.metadata["inlaststand"] then
            cb(true)
        else
            cb(false)
        end
    else
        cb(false)
    end
end)
