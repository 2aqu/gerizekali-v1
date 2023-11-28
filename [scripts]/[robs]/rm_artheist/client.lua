QBCore = exports['qb-core']:GetCoreObject()

ArtHeist = {
    ['start'] = false,
    ['cuting'] = false,
    ['startPeds'] = {},
    ['sellPeds'] = {},
    ['cut'] = 0,
    ['objects'] = {},
    ['scenes'] = {},
    ['painting'] = {}
}

Citizen.CreateThread(function()
    for k, v in pairs(Config['ArtHeist']['startHeist']['peds']) do
        loadModel(v['ped'])
        ArtHeist['startPeds'][k] = CreatePed(4, GetHashKey(v['ped']), v['pos']['x'], v['pos']['y'], v['pos']['z'] - 0.95, v['heading'], false, true)
        FreezeEntityPosition(ArtHeist['startPeds'][k], true)
        SetEntityInvincible(ArtHeist['startPeds'][k], true)
        SetBlockingOfNonTemporaryEvents(ArtHeist['startPeds'][k], true)
    end
end)

Citizen.CreateThread(function()
    while true do
        local ped = PlayerPedId()
        local pedCo = GetEntityCoords(ped)
        local sleep = 1000
        local heistDist = #(pedCo - Config['ArtHeist']['startHeist']['pos'])
        if heistDist <= 3.0 then
            sleep = 1
            ShowHelpNotification(Strings['start_heist'])
            if IsControlJustPressed(0, 38) then
                StartHeist()
            end
        end
        if ArtHeist['start'] then
            for k, v in pairs(Config['ArtHeist']['painting']) do
                local dist = #(pedCo - v['scenePos'])
                if dist <= 1.0 then
                    sleep = 1
                    if not v['taken'] then
                        ShowHelpNotification(Strings['start_stealing'])
                        if IsControlJustPressed(0, 38) then
                            QBCore.Functions.TriggerCallback('artheist:server:checkPoliceCount', function(status)
                                if status then
                            local weapon = GetSelectedPedWeapon(ped)
                            if weapon == GetHashKey('WEAPON_SWITCHBLADE') then
                                if not ArtHeist['cuting'] then
                                    HeistAnimation(k)
                                else
                                    --ESX.ShowNotification(Strings['already_cuting'])
                                    QBCore.Functions.Notify('Zaten çalıyorsun', 'error', 3500)
                                end
                            else
                                --ESX.ShowNotification('You dont armed a switchblade')
                                QBCore.Functions.Notify('Sustalı bıçağın yok', 'error', 3500)
                            end
                            end
                        end)
                        end
                    end
                end
            end
        end
        Citizen.Wait(sleep)
    end
end)
--[[
RegisterNetEvent('artheist:client:policeAlert')
AddEventHandler('artheist:client:policeAlert', function(targetCoords)
    ESX.ShowNotification(Strings['police_alert'])
    local alpha = 250
    local artheistBlip = AddBlipForRadius(targetCoords.x, targetCoords.y, targetCoords.z, 50.0)

    SetBlipHighDetail(artheistBlip, true)
    SetBlipColour(artheistBlip, 1)
    SetBlipAlpha(artheistBlip, alpha)
    SetBlipAsShortRange(artheistBlip, true)

    while alpha ~= 0 do
        Citizen.Wait(125)
        alpha = alpha - 1
        SetBlipAlpha(artheistBlip, alpha)

        if alpha == 0 then
            RemoveBlip(artheistBlip)
            return
        end
    end
end)
--]]

RegisterNetEvent('artheist:client:syncHeistStart')
AddEventHandler('artheist:client:syncHeistStart', function()
    ArtHeist['start'] = not ArtHeist['start']
end)

RegisterNetEvent('artheist:client:syncPainting')
AddEventHandler('artheist:client:syncPainting', function(x)
    Config['ArtHeist']['painting'][x]['taken'] = true
end)

RegisterNetEvent('artheist:client:syncAllPainting')
AddEventHandler('artheist:client:syncAllPainting', function(x)
    for k, v in pairs(Config['ArtHeist']['painting']) do
        v['taken'] = false
    end
end)


