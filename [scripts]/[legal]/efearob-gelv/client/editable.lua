isOpen = false

if Config.Command then
    RegisterCommand(Config.CommandName, function()
        if Config.Access[GetPlayerData().job.name] then
            OpenMenu(function()
                Config.MenuOpen()
            end)
        end
    end)
end
local cooldown = false

function handleCooldown()
    Citizen.CreateThread(function()
        Wait(5000)
        cooldown = false
    end)
end
function OpenMenu(cb)
    if not cooldown then
        while not Core do
            Citizen.Wait(0)
        end

        if not loaded or not Core then
            return Config.ClientNotification(Config.NotificationText["NOT_LOADED"].text,
                Config.NotificationText["NOT_LOADED"].type, Config.NotificationText["NOT_LOADED"].timeout)
        end

        if incam then
            return Config.ClientNotification(Config.NotificationText["IN_CAM"].text,
                Config.NotificationText["IN_CAM"].type, Config.NotificationText["IN_CAM"].timeout)
        end

        if isOpen then
            return Config.ClientNotification(Config.NotificationText["ALREADY_OPENED"].text,
                Config.NotificationText["ALREADY_OPENED"].type, Config.NotificationText["ALREADY_OPENED"].timeout)
        end

        if Config.onlyInVehicle then
            local veh = GetVehiclePedIsIn(PlayerPedId(), false)

            if not IsPedInAnyVehicle(PlayerPedId(), false) then
                return Config.ClientNotification(Config.NotificationText["ONLY_IN_VEHICLE"].text,
                    Config.NotificationText["ONLY_IN_VEHICLE"].type, Config.NotificationText["ONLY_IN_VEHICLE"].timeout)
            end

            local isAllowedVehicle = false

            for i = 1, #Config.allowedVehicles do
                if GetHashKey(Config.allowedVehicles[i]) == GetEntityModel(veh) then
                    isAllowedVehicle = true
                end
            end

            if not isAllowedVehicle then
                return Config.ClientNotification(Config.NotificationText["ONLY_IN_VEHICLE"].text,
                    Config.NotificationText["ONLY_IN_VEHICLE"].type, Config.NotificationText["ONLY_IN_VEHICLE"].timeout)
            end
        end

        SendNUIMessage({
            action = "SET_GRADE",
            payload = GetJobGrade(),
            value = GetJob(),
            value2 = GetJobGradeName()
        })

        SendNUIMessage({
            action = "HEADERS",
            value = Config.Headers[GetJob()]
        })

        if Config.DisplayPage['DASHBOARD'] then
            local messages = TriggerCallback('mgnPoliceMdt:GetChatMessages')
            SendNUIMessage({
                action = "UPDATE_CHAT_MESSAGES",
                payload = messages
            })

            local onlinecops = TriggerCallback('mgnPoliceMdt:GetOnlineCops')
            SendNUIMessage({
                action = "UPDATE_POLICES",
                payload = onlinecops
            })
        end

        if Config.DisplayPage['WARRANTS'] then
            local warrants = TriggerCallback('mgnPoliceMdt:GetWarrants')
            SendNUIMessage({
                action = "SET_WARRANTS",
                payload = warrants
            })
        end

        SendNUIMessage({
            action = 'SET_VISIBILITY',
            payload = true
        })
        coolown = true
        SetNuiFocus(true, true)
        isOpen = true
        handleCooldown()
        TriggerServerEvent('mgnPoliceMdt:OnOpen')
        doAnimation()

        if Config.DisplayPage['PROFILES'] then
            local users = TriggerCallback('mgnPoliceMdt:GetUsers')
            SendNUIMessage({
                action = "ALL_USERS",
                payload = users
            })

            local allprofiles = TriggerCallback('mgnPoliceMdt:GetAllProfiles')
            SendNUIMessage({
                action = "SET_PROFILES",
                payload = allprofiles
            })

            if Config.LicenseSystem == 'esx_license' then
                local allPlayersLicenses = TriggerCallback('mgnPoliceMdt:GetPlayersLicenses')
                SendNUIMessage({
                    action = 'SET_PLAYER_LICENSES',
                    payload = allPlayersLicenses
                })
            end
        end

        SendNUIMessage({
            action = "Location",
            payload = Location()
        })

        if Config.DisplayPage['INCIDENTS'] then
            local incidents = TriggerCallback('mgnPoliceMdt:GetIncidents')
            SendNUIMessage({
                action = "SET_INCIDENTS",
                payload = incidents
            })
        end

        if Config.DisplayPage['VEHICLES'] then
            local allvehicles = TriggerCallback('mgnPoliceMdt:GetAllVehicles')
            vehicles = {}
            props = {}
            for k, v in pairs(allvehicles) do
                if Config.Framework == 'newesx' or Config.Framework == 'oldesx' or Config.Framework == 'esx' then
                    props = json.decode(v.vehicle)
                else
                    props = json.decode(v.mods)
                end
                if props then
                    primary = Config.Colors[tostring(props.color1)]
                    if Config.Framework == 'newesx' or Config.Framework == 'oldesx' or Config.Framework == 'esx' then
                        table.insert(vehicles, {
                            plate = v.plate,
                            identifier = v.owner,
                            carname = GetDisplayNameFromVehicleModel(tonumber(props.model)),
                            category = Config.Class[GetVehicleClassFromName(props.model)],
                            color = primary,
                            gallery = v.photos
                        })
                    else
                        table.insert(vehicles, {
                            plate = v.plate,
                            identifier = v.citizenid,
                            carname = GetDisplayNameFromVehicleModel(tonumber(v.hash)),
                            category = Config.Class[GetVehicleClassFromName(tonumber(v.hash))],
                            color = primary,
                            gallery = v.photos
                        })
                    end
                end
            end

            if vehicles then
                SendNUIMessage({
                    action = "ALL_VEHICLES",
                    payload = vehicles
                })
            end
        end

        if Config.DisplayPage['EVIDENCE'] then
            local evidences = TriggerCallback('mgnPoliceMdt:GetEvidences')
            SendNUIMessage({
                action = "SET_EVIDENCES",
                payload = evidences
            })
        end

        if Config.DisplayPage['CHARGES'] then
            local charges = TriggerCallback('mgnPoliceMdt:GetCharges')
            SendNUIMessage({
                action = "SET_CHARGES",
                payload = charges
            })
        end

        if Config.Phone == 'lb-phone' then
            local phones = TriggerCallback('mgnPoliceMdt:server:GetPhoneNumbers')
            SendNUIMessage({
                action = "SET_PHONE_NUMBERS",
                payload = phones
            })
        end

        if cb then
            cb('ok')
        end
    end
