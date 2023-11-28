function customOpenMenuFunction() 
    return true
end

function spawnVehicleFunction(veh)
    local plate = GetVehicleNumberPlateText(veh)
    TriggerEvent("vehiclekeys:client:SetOwner", plate)
    TriggerEvent("x-hotwire:give-keys", veh) 
    TriggerEvent('tgiann-hotwire:give-keys-with-carid', veh)
end