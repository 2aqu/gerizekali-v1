local QBCore = exports['qb-core']:GetCoreObject()
local uiOpen = false
local currentRegister   = 0
local currentSafe = 0
local copsCalled = false
local CurrentCops = 0
local PlayerJob = {}
local onDuty = false
local usingAdvanced = false
local SafeCracked = false
local Cracked = false

--// THREADS \\ --
CreateThread(function()
    for k, _ in pairs(Config.Safes) do
        print(Config.Safes[k])
        print(vector3(Config.Safes[k][1].xyz))
        print(Config.Safes[k])
        exports['qb-target']:AddCircleZone(Config.Safes[k], vector3(Config.Safes[k][1].xyz), 1.0, {
            name = Config.Safes[k].type,
            debugPoly = false,
        }, {
            options = {
                {
                    type = "client",
                    event = "qb-storerobbery:client:checkmoney",
                    icon = "fas fa-lock",
                    label = "Kasayı Zorla",
                },
                {
                    type = "client",
                    event = "qb-storerobbery:client:collectsafe",
                    icon = "fas fa-award",
                    label = "Eşyaları Topla",
                },
            },
            distance = 2.0
        })
    end

    -- Still developing my backend code for item uses, doesn't apply when using target, feel free to use this if you have no item uses attached to your lockpicks :)

--[[     for k, _ in pairs(Config.Registers) do
        exports['qb-target']:AddCircleZone(Config.Registers[k], vector3(Config.Registers[k][1].xyz), 1.0, {
            name = Config.Registers[k],
            debugPoly = false,
        }, {
            options = {
                {
                    type = "client",
                    event = "qb-storerobbery:client:checkregister",
                    icon = "fas fa-lock",
                    label = "Search Register",
                },
            },
            distance = 2.0
        })
    end ]]
end)

CreateThread(function()
    Wait(1000)
    if QBCore.Functions.GetPlayerData().job ~= nil and next(QBCore.Functions.GetPlayerData().job) then
        PlayerJob = QBCore.Functions.GetPlayerData().job
    end
end)

CreateThread(function()
    while true do
        Wait(1000 * 60 * 5)
        if copsCalled then
            copsCalled = false
        end
    end
end)
--// THREADS \\ --

--// EVENTS \\ --
RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    PlayerJob = QBCore.Functions.GetPlayerData().job
    onDuty = true
end)

RegisterNetEvent('QBCore:Client:SetDuty', function(duty)
    onDuty = duty
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
    onDuty = true
end)

RegisterNetEvent('police:SetCopCount', function(amount)
    CurrentCops = amount
end)

