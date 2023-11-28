local QBCore = exports['qb-core']:GetCoreObject()

Modules.DriftCounter = {}
Modules.DriftCounter.IsEnabled = false
Modules.DriftCounter.IsDrifting = false
Modules.DriftCounter.CurrentPoints = 0
Modules.DriftCounter.CurrentAngle = 0 -- Only refreshed when the player is drifting
Modules.DriftCounter.ChainCooldown = ConfigShared.DriftChainTime
Modules.DriftCounter.ChainLoopStarted = false
Modules.DriftCounter.ChainTimeLeft = 0
Modules.DriftCounter.GlobalAlpha = 0
if ConfigShared.devmod then
    Modules.DriftCounter.GlobalAlpha = 255
end
Modules.DriftCounter.InAnimation = false
Modules.DriftCounter.CachedAllowedVeh = {}

function Modules.DriftCounter.GetCurrentAngle()
    if Modules.Player.IsPedInAnyVehicle() and isInDriftPositions() then
        local veh = Modules.Player.GetCurrentVehicle()
        local vx, vy, _ = table.unpack(GetEntityVelocity(veh))
        local modV = math.sqrt(vx * vx + vy * vy)


        local _, _, rz = table.unpack(GetEntityRotation(veh, 0))
        local sn, cs = -math.sin(math.rad(rz)), math.cos(math.rad(rz))

        if GetEntitySpeed(veh) * 3.6 < ConfigShared.minSpeed or GetVehicleCurrentGear(veh) == 0 then return 0, modV end

        local cosX = (sn * vx + cs * vy) / modV
        return math.deg(math.acos(cosX)) * 0.5, modV
    else
        return 0
    end
end

-- Cleaning the cache to avoid any memory leak as the system will load up every vehicule entity the player goes in. If the entity is deleted or not in range it will be removed from the list to avoid memory leaks
function Modules.DriftCounter.CleanUpCache()
    for veh, allowed in pairs(Modules.DriftCounter.CachedAllowedVeh) do
        if not DoesEntityExist(veh) then
            Modules.DriftCounter.CachedAllowedVeh[veh] = nil
        end
    end
end

function Modules.DriftCounter.IsVehiculeAllowedToDrift(pVeh)
    if ConfigShared.UseVehicleWhitelist then
        if Modules.DriftCounter.CachedAllowedVeh[pVeh] == nil then
            local pVehModel = GetEntityModel(pVeh)
            if ConfigShared.WhitelistedVehicules[pVehModel] ~= nil then
                Modules.DriftCounter.CachedAllowedVeh[pVeh] = true
            else
                Modules.DriftCounter.CachedAllowedVeh[pVeh] = false
            end
            Modules.DriftCounter.CleanUpCache()
        else
            return Modules.DriftCounter.CachedAllowedVeh[pVeh] -- Using a cache system allow better performance, we don't check the vehicle model every time.
        end
    else
        return true
    end
end
isInDriftZone = false
RegisterNetEvent("eph:drift:isInDriftZone")
AddEventHandler("eph:drift:isInDriftZone", function(state) 
    isInDriftZone = state
    print(state)
end)
function isInDriftPositions() -- add polyzone
    if isInDriftZone then
        return true
    else
        return false
    end
end


function Modules.DriftCounter.IsPlayerDrifting()
    -- print(isInDriftPositions())
    if Modules.Player.IsPedInAnyVehicle() and isInDriftPositions() then
        local pVeh = Modules.Player.GetCurrentVehicle()
        if Modules.DriftCounter.IsVehiculeAllowedToDrift(pVeh) then
            if GetEntityHeightAboveGround(pVeh) <= 1.5 then
                if Modules.Player.GetPed() == GetPedInVehicleSeat(pVeh, -1) then
                    Modules.DriftCounter.CurrentAngle = Modules.DriftCounter.GetCurrentAngle()
                    if Modules.DriftCounter.CurrentAngle > 10 then
                        return true
                    else
                        return false
                    end
                else
                    return false
                end
            else
                return false
            end
        end
    else
        return false
    end
end

