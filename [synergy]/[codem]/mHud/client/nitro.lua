--VehicleNitrous = {}
--local NitrousActivated = false
--local NitrousBoost = 35.0
--local Fxs = {}
--
--function trim(value)
--	if not value then return nil end
--    return (string.gsub(value, '^%s*(.-)%s*$', '%1'))
--end
--
--function nitroActive()
--    nuiMessage("NITRO_ACTIVE")
--end
--
--function setNitroValue(value, plate)
--    local CurrentVehicle = Vehicle
--    if DoesEntityExist(CurrentVehicle) then
--        local Plate = trim(GetVehicleNumberPlateText(CurrentVehicle))
--        if Plate == plate then
--            nuiMessage("SET_NITRO_VALUE", value)
--        end
--    end
--end
--
--
--RegisterNetEvent('mHud:LoadNitrous', function()
--    local IsInVehicle = IsPedInAnyVehicle(PlayerPed)
--    local ped = PlayerPed
--    local veh = Vehicle
--
--    if not NitrousActivated and DoesEntityExist(veh) then
--        if IsInVehicle and not IsThisModelABike(GetEntityModel(Vehicle)) then
--            if GetPedInVehicleSeat(veh, -1) == ped then
--                Config.Notification(Config.Notifications["INSTALLING_NITRO"].message, Config.Notifications["INSTALLING_NITRO"].type)                    
--                Wait(3000)
--                if IsPedInAnyVehicle(PlayerPed) and GetPedInVehicleSeat(Vehicle, -1) == ped then
--                    TriggerServerEvent("mHud:server:removeItem")
--                    local Plate = trim(GetVehicleNumberPlateText(veh))
--                    TriggerServerEvent('mHud:server:LoadNitrous', Plate)
--                    Config.Notification(Config.Notifications["NITRO_INSTALLED"].message, Config.Notifications["NITRO_INSTALLED"].type)                                        
--                else
--                    Config.Notification(Config.Notifications["NOT_IN_VEHICLE"].message, Config.Notifications["NOT_IN_VEHICLE"].type)                    
--                end
--            else
--                Config.Notification(Config.Notifications["SIT_DRIVER_SEAT"].message, Config.Notifications["SIT_DRIVER_SEAT"].type)                    
--            end
--        else
--            Config.Notification(Config.Notifications["NOT_IN_VEHICLE"].message, Config.Notifications["NOT_IN_VEHICLE"].type)                    
--        end
--    else
--        Config.Notification(Config.Notifications["HAS_ALREADY_NITRO"].message, Config.Notifications["HAS_ALREADY_NITRO"].type)                    
--    end
--end)
--
--
--CreateThread(function()
--    local spam = false
--    while true do
--        
--        local CurrentVehicle = Vehicle
--        if alreadyInVehicle and DoesEntityExist(CurrentVehicle) then
--            local Plate = trim(GetVehicleNumberPlateText(CurrentVehicle))
--            if VehicleNitrous[Plate] ~= nil then
--                if VehicleNitrous[Plate].hasnitro then
--                    if IsDisabledControlJustPressed(0, Config.NitroKey) and not spam and GetPedInVehicleSeat(CurrentVehicle, -1) == PlayerPed then
--                        spam = true
--                        CreateThread(function()
--                            while spam do
--                                Wait(1500)
--                                spam = false
--                            end
--                        end)
--                        SetVehicleEnginePowerMultiplier(CurrentVehicle, NitrousBoost)
--                        SetVehicleEngineTorqueMultiplier(CurrentVehicle, NitrousBoost)
--                        SetEntityMaxSpeed(CurrentVehicle, 999.0)
--                        NitrousActivated = true
--                        setNitroValue(VehicleNitrous[Plate].level, Plate)
--                        CreateThread(function()
--                            while NitrousActivated do
--                                if VehicleNitrous[Plate].level - 1 ~= 0 then
--                                    TriggerServerEvent('mHud:server:UpdateNitroLevel', Plate, (VehicleNitrous[Plate].level - 1))
--                                else
--                                    TriggerServerEvent('mHud:server:UnloadNitrous', Plate)
--                                    NitrousActivated = false
--                                    SetVehicleBoostActive(CurrentVehicle, 0)
--                                    SetVehicleEnginePowerMultiplier(CurrentVehicle, 1.0)
--                                    SetVehicleEngineTorqueMultiplier(CurrentVehicle, 1.0)
--     
--                                    StopScreenEffect("RaceTurbo")
--                                    for index,_ in pairs(Fxs) do
--                                        StopParticleFxLooped(Fxs[index], 1)
--                                        TriggerServerEvent('mHud:server:StopSync', trim(GetVehicleNumberPlateText(CurrentVehicle)))
--                                        Fxs[index] = nil
--                                    end
--                                end
--                                nitroActive()
--                                Wait(200)
--                            end
--                        end)
--                    end
--
--                    if IsDisabledControlJustReleased(0, Config.NitroKey) and GetPedInVehicleSeat(CurrentVehicle, -1) == PlayerPed then
--                        if NitrousActivated then
--                            local veh = Vehicle
--                            SetVehicleBoostActive(veh, 0)
--                            SetVehicleEnginePowerMultiplier(veh, 1.0)
--                            SetVehicleEngineTorqueMultiplier(veh, 1.0)
--                            for index,_ in pairs(Fxs) do
--                                StopParticleFxLooped(Fxs[index], 1)
--                                TriggerServerEvent('mHud:server:StopSync', trim(GetVehicleNumberPlateText(veh)))
--                                Fxs[index] = nil
--                            end
--                            StopScreenEffect("RaceTurbo")
--                            NitrousActivated = false
--                        end
--                    end
--                end
--            else
--             
--                StopScreenEffect("RaceTurbo")
--            end
--        else
--          
--            StopScreenEffect("RaceTurbo")
--            Wait(1500)
--        end
--        Wait(3)
--    end
--end)
--
--p_flame_location = {
--	"exhaust",
--	"exhaust_2",
--	"exhaust_3",
--	"exhaust_4",
--	"exhaust_5",
--	"exhaust_6",
--	"exhaust_7",
--	"exhaust_8",
--	"exhaust_9",
--	"exhaust_10",
--	"exhaust_11",
--	"exhaust_12",
--	"exhaust_13",
--	"exhaust_14",
--	"exhaust_15",
--	"exhaust_16",
--}
--
--ParticleDict = "veh_xs_vehicle_mods"
--ParticleFx = "veh_nitrous"
--ParticleSize = 1.4
--
--CreateThread(function()
--    while true do
--        if NitrousActivated then
--            local veh = Vehicle
--            if veh ~= 0 and DoesEntityExist(veh) then
--                TriggerServerEvent('mHud:server:SyncFlames', VehToNet(veh))
--                SetVehicleBoostActive(veh, 1)
--                StartScreenEffect("RaceTurbo", 0.0, 0)
--
--                for _,bones in pairs(p_flame_location) do
--                    if GetEntityBoneIndexByName(veh, bones) ~= -1 then
--                        if Fxs[bones] == nil then
--                            RequestNamedPtfxAsset(ParticleDict)
--                            while not HasNamedPtfxAssetLoaded(ParticleDict) do
--                                Wait(0)
--                            end
--                            SetPtfxAssetNextCall(ParticleDict)
--                            UseParticleFxAssetNextCall(ParticleDict)
--                            Fxs[bones] = StartParticleFxLoopedOnEntityBone(ParticleFx, veh, 0.0, -0.02, 0.0, 0.0, 0.0, 0.0, GetEntityBoneIndexByName(veh, bones), ParticleSize, 0.0, 0.0, 0.0)
--                        end
--                    end
--                end
--            end
--        end
--        Wait(100)
--    end
--end)
--
--local NOSPFX = {}
--
--RegisterNetEvent('mHud:client:SyncFlames', function(netid, nosid)
--    local veh = NetToVeh(netid)
--    if veh ~= 0 then
--        local myid = GetPlayerServerId(PlayerId())
--        if NOSPFX[trim(GetVehicleNumberPlateText(veh))] == nil then
--            NOSPFX[trim(GetVehicleNumberPlateText(veh))] = {}
--        end
--        if myid ~= nosid then
--            for _,bones in pairs(p_flame_location) do
--                if NOSPFX[trim(GetVehicleNumberPlateText(veh))][bones] == nil then
--                    NOSPFX[trim(GetVehicleNumberPlateText(veh))][bones] = {}
--                end
--                if GetEntityBoneIndexByName(veh, bones) ~= -1 then
--                    if NOSPFX[trim(GetVehicleNumberPlateText(veh))][bones].pfx == nil then
--                        RequestNamedPtfxAsset(ParticleDict)
--                        while not HasNamedPtfxAssetLoaded(ParticleDict) do
--                            Wait(0)
--                        end
--                        SetPtfxAssetNextCall(ParticleDict)
--                        UseParticleFxAssetNextCall(ParticleDict)
--                        NOSPFX[trim(GetVehicleNumberPlateText(veh))][bones].pfx = StartParticleFxLoopedOnEntityBone(ParticleFx, veh, 0.0, -0.05, 0.0, 0.0, 0.0, 0.0, GetEntityBoneIndexByName(veh, bones), ParticleSize, 0.0, 0.0, 0.0)
--
--                    end
--                end
--            end
--        end
--    end
--end)
--
--RegisterNetEvent('mHud:client:StopSync', function(plate)
--    if NOSPFX[plate] then
--        for k, v in pairs(NOSPFX[plate]) do
--            if v then
--                StopParticleFxLooped(v.pfx, 1)
--                NOSPFX[plate][k].pfx = nil
--            end
--        end
--    end
--end)
--
--RegisterNetEvent('mHud:client:UpdateNitroLevel', function(Plate, level)
--    VehicleNitrous[Plate].level = level
--    setNitroValue(VehicleNitrous[Plate].level, Plate)
--
--end)
--
--RegisterNetEvent('mHud:client:LoadNitrous', function(Plate)
--    VehicleNitrous[Plate] = {
--        hasnitro = true,
--        level = 100,
--    }
--    setNitroValue(VehicleNitrous[Plate].level, Plate)
--  
-- 
--end)
--
--RegisterNetEvent('mHud:client:UnloadNitrous', function(Plate)
--    VehicleNitrous[Plate] = nil
--    local CurrentVehicle = Vehicle
--    if DoesEntityExist(CurrentVehicle) then
--        local CPlate = trim(GetVehicleNumberPlateText(CurrentVehicle))
--        if CPlate == Plate then
--            NitrousActivated = false
--        end
--        setNitroValue(0, Plate)
--    end
--end)



