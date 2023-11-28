local fwork = Config.Framework

function getFramework()
    local Core = {}
    if fwork == "qbcore" then 
        local success, error = pcall(function()
            Core = exports[Config.FrameworkCustomName or "qb-core"]:GetCoreObject()
        end)
        if not success then 
            TriggerEvent('QBCore:GetObject', function(obj) 
                Core = obj 
            end)
        end
    else
        if Config.NewESX then
            Core = exports[Config.FrameworkCustomName or "es_extended"]:getSharedObject()
        else
            TriggerEvent('esx:getSharedObject', function(obj) Core = obj end)
        end
    end
    return Core
end

Framework = getFramework()


function Framework.GetIdentifier()
    local playerData = fwork == "qbcore" and Framework.Functions.GetPlayerData() or Framework.GetPlayerData()
    if not playerData then return end
    return fwork == "qbcore" and playerData.citizenid or playerData.identifier
end

function Framework.GetPlayerJob()
    local playerData = fwork == "qbcore" and Framework.Functions.GetPlayerData() or Framework.GetPlayerData()
    if not playerData then return end
    return playerData.job.name
end

function Framework.GetVehicleProperties(veh)
    if fwork == "qbcore" then

        return Framework.Functions.GetVehicleProperties(veh)
    else
        return Framework.Game.GetVehicleProperties(veh)
    end
end

function CreatePreviewVehicle(shopId, vehicle)
    print("eee")
    if PreviewVehicle then
        DeletePreviewVehicle()
        SendNUIMessage({
            action = "updateVehicleSpecs",
            data = {}
        })
    end
    local shop = Config.Locations[shopId]
    if not IsModelInCdimage(vehicle.hash) or not IsModelAVehicle(vehicle.hash) then
        Notify("Vehicle hash is not valid, failed to spawn vehicle.", "error")
        return false
    end
    local hash = LoadModel(vehicle.hash)
    local vehpos = shop.preview.vehpos  
    local veh = CreateVehicle(hash, vehpos, false, false)
    SetVehicleOnGroundProperly(veh)
    SetEntityInvincible(veh, true)
    SetVehicleDoorsLocked(veh, 2)
    SetVehicleDoorsLockedForAllPlayers(veh, true)
    SetVehicleDoorsLockedForPlayer(veh, PlayerId(), true)
    SetVehicleDirtLevel(veh, 0)
    SetVehicleNumberPlateText(veh, "PDM")
    SetEntityAsMissionEntity(veh, true, true)
    SetModelAsNoLongerNeeded(vehicle.hash)
    FreezeEntityPosition(veh, true)
    local vehPosVec3 = vector3(vehpos.x, vehpos.y, vehpos.z)
    local fovDist = #(shop.preview.campos - vehPosVec3)
    local vehDimen = GetModelDimensions(vehicle.hash) -- returns vector3(0, 0, 0)
    local vehicleSize = (math.abs(vehDimen.y) * math.abs(vehDimen.y)) + (math.abs(vehDimen.x) * math.abs(vehDimen.x))
    local vehicleScale = fovDist * vehicleSize

    local height = vehicleScale / 125
    local fov = vehicleScale + 35.0
    if shop.preview.maxFov and fov > shop.preview.maxFov then
        fov = shop.preview.maxFov
    end

    SetCamFov(PreviewCam, fov)
    height = height > 3 and 3 or height
    SetCamCoord(PreviewCam, shop.preview.campos + vector3(0, 0, height))

    PreviewVehicle = veh

    while not DoesEntityExist(veh) do
        Wait(10)
    end
    local stats, class, topspeed = calculateStats(veh)
    local vehClass = GetVehicleClass(veh)

    local globalShop = GlobalState.VehicleShops[shopId]
    for k, v in pairs(globalShop.categories) do
        if v.id == vehicle.category then
            category = v
            break
        end
    end
    
    SendNUIMessage({
        action = "updateVehicleGameData",
        data = {
            specs = stats,
            classId = vehClass,
            class = class,
            className = category and category.name or GetLabelText('VEH_CLASS_' .. vehClass),
            topspeed = topspeed
        }
    })

    PointCamAtEntity(PreviewCam, veh, 0, 0, 0, true)

    return veh
end

function Framework.TriggerCallback(name, ...)
    local retval = promise:new()
    if fwork == "qbcore" then
        Framework.Functions.TriggerCallback(name, function(...)
            retval:resolve(...)
        end, ...)
    else
        Framework.TriggerServerCallback(name, function(...)
            retval:resolve(...)
        end, ...)
    end
    return Citizen.Await(retval)
end