function Modules.DriftCounter.StartChainBreakLoop()
    if not Modules.DriftCounter.ChainLoopStarted then
        Modules.DriftCounter.ChainLoopStarted = true
        if ConfigShared.UseDefaultUI then
            Modules.DriftCounter.FadeInHud()
        end
        TriggerEvent(ConfigShared.DriftStartEvent)
        QBCore.Functions.Notify("Drifte başladın")
        Citizen.CreateThread(function()
            Modules.Utils.RealWait(Modules.DriftCounter.ChainCooldown, function(cb, timeLeft)
                Modules.DriftCounter.ChainTimeLeft = timeLeft - (timeLeft * 2) -- Duh
                if Modules.DriftCounter.IsDrifting  and isInDriftPositions()  then
                    cb(false, ConfigShared.DriftChainTime)
                end
            end)
            if ConfigShared.UseDefaultUI then
                Modules.DriftCounter.FadeOutHud()
            end
            TriggerEvent(ConfigShared.DriftFinishedEvent, Modules.DriftCounter.CurrentPoints)
            local csc = 0
            for k, v in pairs(Modules.DriftCounter.speeds) do
                csc = csc + v
            end
            QBCore.Functions.Notify("Driftin bitti. Ortalama hızın : " .. csc / #Modules.DriftCounter.speeds)
            Modules.DriftCounter.speeds = {}

            Modules.DriftCounter.ChainCooldown = ConfigShared.DriftChainTime
            Modules.DriftCounter.ChainLoopStarted = false
            Modules.DriftCounter.CurrentPoints = 0
            Modules.DriftCounter.CurrentAngle = 0
            Modules.DriftCounter.ChainTimeLeft = 0
            Modules.DriftCounter.AverageSpeed = 0
            Modules.DriftCounter.Hits = 0
        end)
    end
end

function Modules.DriftCounter.FadeInHud()
    Citizen.CreateThread(function()
        Modules.DriftCounter.InAnimation = true
        while Modules.DriftCounter.GlobalAlpha < 255 do
            Modules.DriftCounter.GlobalAlpha = Modules.DriftCounter.GlobalAlpha + (0.5 * Modules.Utils.TimeFrame)
            Wait(0)
        end
        Modules.DriftCounter.InAnimation = false
        Modules.DriftCounter.GlobalAlpha = 255
    end)
end

function Modules.DriftCounter.FadeOutHud()
    Citizen.CreateThread(function()
        Modules.DriftCounter.InAnimation = true
        while Modules.DriftCounter.GlobalAlpha > 0 do
            Modules.DriftCounter.GlobalAlpha = Modules.DriftCounter.GlobalAlpha - (0.5 * Modules.Utils.TimeFrame)
            Wait(0)
        end
        Modules.DriftCounter.InAnimation = false
        Modules.DriftCounter.GlobalAlpha = 0
    end)
end
Modules.DriftCounter.speeds = {}
Citizen.CreateThread(function()
    while true do
        if Modules.DriftCounter.IsEnabled then -- Check we're enabled
            if Modules.DriftCounter.IsPlayerDrifting() and isInDriftPositions() then
                Modules.DriftCounter.IsDrifting = true
                Modules.DriftCounter.StartChainBreakLoop()
                if Modules.DriftCounter.CurrentAngle > 10 and isInDriftPositions()  then
                    if ConfigShared.AddPointBasedOnAngle then
                        Modules.DriftCounter.CurrentPoints = math.floor(Modules.DriftCounter.CurrentPoints + (Modules.DriftCounter.CurrentAngle / 100) * Modules.Utils.TimeFrame) -- This fix the issue where player with low fps would get less point then player with high fps count.
                        local currentSpeed = math.ceil(GetEntitySpeed(Modules.Player.GetCurrentVehicle()) * 3.6)
                        table.insert(Modules.DriftCounter.speeds, currentSpeed)
                    end
                    if ConfigShared.AddStaticPointOnDrifting then
                        Modules.DriftCounter.CurrentPoints = math.floor(Modules.DriftCounter.CurrentPoints + ConfigShared.StaticPointToAdd * Modules.Utils.TimeFrame) -- This fix the issue where player with low fps would get less point then player with high fps count. 
                        local currentSpeed = math.ceil(GetEntitySpeed(Modules.Player.GetCurrentVehicle()) * 3.6)
                        table.insert(Modules.DriftCounter.speeds, currentSpeed)
                        -- print(#Modules.DriftCounter.speeds)
                    end
                end
            else
                Modules.DriftCounter.IsDrifting = false
                if Modules.DriftCounter.ChainLoopStarted then
                    Wait(0) -- Chain active, so we need to check if the player start drifting again or not as fast as possible
                else
                    Wait(1000) -- Could be longer i guess, but will take more time to detect if the player is drifting or not.
                end
            end
        else
            Wait(1000) -- Sleep if disabled
        end
        Wait(0)
    end
end)

AddEventHandler(ConfigShared.GetCurrentDriftScore, function(cb)
    cb(Modules.DriftCounter.CurrentPoints)
end)

AddEventHandler(ConfigShared.IsDrifting, function(cb)
    cb(Modules.DriftCounter.IsDrifting)
end)

AddEventHandler(ConfigShared.IsEnabled, function(cb)
    cb(Modules.DriftCounter.IsEnabled)
end)

AddEventHandler(ConfigShared.EnableEvent, function()
    Modules.DriftCounter.IsEnabled = true
end)

AddEventHandler(ConfigShared.DisableEvent, function()
    Modules.DriftCounter.IsEnabled = false
end)

AddEventHandler(ConfigShared.ToggleEvent, function()
    Modules.DriftCounter.IsEnabled = not Modules.DriftCounter.IsEnabled
end)
