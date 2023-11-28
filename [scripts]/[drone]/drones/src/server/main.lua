local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent("Drones:Buy")
AddEventHandler('Drones:Buy', function(drone)
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)

    if xPlayer.PlayerData.money['bank'] >= drone.price then
    	xPlayer.Functions.AddItem(drone.name, 1)
    	xPlayer.Functions.RemoveMoney(Config.BankAccountName, drone.price)
    	TriggerClientEvent("Drones:CloseUI", src)
    else

    end
end)

RegisterServerEvent("Drones:Disconnect")
AddEventHandler('Drones:Disconnect', function(drone, drone_data, pos)
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)
    TriggerClientEvent('Drones:DropDrone', xPlayer.PlayerData.source, drone, drone_data, pos)
end)

RegisterServerEvent("Drones:Back")
AddEventHandler('Drones:Back', function(drone_data)
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)
    xPlayer.Functions.AddItem(drone_data.name, 1)
end)


QBCore.Functions.CreateUseableItem("drone_flyer_1", function(source)
    local xPlayer = QBCore.Functions.GetPlayer(source)

    local drone_data = Config.Drones[1]
    TriggerClientEvent("Drones:UseDrone", source, drone_data)
    xPlayer.Functions.RemoveItem('drone_flyer_1', 1)
end)

QBCore.Functions.CreateUseableItem("drone_flyer_2", function(source)
    local xPlayer = QBCore.Functions.GetPlayer(source)

    local drone_data = Config.Drones[2]
    TriggerClientEvent("Drones:UseDrone", source, drone_data)
    xPlayer.Functions.RemoveItem('drone_flyer_2', 1)
end)

QBCore.Functions.CreateUseableItem("drone_flyer_3", function(source)
    local xPlayer = QBCore.Functions.GetPlayer(source)

    local drone_data = Config.Drones[3]
    TriggerClientEvent("Drones:UseDrone", source, drone_data)
    xPlayer.Functions.RemoveItem('drone_flyer_3', 1)
end)

QBCore.Functions.CreateUseableItem("drone_flyer_4", function(source)
    local xPlayer = QBCore.Functions.GetPlayer(source)

    local drone_data = Config.Drones[4]
    TriggerClientEvent("Drones:UseDrone", source, drone_data)
    xPlayer.Functions.RemoveItem('drone_flyer_4', 1)
end)

QBCore.Functions.CreateUseableItem("drone_flyer_5", function(source)
    local xPlayer = QBCore.Functions.GetPlayer(source)

    local drone_data = Config.Drones[5]
    TriggerClientEvent("Drones:UseDrone", source, drone_data)
    xPlayer.Functions.RemoveItem('drone_flyer_5', 1)
end)

QBCore.Functions.CreateUseableItem("drone_flyer_6", function(source)
    local xPlayer = QBCore.Functions.GetPlayer(source)

    local drone_data = Config.Drones[6]
    TriggerClientEvent("Drones:UseDrone", source, drone_data)
    xPlayer.Functions.RemoveItem('drone_flyer_6', 1)
end)

QBCore.Functions.CreateUseableItem("drone_flyer_7", function(source)
    local xPlayer = QBCore.Functions.GetPlayer(source)

    local drone_data = Config.Drones[7]
    TriggerClientEvent("Drones:UseDrone", source, drone_data)
    xPlayer.Functions.RemoveItem('drone_flyer_7', 1)
end)

-- RegisterServerEvent("drone6")
-- AddEventHandler("drone6",function(source)
--     local xPlayer = QBCore.Functions.GetPlayer(source)
--     xPlayer.Functions.RemoveItem('drone', 1)
--     local drone_data = Config.Drones[6]
--     TriggerClientEvent('Drones:UseDrone', xPlayer.source, drone_data)
-- end)
