local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('antibadcop:server:RemoveItem', function(item, count)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(item, count)
    TriggerEvent('qb-log:server:CreateLog', 'badcop', 'Kişinin Üzerinden Silah Silindi', 'red', "**"..Player.PlayerData.name .. " (CitizenID: "..Player.PlayerData.citizenid.." | Isim: ".. Player.PlayerData.charinfo.firstname .. " " .. Player.PlayerData.charinfo.lastname .." | ID: "..Player.PlayerData.source..")**\n1x adet "..item.." silindi.")
end)