RegisterNetEvent('lockpicks:UseLockpick', function(isAdvanced)
    for k, v in pairs(Config.Registers) do
        local ped = PlayerPedId()
        local pos = GetEntityCoords(ped)
        local dist = #(pos - Config.Registers[k][1].xyz)
        if dist <= 1 and not Config.Registers[k].robbed then
            if CurrentCops >= Config.MinimumStoreRobberyPolice then
                currentRegister = k
                if isAdvanced then
                    usingAdvanced = true
                else
                    usingAdvanced = false
                end
                exports['ps-dispatch']:StoreRobbery()
                if usingAdvanced then
                    local seconds = math.random(6,8)
                    local circles = math.random(2,4)
                    local success = exports['qb-lock']:StartLockPickCircle(circles, seconds, success)
                    if success then
                        exports['ps-dispatch']:StoreRobbery()
                        if currentRegister ~= 0 then
                            TriggerServerEvent('qb-storerobbery:server:setRegisterStatus', currentRegister)
                            local lockpickTime = math.random(25000, 40000)
                            LockpickDoorAnim(lockpickTime)
                            
                            QBCore.Functions.Progressbar("search_register", "Kasa Zorlanıyor..", lockpickTime, false, true, {
                                disableMovement = true,
                                disableCarMovement = true,
                                disableMouse = false,
                                disableCombat = true,
                            }, {
                                animDict = "veh@break_in@0h@p_m_one@",
                                anim = "low_force_entry_ds",
                                flags = 16,
                            }, {}, {}, function() -- Done
                                openingDoor = false
                                ClearPedTasks(PlayerPedId())
                                TriggerServerEvent('qb-storerobbery:server:takeMoney', currentRegister, true)            
                                currentRegister = 0
                                StopAnimTask(PlayerPedId(), "veh@break_in@0h@p_m_one@", "low_force_entry_ds", 1.0)
                            end, function() -- Cancel
                                openingDoor = false
                                ClearPedTasks(PlayerPedId())
                                QBCore.Functions.Notify("İşlem İptal Edildi..", "error")
                                currentRegister = 0
                                StopAnimTask(PlayerPedId(), "veh@break_in@0h@p_m_one@", "low_force_entry_ds", 1.0)
                            end)
                            CreateThread(function()
                                while openingDoor do
                                    TriggerServerEvent('hud:Server:GainStress', math.random(1, 3))
                                    Wait(10000)
                                end
                            end)
                        end
                    else
                        QBCore.Functions.Notify("Kasayı açmayı başaramadın.!")
                        if usingAdvanced then
                            if math.random(1, 100) < 5 then
                                TriggerServerEvent("qb-storerobbery:server:removeitem2")
                                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["advancedlockpick"], "remove", 1)
                                TriggerServerEvent('hud:Server:GainStress', math.random(1, 2))
                                QBCore.Functions.Notify("Maymuncuğun dış tarafı bükülmüş...", "error")
                            end
                        else
                            if math.random(1, 100) < 25 then
                                TriggerServerEvent("qb-storerobbery:server:removeitem")
                                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["lockpick"], "remove", 1)
                                TriggerServerEvent('hud:Server:GainStress', math.random(2, 4))
                                QBCore.Functions.Notify("Maymuncuğun dış tarafı bükülmüş...", "error")
                            end
                        end
                        if (IsWearingHandshoes() and math.random(1, 100) <= 25) then
                            local pos = GetEntityCoords(PlayerPedId())
                            TriggerServerEvent("evidence:server:CreateFingerDrop", pos)
                            QBCore.Functions.Notify("Başarılı..")
                        end
                    end
                else
                    local seconds = math.random(8,10)
                    local circles = math.random(2,4)
                    local success = exports['qb-lock']:StartLockPickCircle(circles, seconds, success)
                    exports['ps-dispatch']:StoreRobbery()
                    if success then
                        if currentRegister ~= 0 then
                            TriggerServerEvent('qb-storerobbery:server:setRegisterStatus', currentRegister)
                            local lockpickTime = math.random(30000, 45000)
                            LockpickDoorAnim(lockpickTime)
                            QBCore.Functions.Progressbar("search_register", "Kasa Zorlanıyor..", lockpickTime, false, true, {
                                disableMovement = true,
                                disableCarMovement = true, 
                                disableMouse = false,
                                disableCombat = true,
                            }, {
                                animDict = "veh@break_in@0h@p_m_one@",
                                anim = "low_force_entry_ds",
                                flags = 16,
                            }, {}, {}, function() -- Done
                                openingDoor = false
                                ClearPedTasks(PlayerPedId())
                                TriggerServerEvent('qb-storerobbery:server:takeMoney', currentRegister, true)       
                                TriggerServerEvent('ak4y-blackmarket:taskCountAdd', 7, 1)     
                                currentRegister = 0
                            end, function() -- Cancel
                                openingDoor = false
                                ClearPedTasks(PlayerPedId())
                                StopAnimTask(PlayerPedId(), "veh@break_in@0h@p_m_one@", "low_force_entry_ds", 1.0)
                                
                                QBCore.Functions.Notify("İşlem İptal Edildi..", "error")
                                currentRegister = 0
                                exports['ps-dispatch']:StoreRobbery()
                            end)
                           --CreateThread(function()
                           --  -- while openingDoor do
                           --  --     --TriggerServerEvent('hud:Server:GainStress', math.random(1, 3))
                           --  --     Wait(10000)
                           --  -- end
                           --end)
                        end
                    else
                        QBCore.Functions.Notify("Başarısız!")
                        exports['ps-dispatch']:StoreRobbery()
                        if usingAdvanced then
                            if math.random(1, 100) < 5 then
                                TriggerServerEvent("qb-storerobbery:server:removeitem2")
                                --TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["advancedlockpick"], "remove", 1)
                                TriggerServerEvent('hud:Server:GainStress', math.random(1, 2))
                            end
                        else
                            if math.random(1, 100) < 25 then
                                TriggerServerEvent("qb-storerobbery:server:removeitem")
                                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["lockpick"], "remove", 1)
                                TriggerServerEvent('hud:Server:GainStress', math.random(2, 4))
                            end
                        end
                        if (IsWearingHandshoes() and math.random(1, 100) <= 25) then
                            local pos = GetEntityCoords(PlayerPedId())
                            TriggerServerEvent("evidence:server:CreateFingerDrop", pos)
                            QBCore.Functions.Notify("Başarılı..")
                        end
                    end
                end

                if not IsWearingHandshoes() then
                    TriggerServerEvent("evidence:server:CreateFingerDrop", pos)
                end
                if not copsCalled then
                    local s1, s2 = GetStreetNameAtCoord(pos.x, pos.y, pos.z)
                    local street1 = GetStreetNameFromHashKey(s1)
                    local street2 = GetStreetNameFromHashKey(s2)
                    local streetLabel = street1
                    if street2 ~= nil then
                        streetLabel = streetLabel .. " " .. street2
                    end
                    TriggerServerEvent("qb-storerobbery:server:callCops", "cashier", currentRegister, streetLabel, pos)
                    copsCalled = true
                end

            else
                QBCore.Functions.Notify("Yeterli Polis Yok.", "error")
            end
        end
    end