VehicleNitrous = {}
local NitrousActivated = false
local NitrousBoost = 17.0
local Fxs = {}
local nitroReady = false
function trim(value)
    if not value then
        return nil
    end
    return (string.gsub(value, "^%s*(.-)%s*$", "%1"))
end

QBCore = exports["qb-core"]:GetCoreObject()
function nitroActive()
    nuiMessage("NITRO_ACTIVE")
end

function setNitroValue(value, plate)
    local CurrentVehicle = Vehicle
    if DoesEntityExist(CurrentVehicle) then
        local Plate = trim(GetVehicleNumberPlateText(CurrentVehicle))
        if Plate == plate then
            nuiMessage("SET_NITRO_VALUE", value)
        end
    end
end

RegisterCommand(
    "nitrod2",
    function()
        local IsInVehicle = IsPedInAnyVehicle(PlayerPed)
        local ped = PlayerPed
        local veh = Vehicle
        local Plate = trim(GetVehicleNumberPlateText(veh))
        TriggerServerEvent("mHud:server:LoadNitrous", Plate)
    end
)
RegisterNetEvent(
    "mHud:LoadNitrous",
    function()
        local IsInVehicle = IsPedInAnyVehicle(PlayerPed)
        local ped = PlayerPed
        local veh = Vehicle

        if not NitrousActivated and DoesEntityExist(veh) then
            if IsInVehicle and not IsThisModelABike(GetEntityModel(Vehicle)) then
                if GetPedInVehicleSeat(veh, -1) == ped then
                    Config.Notification(
                        Config.Notifications["INSTALLING_NITRO"].message,
                        Config.Notifications["INSTALLING_NITRO"].type
                    )
                    Wait(3000)
                    if IsPedInAnyVehicle(PlayerPed) and GetPedInVehicleSeat(Vehicle, -1) == ped then
                        TriggerServerEvent("mHud:server:removeItem")
                        local Plate = trim(GetVehicleNumberPlateText(veh))
                        TriggerServerEvent("mHud:server:LoadNitrous", Plate)
                        Config.Notification(
                            Config.Notifications["NITRO_INSTALLED"].message,
                            Config.Notifications["NITRO_INSTALLED"].type
                        )
                    else
                        Config.Notification(
                            Config.Notifications["NOT_IN_VEHICLE"].message,
                            Config.Notifications["NOT_IN_VEHICLE"].type
                        )
                    end
                else
                    Config.Notification(
                        Config.Notifications["SIT_DRIVER_SEAT"].message,
                        Config.Notifications["SIT_DRIVER_SEAT"].type
                    )
                end
            else
                Config.Notification(
                    Config.Notifications["NOT_IN_VEHICLE"].message,
                    Config.Notifications["NOT_IN_VEHICLE"].type
                )
            end
        else
            Config.Notification(
                Config.Notifications["HAS_ALREADY_NITRO"].message,
                Config.Notifications["HAS_ALREADY_NITRO"].type
            )
        end
    end
)
local phpp = nil
local hp = nil
Citizen.CreateThread(
    function()
        while true do
            Wait(400)
            if NitrousActivated then
                TriggerServerEvent("mHud:server:UpdateNitroLevel", phpp, hp)
            end
        end
    end
)

