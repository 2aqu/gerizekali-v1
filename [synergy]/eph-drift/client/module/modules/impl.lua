QBCore = exports['qb-core']:GetCoreObject()

local vehiclesThatHaveDriftChip = {}



RegisterNetEvent("eph:drift:setDriftChip")
AddEventHandler("eph:drift:setDriftChip", function(status)
    currentVehicle.hasDriftChip = status
end)

local function GetDoor(vehicle, door)
    return (GetVehicleDoorAngleRatio(vehicle, door) > 0.0)
end


function removeDriftChip(entity)
    local closestBone = getTargetBone(entity)
    QBCore.Functions.Progressbar("search-driftchip", "DriftChip arıyorsun...", 15050, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "mini@repair",
        anim = "fixing_a_player",
        flags = 49,
    }, {}, {}, function()
        exports['ps-ui']:Circle(function(success)
            local vehicleplate = GetVehicleNumberPlateText(QBCore.Functions.GetClosestVehicle(GetEntityCoords(
                PlayerPedId())))
            if success then
                QBCore.Functions.TriggerCallback("eph:drift:removeDriftChip", function(updated)
                    if updated  then
                        QBCore.Functions.Notify("Araçtan DriftChip söktün.")
                        vehiclesThatHaveDriftChip[vehicleplate] = 0
                    end
                end, vehicleplate, closestBone)
            else
                QBCore.Functions.Notify("Onun DriftChip olduğundan emin misin?.")
                vehiclesThatHaveDriftChip[vehicleplate] = 0
            end
        end, math.random(3, 6), 7)
    end, function()
        print("2")
    end, "fas fa-gas-pump")
end

function searchDriftChip(entity)
    local closestBone = getTargetBone(entity)
    QBCore.Functions.Progressbar("search-driftchip", "DriftChip arıyorsun...", 7500, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "mini@repair",
        anim = "fixing_a_player",
        flags = 49,
    }, {}, {}, function()
        local vehicleplate = GetVehicleNumberPlateText(QBCore.Functions.GetClosestVehicle(GetEntityCoords(PlayerPedId())))
        QBCore.Functions.TriggerCallback("eph:drift:vehicleHasDriftChip", function(driftChipStatus)
            if driftChipStatus > 0 and closestBone == driftChipStatus then
                QBCore.Functions.Notify("Araçta DriftChip buldun!")
                ExecuteCommand("do Kişi, araştırdığı kısımda şüphe duyduğu bir objeyle karşılaşmıştır.")
                vehiclesThatHaveDriftChip[vehicleplate] = driftChipStatus
            else
                QBCore.Functions.Notify("Araçta DriftChip bulamadın.")
            end
        end, vehicleplate, closestBone)
        print("1")
    end, function()
        print("2")
    end, "fas fa-gas-pump")
end

function areHeadingsWithin90Degrees(heading1, heading2)
    local angleDifference = math.abs(heading1 - heading2) % 360
    angleDifference = angleDifference > 180 and 360 - angleDifference or angleDifference

    return (angleDifference <= 90) or (angleDifference <= 95) or (angleDifference <= 100)
end

function getTargetBone(entity)
    local bonecoords_wheel_lf = (GetWorldPositionOfEntityBone(entity, GetEntityBoneIndexByName(entity, "wheel_lf")))
    local bonecoords_wheel_rf = (GetWorldPositionOfEntityBone(entity, GetEntityBoneIndexByName(entity, "wheel_rf")))
    local bonecoords_wheel_rr = (GetWorldPositionOfEntityBone(entity, GetEntityBoneIndexByName(entity, "wheel_rr")))
    local bonecoords_wheel_lr = (GetWorldPositionOfEntityBone(entity, GetEntityBoneIndexByName(entity, "wheel_lr")))
    local bonecoords_engine = (GetWorldPositionOfEntityBone(entity, GetEntityBoneIndexByName(entity, "engine")))
    local playercoords = GetEntityCoords(PlayerPedId())


    local function GetDistance(coord1, coord2)
        return #(coord1 - coord2) -- This calculates the Euclidean distance between two vectors
    end
    local bones = {
        [0] = bonecoords_engine,
        [1] = bonecoords_wheel_lf,
        [2] = bonecoords_wheel_rf,
        [3] = bonecoords_wheel_rr,
        [4] = bonecoords_wheel_lr
    }

    local function GetClosestBone(playerCoords, bones)
        local minDistance = math.huge
        local closestBone = nil

        for boneName, boneCoords in pairs(bones) do
            local distance = GetDistance(playerCoords, boneCoords)

            if distance < minDistance then
                minDistance = distance
                closestBone = boneName
            end
        end

        return closestBone
    end

    return GetClosestBone(playercoords, bones)
end