end

function GetJobGrade()
    if Config.Framework == 'newesx' or Config.Framework == 'oldesx' or Config.Framework == 'esx' then
        return GetPlayerData().job.grade
    else
        return Core.Functions.GetPlayerData().job.grade.level
    end
end

function GetJobGradeName()
    if Config.Framework == 'newesx' or Config.Framework == 'oldesx' or Config.Framework == 'esx' then
        return GetPlayerData().job.grade_name
    else
        return Core.Functions.GetPlayerData().job.grade.name
    end
end

function GetJob()
    if Config.Framework == 'newesx' or Config.Framework == 'oldesx' or Config.Framework == 'esx' then
        return GetPlayerData().job.name
    else
        return Core.Functions.GetPlayerData().job.name
    end
end

function GetPlayerData()
    if Config.Framework == 'newesx' or Config.Framework == 'oldesx' or Config.Framework == 'esx' then
        while Core == nil do
            Citizen.Wait(0)
        end
        return Core.GetPlayerData()
    else
        while Core == nil do
            Citizen.Wait(0)
        end
        return Core.Functions.GetPlayerData()
    end
end

function WaitPlayer()
    if Config.Framework == "esx" then
        while Core == nil do
            Citizen.Wait(0)
        end
        while Core.GetPlayerData() == nil do
            Citizen.Wait(0)
        end
        while Core.GetPlayerData().job == nil do
            Citizen.Wait(0)
        end
    else
        while Core == nil do
            Citizen.Wait(0)
        end
        while Core.Functions.GetPlayerData() == nil do
            Citizen.Wait(0)
        end
        while Core.Functions.GetPlayerData().metadata == nil do
            Citizen.Wait(0)
        end
    end
end

-- Camera