function decr(phpp_, hp_)
    phpp = phpp_
    hp = hp_
end

local lastVehicle = nil
CreateThread(
    function()
        local spam = false
        while true do
            local CurrentVehicle = Vehicle
            if alreadyInVehicle and DoesEntityExist(CurrentVehicle) then
                local Plate = trim(GetVehicleNumberPlateText(CurrentVehicle))
                lastVehicle = Plate
                if
                    not nitroReady and IsDisabledControlJustPressed(0, Config.NitroKey) and not spam and
                    GetPedInVehicleSeat(CurrentVehicle, -1) == PlayerPed
                then
                    TriggerServerEvent("mHud:server:LoadNitrous", Plate)
                end
                if VehicleNitrous[Plate] ~= nil then
                    if VehicleNitrous[Plate].hasnitro then
                        if
                            IsDisabledControlJustPressed(0, Config.NitroKey) and not spam and
                            GetPedInVehicleSeat(CurrentVehicle, -1) == PlayerPed
                        then
                            spam = true
                            CreateThread(
                                function()
                                    while spam do
                                        Wait(1500)
                                        spam = false
                                    end
                                end
                            )
                            SetVehicleEnginePowerMultiplier(CurrentVehicle, NitrousBoost)
                            SetVehicleEngineTorqueMultiplier(CurrentVehicle, NitrousBoost)
                            SetEntityMaxSpeed(CurrentVehicle, 999.0)
                            NitrousActivated = true
                            setNitroValue(VehicleNitrous[Plate].level, Plate)
                            CreateThread(
                                function()
                                    while NitrousActivated do
                                        if VehicleNitrous[Plate].level < 0 then
                                            TriggerServerEvent("mHud:server:UnloadNitrous", Plate)
                                            NitrousActivated = false
                                            SetVehicleBoostActive(CurrentVehicle, 0)
                                            SetVehicleEnginePowerMultiplier(CurrentVehicle, 1.0)
                                            SetVehicleEngineTorqueMultiplier(CurrentVehicle, 1.0)
                                            StopScreenEffect("RaceTurbo")
                                            for index, _ in pairs(Fxs) do
                                                StopParticleFxLooped(Fxs[index], 1)
                                                TriggerServerEvent(
                                                    "mHud:server:StopSync",
                                                    trim(GetVehicleNumberPlateText(CurrentVehicle))
                                                )
                                                Fxs[index] = nil
                                            end
                                        end
                                        if VehicleNitrous[Plate].level - 1 ~= 0 then
                                            decr(Plate, (VehicleNitrous[Plate].level - 1))
                                        else
                                            TriggerServerEvent("mHud:server:UnloadNitrous", Plate)
                                            NitrousActivated = false
                                            SetVehicleBoostActive(CurrentVehicle, 0)
                                            SetVehicleEnginePowerMultiplier(CurrentVehicle, 1.0)
                                            SetVehicleEngineTorqueMultiplier(CurrentVehicle, 1.0)
                                            StopScreenEffect("RaceTurbo")
                                            for index, _ in pairs(Fxs) do
                                                StopParticleFxLooped(Fxs[index], 1)
                                                TriggerServerEvent(
                                                    "mHud:server:StopSync",
                                                    trim(GetVehicleNumberPlateText(CurrentVehicle))
                                                )
                                                Fxs[index] = nil
                                            end
                                        end
                                        nitroActive()
                                        Wait(200)
                                    end
                                end
                            )
                        end
                        if
                            IsDisabledControlJustReleased(0, Config.NitroKey) and
                            GetPedInVehicleSeat(CurrentVehicle, -1) == PlayerPed
                        then
                            if NitrousActivated then
                                local veh = Vehicle
                                SetVehicleBoostActive(veh, 0)
                                SetVehicleEnginePowerMultiplier(veh, 1.0)
                                SetVehicleEngineTorqueMultiplier(veh, 1.0)
                                for index, _ in pairs(Fxs) do
                                    StopParticleFxLooped(Fxs[index], 1)
                                    TriggerServerEvent("mHud:server:StopSync", trim(GetVehicleNumberPlateText(veh)))
                                    Fxs[index] = nil
                                end
                                StopScreenEffect("RaceTurbo")
                                NitrousActivated = false
                            end
                        end
                    end
                else
                    StopScreenEffect("RaceTurbo")
                end
            else
                StopScreenEffect("RaceTurbo")
                Wait(1500)
                if not (lastVehicle == nil) then
                    TriggerServerEvent("mHud:server:ignorePlate", lastVehicle)
                    lastVehicle = nil
                end
            end
            Wait(3)
        end
    end
)
p_flame_location = {
    "exhaust",
    "exhaust_2",
    "exhaust_3",
    "exhaust_4",
    "exhaust_5",
    "exhaust_6",
    "exhaust_7",
    "exhaust_8",
    "exhaust_9",
    "exhaust_10",
    "exhaust_11",
    "exhaust_12",
    "exhaust_13",
    "exhaust_14",
    "exhaust_15",
    "exhaust_16"
}
ParticleDict = "veh_xs_vehicle_mods"
ParticleFx = "veh_nitrous"
ParticleSize = 1.4
CreateThread(
    function()
        while true do
            if NitrousActivated then
                local veh = Vehicle
                if veh ~= 0 and DoesEntityExist(veh) then
                    TriggerServerEvent("mHud:server:SyncFlames", VehToNet(veh))
                    SetVehicleBoostActive(veh, 1)
                    StartScreenEffect("RaceTurbo", 0.0, 0)
                    for _, bones in pairs(p_flame_location) do
                        if GetEntityBoneIndexByName(veh, bones) ~= -1 then
                            if Fxs[bones] == nil then
                                RequestNamedPtfxAsset(ParticleDict)
                                while not HasNamedPtfxAssetLoaded(ParticleDict) do
                                    Wait(0)
                                end
                                SetPtfxAssetNextCall(ParticleDict)
                                UseParticleFxAssetNextCall(ParticleDict)
                                Fxs[bones] =
                                    StartParticleFxLoopedOnEntityBone(
                                        ParticleFx,
                                        veh,
                                        0.0,
                                        -0.02,
                                        0.0,
                                        0.0,
                                        0.0,
                                        0.0,
                                        GetEntityBoneIndexByName(veh, bones),
                                        ParticleSize,
                                        0.0,
                                        0.0,
                                        0.0
                                    )
                            end
                        end
                    end
                end
            end
            Wait(100)
        end
    end
)
local NOSPFX = {}
RegisterNetEvent(
    "mHud:client:SyncFlames",
    function(netid, nosid)
        local veh = NetToVeh(netid)
        if veh ~= 0 then
            local myid = GetPlayerServerId(PlayerId())
            if NOSPFX[trim(GetVehicleNumberPlateText(veh))] == nil then
                NOSPFX[trim(GetVehicleNumberPlateText(veh))] = {}
            end
            if myid ~= nosid then
                for _, bones in pairs(p_flame_location) do
                    if NOSPFX[trim(GetVehicleNumberPlateText(veh))][bones] == nil then
                        NOSPFX[trim(GetVehicleNumberPlateText(veh))][bones] = {}
                    end
                    if GetEntityBoneIndexByName(veh, bones) ~= -1 then
                        if NOSPFX[trim(GetVehicleNumberPlateText(veh))][bones].pfx == nil then
                            RequestNamedPtfxAsset(ParticleDict)
                            while not HasNamedPtfxAssetLoaded(ParticleDict) do
                                Wait(0)
                            end
                            SetPtfxAssetNextCall(ParticleDict)
                            UseParticleFxAssetNextCall(ParticleDict)
                            NOSPFX[trim(GetVehicleNumberPlateText(veh))][bones].pfx =
                                StartParticleFxLoopedOnEntityBone(
                                    ParticleFx,
                                    veh,
                                    0.0,
                                    -0.05,
                                    0.0,
                                    0.0,
                                    0.0,
                                    0.0,
                                    GetEntityBoneIndexByName(veh, bones),
                                    ParticleSize,
                                    0.0,
                                    0.0,
                                    0.0
                                )
                        end
                    end
                end
            end
        end
    end
)
RegisterNetEvent(
    "mHud:client:StopSync",
    function(plate)
        if NOSPFX[plate] then
            for k, v in pairs(NOSPFX[plate]) do
                if v then
                    StopParticleFxLooped(v.pfx, 1)
                    NOSPFX[plate][k].pfx = nil
                end
            end
        end
    end
)
RegisterNetEvent(
    "mHud:client:UpdateNitroLevel",
    function(Plate, level)
        VehicleNitrous[Plate].level = level
        setNitroValue(VehicleNitrous[Plate].level, Plate)
    end
)
RegisterNetEvent(
    "mHud:client:LoadNitrous",
    function(Plate, nitroAmount)
        if nitroAmount >= 0 then
            nitroReady = true
            VehicleNitrous[Plate] = { hasnitro = true, level = nitroAmount }
            setNitroValue(VehicleNitrous[Plate].level, Plate)
        end
    end
)
RegisterNetEvent(
    "mHud:client:UnloadNitrous",
    function(Plate)
        VehicleNitrous[Plate] = nil
        nitroReady = false
        local CurrentVehicle = Vehicle
        if DoesEntityExist(CurrentVehicle) then
            local CPlate = trim(GetVehicleNumberPlateText(CurrentVehicle))
            if CPlate == Plate then
                NitrousActivated = false
            end
            setNitroValue(0, Plate)
        end
    end
)
function LoadAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Wait(5)
    end
