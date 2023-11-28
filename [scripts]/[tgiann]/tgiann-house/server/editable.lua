function removeCarGarage(src, identifier, vehicleProperties)
    if Config.useTgiannGarage then
        update('UPDATE '..Config.vehicleTableName..' SET houseGarage = @houseGarage WHERE plate = @plate', {
            ['@plate'] = vehicleProperties.plate,
            ['@houseGarage'] = 0
        })
    else
        if Config.framework == "qb" then
            update('UPDATE player_vehicles SET state = ? WHERE plate = ?',{0, vehicleProperties.plate})
        end
    end
end

function addCarGarage(src, identifier, vehicleProperties)
    if Config.useTgiannGarage then
        update('UPDATE '..Config.vehicleTableName..' SET houseGarage = @houseGarage WHERE plate = @plate', {
            ['@plate'] = vehicleProperties.plate,
            ['@houseGarage'] = 1
        })
    else
        if Config.framework == "qb" then
            update('UPDATE player_vehicles SET state = ?, garage = ? WHERE plate = ?',{1, "-1", vehicleProperties.plate})
        end
    end
end