end)

RegisterNetEvent('qb-storerobbery:client:checkmoney', function()
    TriggerServerEvent('qb-storerobbery:server:CheckItem')
end)

RegisterNetEvent('qb-storerobbery:client:hacksafe', function()
    local pos = GetEntityCoords(PlayerPedId())
    for safe,_ in pairs(Config.Safes) do
        local dist = #(pos - Config.Safes[safe][1].xyz)
        if dist < 1.0 then
            if Config.Safes[safe].robbed then
                QBCore.Functions.Notify("Kasa Boş!", "error")
            elseif Cracked then
                QBCore.Functions.Notify("Güvenlik sistemi devreye girdi!", "error")
            elseif not Config.Safes[safe].robbed then
                ----TriggerServerEvent("QBCore:Server:RemoveItem", "safecracker", 1)
                --TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["safecracker"], "remove", 1)
                MemoryGame()
            else
                QBCore.Functions.Notify("NASIL?", "error")
            end
        end
    end
end)

RegisterNetEvent('qb-storerobbery:client:collectsafe', function()
    CollectSafeMoney()
end)

RegisterNetEvent('qb-storerobbery:client:setRegisterStatus', function(batch, val)
    -- Has to be a better way maybe like adding a unique id to identify the register
    if(type(batch) ~= "table") then
        Config.Registers[batch] = val
    else
        for k, v in pairs(batch) do
            Config.Registers[k] = batch[k]
        end
    end
end)

RegisterNetEvent('qb-storerobbery:client:setSafeStatus', function(safe, bool)
    Config.Safes[safe].robbed = bool
end)