end

local nozzleInHand = false
local fuelnozzle = nil
local Rope = nil
function doNosFill(nostank)
    local ped = PlayerPedId()
    LoadAnimDict("anim@am_hold_up@male")
    TaskPlayAnim(ped, "anim@am_hold_up@male", "shoplift_high", 2.0, 8.0, -1, 50, 0, 0, 0, 0)
    Wait(300)
    StopAnimTask(ped, "anim@am_hold_up@male", "shoplift_high", 1.0)
    nozzleInHand = true
    local tcx, tcy, tcz = table.unpack(GetEntityCoords(nostank))
    fuelnozzle = CreateObject(joaat("prop_cs_fuel_nozle"), 1.0, 1.0, 1.0, true, true, false)
    local lefthand = GetPedBoneIndex(ped, 18905)
    AttachEntityToEntity(fuelnozzle, ped, lefthand, 0.13, 0.04, 0.01, -42.0, -115.0, -63.42, 0, 1, 0, 1, 0, 1)
    local grabbednozzlecoords = GetEntityCoords(ped)
    RopeLoadTextures()
    while not RopeAreTexturesLoaded() do
        Wait(0)
        RopeLoadTextures()
    end

    while not nostank do
        Wait(0)
    end
    Rope = AddRope(tcx, tcy, tcz, 0.0, 0.0, 0.0, 3.0, 1, 8.0, 0.0, 1.0, false, false, false, 1.0, true)
    while not Rope do
        Wait(0)
    end
    ActivatePhysics(Rope)
    local nozzlePos = GetEntityCoords(fuelnozzle)
    nozzlePos = GetOffsetFromEntityInWorldCoords(fuelnozzle, 0.0, -0.033, -0.195)
    AttachEntitiesToRope(
        Rope,
        nostank,
        fuelnozzle,
        tcx,
        tcy,
        tcz + 1,
        nozzlePos.x,
        nozzlePos.y,
        nozzlePos.z,
        3.0,
        false,
        false,
        nil,
        nil
    )
