local QBCore = exports['qb-core']:GetCoreObject()
local dragStatus, playerData = {}, {}
dragStatus.isDragged = false
local tirman = 0
local poliskelepceledi = false
local oyuncukelepceledi = false
local benkelepceledim = false
local isDead = false
local sistemAktif = true
local minigameaq = 0

RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    firstLogin()
end)

function firstLogin()
    PlayerData = QBCore.Functions.GetPlayerData()
    oyuncukelepceledi = PlayerData.metadata["kelepce"]
    poliskelepceledi = PlayerData.metadata["pkelepce"]
end

-- Meslek Update
RegisterNetEvent('QBCore:Client:OnJobUpdate')
AddEventHandler('QBCore:Client:OnJobUpdate', function(job)
    PlayerData.job = job
end)

RegisterNetEvent('tigann-kelepce:aktif-pasif')
AddEventHandler('tigann-kelepce:aktif-pasif', function(durum)
    if durum then
        sistemAktif = true
    else
        sistemAktif = false
    end
end)

function requestanim(anim)
    RequestAnimDict(anim)
    while not HasAnimDictLoaded(anim) do
        Citizen.Wait(100)
    end
end

Citizen.CreateThread(function()
    while QBCore == nil do Citizen.Wait(1) end
    while true do
        local time = 1000
        if poliskelepceledi or oyuncukelepceledi then
            time = 1
            local playerPed = PlayerPedId()
            if not IsPedRagdoll(playerPed) then
                if not IsEntityPlayingAnim(playerPed, 'mp_arresting', 'idle', 3) then
                    TriggerEvent("disc-inventoryhud:remove-weapon")
                    requestanim('mp_arresting')
                    TaskPlayAnim(playerPed, 'mp_arresting', 'idle', 8.0, 8.0, -1, 49, 0, 0, 0, 0)
                end

                if IsPedClimbing(playerPed) then
                    tirman = tirman + 1
                    if tirman > 40 then
                        SetPedToRagdoll(playerPed, 2000, 2000, 0, 0, 0, 0)
                        Citizen.Wait(2000)
                    end
                else
                    tirman = 0
                end
            end
        end
        Citizen.Wait(time)
    end
end)

Citizen.CreateThread(function()
    while true do
        local time = 1000
        if poliskelepceledi or oyuncukelepceledi then
            time = 1
            local playerPed = PlayerPedId()
            DisablePlayerFiring(playerPed, true)

            DisableControlAction(0, 21, true)  -- disable sprint
            DisableControlAction(0, 24, true)  -- Attack
            DisableControlAction(0, 257, true) -- Attack 2
            DisableControlAction(0, 25, true)  -- Aim
            DisableControlAction(0, 263, true) -- Melee Attack 1
            DisableControlAction(0, 37, true)  -- Select Weapon

            DisableControlAction(0, 56, true)  -- F9
            DisableControlAction(0, 45, true)  -- Reload
            DisableControlAction(0, 22, true)  -- Jump
            DisableControlAction(0, 44, true)  -- Cover

            DisableControlAction(0, 288, true) --F1
            DisableControlAction(0, 289, true) -- F2
            DisableControlAction(0, 170, true) -- F3
            DisableControlAction(0, 167, true) -- F6

            DisableControlAction(0, 26, true)  -- Disable looking behind
            DisableControlAction(0, 73, true)  -- Disable clearing animation

            DisableControlAction(0, 59, true)  -- Disable steering in vehicle
            DisableControlAction(0, 71, true)  -- Disable driving forward in vehicle
            DisableControlAction(0, 72, true)  -- Disable reversing in vehicle
            DisableControlAction(2, 21, true)  -- Disable going stealth

            DisableControlAction(0, 47, true)  -- Disable weapon
            DisableControlAction(0, 264, true) -- Disable melee
            DisableControlAction(0, 257, true) -- Disable melee
            DisableControlAction(0, 140, true) -- Disable melee
            DisableControlAction(0, 141, true) -- Disable melee
            DisableControlAction(0, 142, true) -- Disable melee
            DisableControlAction(0, 143, true) -- Disable melee
            DisableControlAction(0, 75, true)  -- Disable exit vehicle
            DisableControlAction(0, 301, true) -- Disable exit vehicle
            DisableControlAction(27, 75, true) -- Disable exit vehicle
            DisableControlAction(0, 23, true)
        end
        Citizen.Wait(time)
    end
end)

