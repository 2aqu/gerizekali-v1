QBCore = exports['qb-core']:GetCoreObject()

local plyCoords = {}
local oElement = {}

local InUse = false
local PlyLastPos = 0
local Anim = 'sit'
local disable = false
local setCoords = false

local lastDict = ""
local lastAnim = ""
local isScenario = false
local scenarioAnim = ""

local object = nil
local vertx = nil
local verty = nil
local vertz = nil
local dir = nil
local isBed = nil
local objectcoords = nil

RegisterNetEvent('ChairBedSystem:disable-script')
AddEventHandler('ChairBedSystem:disable-script', function(status)
    disable = status
end)

exports('yatakVarmi', function()
    local plyCoords = GetEntityCoords(PlayerPedId())
    for _, element in pairs(Config.objects.locations) do
        local model = (type(element.object)=="number" and element.object or GetHashKey(element.object))
        local closestObject = GetClosestObjectOfType(plyCoords.x, plyCoords.y, plyCoords.z, 3.0, model, 0, 0, 0)
        local coordsObject = GetEntityCoords(closestObject)
        local distanceDiff = #(coordsObject - plyCoords)
        if (distanceDiff < 2 and closestObject ~= 0) then
            oElement = {
                fObject = closestObject,
                fObjectCoords = coordsObject,
                fObjectcX = element.verticalOffsetX,
                fObjectcY = element.verticalOffsetY,
                fObjectcZ = element.verticalOffsetZ,
                fObjectDir = element.direction,
                fObjectIsBed = element.bed
            }
            return {true, element.bed, false}
        end
    end 
    for x, y in pairs(Config.objects.coordsLocation) do
        local distance = #(vector3(y.x, y.y, y.z) - plyCoords)
        if distance < 2 then
            return {true, true, y}
        end
    end
    return {false, false, false}
end)

Citizen.CreateThread(function()
    while true do
        local waitTime = 1000
        if InUse and not disable then
            waitTime = 1
            local ply = PlayerPedId()
            if setCoords then
                coords = setCoords
            else
                coords = oElement.fObjectCoords
            end

            QBCore.Functions.DrawText3D(coords.x, coords.y, coords.z, '~g~F~w~ Kalk!')

            if isScenario then
                if not IsPedUsingScenario(ply, scenarioAnim) then
                    TaskStartScenarioAtPosition(ply, scenarioAnim, objectcoords.x + vertx, objectcoords.y + verty, objectcoords.z - vertz, GetEntityHeading(object) + dir, 0, true, true)
                end
            else
                if not IsEntityPlayingAnim(ply, lastDict, lastAnim, 1) then
                    QBCore.Shared.RequestAnimDict(lastDict, function()
                        TaskPlayAnim(ply, lastDict, lastAnim, 8.0, 1.0, -1, 1, 0, 0, 0, 0)
                    end)
                end
            end

            if IsControlJustPressed(0, 23) then
                InUse = false
                ClearPedTasksImmediately(ply)
                FreezeEntityPosition(ply, false)
                SetEntityCoords(ply, PlyLastPos)
            end

        end
        Citizen.Wait(waitTime)
    end
end)

RegisterNetEvent('yattimlan:client')
AddEventHandler('yattimlan:client', function(yattim)
    local yaticak = yattim.args
    local yatakData = exports["ChairBedSystem"]:yatakVarmi()
    prop, yatak, animYatak = yatakData[1], yatakData[2], yatakData[3]
    if yaticak == "yuz" then
        TriggerEvent("ChairBedSystem:Client:yatak-yatir", "stomach", animYatak)
    elseif yaticak == "sirt" then
        TriggerEvent("ChairBedSystem:Client:yatak-yatir", "back", animYatak)
    else
        TriggerEvent("ChairBedSystem:Client:yatak-yatir", "sit", animYatak)
    end
end)

RegisterNetEvent('ChairBedSystem:Client:yatak-yatir')
AddEventHandler('ChairBedSystem:Client:yatak-yatir', function(tip, _setCoords)
    Anim = tip
    setCoords = _setCoords
    if setCoords then
        TriggerEvent('ChairBedSystem:Client:Animation_coords', setCoords)
    else
        TriggerEvent('ChairBedSystem:Client:Animation', oElement, oElement.fObjectCoords)
    end
end)

