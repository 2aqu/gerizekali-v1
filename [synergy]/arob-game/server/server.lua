

exports('DeleteCar', function (id, car, plate, ChannelID)
    if GetPlayerName(id) then
        id = tonumber(id)
        xPlayer = QBCore.Functions.GetPlayer(id)
        if xPlayer then
            fetch = [[SELECT * FROM players WHERE citizenid = ?;]]
            fetchData = {xPlayer.PlayerData.citizenid}
            result = FetchAll(fetch, fetchData)
            ident = xPlayer.PlayerData.citizenid
        end
    else
        fetch = [[SELECT * FROM players WHERE citizenid = ?;]]
        fetchData = {id}
        result = FetchAll(fetch, fetchData)
        ident = id
    end

    if result and result[1] then
        fetchVehicles = [[SELECT * FROM player_vehicles WHERE citizenid = ?;]]
        fetchDataVehicles = {ident}
        resultVehicles = FetchAll(fetchVehicles, fetchDataVehicles)

        if resultVehicles and #resultVehicles > 0 then
            local foundVehicle = false 
            for _, vehicleData in ipairs(resultVehicles) do
                if vehicleData.vehicle == car and vehicleData.plate == plate then
                    foundVehicle = true 

                    local playerPed = GetPlayerPed(id) 
                    local vehicle = GetVehiclePedIsIn(playerPed, false) 

                    if DoesEntityExist(vehicle) then 
                        local drVehicleHash = GetEntityModel(vehicle)
                        local drPlate = GetVehicleNumberPlateText(vehicle)
                        
                        drPlate = string.gsub(drPlate, "%s", "")
                        plate = string.gsub(plate, "%s", "")
                        drVehicleHash = tonumber(drVehicleHash)
                        vehicleData.hash = tonumber(vehicleData.hash)
                       

                        if drPlate == plate and drVehicleHash == vehicleData.hash then
                            TriggerClientEvent('QBCore:Command:DeleteVehicle', id)   
                        end
                    end
                    
                    TriggerClientEvent('QBCore:Notify', id, string.format(translate.delcar_notice, plate, car), "success")
                    local embed = {
                        color = "#00FF00",
                        description = string.format(translate.delcar_true, id, plate, car),
                        channel = ChannelID
                    }

                    TriggerEvent('arob-gamev2:SendEmbed', embed)

                    Citizen.Wait(500)

                    local deleteQuery = [[DELETE FROM player_vehicles WHERE citizenid = ? AND vehicle = ? AND plate = ?;]]
                    local deleteData = {ident, car, plate}
                    Execute(deleteQuery, deleteData) 

                    return
                end
            end

            if not foundVehicle then 
                local embed = {
                    color = "#FF2400",
                    author = string.format(translate.notfoundcar),
                    channel = ChannelID
                }
                TriggerEvent('arob-gamev2:SendEmbed', embed)
            end
        else
            local embed = {
                color = "#FF2400",
                author = string.format(translate.player_nocar),
                channel = ChannelID
            }
            TriggerEvent('arob-gamev2:SendEmbed', embed)
        end
    else
        local isNumeric = tonumber(id)
        local hasAlphaNumeric = string.match(id, "%w+")

        if isNumeric then
            local embed = {
                color = "#FF2400",
                author = string.format(translate.player_offline, id),
                channel = ChannelID
            }
            TriggerEvent('arob-gamev2:SendEmbed', embed)
        elseif hasAlphaNumeric and string.len(id) > 6 then
            local embed = {
                color = "#FF2400",
                author = string.format(translate.player_nodata),
                channel = ChannelID
            }
            TriggerEvent('arob-gamev2:SendEmbed', embed)
        end
    end
end)