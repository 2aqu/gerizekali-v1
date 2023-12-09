QBCore = exports['qb-core']:GetCoreObject()
function SendFPS()
    local startCount = GetFrameCount()
    Wait(1000)
    local endCount = GetFrameCount()
    local frameNum = endCount - startCount
    TriggerServerEvent("eph:profiler:myFPS", frameNum)
end

Citizen.CreateThread(function()
    while true do
        Wait(5000)
        SendFPS()
    end
end)
RegisterCommand('pdepo', function()
    local plyPed = PlayerPedId()
    plyVeh = GetVehiclePedIsIn(plyPed, false)
    if QBCore.Functions.GetPlayerData().job.type == "leo" then
        if GetVehicleClass(plyVeh) == 18 then
            TriggerServerEvent("inventory:server:OpenInventory", "stash",
                "APolis" .. QBCore.Functions.GetPlayerData().citizenid, {
                    maxweight = 100000,
                    slots = 20
                })
        else
            QBCore.Functions.Notify("Polis Aracında Olmalısın!", "error")
        end
    else
        QBCore.Functions.Notify("Polis Değilsin!", "error")
    end
end)

RegisterCommand('mesai', function()
    TriggerServerEvent('QBCore:ToggleDuty')
end)
local pzloop = false
Citizen.CreateThread(function()
    while true do
        Wait(0)
        if pzloop then
            ExecuteCommand("pzadd")
        end
        Wait(2000)
    end
end)

RegisterCommand("pzloop", function()
    pzloop = not pzloop
    if pzloop then
        QBCore.Functions.Notify("Autopzadd açık!", "success")
    else
        QBCore.Functions.Notify("Autopzadd Kapalı!", "error")
    end
end, true)
RegisterKeyMapping('pzadd', 'pz add', 'keyboard', 'INSERT')

-- ExecuteCommand("sikin", function()
--    while true do
--       Wait(300)
--        ExecuteCommand("mdt")
--    end
-- end)

CreateThread(function()
    while true do
        Wait((1000 * 60) * 30)
        if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), -2982.29, 36.6, 16.4, false) < 170 then
            TriggerServerEvent('give:money-arob')
            QBCore.Functions.Notify('Sosyal alanda bulunduğun için 1000$ kazandın!')
        end
    end
end)

local bildirimgeldi = false
CreateThread(function()
    while true do
        SetPlayerCanDoDriveBy(PlayerId(), false)
        if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), -2982.29, 36.6, 16.4, false) < 170 then
            if not bildirimgeldi then
                QBCore.Functions.Notify('Sosyal alana girdin')
                bildirimgeldi = true
            end
        else
            if bildirimgeldi then
                QBCore.Functions.Notify('Sosyal alandan çıktın')
                bildirimgeldi = false
            end
        end
        Wait(1000)
    end
end)

Citizen.CreateThread(function()
    while true do
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_UNARMED"), 0.5)
        Citizen.Wait(0)
    end
end)

RegisterCommand('checkat', function()
    TriggerEvent('QBCore:Client:OnPlayerLoaded')
end, true)

RegisterCommand('citizenid', function()
    QBCore.Functions.TriggerCallback('efearob:getcid', function(data)
        print(data)
    end)
end)

-- Name: pdview | 2023-11-21T22:42:38Z
local pdmpreviewzone = PolyZone:Create({vector2(-71.063995361328, -832.06628417969),
                                        vector2(-88.936233520508, -825.521484375),
                                        vector2(-82.565582275391, -808.97119140625),
                                        vector2(-75.875373840332, -811.15686035156),
                                        vector2(-74.786468505859, -809.36010742188),
                                        vector2(-67.759986877441, -811.92126464844),
                                        vector2(-69.537544250488, -816.79547119141),
                                        vector2(-62.248561859131, -821.00366210938),
                                        vector2(-65.088020324707, -827.6640625)}, {
    name = "pdview"
    -- minZ = 284.99993896484,
    -- maxZ = 286.54879760742
})

local insidePDM = false
pdmpreviewzone:onPlayerInOut(function(isPointInside, point)
    insidePDM = isPointInside
end)

RegisterCommand('galerifix', function()
    if insidePDM then
        if (GetVehiclePedIsIn(PlayerPedId()) > 0) then
            DeleteEntity(GetVehiclePedIsIn(PlayerPedId()))
            SetEntityCoords(PlayerPedId(), -58.8143, -1096.2565, 27.8971)
        else
            QBCore.Functions.Notify('Bu komutu burada kullanamazsın, aracın içine geç!')
        end
    else
        QBCore.Functions.Notify('Bu komutu burada kullanamazsın!')
    end
end, false)

