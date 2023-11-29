local QBCore = exports['qb-core']:GetCoreObject()

AddEventHandler('playerDropped', function(reason)
    local location = GetEntityCoords(GetPlayerPed(source))
    local players = {}
    for k,v in pairs(GetPlayerIdentifiers(source))do
        if string.sub(v, 1, string.len("steam:")) == "steam:" then
            steamid = v
        elseif string.sub(v, 1, string.len("discord:")) == "discord:" then
          discord = v
        end
    end
    players.steamid = steamid
    TriggerClientEvent('combatlog', -1, location, players,os.date("%H:%M"),discord,reason)
end)

RegisterNetEvent('spyacti')
AddEventHandler('spyacti', function(savedPosition)
    local locationx = savedPosition
    TriggerClientEvent('save:al', -1, locationx)
end)