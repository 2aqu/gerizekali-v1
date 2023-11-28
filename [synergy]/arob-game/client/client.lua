

RegisterNetEvent(GetCurrentResourceName()..':kill', function()
    SetEntityHealth(PlayerPedId(), 0)
end)

RegisterNetEvent(GetCurrentResourceName()..':teleport', function(x, y, z, withVehicle)
    x = tonumber(x)
    y = tonumber(y)
    z = tonumber(z)
    if (withVehicle) then
        SetPedCoordsKeepVehicle(PlayerPedId(), x, y, z)
    else
        SetEntityCoords(PlayerPedId(), x, y, z);
    end
end)

function serverOnly()
    print("[ERROR] The triggered event can only be run on the server.")
end

exports('isRolePresent', serverOnly)
exports('getDiscordId', serverOnly)
exports('getRoles', serverOnly)
exports('getName', serverOnly)
exports('log', serverOnly)
