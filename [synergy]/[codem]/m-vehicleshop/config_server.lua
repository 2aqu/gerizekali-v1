SVConfig = {
    DefaultSalary = 100,
    Database = "oxmysql", -- oxmysql | ghmattimysql | mysql-async
    DefaultBucketId = 0,
    SQLVehiclesTable = "player_vehicles", -- QBCore "player_vehicles" | ESX "owned_vehicles"
    discordToken = "",
    DateFormat = "%d/%m/%Y %H:%M:%S",
    FeePercentage = 0.4, -- n% of the vehicle price will be the fee
    DefaultStock = 10,

    --functions
    OnVehicleBought = function(source, license, identifier, model, plate, shopid, vehicleType)
        local hash = GetHashKey(model)

        if Config.Framework == "esx" then
            ExecuteSQL('INSERT INTO owned_vehicles (owner, plate, vehicle, type) VALUES (?, ?, ?, ?)', {identifier, plate, json.encode({model = hash, plate = plate}), vehicleType})
        else
            ExecuteSQL('INSERT INTO player_vehicles (license, citizenid, vehicle, hash, mods, plate, garage, state) VALUES (?, ?, ?, ?, ?, ?, ?, ?)', {
                license,
                identifier,
                model,
                hash,
                json.encode({model = hash, plate = plate}),
                plate,
                'pillboxgarage',
                0
            })
        end
    end
}