RegisterNetEvent('qb-storerobbery:client:robberyCall', function(type, key, streetLabel, coords)
    if PlayerJob.name == "police" or PlayerJob.name == "state" and onDuty then
        local cameraId = 4
        if type == "safe" then
            cameraId = Config.Safes[key].camId
        else
            cameraId = Config.Registers[key].camId
        end
        PlaySound(-1, "Lose_1st", "GTAO_FM_Events_Soundset", 0, 0, 1)
      --TriggerEvent('qb-policealerts:client:AddPoliceAlert', {
      --    timeOut = 5000,
      --    alertTitle = "10-31 | Shop Robbery",
      --    coords = {
      --        x = coords.x,
      --        y = coords.y,
      --        z = coords.z,
      --    },
      --    details = {
      --        [1] = {
      --            icon = '<i class="fas fa-video"></i>',
      --            detail = cameraId,
      --        },
      --        [2] = {
      --            icon = '<i class="fas fa-globe-europe"></i>',
      --            detail = streetLabel,
      --        },
      --    },
      --    callSign = QBCore.Functions.GetPlayerData().metadata["callsign"],
      --})

    -- local transG = 250
    -- local blip = AddBlipForCoord(coords.x, coords.y, coords.z)
    -- SetBlipSprite(blip, 458)
    -- SetBlipColour(blip, 1)
    -- SetBlipDisplay(blip, 4)
    -- SetBlipAlpha(blip, transG)
    -- SetBlipScale(blip, 1.0)
    -- BeginTextCommandSetBlipName('STRING')
    -- AddTextComponentString("10-31 | Market Soygunu")
    -- EndTextCommandSetBlipName(blip)
    -- while transG ~= 0 do
    --     Wait(180 * 4)
    --     transG = transG - 1
    --     SetBlipAlpha(blip, transG)
    --     if transG == 0 then
    --         SetBlipSprite(blip, 2)
    --         RemoveBlip(blip)
    --         return
    --     end
    -- end
    end
end)
--// EVENTS \\ --

--// FUNCTIONS \\ --
function lockpickTill()
    for k, v in pairs(Config.Registers) do
        local ped = PlayerPedId()
        local pos = GetEntityCoords(ped)
        local dist = #(pos - Config.Registers[k][1].xyz)
        if dist <= 1 and not Config.Registers[k].robbed then
            QBCore.Functions.TriggerCallback('artheist:server:policecheck', function(cops)
                if cops >= Config.MinimumStoreRobberyPolice then
                    currentRegister = k
                    local seconds = math.random(8,12)
                    local circles = math.random(2,5)
                    local success = exports['qb-lock']:StartLockPickCircle(circles, seconds, success)
                    if success then
                        if currentRegister ~= 0 then
                            
                            TriggerServerEvent('qb-storerobbery:server:setRegisterStatus', currentRegister)
                            local lockpickTime = math.random(10000, 20000)
                            LockpickDoorAnim(lockpickTime)
                            
                            QBCore.Functions.Progressbar("search_register", "Kasayı Zorluyorsun..", lockpickTime, false, true, {
                                disableMovement = true,
                                disableCarMovement = true,
                                disableMouse = false,
                                disableCombat = true,
                            }, {
                                animDict = "veh@break_in@0h@p_m_one@",
                                anim = "low_force_entry_ds",
                                flags = 16,
                            }, {}, {}, function() -- Done
                                openingDoor = false
                                ClearPedTasks(PlayerPedId())
                                TriggerServerEvent('qb-storerobbery:server:takeMoney', currentRegister, true)  
                                TriggerServerEvent('ak4y-blackmarket:taskCountAdd', 7, 1)          
                                currentRegister = 0
                                TriggerServerEvent('qb-robbery:server:succesHeist')
                            end, function() -- Cancel
                                openingDoor = false
                                ClearPedTasks(PlayerPedId())
                                QBCore.Functions.Notify("İşlem İptal Edildi..", "error")
                                currentRegister = 0
                            end)
                            CreateThread(function()
                                while openingDoor do
                                    TriggerServerEvent('hud:Server:GainStress', math.random(1, 3))
                                    Wait(10000)
                                end
                            end)
                        end
                    else
                        QBCore.Functions.Notify("Kasayı açamadın!")
                        if (IsWearingHandshoes() and math.random(1, 100) <= 25) then
                            local pos = GetEntityCoords(PlayerPedId())
                            TriggerServerEvent("evidence:server:CreateFingerDrop", pos)
                            QBCore.Functions.Notify("Başarılı..")
                        end
                    end
                
                    if not IsWearingHandshoes() then
                        TriggerServerEvent("evidence:server:CreateFingerDrop", pos)
                    end
                
                    if not copsCalled then
                        local s1, s2 = GetStreetNameAtCoord(pos.x, pos.y, pos.z)
                        local street1 = GetStreetNameFromHashKey(s1)
                        local street2 = GetStreetNameFromHashKey(s2)
                        local streetLabel = street1
                        if street2 ~= nil then
                            streetLabel = streetLabel .. " " .. street2
                        end
                        TriggerServerEvent("qb-storerobbery:server:callCops", "cashier", currentRegister, streetLabel, pos)
                        copsCalled = true
                    end
                else
                    QBCore.Functions.Notify("Yeterli Polis Yok", "error")
                end
            end)
        elseif dist <= 1 and Config.Registers[k].robbed then
            QBCore.Functions.Notify("Kayıt Boş", "error")
        end
    end
