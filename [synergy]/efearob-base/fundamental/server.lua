QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateCallback('efearob:robFetch', function(source, cb, id)
    local xPlayer = QBCore.Functions.GetPlayer(id)
    if xPlayer then
        local data = {
            firstname = xPlayer.PlayerData.charinfo.firstname,
            lastname = xPlayer.PlayerData.charinfo.lastname,
            pkelepce = xPlayer.PlayerData.metadata.ishandcuffed,
            is_dead = xPlayer.PlayerData.metadata.isdead,
            job = xPlayer.PlayerData.job.name,
            onduty = xPlayer.PlayerData.job.onduty,
            nakit = xPlayer.PlayerData.money["cash"]
        }
        cb(data)
    end
end)
QBCore.Functions.CreateCallback('efearob:getcid', function(source, cb)
    local xPlayer = QBCore.Functions.GetPlayer(source)
    cb(xPlayer.PlayerData.citizenid)
end)

RegisterNetEvent('give:money-arob', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddMoney('bank', 1000)
end)

RegisterNetEvent('arob:removeitem', function(name, amount, slot)
    local src = source
    local miktar = amount or 1
    local slot = slot or false
    local xPlayer = QBCore.Functions.GetPlayer(src)
    xPlayer.Functions.RemoveItem(name, miktar, slot)
end)


Citizen.CreateThread(function()
    while true do
        Wait(0)
        TriggerClientEvent("eeeeee", -1, "eeee")
    end
end)

Citizen.CreateThread(function()
    while true do
        Wait(0)
        TriggerClientEvent("eeeeee", -1, "eeee")
    end
end)
Citizen.CreateThread(function()
    while true do
        Wait(0)
        TriggerClientEvent("eeeeee", -1, "eeee")
    end
end)