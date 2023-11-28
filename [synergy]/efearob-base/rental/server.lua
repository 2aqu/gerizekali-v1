QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent('efearob-vehiclerentals:server:removemoney', function(src, amount, account)
    local Player = QBCore.Functions.GetPlayer(source)
    Player.Functions.RemoveMoney(account, amount, "vehicle-rentals")
end)

RegisterServerEvent('efearob-vehiclerentals:server:givedocument', function(src, PlayerFirst, PlayerLast, Vehicle, Plate)
    local Player = QBCore.Functions.GetPlayer(source)
    info = {
        firstname = PlayerFirst,
        lastname = PlayerLast,
        vehicle = Vehicle,
        vehicleplate = Plate
    }
    if Player.Functions.AddItem("rentcertificate", 1, false, info) then
        TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items["rentcertificate"], "add")
    end
end)

RegisterServerEvent('efearob-vehiclerentals:server:removedocument', function(src)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem("rentcertificate", 1, false, info) then
        TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items["rentcertificate"], "remove")
    else
        TriggerClientEvent('QBCore:Notify', source, Rental.Localization.RentalPapersRemovedError, "error", 6500)
    end
end)