-- Polis Kelepçeleme
RegisterNetEvent("arob-cuff:polis-kelepce-tak-client")
AddEventHandler("arob-cuff:polis-kelepce-tak-client", function()
    if sistemAktif then
        if not IsPedInAnyVehicle(PlayerPedId(), 4) then
            local closestPlayer, closestDistance = QBCore.Functions.GetClosestPlayer()
            if closestPlayer ~= -1 and closestDistance <= 1.5 then
                local targetPlayerPed = GetPlayerServerId(closestPlayer)
                QBCore.Functions.TriggerCallback('arob-cuff:target-kelepcelimi', function(data)
                    if not data.kelepce and not data.pkelepce then
                        playerPed = PlayerPedId()
                        kordinat()
                        TriggerServerEvent("arob-cuff:polis-kelepce-tak-takilan", targetPlayerPed, playerlocation,
                            playerheading, playerCoords)
                        Citizen.Wait(200)
                        handcuffSound()
                        requestanim('mp_arrest_paired')
                        TaskPlayAnim(playerPed, 'mp_arrest_paired', 'cop_p2_back_right', 8.0, -8, 3750, 2, 0, 0, 0, 0)    -- Kelepce Takma
                        TriggerServerEvent("arob-cuff:polis-kelepce-tak-takan")
                    else
                        QBCore.Functions.Notify('Kişi Zaten Kelepçeli!')
                    end
                end, targetPlayerPed)
            else
                QBCore.Functions.Notify('Yakında Kimse Yok!')
            end
        else
            QBCore.Functions.Notify('Araçtayken bunu yapamazsın.', "error")
        end
    end
end)

RegisterNetEvent("arob-cuff:polis-kelepce-tak-yakin-oyuncu-client")
AddEventHandler("arob-cuff:polis-kelepce-tak-yakin-oyuncu-client",
    function(playerlocation, playerheading, playerCoords, takan)
        local PlayerData = QBCore.Functions.GetPlayerData()
        local playerPed = PlayerPedId()
        TriggerEvent("chat:forceClose")
        local stun = IsPedBeingStunned(PlayerPedId(), 0)
        konumaldir(playerPed, playerlocation, playerheading, playerCoords)

        Citizen.CreateThread(function()
            requestanim('mp_arrest_paired')
            TaskPlayAnim(PlayerPedId(), 'mp_arrest_paired', 'crook_p2_back_right', 8.0, -8, 5300, 2, 0, 0, 0, 0)  -- Kelepçelenme Anim
        end)
        if PlayerData.metadata["isdead"] or stun or PlayerData.metadata["inlaststand"] then
            finished = false
        else
            if minigameaq < 2 then
                exports['ps-ui']:Circle(function(e)
                    finished = e
                end, 1, 5)
                --  finished = exports["arob-skill"]:taskBar(100,math.random(10,30))
            else
                finished = false
            end
        end
        if not finished then
            Citizen.Wait(4550)
            requestanim('mp_arresting')
            TaskPlayAnim(PlayerPedId(), 'mp_arresting', 'idle', 8.0, -8, -1, 49, 0.0, false, false, false) -- Eller Arakada Kelepçeli Anim
            poliskelepceledi = true
            minigameaq = 0
        else
            QBCore.Functions.Notify('Kelepçeden kaçtın!.', "success")
            TriggerServerEvent("arob-cuff:anim-cancel", takan, "police")
            minigameaq = minigameaq + 1
        end
    end)

RegisterNetEvent("arob-cuff:client:anim-cancel")
AddEventHandler("arob-cuff:client:anim-cancel", function()
    Citizen.Wait(5300)
    ClearPedTasksImmediately(PlayerPedId())
end)

-- Polis Kelepçe çöz
RegisterNetEvent("arob-cuff:polis-kelepce-coz-client")
AddEventHandler("arob-cuff:polis-kelepce-coz-client", function()
    if not IsPedInAnyVehicle(PlayerPedId(), 4) then
        local closestPlayer, closestDistance = QBCore.Functions.GetClosestPlayer()
        if closestPlayer ~= -1 and closestDistance <= 1.5 then
            local targetPlayerPed = GetPlayerServerId(closestPlayer)
            QBCore.Functions.TriggerCallback('arob-cuff:target-kelepcelimi', function(data)
                if data.pkelepce then
                    playerPed = PlayerPedId()
                    kordinat()
                    TriggerServerEvent("arob-cuff:polis-kelepce-coz-takilan", targetPlayerPed, playerlocation,
                        playerheading, playerCoords)
                    uncuffSound()
                    requestanim('mp_arresting')

                    TaskPlayAnim(PlayerPedId(), 'mp_arresting', 'a_uncuff', 8.0, -8, -1, 2, 0, 0, 0, 0)
                    TriggerServerEvent("arob-cuff:polis-kelepce-coz-takan")
                    Citizen.Wait(6000)
                    ClearPedTasksImmediately(playerPed)
                elseif data.kelepce then
                    QBCore.Functions.Notify('Elinizdeki Anahtar Bu Kelepçenin Değil!')
                elseif not data.pkelepce or not data.kelepce then
                    QBCore.Functions.Notify('Kişi Zaten Kelepçeli Değil!')
                end
            end, targetPlayerPed)
        else
            QBCore.Functions.Notify('Yakında Kimse Yok!')
        end
    else
        QBCore.Functions.Notify('Araçtayken bunu yapamazsın', "error")
    end
end)