function StartHeist()
    QBCore.Functions.TriggerCallback('artheist:server:checkRobTime', function(time)
        if time then
            if ArtHeist['start'] then QBCore.Functions.Notify('You already start heist. Wait until its over', 'error', 3500) return end
            for k, v in pairs(ArtHeist['startPeds']) do
                TaskTurnPedToFaceEntity(v, PlayerPedId(), 1000)
            end
            local paintingList = {}
            for k, v in pairs(Config['ArtHeist']['painting']) do
                table.insert(paintingList, {v['object']})
            end
            SendNUIMessage({
                action = 'open',
                list = paintingList
            })
            Wait(3000)
            TriggerServerEvent('artheist:server:syncHeistStart')
            --ESX.ShowNotification(Strings['go_steal'])
            QBCore.Functions.Notify('Madrazo malikanesine git ve tabloları çal.', 'success', 3500)
            stealBlip = addBlip(vector3(1397.66, 1140.42, 114.268), 439, 0, Strings['steal_blip'])
            repeat
                local ped = PlayerPedId()
                local pedCo = GetEntityCoords(ped)
                local dist = #(pedCo - Config['ArtHeist']['painting'][1]['scenePos'])
                Wait(1)
            until dist <= 100.0
            for k, v in pairs(Config['ArtHeist']['painting']) do
                loadModel(v['object'])
                ArtHeist['painting'][k] = CreateObjectNoOffset(GetHashKey(v['object']), v['objectPos'], 1, 1, 0)
                SetEntityRotation(ArtHeist['painting'][k], 0, 0, v['objHeading'], 2, true)
            end
        end
    end)
end

function AlertPolice()
    exports['ps-dispatch']:ArtGalleryRobbery()
end