if Config.DisplayPage['CAMS'] then

    RegisterNetEvent('mgnPoliceMdt:tempDisableCam')
    AddEventHandler('mgnPoliceMdt:tempDisableCam', function(disableDuration, camId)
        local time = disableDuration * 1000
        Config.Cams[camId].enable = false
        TriggerServerEvent('mgnPoliceMdt:server:updatecam')
        Wait(time)
        Config.Cams[camId].enable = true
        TriggerServerEvent('mgnPoliceMdt:server:updatecam')
    end)

    RegisterNetEvent('mgnPoliceMdt:disableCam')
    AddEventHandler('mgnPoliceMdt:disableCam', function(camId)
        Config.Cams[camId].enable = false
        TriggerServerEvent('mgnPoliceMdt:server:updatecam')
    end)

    RegisterNetEvent('mgnPoliceMdt:enableCam')
    AddEventHandler('mgnPoliceMdt:enableCam', function(camId)
        Config.Cams[camId].enable = true
        TriggerServerEvent('mgnPoliceMdt:server:updatecam')
    end)

    RegisterNetEvent('mgnPoliceMdt:disableAllCam')
    AddEventHandler('mgnPoliceMdt:disableAllCam', function()
        for k, v in pairs(Config.Cams) do
            Config.Cams[k].enable = false
        end
        TriggerServerEvent('mgnPoliceMdt:server:updatecam')
    end)

    RegisterNetEvent('mgnPoliceMdt:enableAllCam')
    AddEventHandler('mgnPoliceMdt:enableAllCam', function()
        for k, v in pairs(Config.Cams) do
            Config.Cams[k].enable = true
        end
        TriggerServerEvent('mgnPoliceMdt:server:updatecam')
    end)

    RegisterNUICallback('openCam', function(data, cb)
        local index = data.index + 1
        if Config.Cams[index].enable then
            time = GetClockHours() .. ':' .. GetClockMinutes() .. ':' .. GetClockSeconds()

            incam = true

            SendNUIMessage({
                action = 'OPEN_CAM',
                payload = Config.Cams[index].name,
                value = time
            })

            OpenCam(index)
        end
        cb('ok')
    end)

    function OpenCam(index)
        Config.MenuOpen()
        FreezeEntityPosition(PlayerPedId(), true)
        RenderScriptCams(false, false, 0, 1, 0)
        local cam = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)
        SetFocusPosAndVel(Config.Cams[index].position.x, Config.Cams[index].position.y, Config.Cams[index].position.z,
            0.0, 0.0, 0.0)
        SetCamCoord(cam, Config.Cams[index].position.x, Config.Cams[index].position.y, Config.Cams[index].position.z)
        SetCamRot(cam, -20.0, 0.0, Config.Cams[index].position.w)
        SetTimecycleModifier("scanline_cam_cheap")
        SetTimecycleModifierStrength(2.0)
        RenderScriptCams(true, false, 0, 1, 0)
        SetCamActive(cam, true)
        RenderScriptCams(1, 1, 750, 1, 1)
        SetEntityInvincible(PlayerPedId(), true)

        Citizen.CreateThread(function()
            while incam do
                if IsControlJustPressed(0, Config.CamCloseKey) then
                    incam = false
                    CloseCam(function()
                        Config.MenuClose()
                    end)
                end
                Wait(1)
            end
        end)

        SetNuiFocus(false, false)
    end

    function CloseCam()
        DestroyCam(cam)
        ClearFocus()
        RenderScriptCams(false, false, 0, 1, 0)
        ClearTimecycleModifier("scanline_cam_cheap")
        ClearFocus()
        FreezeEntityPosition(PlayerPedId(), false)
        SetEntityInvincible(PlayerPedId(), true)
        SendNUIMessage({
            action = 'CLOSE_CAM'
        })
        SetNuiFocus(true, true)
    end

    RegisterNetEvent('mgnPoliceMdt:client:updatecam')
    AddEventHandler('mgnPoliceMdt:client:updatecam', function()
        SendNUIMessage({
            action = "SET_CAMS",
            value = Config.Cams
        })
    end)

end

-- Calls 

if Config.DisplayPage['CALLS'] then
    calls = {}

    RegisterNUICallback('setwaypoint', function(data, cb)
        SetNewWaypoint(data.x, data.y)
        cb('ok')
    end)

    RegisterNUICallback('removecall', function(data, cb)
        table.remove(calls, data.index + 1)
        SendNUIMessage({
            action = "REMOVE_CALL",
            payload = data.index
        })
        cb('ok')
    end)

    RegisterNetEvent('mgnPoliceMdt:client:addCall')
    AddEventHandler('mgnPoliceMdt:client:addCall', function(type, type2)
        AddCall(nil, nil, type, type2)
    end)

    function AddCall(location, streetname, type, type2)
        -- Available types: houserobbery,shootfire,fight
        local loc = nil
        local AvailableTypes = {
            ['houserobbery'] = 'houserobbery',
            ['shootfire'] = 'shootfire',
            ['fight'] = 'fight'
        }

        if not type2 then
            type2 = 'default'
        end

        if AvailableTypes[type2] then
            type2 = AvailableTypes[type2]
        else
            type2 = 'default'
        end

        if not location then
            x, y, z = table.unpack(GetEntityCoords(PlayerPedId()))
            loc = vector3(x, y, z)
        else
            loc = location
        end

        if not streetname then
            streetName = Location()
        else
            streetName = streetname
        end

        local call = {
            street = streetName,
            location = loc,
            type = type,
            type2 = type2
        }

        table.insert(calls, call)

        SendNUIMessage({
            action = "SEND_CALL",
            payload = call
        })

    end

    exports('AddCall', function(coords, street, text, type)
        AddCall(coords, street, text, type)
    end)