RegisterNetEvent("arob-cuff:polis-kelepce-coz-yakin-oyuncu-client")
AddEventHandler("arob-cuff:polis-kelepce-coz-yakin-oyuncu-client", function(playerlocation, playerheading, playerCoords)
    local playerPed = PlayerPedId()
    konumaldir(playerPed, playerlocation, playerheading, playerCoords)
    requestanim('mp_arresting')

    TaskPlayAnim(PlayerPedId(), 'mp_arresting', 'b_uncuff', 8.0, -8, -1, 2, 0, 0, 0, 0)
    Citizen.Wait(6000)
    poliskelepceledi = false
    ClearPedTasksImmediately(playerPed)
end)

-- Normal Kelepçeleme
RegisterNetEvent("arob-cuff:kelepce-tak-client")
AddEventHandler("arob-cuff:kelepce-tak-client", function()
    if sistemAktif then
        if not IsPedInAnyVehicle(PlayerPedId(), 4) then
            local closestPlayer, closestDistance = QBCore.Functions.GetClosestPlayer()
            if closestPlayer ~= -1 and closestDistance <= 1.5 then
                local targetPlayerPed = GetPlayerServerId(closestPlayer)
                QBCore.Functions.TriggerCallback('arob-cuff:target-kelepcelimi', function(data)
                    if not data.kelepce and not data.pkelepce then
                        playerPed = PlayerPedId()
                        kordinat()
                        TriggerServerEvent("arob-cuff:kelepce-tak-takilan", targetPlayerPed, playerlocation,
                            playerheading, playerCoords)
                        Citizen.Wait(200)
                        handcuffSound()
                        requestanim('mp_arrest_paired')
                        -- QBCore.Shared.RequestAnimDict('mp_arrest_paired', function()
                        TaskPlayAnim(playerPed, 'mp_arrest_paired', 'cop_p2_back_right', 8.0, -8, 3750, 2, 0, 0, 0, 0)    -- Kelepce Takma
                        TriggerServerEvent("arob-cuff:kelepce-tak-takan")
                        benkelepceledim = true
                        -- end)
                    else
                        QBCore.Functions.Notify('Kişi Zaten Kelepçeli!')
                    end
                end, targetPlayerPed)
            else
                QBCore.Functions.Notify('Yakında Kimse Yok!')
            end
        else
            QBCore.Functions.Notify('Araçtayken bunu yapamazsın.', "error")
        end
    end
end)

RegisterNetEvent("arob-cuff:kelepce-tak-yakin-oyuncu-client")
AddEventHandler("arob-cuff:kelepce-tak-yakin-oyuncu-client", function(playerlocation, playerheading, playerCoords, takan)
    local playerPed = PlayerPedId()
    TriggerEvent("chat:forceClose")
    local stun = IsPedBeingStunned(PlayerPedId(), 0)
    konumaldir(playerPed, playerlocation, playerheading, playerCoords)

    if PlayerData.metadata["isdead"] or stun or PlayerData.metadata["inlaststand"] then
        finished = false
    else
        if minigameaq < 2 then
            --- finished = exports["arob-skill"]:taskBar(100,math.random(10,30))
            exports['ps-ui']:Circle(function(e)
                finished = e
            end, 1, 5)
        else
            finished = false
        end
    end
    if not finished then
        requestanim('mp_arrest_paired')
        -- QBCore.Shared.RequestAnimDict('mp_arrest_paired', function()
        TaskPlayAnim(PlayerPedId(), 'mp_arrest_paired', 'crook_p2_back_right', 8.0, -8, 3750, 2, 0, 0, 0, 0)      -- Kelepçelenme Anim
        Citizen.Wait(5000)
        requestanim('mp_arresting')
        -- QBCore.Shared.RequestAnimDict('mp_arresting', function()
        TaskPlayAnim(PlayerPedId(), 'mp_arresting', 'idle', 8.0, -8, -1, 49, 0.0, false, false, false)         -- Eller Arakada Kelepçeli Anim
        oyuncukelepceledi = true
        minigameaq = 0
        -- end)
        -- end)
    else
        QBCore.Functions.Notify('Kelepçeden kaçtın!.', "success")
        TriggerServerEvent("arob-cuff:anim-cancel", takan, "normal")
        minigameaq = minigameaq + 1
    end
end)

