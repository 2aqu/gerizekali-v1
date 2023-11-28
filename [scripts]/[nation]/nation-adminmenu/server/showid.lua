onlinePlayers = {}

RegisterServerEvent('tgiann-showid:add-id')
AddEventHandler('tgiann-showid:add-id', function()
    TriggerClientEvent("tgiann-showid:client:add-id", source, onlinePlayers)
    local topText = "undefined discord id"
    local identifiers = GetPlayerIdentifiers(source)
    for k,v in ipairs(identifiers) do
        if string.match(v, 'discord:') then
            topText = string.sub(v, 9, -1)
            break
        end
    end
    onlinePlayers[tostring(source)] = topText
    TriggerClientEvent("tgiann-showid:client:add-id", -1, topText, tostring(source))
end)

AddEventHandler('playerDropped', function(reason)
    onlinePlayers[tostring(source)] = nil
end)