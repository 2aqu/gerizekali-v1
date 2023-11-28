QBCore = exports['qb-core']:GetCoreObject()

--- Target için
QBCore.Functions.CreateCallback('arob-cuff:target-kelepcelimi', function(source, cb, targetPlayerPed)
    local src = targetPlayerPed
    local xPlayer = QBCore.Functions.GetPlayer(src)
    if xPlayer then
        local data = {
            pkelepce = xPlayer.PlayerData.metadata.pkelepce,
            kelepce = xPlayer.PlayerData.metadata.kelepce,
            isDead = xPlayer.PlayerData.metadata.isdead
        }
        cb(data)
    end
end)

QBCore.Commands.Add("taşı", "Kelepçeli Oyuncuyu Taşı", {}, false, function(source, args) -- name, help, arguments, argsrequired,  end sonuna persmission
	TriggerClientEvent('arob-cuff:client:tasi', source)
end)

QBCore.Commands.Add("ybindir", "Yaralı Oyuncuyu Araca Bindir/İndir", {}, false, function(source, args) -- name, help, arguments, argsrequired,  end sonuna persmission
	TriggerClientEvent('arob-cuff:client:ybindir', source)
end)

QBCore.Commands.Add("araç", "Kelepçeli Oyuncuyu Araca Bindir/İndir", {}, false, function(source, args) -- name, help, arguments, argsrequired,  end sonuna persmission
	TriggerClientEvent('arob-cuff:client:arac', source)
end)

-- Data Polis Kelepce True
RegisterServerEvent('arob-cuff:polis-kelepce-tak-takilan')
AddEventHandler('arob-cuff:polis-kelepce-tak-takilan', function(targetPlayerPed, playerlocation, playerheading, playerCoords)
    local xPlayer = QBCore.Functions.GetPlayer(targetPlayerPed)
    if xPlayer then
        TriggerClientEvent("arob-cuff:polis-kelepce-tak-yakin-oyuncu-client", targetPlayerPed, playerlocation, playerheading, playerCoords, source)
        xPlayer.Functions.SetMetaData("pkelepce", true)
    end
end)

RegisterCommand('kelepcefix', function(source)
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)
    xPlayer.Functions.SetMetaData("pkelepce", false)
    xPlayer.Functions.SetMetaData("kelepce", false)
end)

RegisterServerEvent('arob-cuff:polis-kelepce-tak-takan')
AddEventHandler('arob-cuff:polis-kelepce-tak-takan', function()
    local xPlayer  = QBCore.Functions.GetPlayer(source)
    xPlayer.Functions.RemoveItem('pkelepce', 1, xPlayer.Functions.GetItemByName("pkelepce").slot) -- Kelepçeyi Sil
end)

-- Data Normal Kelepce True
RegisterServerEvent('arob-cuff:kelepce-tak-takilan')
AddEventHandler('arob-cuff:kelepce-tak-takilan', function(targetPlayerPed, playerlocation, playerheading, playerCoords)
    local xPlayer  = QBCore.Functions.GetPlayer(targetPlayerPed)
    if xPlayer then
        TriggerClientEvent("arob-cuff:kelepce-tak-yakin-oyuncu-client", targetPlayerPed, playerlocation, playerheading, playerCoords, source)
        xPlayer.Functions.SetMetaData("kelepce", true)
    end
end)

RegisterServerEvent('arob-cuff:kelepce-tak-takan')
AddEventHandler('arob-cuff:kelepce-tak-takan', function()
    local xPlayer  = QBCore.Functions.GetPlayer(source)
    xPlayer.Functions.RemoveItem('kelepce', 1, xPlayer.Functions.GetItemByName("kelepce").slot) -- Kelepçeyi Sil
    xPlayer.Functions.AddItem('kelepceanahtar', 1) -- Anahtar ver
end)

-- Data Polis Kelepceler False
RegisterServerEvent('arob-cuff:polis-kelepce-coz-takilan')
AddEventHandler('arob-cuff:polis-kelepce-coz-takilan', function(targetPlayerPed, playerlocation, playerheading, playerCoords)
    local xPlayer  = QBCore.Functions.GetPlayer(targetPlayerPed)
    if xPlayer then
        TriggerClientEvent("arob-cuff:polis-kelepce-coz-yakin-oyuncu-client", targetPlayerPed, playerlocation, playerheading, playerCoords)
        xPlayer.Functions.SetMetaData("pkelepce", false)
    end
end)