-- Normal Kelepçe çöz
RegisterNetEvent("arob-cuff:kelepce-coz-client")
AddEventHandler("arob-cuff:kelepce-coz-client", function()
    if not IsPedInAnyVehicle(PlayerPedId(), 4) then
        local closestPlayer, closestDistance = QBCore.Functions.GetClosestPlayer()
        if closestPlayer ~= -1 and closestDistance <= 1.5 then
            local targetPlayerPed = GetPlayerServerId(closestPlayer)
            QBCore.Functions.TriggerCallback('arob-cuff:target-kelepcelimi', function(data)
                if data.kelepce and benkelepceledim then
                    playerPed = PlayerPedId()
                    kordinat()
                    TriggerServerEvent("arob-cuff:kelepce-coz-takilan", targetPlayerPed, playerlocation, playerheading,
                        playerCoords)
                    uncuffSound()
                    requestanim('mp_arresting')
                    -- QBCore.Shared.RequestAnimDict('mp_arresting', function()
                    TaskPlayAnim(PlayerPedId(), 'mp_arresting', 'a_uncuff', 8.0, -8, -1, 2, 0, 0, 0, 0)
                    TriggerServerEvent("arob-cuff:kelepce-coz-takan")
                    Citizen.Wait(6000)
                    ClearPedTasksImmediately(playerPed)
                    -- end)
                elseif not data.pkelepce and not data.kelepce then
                    QBCore.Functions.Notify('Kişi Zaten Kelepçeli Değil!')
                elseif data.pkelepce or not benkelepceledim then
                    QBCore.Functions.Notify('Elinizdeki Anahtar Bu Kelepçenin Değil!')
                end
            end, targetPlayerPed)
        else
            QBCore.Functions.Notify('Yakında Kimse Yok!')
        end
    else
        QBCore.Functions.Notify('Araçtayken bunu yapamazsın.', "error")
    end
end)

RegisterNetEvent("arob-cuff:kelepce-coz-yakin-oyuncu-client")
AddEventHandler("arob-cuff:kelepce-coz-yakin-oyuncu-client", function(playerlocation, playerheading, playerCoords)
    playerPed = PlayerPedId()
    konumaldir(playerPed, playerlocation, playerheading, playerCoords)
    requestanim('mp_arresting')
    -- QBCore.Shared.RequestAnimDict('mp_arresting', function()
    TaskPlayAnim(PlayerPedId(), 'mp_arresting', 'b_uncuff', 8.0, -8, -1, 2, 0, 0, 0, 0)
    Citizen.Wait(6000)
    oyuncukelepceledi = false
    ClearPedTasksImmediately(playerPed)
    -- end)
end)

-- Kelepçeli Oyuncuyu Taşı
RegisterNetEvent("arob-cuff:tasi")
AddEventHandler("arob-cuff:tasi", function()
    if sistemAktif then
        local closestPlayer, closestDistance = QBCore.Functions.GetClosestPlayer()
        if closestPlayer ~= -1 and closestDistance <= 1.5 then
            local targetPlayerPed = GetPlayerServerId(closestPlayer)
            QBCore.Functions.TriggerCallback('arob-cuff:target-kelepcelimi', function(data)
                if data.pkelepce or data.kelepce or data.isDead then
                    TriggerServerEvent("arob-cuff:tasi-target-server", targetPlayerPed)
                end
            end, targetPlayerPed)
        end
    end
end)

exports('tasikontrol', function()
    return isDragged
end)

RegisterNetEvent('arob-cuff:tasi-target-client')
AddEventHandler('arob-cuff:tasi-target-client', function(copId)
    dragStatus.isDragged = not dragStatus.isDragged
    dragStatus.CopId = copId

    local playerPed = PlayerPedId()
    if dragStatus.isDragged then
        targetPed = GetPlayerPed(GetPlayerFromServerId(dragStatus.CopId))

        if not IsPedSittingInAnyVehicle(targetPed) then
            AttachEntityToEntity(playerPed, targetPed, 11816, 0.54, 0.54, 0.0, 0.0, 0.0, 0.0, false, false, false, false,
                2, true)
        else
            dragStatus.isDragged = false
            DetachEntity(playerPed, true, false)
        end

        if IsPedDeadOrDying(targetPed, true) then
            dragStatus.isDragged = false
            DetachEntity(playerPed, true, false)
        end
    else
        DetachEntity(playerPed, true, false)
    end
end)