end

function IsWearingHandshoes()
    local armIndex = GetPedDrawableVariation(PlayerPedId(), 3)
    local model = GetEntityModel(PlayerPedId())
    local retval = true

    if model == `mp_m_freemode_01` then
        if Config.MaleNoHandshoes[armIndex] ~= nil and Config.MaleNoHandshoes[armIndex] then
            retval = false
        end
    else
        if Config.FemaleNoHandshoes[armIndex] ~= nil and Config.FemaleNoHandshoes[armIndex] then
            retval = false
        end
    end
    return retval
end

function setupRegister()
    QBCore.Functions.TriggerCallback('qb-storerobbery:server:getRegisterStatus', function(Registers)
        for k, v in pairs(Registers) do
            Config.Registers[k].robbed = Registers[k].robbed
        end
    end)
end

function setupSafes()
    QBCore.Functions.TriggerCallback('qb-storerobbery:server:getSafeStatus', function(Safes)
        for k, v in pairs(Safes) do
            Config.Safes[k].robbed = Safes[k].robbed
        end
    end)
end

function loadAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Wait(100)
    end
end

function takeAnim()
    local ped = PlayerPedId()
    while (not HasAnimDictLoaded("amb@prop_human_bum_bin@idle_b")) do
        RequestAnimDict("amb@prop_human_bum_bin@idle_b")
        Wait(100)
    end
    TaskPlayAnim(ped, "amb@prop_human_bum_bin@idle_b", "idle_d", 8.0, 8.0, -1, 50, 0, false, false, false)
    Wait(2500)
    TaskPlayAnim(ped, "amb@prop_human_bum_bin@idle_b", "exit", 8.0, 8.0, -1, 50, 0, false, false, false)
end

local openingDoor = false

function LockpickDoorAnim(time)
    time = time / 1000
    loadAnimDict("veh@break_in@0h@p_m_one@")
    TaskPlayAnim(PlayerPedId(), "veh@break_in@0h@p_m_one@", "low_force_entry_ds" ,3.0, 3.0, -1, 16, 0, false, false, false)
    openingDoor = true
    CreateThread(function()
        while openingDoor do
            TaskPlayAnim(PlayerPedId(), "veh@break_in@0h@p_m_one@", "low_force_entry_ds", 3.0, 3.0, -1, 16, 0, 0, 0, 0)
            Wait(2000)
            time = time - 2
            TriggerServerEvent('qb-storerobbery:server:takeMoney', currentRegister, false)
            if time <= 0 then
                openingDoor = false
                StopAnimTask(PlayerPedId(), "veh@break_in@0h@p_m_one@", "low_force_entry_ds", 1.0)
            end
        end
    end)
end

