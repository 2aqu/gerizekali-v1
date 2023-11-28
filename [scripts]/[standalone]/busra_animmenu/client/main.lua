CreateThread(function()
    IsInAnimation = false
    local loaded = false

    RegisterNetEvent('busra_animmenu:client:openMenu', function()
        openMenu(true)
    end)
    
    RegisterCommand('emotemenu', function()
        openMenu(not state)
    end)
    
    RegisterKeyMapping('emotemenu', 'Animasyon menüsünü açar', 'keyboard', Config.OpenKey)
    
    CreateThread(function()
        while not loaded do 
            Wait(5000)
        end
        while not NetworkIsSessionStarted() do 
            Wait(1000)
        end
        Wait(5000)
        SendNUIMessage({
            action = "setData",
            animations = Config.animations
        })
    end)

    RegisterNUICallback("callAnim", function(data, cb)
        local anim = data.anim
        TriggerEvent("syn:base:saveanim", anim)
        if not anim then return print("no anim found", json.encode(data)) end
        local ped = PlayerPedId()
        onAnimTriggered(anim)
    end)
    exports("triggerAnim", onAnimTriggered)
    RegisterNUICallback("callShared", function(data, cb)
        local anim = data.anim
        if not anim then return print("no shared anim found", json.encode(data)) end
        target, distance = GetClosestPlayer()
        if (distance ~= -1 and distance < 3) then
            TriggerServerEvent("ServerEmoteRequest", GetPlayerServerId(target), anim)
            SimpleNotify(Config.Languages[lang]['sentrequestto'] .. GetPlayerName(target))
        else
            SimpleNotify(Config.Languages[lang]['nobodyclose'])
        end
    end)


    CreateThread(function()
        while true do 
            if state then
                DisableControlAction(0, 0, true)
                DisableControlAction(0, 1, true)
                DisableControlAction(0, 2, true)

                DisableControlAction(0, 200, true) --esc
                DisableControlAction(0, 202, true) --esc
                DisableControlAction(0, 322, true) --esc
                DisableControlAction(0, 177, true) --esc

                DisableControlAction(0, 156, true)
                DisableControlAction(0, 245, true) --chat

                DisableControlAction(0, 199, true) --chat
                DisableControlAction(0, 156, true) --chat

                DisableControlAction(0, 6, true) --right click
                DisableControlAction(0, 13, true) --right click
                DisableControlAction(0, 25, true) --right click

                DisablePlayerFiring(PlayerId(), true)
            else
                Wait(250)
            end
            Wait(1)
        end
    end)

    RegisterNUICallback("close", function(data, cb)
        openMenu(false)
    end)

    RegisterNUICallback("stopAnim", function(data, cb)
        EmoteCancel()
    end)

    CreateThread(function()
        while DP == nil do 
            Wait(1000)
        end
        while next(DP) == nil do 
            Wait(1000)
        end
        if not Config.SharedEmotes then
            DP['Shared'] = nil
        end
        if not Config.WalkingStyles then 
            DP['Walks'] = nil
        else
            for k, v in pairs(DP['Walks']) do 
                v[2] = k:lower()
            end
        end
        for categ, va in pairs(DP) do 
            if not Config.animations[categ] then 
                Config.animations[categ] = {}
            end
            for animTag, v in pairs(va) do 
                local animDict = v[1]
                local animName = v[2] or animTag
                local label = v[3] or animTag
                local options = v.AnimationOptions

                local id = #Config.animations[categ]+1
                Config.animations[categ][id] = {
                    dict = animDict,
                    name = animName,
                    label = label,
                    AnimationOptions = options,
    

                    sharedAnim = v[4],
                    id = id,
                    categ = categ,
                    animName = animTag,
                }
            end
        end

        for categ, va in pairs(Config.animations) do 
            for animTag, v in pairs(va) do 
                if DoesAnimDictExist(v.dict) then
                    if not v.id then
                        v.id = animTag
                    end
                    if not v.animName then
                        v.animName = animTag
                    end
                    if not v.categ then
                        v.categ = categ
                    end
                else
                    if categ ~= "Walks" and not v.dict:match("Scenario") and categ ~= "Expressions" then
                        print("NO ANIM FOUND BY NAME", v.dict, DoesAnimDictExist(v.dict))
                        v = nil
                    end
                end
            end
        end
        loaded = true
    end)
end)


