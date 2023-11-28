local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('qb-smallresources:client:grandmaBill', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveMoney(bank, 1000, "grandma")
end)