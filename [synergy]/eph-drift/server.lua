local QBCore = exports["qb-core"]:GetCoreObject()

local vehiclesWithDriftCache = {}

local function GetDoor(vehicle, door)
    return (GetVehicleDoorAngleRatio(vehicle, door) > 0.0)
end


QBCore.Functions.CreateCallback('eph:drift:vehicleHasDriftChip', function(source, cb, plate, closestBone)
    if vehiclesWithDriftCache[plate] then
        cb(vehiclesWithDriftCache[plate])
    else
        MySQL.Async.fetchAll('SELECT driftchip, plate FROM player_vehicles WHERE plate = ?', { plate }, function(result)
            if result[1] then
                if result[1].driftchip > 0 then
                    vehiclesWithDriftCache[result[1].plate] = result[1].driftchip
                    cb(result[1].driftchip)
                else
                    vehiclesWithDriftCache[result[1].plate] = 0
                    cb(0)
                end
            else
                if vehiclesWithDriftCache[plate] then
                    vehiclesWithDriftCache[plate] = 0
                end
                cb(0)
            end
        end)
    end
end)


QBCore.Functions.CreateCallback('eph:drift:installDriftChip', function(source, cb, plate, position)
    local installer = QBCore.Functions.GetPlayer(source)
    installer.Functions.RemoveItem("driftchip", 1)
    vehiclesWithDriftCache[plate] = position
    local updated = MySQL.update.await('UPDATE player_vehicles SET driftchip = ? WHERE plate = ?', {
        position, plate
    })
    cb(updated)
end)

QBCore.Functions.CreateCallback('eph:drift:removeDriftChip', function(source, cb, plate, position)
    local remover = QBCore.Functions.GetPlayer(source)
    remover.Functions.AddItem("driftchip", 1)
    if vehiclesWithDriftCache[plate] then
        vehiclesWithDriftCache[plate] = nil
    end
    local updated = MySQL.update.await('UPDATE player_vehicles SET driftchip = ? WHERE plate = ?', {
        0, plate
    })
    cb(updated)
end)



--QBCore.Functions.CreateUseableItem("driftchip", function(source, item)
--    local Player = QBCore.Functions.GetPlayer(source)
--    print(Player.PlayerData.charinfo.firstname .. " used driftchip.")
--    if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
--end)