function MemoryGame()
    local pos = GetEntityCoords(PlayerPedId())
    for safe,_ in pairs(Config.Safes) do

        local dist = #(pos - Config.Safes[safe][1].xyz)

        if dist < 3 then
            if dist < 1.0 then

                if not Config.Safes[safe].robbed and not SafeCracked then
                    QBCore.Functions.TriggerCallback('artheist:server:policecheck', function(cops)
                        if cops >= Config.MinimumStoreRobberyPolice then

                            currentSafe = safe

                            if math.random(1, 100) <= 65 and not IsWearingHandshoes() then
                                TriggerServerEvent("evidence:server:CreateFingerDrop", pos)
                            end

                            -- // MINI GAME \\ --
                            exports['ps-ui']:Scrambler(function(success)
                            if success then

                                -- if math.random(1, 100) <= 35 then
                                --     TriggerServerEvent('hud:server:GainStress', math.random(5, 8))
                                -- end

                                    Cracked = true
                                    copsCalled = false

                                    if currentSafe ~= 0 then
                                        if not Config.Safes[currentSafe].robbed then
                                            exports['ps-dispatch']:StoreRobbery()
                                            QBCore.Functions.Progressbar("forge_docs", "Kasayı açmaya çalışıyorsun...", 90000, false, false, {
                                                disableMovement = true,
                                                disableCarMovement = true,
                                                disableMouse = false,
                                                disableCombat = true,
                                            }, 
                                            {
                                                animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
                                                anim = "machinic_loop_mechandplayer",
                                                flags = 49,
                                            }, {}, function()

                                            end, function()
                                            end)
                                            Wait(Config.SafeWait)
                                            if dist < 15 then
                                                SafeCracked = true
                                                Cracked = false
                                                QBCore.Functions.Notify("Malzemeleri al", "success")
                                            else
                                                SafeCracked = false
                                                Cracked = false
                                                QBCore.Functions.Notify("Kasadan çok uzaklaştın!")
                                            end
                                        end
                                    end


                            else

                               --if math.random(1, 100) <= 75 then
                               --    TriggerServerEvent('hud:server:GainStress', math.random(8, 15))
                               --end

                                SafeCracked = false
                                Cracked = false
                                QBCore.Functions.Notify("Başarısız")
                                exports['ps-dispatch']:StoreRobbery()
                            end
                            end, "alphabet", 20, 0)

                            -- // MINI GAME \\ --

                            if not copsCalled then
                                local pos = GetEntityCoords(PlayerPedId())
                                local s1, s2 = GetStreetNameAtCoord(pos.x, pos.y, pos.z)
                                local street1 = GetStreetNameFromHashKey(s1)
                                local street2 = GetStreetNameFromHashKey(s2)
                                local streetLabel = street1
                                if street2 ~= nil then
                                    streetLabel = streetLabel .. " " .. street2
                                end
                                TriggerServerEvent("qb-storerobbery:server:callCops", "safe", currentSafe, streetLabel, pos)
                                copsCalled = true
                            end
                        else
                            QBCore.Functions.Notify("Yeterli Polis Yok ".. Config.MinimumStoreRobberyPolice .." ", "error")
                        end
                    end)
                else
                    QBCore.Functions.Notify("Zaten Açıldı", "error")
                end

            end
        end

    end
end

local aldm = false

function CollectSafeMoney()
    if aldm then
        return
    end
    local pos = GetEntityCoords(PlayerPedId())
    for safe, _ in pairs(Config.Safes) do
        local dist = #(pos - Config.Safes[safe][1].xyz)
        if dist < 3 then
            if dist < 1.0 then
                if SafeCracked then
                    if CurrentCops >= Config.MinimumStoreRobberyPolice then
                        currentSafe = safe
                        -- // FINGYPRINTS \\ --
                        if math.random(1, 100) <= 65 and not IsWearingHandshoes() then
                            TriggerServerEvent("evidence:server:CreateFingerDrop", pos)
                        end
                        -- // COLLECTION \\ --
                        if currentSafe ~= 0 then
                            if SafeCracked then
                                TriggerServerEvent("qb-storerobbery:server:SafeReward", currentSafe)
                                TriggerServerEvent("qb-storerobbery:server:setSafeStatus", currentSafe)
                                TriggerServerEvent('ak4y-blackmarket:taskCountAdd', 7, 1)
                                currentSafe = 0
                                QBCore.Functions.Notify("Malzemeler Alındı", "success")
                                aldm = true
                                takeAnim()
                                TriggerServerEvent('qb-robbery:server:succesHeist')
                                SafeCracked = false
                                Cracked = false
                            else
                                QBCore.Functions.Notify("Hala Kilitli!", "error")
                                SafeCracked = false
                                Cracked = false
                            end
                        end
                        -- // COLLECTION \\ --
                    else
                        QBCore.Functions.Notify("Yeterli Polis Yok ".. Config.MinimumStoreRobberyPolice .." ", "error")
                    end
                else
                    QBCore.Functions.Notify("Kilitli!", "error")
                end
            end
        end
    end
    Citizen.Wait(5000)
    aldm = false
end
--// FUNCTIONS \\ --