RegisterNetEvent('ChairBedSystem:Client:Animation')
AddEventHandler('ChairBedSystem:Client:Animation', function(v, coords)
    object = v.fObject
    vertx = v.fObjectcX
    verty = v.fObjectcY
    vertz = v.fObjectcZ
    dir = v.fObjectDir
    isBed = v.fObjectIsBed
    objectcoords = coords
    isScenario = true
    
    local ped = PlayerPedId()
    PlyLastPos = GetEntityCoords(ped)
    FreezeEntityPosition(object, true)
    FreezeEntityPosition(ped, true)
    InUse = true

    if isBed == false then
        if Config.objects.SitAnimation.dict ~= nil then
            SetEntityCoords(ped, objectcoords.x, objectcoords.y, objectcoords.z + 0.5)
            SetEntityHeading(ped, GetEntityHeading(object) - 180.0)
            AnimLoadDict(Config.objects.SitAnimation.dict, Config.objects.SitAnimation.anim, ped)
        else
            scenarioAnim = Config.objects.SitAnimation.anim
            TaskStartScenarioAtPosition(ped, scenarioAnim, objectcoords.x + vertx, objectcoords.y + verty, objectcoords.z - vertz, GetEntityHeading(object) + dir, 0, true, true)
        end
    else
        if Anim == 'back' then
            if Config.objects.BedBackAnimation.dict ~= nil then
                SetEntityCoords(ped, objectcoords.x, objectcoords.y, objectcoords.z + 0.5)
                SetEntityHeading(ped, GetEntityHeading(object) - 180.0)
                Animation(Config.objects.BedBackAnimation.dict, Config.objects.BedBackAnimation.anim, ped)
            else
                scenarioAnim = Config.objects.BedBackAnimation.anim
                TaskStartScenarioAtPosition(ped, scenarioAnim, objectcoords.x + vertx, objectcoords.y + verty, objectcoords.z - vertz, GetEntityHeading(object) + dir, 0, true, true)
            end
        elseif Anim == 'stomach' then
            if Config.objects.BedStomachAnimation.dict ~= nil then
                SetEntityCoords(ped, objectcoords.x, objectcoords.y, objectcoords.z + 0.5)
                SetEntityHeading(ped, GetEntityHeading(object) - 180.0)
                Animation(Config.objects.BedSitAnimation.dict, Config.objects.BedSitAnimation.anim, ped)
            else
                scenarioAnim = Config.objects.BedStomachAnimation.anim
                TaskStartScenarioAtPosition(ped, scenarioAnim, objectcoords.x + vertx, objectcoords.y + verty, objectcoords.z - vertz, GetEntityHeading(object) + dir, 0, true, true)
            end
        elseif Anim == 'sit' then
            if Config.objects.BedSitAnimation.dict ~= nil then
                SetEntityCoords(ped, objectcoords.x, objectcoords.y, objectcoords.z + 0.5)
                SetEntityHeading(ped, GetEntityHeading(object) - 180.0)
                Animation(Config.objects.BedSitAnimation.dict, Config.objects.BedSitAnimation.anim, ped)
            else
                scenarioAnim = Config.objects.BedSitAnimation.anim
                TaskStartScenarioAtPosition(ped, scenarioAnim, objectcoords.x + vertx, objectcoords.y + verty, objectcoords.z - vertz, GetEntityHeading(object) + 180.0, 0, true, true)
            end
        end
    end
end)

RegisterNetEvent('ChairBedSystem:Client:Animation_coords')
AddEventHandler('ChairBedSystem:Client:Animation_coords', function(bed)
    local objectcoords = vector3(bed.x, bed.y, bed.z)
    local heading = bed.h
    local ped = PlayerPedId()
    PlyLastPos = GetEntityCoords(ped)

    FreezeEntityPosition(ped, true)
    InUse = true
    isScenario = true

    if Anim == 'back' then
        SetEntityCoords(ped, objectcoords.x, objectcoords.y, objectcoords.z)
        SetEntityHeading(ped, heading)
        Animation("anim@gangops@morgue@table@", "ko_front", ped)
    elseif Anim == 'stomach' then
        scenarioAnim = "WORLD_HUMAN_SUNBATHE"
        TaskStartScenarioAtPosition(ped, "WORLD_HUMAN_SUNBATHE", objectcoords.x, objectcoords.y, objectcoords.z+1.0, heading+180.0, 0, true, true)
    elseif Anim == 'sit' then
        if Config.objects.BedSitAnimation.dict ~= nil then
            SetEntityCoords(ped, objectcoords.x, objectcoords.y, objectcoords.z + 1.5)
            SetEntityHeading(ped, heading - 180.0)
            Animation(Config.objects.BedSitAnimation.dict, Config.objects.BedSitAnimation.anim, ped)
        else
            scenarioAnim = Config.objects.BedSitAnimation.anim
            TaskStartScenarioAtPosition(ped, scenarioAnim, objectcoords.x, objectcoords.y, objectcoords.z+1.0, heading, 0, true, true)
        end
    end
end)

function Animation(dict, anim, ped)
    isScenario = false
    lastDict = dict
    lastAnim = anim
    QBCore.Shared.RequestAnimDict(lastDict, function()
        TaskPlayAnim(ped, lastDict, lastAnim, 8.0, 1.0, -1, 1, 0, 0, 0, 0)
    end)
end