function installDriftChip(entity)
    local closestBone = getTargetBone(entity)
    print("Closest bone:", closestBone)
    local veh = QBCore.Functions.GetClosestVehicle(GetEntityCoords(PlayerPedId()))
    local vehicleplate = GetVehicleNumberPlateText(veh)
    QBCore.Functions.TriggerCallback("eph:drift:vehicleHasDriftChip", function(driftChipStatus)
        if driftChipStatus > 0 then
            QBCore.Functions.Notify("Bu araca DC takamazsın.")
        else
            QBCore.Functions.Progressbar("install_driftchip", "Araca DriftChip takıyorsun..",
                math.random(1000, 3000), false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
                    anim = "machinic_loop_mechandplayer",
                    flags = 01,
                }, {}, {}, function() -- Done
                    StopAnimTask(PlayerPedId(), "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
                        "machinic_loop_mechandplayer", 1.0)
                    QBCore.Functions.Notify("DriftChip'i araca taktın!")
                    QBCore.Functions.TriggerCallback("eph:drift:installDriftChip", function()

                    end, vehicleplate, closestBone)
                    Citizen.Wait(1500)
                end, function() -- Cancel
                    StopAnimTask(PlayerPedId(), "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
                        "machinic_loop_mechandplayer", 1.0)
                end)
        end
    end, vehicleplate)
end

exports["qb-target"]:AddTargetBone({ "engine", "wheel_lf", "wheel_rf", "wheel_rr", "wheel_lr" }, {
    options = {
        {
            id = 1,
            icon = "fas fa-microchip",
            label = "DriftChip Tak",
            jobType = "underground",

            action = function(entity)
                installDriftChip(entity)
            end,
            canInteract = function(entity, distance, data) -- This will check if you can interact with it, this won't show up if it returns false, this is OPTIONAL
                local veh = QBCore.Functions.GetClosestVehicle(GetEntityCoords(PlayerPedId()))
                local vehicleHeading = GetEntityHeading(veh)
                local playerHeading = (GetEntityHeading(PlayerPedId()))
                if  (exports["efearob-base"]:isCrouching()) then
                    if (QBCore.Functions.HasItem("driftchip")) then
                        return true
                    end
                    return false
                    --if IsPedAPlayer(entity) then return false end -- This will return false if the entity interacted with is a player and otherwise returns true
                end
            end,
            distance = 3
        },
        {
            id = 2,
            icon = "fas fa-microchip",
            label = "DriftChip Ara",
            jobType = "leo",
            action = function(entity)
                searchDriftChip(entity)
            end,
            canInteract = function(entity, distance, data) -- This will check if you can interact with it, this won't show up if it returns false, this is OPTIONAL
                return true
            end,
            distance = 3
        },
        {
            id = 3,
            icon = "fas fa-microchip",
            label = "DriftChip Sök",
            jobType = "leo",
            action = function(entity)
                removeDriftChip(entity)
            end,
            canInteract = function(entity, distance, data) -- This will check if you can interact with it, this won't show up if it returns false, this is OPTIONAL
                local plate = GetVehicleNumberPlateText(entity)
                return vehiclesThatHaveDriftChip[plate] == getTargetBone(entity)
            end,
            distance = 3
        }
    }
});



--exports["qb-target"]:AddTargetBone("engine", {
--    options = {
--        {
--            icon = "fas fa-microchip",
--            label = "DriftChip Ara",
--            jobType = "leo",
--            action = function(entity)
--                searchDriftChip()
--            end,
--            canInteract = function(entity, distance, data) -- This will check if you can interact with it, this won't show up if it returns false, this is OPTIONAL
--                local veh = QBCore.Functions.GetClosestVehicle(GetEntityCoords(PlayerPedId()))
--                if (GetDoor(veh, 4 or 5)) then
--                    return true
--                end
--                return false
--                --if IsPedAPlayer(entity) then return false end -- This will return false if the entity interacted with is a player and otherwise returns true
--            end,
--            distance = 2
--        }
--    }
--});



Citizen.CreateThread(function()
    while true do
        Wait(5000)
        local vehicle = GetVehiclePedIsIn(PlayerPedId())
        if not (vehicle > 0) then Modules.DriftCounter.IsEnabled = false end
    end
end)

function toggleDriftMode()
    local vehicle = GetVehiclePedIsIn(PlayerPedId())
    local vehiclePlate = GetVehicleNumberPlateText(vehicle)
    if not (vehicle > 0) then return end
    QBCore.Functions.TriggerCallback("eph:drift:vehicleHasDriftChip", function(driftChipStatus)
        if driftChipStatus > 0 then
            Modules.DriftCounter.IsEnabled = not Modules.DriftCounter.IsEnabled
            if Modules.DriftCounter.IsEnabled then
                QBCore.Functions.Notify("Drift modu aktif.")
            else
                QBCore.Functions.Notify("Drift modu inaktif.")
            end
        end
    end, vehiclePlate)
end

RegisterCommand("driftmode", function()    
    toggleDriftMode()
end)
RegisterKeyMapping("driftmode", "Drift modunu açar ve kapatır.", "keyboard", "f12")
