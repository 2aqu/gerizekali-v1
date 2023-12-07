QBCore = exports["qb-core"]:GetCoreObject()

function putIt(vehicle, ped, plate, vmn, delete, source)
    -- print(vehicle)
    -- print(GetEntityModel(vehicle))
    -- print(vmn)
    if vmn and vehicle then
        MySQL.Async.fetchAll('SELECT vehicles FROM vehicle_shops WHERE shop_id = ?', {"pdm_main_1"}, function(result)
            if result[1] then
                local valuechanged = false
                local vehicles = json.decode(result[1].vehicles)
                for vehicleClassName, vehicleClass in pairs(vehicles) do
                    for k, v in pairs(vehicles[vehicleClassName]) do
                        if (v.hash == string.lower(vmn)) then
                            valuechanged = true
                            vehicles[vehicleClassName][k].stock = vehicles[vehicleClassName][k].stock + 1
                        end
                    end
                end
                if valuechanged then
                    MySQL.update.await('UPDATE vehicle_shops SET vehicles = ? WHERE shop_id = ?',
                        {json.encode(vehicles), "pdm_main_1"})
                    if delete then
                        MySQL.query('DELETE FROM player_vehicles WHERE plate = ?', {plate})
                    end
                    TriggerClientEvent('QBCore:Notify', source,
                        "Aracı teslim ettin! Resmi işlemler tamamlandıktan sonra stoğa yansıyacak!", "success")
                        Citizen.CreateThread(function()
                            TaskLeaveVehicle(ped, vehicle, 1)
                            Wait(1000)
                            DeleteEntity(vehicle)
                        end)
                end
            else
            end
        end)
    end
end

RegisterServerEvent("eph:vsaddon:putstock", function(vmn)
    local src = source
    local vehicle = GetVehiclePedIsIn(GetPlayerPed(source))
    local plate = (GetVehicleNumberPlateText(vehicle))
    local player = QBCore.Functions.GetPlayer(src)
    MySQL.Async.fetchAll('SELECT plate, citizenid FROM player_vehicles WHERE plate = ?', {plate}, function(result)
        if not result[1] then
            putIt(vehicle, GetPlayerPed(src), plate, vmn, false, src)
        else
            if result[1].citizenid == player.PlayerData.citizenid then
                putIt(vehicle, GetPlayerPed(src), plate, vmn, true, src)
            else
                TriggerClientEvent('QBCore:Notify', src, "Bu araç başka bir sivile ait, galeriye koyamazsın!",
                    "error")
            end
        end
    end)
end)