end

local playerPed = PlayerPedId()
local coords = GetEntityCoords(playerPed)
model = "prop_gascyl_03a"
RequestModel(model)
while not HasModelLoaded(model) do
    Wait(0)
end
local tankx, tanky, tankz = table.unpack(vector3(893.7, -2122.3, 29.46))
local gascyl = CreateObject(model, tankx, tanky, tankz, true, true)
Wait(50)
PlaceObjectOnGroundProperly(plant)
SetEntityInvincible(gascyl, true)
FreezeEntityPosition(gascyl, true)
NetworkUnregisterNetworkedEntity(gascyl)
exports["qb-target"]:AddEntityZone(
    "oxy-1",
    gascyl,
    { name = "oxy-1", heading = GetEntityHeading(gascyl), debugPoly = false },
    {
        options = {
            {
                type = "client",
                icon = "fa-solid fa-rocket",
                label = "NOS Doldur",
                jobType = "underground",
                gascyl = gascyl,
                --job = "farmer",
                canInteract = function(entity)
                    return not nozzleInHand
                end,
                action = function(entity)
                    local ehe = entity
                    doNosFill(ehe)
                end
            },
            {
                type = "client",
                icon = "fa-solid fa-rocket",
                label = "Nozülü yerine tak",
                --job = "farmer",
                canInteract = function(entity)
                    return nozzleInHand
                end,
                action = function(entity)
                    local ped = PlayerPedId()
                    LoadAnimDict("anim@am_hold_up@male")
                    TaskPlayAnim(ped, "anim@am_hold_up@male", "shoplift_high", 2.0, 8.0, -1, 50, 0, 0, 0, 0)
                    Wait(300)
                    StopAnimTask(ped, "anim@am_hold_up@male", "shoplift_high", 1.0)
                    DeleteObject(fuelnozzle)
                    RopeUnloadTextures()
                    DeleteRope(Rope)
                    nozzleInHand = false
                end
            }
        },
        distance = 2.5
    }
)