RegisterServerEvent('arob-cuff:polis-kelepce-coz-takan')
AddEventHandler('arob-cuff:polis-kelepce-coz-takan', function()
    local xPlayer  = QBCore.Functions.GetPlayer(source)
    xPlayer.Functions.AddItem('pkelepce', 1) -- Kelepçeyi Sil
end)

-- Data Normal Kelepceler False
RegisterServerEvent('arob-cuff:kelepce-coz-takilan')
AddEventHandler('arob-cuff:kelepce-coz-takilan', function(targetPlayerPed, playerlocation, playerheading, playerCoords)
    local xPlayer  = QBCore.Functions.GetPlayer(targetPlayerPed)
    if xPlayer then
        TriggerClientEvent("arob-cuff:kelepce-coz-yakin-oyuncu-client", targetPlayerPed, playerlocation, playerheading, playerCoords)
        xPlayer.Functions.SetMetaData("kelepce", false)
    end
end)

RegisterServerEvent('arob-cuff:kelepce-coz-takan')
AddEventHandler('arob-cuff:kelepce-coz-takan', function()
    local xPlayer  = QBCore.Functions.GetPlayer(source)
    xPlayer.Functions.RemoveItem('kelepceanahtar', 1, xPlayer.Functions.GetItemByName("kelepceanahtar").slot) -- anahtarı sil Sil
    xPlayer.Functions.AddItem('kelepce', 1) -- kelepçe ver
end)

-- İtem Kontrol
QBCore.Functions.CreateCallback('arob-cuff:item-kontrol', function(source, cb, item)
    local xPlayer = QBCore.Functions.GetPlayer(source)
    local items = xPlayer.getInventoryItem(item)
    if items == nil then
        cb(0)
    else
        cb(items.count)
    end
end)

-- Taşıma
RegisterServerEvent('arob-cuff:tasi-target-server')
AddEventHandler('arob-cuff:tasi-target-server', function(targetPlayerPed)
    TriggerClientEvent("arob-cuff:tasi-target-client", targetPlayerPed, source)
end)

RegisterServerEvent('arob-cuff:arac-ici-koy-server')
AddEventHandler('arob-cuff:arac-ici-koy-server', function(targetPlayerPed, type)
    if targetPlayerPed then
        TriggerClientEvent("arob-cuff:arac-ici-koy-client", targetPlayerPed, type)
    end
end)

-- Polis Kelepçe, Polisler Anahtarı item olarak alacakları için anahtar verilmiyor
QBCore.Functions.CreateUseableItem('pkelepce', function(source)
    TriggerClientEvent("arob-cuff:polis-kelepce-tak-client", source)
end)

QBCore.Functions.CreateUseableItem('pkelepceanahtar', function(source)
    TriggerClientEvent("arob-cuff:polis-kelepce-coz-client", source)
end)

QBCore.Functions.CreateUseableItem('kelepce', function(source)
    TriggerClientEvent("arob-cuff:kelepce-tak-client", source)
end)

QBCore.Functions.CreateUseableItem('kelepceanahtar', function(source)
    TriggerClientEvent("arob-cuff:kelepce-coz-client", source)
end)

RegisterServerEvent('arob-cuff:anim-cancel')
AddEventHandler('arob-cuff:anim-cancel', function(takan, type)
    local xPlayer = QBCore.Functions.GetPlayer(source)
    local tPlayer = QBCore.Functions.GetPlayer(takan)
    if xPlayer then
        TriggerClientEvent("arob-cuff:client:anim-cancel", takan)
        if type == "police" then
            xPlayer.Functions.SetMetaData("pkelepce", false)
            tPlayer.Functions.AddItem('pkelepce', 1) -- kelepçe ver
        else
            xPlayer.Functions.SetMetaData("kelepce", false)
            tPlayer.Functions.AddItem('kelepce', 1) -- kelepçe ver
        end
    end
end)