function HeistAnimation(sceneId)
    local ped = PlayerPedId()
    local pedCo, pedRotation = GetEntityCoords(ped), vector3(0.0, 0.0, 0.0)
    local scenes = {false, false, false, false}
    local animDict = "anim_heist@hs3f@ig11_steal_painting@male@"
    local scene = Config['ArtHeist']['painting'][sceneId]
    TriggerServerEvent('artheist:server:syncPainting', sceneId)
    loadAnimDict(animDict)
    
    for k, v in pairs(Config['ArtHeist']['objects']) do
        loadModel(v)
        ArtHeist['objects'][k] = CreateObject(GetHashKey(v), pedCo, 1, 1, 0)
    end
    
    ArtHeist['objects'][3] = ArtHeist['painting'][sceneId]
    
    for i = 1, 10 do
        ArtHeist['scenes'][i] = NetworkCreateSynchronisedScene(scene['scenePos']['x'], scene['scenePos']['y'], scene['scenePos']['z'], scene['sceneRot'], 2, true, false, 1065353216, 0, 1065353216)
        NetworkAddPedToSynchronisedScene(ped, ArtHeist['scenes'][i], animDict, 'ver_01_'..Config['ArtHeist']['animations'][i][1], 4.0, -4.0, 1033, 0, 1000.0, 0)
        NetworkAddEntityToSynchronisedScene(ArtHeist['objects'][3], ArtHeist['scenes'][i], animDict, 'ver_01_'..Config['ArtHeist']['animations'][i][3], 1.0, -1.0, 1148846080)
        NetworkAddEntityToSynchronisedScene(ArtHeist['objects'][1], ArtHeist['scenes'][i], animDict, 'ver_01_'..Config['ArtHeist']['animations'][i][4], 1.0, -1.0, 1148846080)
        NetworkAddEntityToSynchronisedScene(ArtHeist['objects'][2], ArtHeist['scenes'][i], animDict, 'ver_01_'..Config['ArtHeist']['animations'][i][5], 1.0, -1.0, 1148846080)
    end

    cam = CreateCam("DEFAULT_ANIMATED_CAMERA", true)
    SetCamActive(cam, true)
    RenderScriptCams(true, 0, 3000, 1, 0)
    
    ArtHeist['cuting'] = true
    FreezeEntityPosition(ped, true)
    NetworkStartSynchronisedScene(ArtHeist['scenes'][1])
    PlayCamAnim(cam, 'ver_01_top_left_enter_cam_ble', animDict, scene['scenePos'], scene['sceneRot'], 0, 2)
    Wait(3000)
    NetworkStartSynchronisedScene(ArtHeist['scenes'][2])
    PlayCamAnim(cam, 'ver_01_cutting_top_left_idle_cam', animDict, scene['scenePos'], scene['sceneRot'], 0, 2)
    repeat
        ShowHelpNotification(Strings['cute_right'])
        if IsControlJustPressed(0, 38) then
            scenes[1] = true
        end
        Wait(1)
    until scenes[1] == true
    NetworkStartSynchronisedScene(ArtHeist['scenes'][3])
    PlayCamAnim(cam, 'ver_01_cutting_top_left_to_right_cam', animDict, scene['scenePos'], scene['sceneRot'], 0, 2)
    Wait(3000)
    NetworkStartSynchronisedScene(ArtHeist['scenes'][4])
    PlayCamAnim(cam, 'ver_01_cutting_top_right_idle_cam', animDict, scene['scenePos'], scene['sceneRot'], 0, 2)
    repeat
        ShowHelpNotification(Strings['cute_down'])
        if IsControlJustPressed(0, 38) then
            scenes[2] = true
        end
        Wait(1)
    until scenes[2] == true
    NetworkStartSynchronisedScene(ArtHeist['scenes'][5])
    PlayCamAnim(cam, 'ver_01_cutting_right_top_to_bottom_cam', animDict, scene['scenePos'], scene['sceneRot'], 0, 2)
    Wait(3000)
    NetworkStartSynchronisedScene(ArtHeist['scenes'][6])
    PlayCamAnim(cam, 'ver_01_cutting_bottom_right_idle_cam', animDict, scene['scenePos'], scene['sceneRot'], 0, 2)
    repeat
        ShowHelpNotification(Strings['cute_left'])
        if IsControlJustPressed(0, 38) then
            scenes[3] = true
        end
        Wait(1)
    until scenes[3] == true
    NetworkStartSynchronisedScene(ArtHeist['scenes'][7])
    PlayCamAnim(cam, 'ver_01_cutting_bottom_right_to_left_cam', animDict, scene['scenePos'], scene['sceneRot'], 0, 2)
    Wait(3000)
    repeat
        ShowHelpNotification(Strings['cute_down'])
        if IsControlJustPressed(0, 38) then
            scenes[4] = true
        end
        Wait(1)
    until scenes[4] == true
    NetworkStartSynchronisedScene(ArtHeist['scenes'][9])
    PlayCamAnim(cam, 'ver_01_cutting_left_top_to_bottom_cam', animDict, scene['scenePos'], scene['sceneRot'], 0, 2)
    Wait(1500)
    NetworkStartSynchronisedScene(ArtHeist['scenes'][10])
    RenderScriptCams(false, false, 0, 1, 0)
    DestroyCam(cam, false)
    Wait(7500)
    TriggerServerEvent('artheist:server:rewardItem', scene)
    ClearPedTasks(ped)
	FreezeEntityPosition(ped, false)
    RemoveAnimDict(animDict)
    for k, v in pairs(ArtHeist['objects']) do
        DeleteObject(v)
    end
    TriggerServerEvent('ak4y-blackmarket:taskCountAdd', 8, 1)
    print("XP EKLENDİ.")
    DeleteObject(ArtHeist['painting'][sceneId])
    ArtHeist['objects'] = {}
    ArtHeist['scenes'] = {}
    ArtHeist['cuting'] = false
    ArtHeist['cut'] = ArtHeist['cut'] + 1
    scenes = {false, false, false, false}
    if ArtHeist['cut'] == 1 then

        AlertPolice()

        --TriggerServerEvent('artheist:server:policeAlert', GetEntityCoords(PlayerPedId()))
    end
    if ArtHeist['cut'] == #Config['ArtHeist']['painting'] then
        TriggerServerEvent('artheist:server:syncHeistStart')
        TriggerServerEvent('artheist:server:syncAllPainting')
        ArtHeist['cut'] = 0
    end
end

function loadAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        RequestAnimDict(dict)
        Citizen.Wait(50)
    end
end

function loadModel(model)
    while not HasModelLoaded(GetHashKey(model)) do
        RequestModel(GetHashKey(model))
        Citizen.Wait(50)
    end
end

function ShowHelpNotification(text)
    SetTextComponentFormat("STRING")
    AddTextComponentString(text)
    DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

function addBlip(coords, sprite, colour, text)
    local blip = AddBlipForCoord(coords)
    SetBlipSprite(blip, sprite)
    SetBlipColour(blip, colour)
    SetBlipAsShortRange(blip, true)
    SetBlipScale(blip, 0.8)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(text)
    EndTextCommandSetBlipName(blip)
    return blip
end

AddEventHandler('onResourceStop', function (resource)
    if resource == GetCurrentResourceName() then
        for k, v in pairs(ArtHeist['painting']) do
            DeleteObject(v)
        end
        for k, v in pairs(ArtHeist['objects']) do
            DeleteObject(v)
        end
    end
end)