local function GetDoor(vehicle, door)
    return (GetVehicleDoorAngleRatio(vehicle, door) > 0.0)
end



exports["qb-target"]:AddTargetBone(
    { "boot" },
    {
        options = {
            {
                num = 1,
                icon = "fas fa-rocket",
                label = "NOS Doldur",
                jobType = "underground",
                action = function(entity)
                    local plate = GetVehicleNumberPlateText(entity)
                    QBCore.Functions.TriggerCallback(
                        "eph:nitro:vehicleHasNitro",
                        function(nitroLevel)
                            if nitroLevel then
                                if nitroLevel.level <= 99 then
                                    QBCore.Functions.Progressbar("refill-nos", "Nitro dolduruyorsun...", 12500, false,
                                        true, {
                                            disableMovement = true,
                                            disableCarMovement = true,
                                            disableMouse = false,
                                            disableCombat = true,
                                        }, {
                                            animDict = "timetable@gardener@filling_can",
                                            anim = "gar_ig_5_filling_can",
                                            flags = 49,
                                        }, {}, {}, function()
                                            TriggerServerEvent("eph:nitro:refillNitro", plate)
                                            QBCore.Functions.Notify("Nitro tankı dolumunu tamamladın.")
                                        end, function()
                                            QBCore.Functions.Notify("Nitro tankı dolumunu yapamadın.")
                                        end, "fas fa-gas-pump")
                                end
                            end
                        end,
                        plate
                    )
                    return false
                end,
                canInteract = function(entity, distance, data)
                    if not nozzleInHand then return false end
                    local plate = GetVehicleNumberPlateText(entity)
                    local hasnitro = false
                    local fetched = false
                    QBCore.Functions.TriggerCallback(
                        "eph:nitro:vehicleHasNitro",
                        function(nitroLevel)
                            fetched = true
                            if nitroLevel then
                                if nitroLevel.state and nitroLevel.level < 99 then
                                    hasnitro = true
                                end
                            end
                        end,
                        plate
                    )
                    while not fetched do
                        Wait(0)
                    end
                    return (hasnitro)
                end
            },
            {
                num = 2,
                icon = "fas fa-rocket",
                label = "NOS Tankı Tak",
                item = "nitrous",
                jobType = "underground",
                action = function(entity)
                    local plate = GetVehicleNumberPlateText(entity)
                    QBCore.Functions.Progressbar("refill-nos", "Nitro tüpünü araca takıyorsun...", 12500, false,
                        true, {
                            disableMovement = true,
                            disableCarMovement = true,
                            disableMouse = false,
                            disableCombat = true,
                        }, {
                            animDict = "missmechanic",
                            anim = "work2_in",
                            flags = 49,
                        }, {}, {}, function()
                            TriggerServerEvent("eph:nitro:installNitro", plate)
                            QBCore.Functions.Notify("Nitro tankı montajını tamamladın.")
                        end, function()
                            QBCore.Functions.Notify("Nitro tankı montajını yapamadın.")
                        end, "fas fa-gas-pump")
                    return false
                end,
                canInteract = function(entity, distance, data)
                    local veh = entity
                    local plate = GetVehicleNumberPlateText(entity)
                    local hasnitro = false
                    local fetched = false
                    QBCore.Functions.TriggerCallback(
                        "eph:nitro:vehicleHasNitro",
                        function(nitroLevel)
                            fetched = true
                            if nitroLevel then
                                if nitroLevel.state then
                                    hasnitro = true
                                end
                            end
                        end,
                        plate
                    )
                    while not fetched do
                        Wait(0)
                    end
                    return (not nozzleInHand) and (not hasnitro) and GetDoor(veh, (5))
                end
            }
        },
        distance = 2.5
    }
)
