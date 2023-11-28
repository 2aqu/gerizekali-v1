Modules.Player = {}
Modules.Player.IsDead = false
local currentVehicle = nil
function Modules.Player.GetPed()
    return PlayerPedId()
end

function Modules.Player.GetDeadStatus()
    return Modules.Player.IsDead
end

function Modules.Player.SetDeadStatus(status)
    Modules.Player.IsDead = status
end

function Modules.Player.GetPos()
    return GetEntityCoords(Modules.Player.GetPed())
end

function Modules.Player.GetHeading()
    return GetEntityHeading(Modules.Player.GetPed())
end

function Modules.Player.GetCurrentVehicle()
    return currentVehicle
end

function Modules.Player.GetLastVehicle()
    return GetVehiclePedIsIn(Modules.Player.GetPed(), true)
end
local vehicleState = false

function Modules.Player.IsPedInAnyVehicle()
    if IsPedInAnyVehicle(Modules.Player.GetPed(), false) or IsPedInAnyVehicle(Modules.Player.GetPed(), true) then
       return true
    end
    return vehicleState
end

function Modules.Player.GetHealth()
    return GetEntityHealth(Modules.Player.GetPed())
end
Citizen.CreateThread(function()
    while true do
        if GetVehiclePedIsIn(PlayerPedId()) > 0 then
            vehicleState = true
            currentVehicle = GetVehiclePedIsIn(PlayerPedId())
        else
            vehicleState = false
            currentVehicle = nil
        end
        Wait(1000)
    end
end)