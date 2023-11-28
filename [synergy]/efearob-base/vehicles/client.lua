exports("getVehicleType", function(vehicleClass)
    if vehicleClass == 14 or vehicleClass == 15 or vehicleClass == 16 then
        return("car")
    elseif vehicleClass == 13 then
        return("boat")
    elseif vehicleClass == 8 or vehicleClass == 9 or vehicleClass == 10 or vehicleClass == 11 or vehicleClass == 12 or vehicleClass == 17 or vehicleClass == 18 then
        return("air")
    else
        return("unknown")
    end
end)