-- Araç İçine Koyma
RegisterNetEvent("arob-cuff:arac")
AddEventHandler("arob-cuff:arac", function()
    if sistemAktif then
        local closestPlayer, closestDistance = QBCore.Functions.GetClosestPlayer()
        if closestPlayer ~= -1 and closestDistance <= 3.0 then
            local targetPlayerPed = GetPlayerServerId(closestPlayer)
            QBCore.Functions.TriggerCallback('arob-cuff:target-kelepcelimi', function(data)
                if data.pkelepce or data.kelepce then
                    TriggerServerEvent("arob-cuff:arac-ici-koy-server", targetPlayerPed, "normal")
                end
            end, targetPlayerPed)
        end
    end
end)

RegisterNetEvent('arob-cuff:arac-ici-koy-client')
AddEventHandler('arob-cuff:arac-ici-koy-client', function(type)
    if (type == "dead" and QBCore.Functions.GetPlayerData().metadata["isdead"]) or (type == "normal" and not QBCore.Functions.GetPlayerData().metadata["isdead"]) then
        local playerPed = PlayerPedId()
        local coords = GetEntityCoords(playerPed)
        if not IsPedSittingInAnyVehicle(playerPed) then
            local arac, akordinat = QBCore.Functions.GetClosestVehicle(coords)
            if akordinat < 5 then
                if DoesEntityExist(arac) then
                    local maxSeats, freeSeat = GetVehicleMaxNumberOfPassengers(arac)

                    for i = maxSeats - 1, 0, -1 do
                        if IsVehicleSeatFree(arac, i) then
                            freeSeat = i
                            break
                        end
                    end

                    if freeSeat then
                        TaskWarpPedIntoVehicle(playerPed, arac, freeSeat)
                        dragStatus.isDragged = false
                    end
                end
            end
        else
            ClearPedSecondaryTask(playerPed)
            SetEntityCoords(playerPed, coords.x, coords.y, coords.z + 1)
        end
    end
end)

-- Chat Komutları
RegisterNetEvent("arob-cuff:client:tasi")
AddEventHandler("arob-cuff:client:tasi", function()
    TriggerEvent("arob-cuff:tasi")
end)

RegisterNetEvent("arob-cuff:client:arac")
AddEventHandler("arob-cuff:client:arac", function()
    TriggerEvent("arob-cuff:arac")
end)

RegisterNetEvent("arob-cuff:client:ybindir")
AddEventHandler("arob-cuff:client:ybindir", function()
    if sistemAktif then
        local playerPed = PlayerPedId()
        if not IsPedInAnyVehicle(playerPed) then
            local closestPlayer, closestDistance = QBCore.Functions.GetClosestPlayer()
            if closestPlayer ~= -1 and closestDistance <= 3.0 then
                ClearPedSecondaryTask(playerPed)
                TriggerServerEvent("arob-cuff:arac-ici-koy-server", GetPlayerServerId(closestPlayer), "dead")
            end
        else
            QBCore.Functions.Notify("Araç İçindeki İken Bu İşlemi Gerçekleştiremezsin")
        end
    end
end)

function uncuffSound()
    Citizen.Wait(700)
    TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 1.5, 'Uncuff', 1.0)
end

function handcuffSound()
    Citizen.Wait(100)
    TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 1.5, 'handcuff', 1.0)
end

function kordinat()
    playerheading = GetEntityHeading(playerPed)
    playerlocation = GetEntityForwardVector(playerPed)
    playerCoords = GetEntityCoords(playerPed)
end

function konumaldir(playerPed, playerlocation, playerheading, playerCoords)
    SetCurrentPedWeapon(playerPed, `WEAPON_UNARMED`, true) -- unarm player
    local x, y, z = table.unpack(playerCoords + playerlocation * 0.95)
    SetEntityCoords(PlayerPedId(), x, y, z - 1.0)
    SetEntityHeading(PlayerPedId(), playerheading)
end

exports('CuffCheck', function()
    if oyuncukelepceledi then
        return true
    elseif poliskelepceledi then
        return true
    else
        return false
    end
end)
