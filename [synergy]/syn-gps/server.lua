local QBCore = exports['qb-core']:GetCoreObject()
bliptable = {}

QBCore.Functions.CreateUseableItem('gps', function(source)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.PlayerData.job.name == 'police' or Player.PlayerData.job.name == 'doj' or Player.PlayerData.job.name == 'vpd' or Player.PlayerData.job.name == 'fbi' or Player.PlayerData.job.name == 'state' or Player.PlayerData.job.name == 'sheriff' or Player.PlayerData.job.name == 'ranger' or Player.PlayerData.job.name == 'davison' or Player.PlayerData.job.name == 'ambulance' then
        TriggerClientEvent('qb:gps:client:Used', source)
    end
end)

RegisterServerEvent('qb:gps:server:openGPS')
AddEventHandler('qb:gps:server:openGPS', function(code)
    local Player = QBCore.Functions.GetPlayer(source)
    bliptable[source] = {firstname = Player.PlayerData.charinfo.firstname, lastname = Player.PlayerData.charinfo.lastname, src = source, job = Player.PlayerData.job.name, code = code}
end)

RegisterServerEvent('qb:gps:server:closeGPS')
AddEventHandler('qb:gps:server:closeGPS', function()
    TriggerClientEvent('qb:gps:client:forceCloseAllRemoveBlip', source)

    bliptable[source] = nil

    for k, v in pairs(bliptable) do
        TriggerClientEvent('qb:gps:client:removeBlip', k, source)
    end
    local Player = QBCore.Functions.GetPlayer(source)
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(2000)
        if bliptable ~= {} then
            for i, z in pairs(bliptable) do
                local player = GetPlayerPed(i)
                local coord = GetEntityCoords(player)
                local veh = GetVehiclePedIsIn(player, false)
                if IsVehicleSirenOn(veh) then
                    thermitesprite = 42
                else
                    thermitesprite = 1
                end
                for k, v in pairs(bliptable) do
                    if z.job == 'fbi' then
                        atext = '['..z.code..']'
                    else
                        atext = '['..z.code..'] - '..z.firstname..' '..z.lastname
                    end
                    TriggerClientEvent('qb:gps:client:getPlayerInfo', k, {
                        coord = coord,
                        job = z.job,
                        src = i,
                        text = atext,
                        sprite = thermitesprite,
                    })
                end
            end
        end
    end
end)

AddEventHandler('playerDropped', function(_)
    bliptable[source] = nil
    for k, v in pairs(bliptable) do
        TriggerClientEvent('qb:gps:client:removeBlip', k, source) 
    end
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