-- RegisterCommand("vercar", function(source, args)
--    local vehName = args[1]
--    print("vehName " .. vehName)
--    local ped = PlayerPedId()
--    print("ped " .. ped)
--    local hash = GetHashKey(vehName)
--    print("hash " .. hash)
--    local veh = GetVehiclePedIsUsing(ped)
--    if not IsModelInCdimage(hash) then return end
--    RequestModel(hash)
--    while not HasModelLoaded(hash) do
--        Wait(0)
--        print("loading")
--    end
--
--    if IsPedInAnyVehicle(ped) then
--        DeleteVehicle(veh)
--    end
--
--    local vehicle = CreateVehicle(hash, GetEntityCoords(ped), GetEntityHeading(ped), true, false)
--    TaskWarpPedIntoVehicle(ped, vehicle, -1)
--    SetVehicleFuelLevel(vehicle, 100.0)
--    SetVehicleDirtLevel(vehicle, 0.0)
--    SetModelAsNoLongerNeeded(hash)
--    TriggerEvent("vehiclekeys:client:SetOwner", QBCore.Functions.GetPlate(vehicle))
-- end)

local skinData = {
    ["hair"] = {
        item = 0,
        texture = 0,
        defaultItem = 0,
        defaultTexture = 0
    },
    ["face2"] = {
        item = 0,
        texture = 0,
        defaultItem = 0,
        defaultTexture = 0
    },
    ["facemix"] = {
        skinMix = 0,
        shapeMix = 0,
        defaultSkinMix = 0.0,
        defaultShapeMix = 0.0
    }
}

local defaultHairMale = 186
local defaultHairFemale = 192
local oldHair = {
    item = -1,
    texture = -1
}
local sinirS = 0
RegisterCommand("toka", function()
    if skinData["hair"].item == 0 then
        skinData["hair"].item = GetPedDrawableVariation(PlayerPedId(), 2)
    end
    if GetGameTimer() > sinirS then
        sinirS = GetGameTimer() + 5000
        local playerPed = PlayerPedId()
        oldHair.texture = GetPedHairColor(playerPed)
        oldHair.texture2 = GetPedHairHighlightColor(playerPed)
        local defaultHair = defaultHairFemale
        if GetEntityModel(playerPed) == 1885233650 then
            defaultHair = defaultHairMale
        end -- Erkek Model
        if oldHair.item == -1 then
            oldHair.item = defaultHair
        end
        if oldHair.item == defaultHair then
            ExecuteCommand('me Tokasını çıkartıp saçını bağlamaya başlar')
            Citizen.Wait(1000)
            SetPedComponentVariation(playerPed, 2, defaultHair, 0, 0)
            oldHair.item = skinData["hair"].item
            Citizen.Wait(1000)
            ExecuteCommand('do Saçında toka olduğu görülebilir')
        else
            ExecuteCommand('me Saçındaki tokayı çıkartır')
            Citizen.Wait(1000)
            SetPedComponentVariation(playerPed, 2, oldHair.item, 0, 0)
            oldHair.item = defaultHair
        end
        SetPedHairColor(playerPed, oldHair.texture, oldHair.texture2)
    end
end)

local NumberJump = 30

Citizen.CreateThread(function()
    local Jump = 0
    while true do

        Citizen.Wait(1)

        local ped = PlayerPedId()

        if IsPedOnFoot(ped) and not IsPedSwimming(ped) and (IsPedRunning(ped) or IsPedSprinting(ped)) and
            not IsPedClimbing(ped) and IsPedJumping(ped) and not IsPedRagdoll(ped) then

            Jump = Jump + 1

            if Jump == NumberJump then

                SetPedToRagdoll(ped, 5000, 1400, 2)

                Jump = 0

            end

        else

            Citizen.Wait(500)

        end
    end
end)

RegisterCommand("lastt", function()
    local vehicle = GetVehiclePedIsIn(PlayerPedId())
    print(BreakOffVehicleWheel(vehicle, 2, true, false, true, false))
end)

-- RegisterCommand("yenikıyafetmenu", function()
--     TriggerEvent("illenium-appearance:client:openClothingShopMenu", true)
-- end)
