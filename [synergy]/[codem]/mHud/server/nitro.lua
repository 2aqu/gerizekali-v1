--
--
--CreateThread(function()
--    while not Core do
--        Wait(0)
--    end
--    if Config.Framework == 'esx' or Config.Framework == 'oldesx' then
--        Core.RegisterUsableItem("nitrous", function(source)
--            TriggerClientEvent('mHud:LoadNitrous', source)
--        end)
--    else
--        Core.Functions.CreateUseableItem("nitrous", function(source)
--            TriggerClientEvent('mHud:LoadNitrous', source)
--        end)
--    end
--end)
--
--RegisterNetEvent('mHud:server:LoadNitrous', function(Plate)
--    TriggerClientEvent('mHud:client:LoadNitrous', -1, Plate)
--end)
--
--RegisterNetEvent('mHud:server:SyncFlames', function(netId)
--    TriggerClientEvent('mHud:client:SyncFlames', -1, netId, source)
--end)
--
--RegisterNetEvent('mHud:server:UnloadNitrous', function(Plate)
--    TriggerClientEvent('mHud:client:UnloadNitrous', -1, Plate)
--end)
--
--RegisterNetEvent('mHud:server:UpdateNitroLevel', function(Plate, level)
--    TriggerClientEvent('mHud:client:UpdateNitroLevel', -1, Plate, level)
--end)
--
--RegisterNetEvent('mHud:server:StopSync', function(plate)
--    TriggerClientEvent('mHud:client:StopSync', -1, plate)
--end)
--
--RegisterNetEvent('mHud:server:removeItem', function()
--    local src = source
--    DeleteItem(source, {
--        name = "nitrous",
--        reqAmount = 1,
--    })
--end)
--
--RegisterCommand('nitro', function(source)
--    --TriggerClientEvent('mHud:LoadNitrous', source)
--    Core.Functions.Notify("O bi-iki kere olur :D")
--end)


local nitroLevels = {}
CreateThread(function()
    while not Core do
        Wait(0)
    end
    if Config.Framework == 'esx' or Config.Framework == 'oldesx' then
        Core.RegisterUsableItem("nitrous", function(source)
            TriggerClientEvent('mHud:LoadNitrous', source)
        end)
    else
        Core.Functions.CreateUseableItem("nitrous", function(source)
            TriggerClientEvent('mHud:LoadNitrous', source)
        end)
    end
end)
local QBCore = exports["qb-core"]:GetCoreObject()

RegisterNetEvent('mHud:server:LoadNitrous', function(Plate)
    if nitroLevels[Plate] then
        TriggerClientEvent('mHud:client:LoadNitrous', -1, Plate, nitroLevels[Plate] + 1)
    else
        MySQL.Async.fetchAll('SELECT nitrous FROM player_vehicles WHERE plate = ?', { Plate }, function(result)
            if result[1] then
                nitroLevels[Plate] = result[1].nitrous
                TriggerClientEvent('mHud:client:LoadNitrous', -1, Plate, nitroLevels[Plate] + 1)
            else
                TriggerClientEvent('mHud:client:LoadNitrous', -1, Plate, -1)
            end
        end)
    end
end)
RegisterNetEvent('eph:nitro:installNitro', function(plate)
    nitroLevels[plate] = 0
    TriggerClientEvent('mHud:client:LoadNitrous', -1, plate, nitroLevels[plate])
    MySQL.Async.execute('UPDATE player_vehicles SET nitrous = ? WHERE plate = ?', { nitroLevels[plate] or 0, plate })
end)
RegisterNetEvent('eph:nitro:refillNitro', function(plate)
    nitroLevels[plate] = 100
    TriggerClientEvent('mHud:client:LoadNitrous', -1, plate, nitroLevels[plate])
    MySQL.Async.execute('UPDATE player_vehicles SET nitrous = ? WHERE plate = ?', { nitroLevels[plate] or 100, plate })
end)
QBCore.Functions.CreateCallback('eph:nitro:vehicleHasNitro', function(source, cb, plate)
    MySQL.Async.fetchAll('SELECT nitrous FROM player_vehicles WHERE plate = ?', { plate }, function(result)
        if result[1] then
            if result[1].nitrous >= 0 then
                print(1)
                nitroLevels[plate] = result[1].nitrous
                cb({ state = true, level = result[1].nitrous })
            else
                print(2)
                nitroLevels[plate] = nil
                cb({ state = false, level = result[1].nitrous })
            end
        else
            print(3)
            nitroLevels[plate] = nil
            cb({ state = false })
        end
    end)
end)

RegisterNetEvent('mHud:server:SyncFlames', function(netId)
    TriggerClientEvent('mHud:client:SyncFlames', -1, netId, source)
end)
RegisterNetEvent('mHud:server:ignorePlate')
AddEventHandler('mHud:server:ignorePlate', function(Plate)
    MySQL.Async.execute('UPDATE player_vehicles SET nitrous = ? WHERE plate = ?', { nitroLevels[Plate] or 0, Plate })
    nitroLevels[Plate] = nil
end)

RegisterNetEvent('mHud:server:UnloadNitrous', function(Plate)
    TriggerClientEvent('mHud:client:UnloadNitrous', -1, Plate)
    nitroLevels[Plate] = 0
end)

RegisterNetEvent('mHud:server:UpdateNitroLevel', function(Plate, level)
    TriggerClientEvent('mHud:client:UpdateNitroLevel', -1, Plate, level)
    nitroLevels[Plate] = level
end)

RegisterNetEvent('mHud:server:StopSync', function(plate)
    TriggerClientEvent('mHud:client:StopSync', -1, plate)
end)



--RegisterNetEvent('mHud:server:removeItem', function()
--    local src = source
--    DeleteItem(source, {
--        name = "nitrous",
--        reqAmount = 1,
--    })
--end)