end
-- PHOTO

RegisterNUICallback('takephoto', function(data, cb)
    if hook ~= "" then
        SetNuiFocus(false, false)
        CreateMobilePhone(1)
        CellCamActivate(true, true)
        local takePhoto = true
        isOpen = false
        TriggerScreenblurFadeOut(1000)
        while takePhoto do
            if IsControlJustPressed(1, 177) then -- CANCEL
                DestroyMobilePhone()
                CellCamActivate(false, false)
                cb(false)
                takePhoto = false
                SetNuiFocus(true, true)
                isOpen = true
                doAnimation()
                break
            elseif IsControlJustPressed(1, 176) then -- TAKE.. PIC
                exports['screenshot-basic']:requestScreenshotUpload(tostring(hook), 'files[]', function(data)
                    local resp = json.decode(data)
                    cb(resp.attachments[1].proxy_url)
                    DestroyMobilePhone()
                    CellCamActivate(false, false)
                    SetNuiFocus(true, true)
                    takePhoto = false
                    isOpen = true
                    doAnimation()
                end)
            end
            HideHudComponentThisFrame(7)
            HideHudComponentThisFrame(8)
            HideHudComponentThisFrame(9)
            HideHudComponentThisFrame(6)
            HideHudComponentThisFrame(19)
            HideHudAndRadarThisFrame()
            EnableAllControlActions(0)
            Wait(0)
        end
        Wait(1000)
    else
        cb(false)
    end
end)

-- Tablet Animation

local tabletDict = "amb@code_human_in_bus_passenger_idles@female@tablet@base"
local tabletAnim = "base"
local tabletProp = prop_cs_tablet
local tabletBone = 60309
local tabletOffset = vector3(0.03, 0.002, -0.0)
local tabletRot = vector3(10.0, 160.0, 0.0)

function doAnimation()
    if not isOpen then
        return
    end
    RequestAnimDict(tabletDict)
    RequestModel(tabletProp)
    plyPed = PlayerPedId()
    tabletObj = CreateObject(tabletProp, 0.0, 0.0, 0.0, true, true, false)
    tabletBoneIndex = GetPedBoneIndex(plyPed, tabletBone)
    AttachEntityToEntity(tabletObj, plyPed, tabletBoneIndex, tabletOffset.x, tabletOffset.y, tabletOffset.z,
        tabletRot.x, tabletRot.y, tabletRot.z, true, false, false, false, 2, true)
    SetModelAsNoLongerNeeded(tabletProp)

    if not IsEntityPlayingAnim(plyPed, tabletDict, tabletAnim, 3) then
        TaskPlayAnim(plyPed, tabletDict, tabletAnim, 3.0, 3.0, -1, 49, 0, 0, 0, 0)
    end
end

function stopAnimation()
    plyPed = PlayerPedId()
    ClearPedSecondaryTask(plyPed)
    DetachEntity(tabletObj, true, false)
    DeleteEntity(tabletObj)
    ClearPedTasks(plyPed)
    for k, v in pairs(GetGamePool('CObject')) do
        if IsEntityAttachedToEntity(plyPed, v) then
            SetEntityAsMissionEntity(v, true, true)
            DeleteObject(v)
            DeleteEntity(v)
        end
    end
    isOpen = false
end

RegisterCommand('propfix', function()
    plyPed = PlayerPedId()
    for k, v in pairs(GetGamePool('CObject')) do
        if IsEntityAttachedToEntity(plyPed, v) then
            SetEntityAsMissionEntity(v, true, true)
            DeleteObject(v)
            DeleteEntity(v)
        end
    end
end)

RegisterNUICallback('changeGpsCode', function(data, cb)
    local code = data.code
    cb('ok')
end)
