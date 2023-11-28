state = false
CanCancel = true
PlayerProps = {}
lang = Config.MenuLanguage
local AnimationDuration = -1
local ChosenAnimation = ""
local ChosenDict = ""
local IsInAnimation = false
local MostRecentChosenAnimation = ""
local MostRecentChosenDict = ""
local MovementType = 0
local PlayerGender = "male"
local PlayerHasProp = false
local PlayerParticles = {}
local SecondPropEmote = false
local lang = Config.MenuLanguage
local PtfxNotif = false
local PtfxPrompt = false
local PtfxWait = 500
local PtfxCanHold = false
local PtfxNoProp = false
local AnimationThreadStatus = false



function openMenu(bool)
    state = bool
    SetNuiFocus(state, state)

    if Config.AllowMovement == true then
        SetNuiFocusKeepInput(state)
    end
    
    SendNUIMessage({
        action = "open",
        bool = state
    })
end

RegisterCommand('e', function(source, args, raw) EmoteCommandStart(source, args, raw) end, false)

function getAnim(name)
    for k, v in pairs(Config.animations) do 
        for ka, va in pairs(v) do 
            if va.animName == name then
                return va
            end
        end
    end
    return nil
end

function getWalk(name)
    for k, v in pairs(Config.animations) do 
        for ka, va in pairs(v) do 
            if va.name:lower() == name:lower() then
                return va
            end
        end
    end
    return nil
end

function EmoteCommandStart(source, args, raw)
    if #args > 0 then
        local name = string.lower(args[1])
        if name == "c" then
            if IsInAnimation then
                EmoteCancel()
            else
                notify(Config.Languages[lang]['nocancel'])
            end
            return
        elseif name == "help" then
            EmotesOnCommand()
            return
        end

        local anim = getAnim(name)
        if not anim then return print('no anim found by', name) end
        
        if anim.categ == "PropEmotes" then
            if anim.AnimationOptions.PropTextureVariations then
                if #args > 1 then
                    local textureVariation = tonumber(args[2])
                    if (anim.AnimationOptions.PropTextureVariations[textureVariation] ~= nil) then
                        OnEmotePlay(anim, textureVariation - 1)
                        return
                    else
                        local str = ""
                        for k, v in ipairs(anim.AnimationOptions.PropTextureVariations) do
                            str = str .. string.format("\n(%s) - %s", k, v.Name)
                        end
                        
                        notify(string.format(Config.Languages[lang]['invalidvariation'], str), true)
                        OnEmotePlay(anim, 0)
                        return
                    end
                end
            end
            OnEmotePlay(anim)
            return
        else
            OnEmotePlay(anim)
        end
    end
end

function OnEmotePlay(EmoteName, textureVariation)
    local ped = PlayerPedId()
    local InVehicle = IsPedInAnyVehicle(ped, true)

    if not Config.AllowedInCars and InVehicle == 1 then
        return
    end

    if not DoesEntityExist(ped) then
        return false
    end

    ChosenDict, ChosenAnimation, ename = EmoteName.dict, EmoteName.name, EmoteName.label
    ChosenAnimOptions = EmoteName.AnimationOptions
    AnimationDuration = -1

    if EmoteName.categ == "Expressions" then
        if ChosenAnimation == "reset" then
            ClearFacialIdleAnimOverride(PlayerPedId())
        else
            SetFacialIdleAnimOverride(ped, ChosenAnimation, 0)
        end
        return
    end

    if EmoteName.categ == "Walks" then 
        return WalkMenuStart(ChosenDict)
    end

    if Config.DisarmPlayer then
        if IsPedArmed(ped, 7) then
            SetCurrentPedWeapon(ped, `WEAPON_UNARMED`, true)
        end
    end

    if PlayerHasProp then
        DestroyAllProps()
    end

    if ChosenDict == "MaleScenario" or "Scenario" then
        CheckGender()
        if ChosenDict == "MaleScenario" then if InVehicle then return end
            if PlayerGender == "male" then
                ClearPedTasks(ped)
                TaskStartScenarioInPlace(ped, ChosenAnimation, 0, true)
                DebugPrint("Playing scenario = (" .. ChosenAnimation .. ")")
                IsInAnimation = true
                RunAnimationThread()
            else
                notify(Config.Languages[lang]['maleonly'])
            end
            return
        elseif ChosenDict == "ScenarioObject" then if InVehicle then return end
            BehindPlayer = GetOffsetFromEntityInWorldCoords(ped, 0.0, 0 - 0.5, -0.5);
            ClearPedTasks(ped)
            TaskStartScenarioAtPosition(ped, ChosenAnimation, BehindPlayer['x'], BehindPlayer['y'],
                BehindPlayer['z'], GetEntityHeading(ped), 0, 1, false)
            DebugPrint("Playing scenario = (" .. ChosenAnimation .. ")")
            IsInAnimation = true
            RunAnimationThread()
            return
        elseif ChosenDict == "Scenario" then if InVehicle then return end
            ClearPedTasks(ped)
            TaskStartScenarioInPlace(ped, ChosenAnimation, 0, true)
            DebugPrint("Playing scenario = (" .. ChosenAnimation .. ")")
            IsInAnimation = true
            RunAnimationThread()
            return
        end
    end

    -- Small delay at the start
    if EmoteName.AnimationOptions and EmoteName.AnimationOptions.StartDelay then
        Wait(EmoteName.AnimationOptions.StartDelay)
    end

    if not LoadAnim(ChosenDict) then
        notify(ename .. " " .. Config.Languages[lang]['notvalidemote'])
        return
    end

    if EmoteName.AnimationOptions then
        if EmoteName.AnimationOptions.EmoteLoop then
            MovementType = 1
            if EmoteName.AnimationOptions.EmoteMoving then
                MovementType = 51 -- 110011
            end

        elseif EmoteName.AnimationOptions.EmoteMoving then
            MovementType = 51 -- 110011
        elseif EmoteName.AnimationOptions.EmoteMoving == false then
            MovementType = 0
        elseif EmoteName.AnimationOptions.EmoteStuck then
            MovementType = 50 -- 110010
        end

    else
        MovementType = 0
    end

    if InVehicle == 1 then
        MovementType = 51
    end

    if EmoteName.AnimationOptions then
        if EmoteName.AnimationOptions.EmoteDuration == nil then
            EmoteName.AnimationOptions.EmoteDuration = -1
            AttachWait = 0
        else
            AnimationDuration = EmoteName.AnimationOptions.EmoteDuration
            AttachWait = EmoteName.AnimationOptions.EmoteDuration
        end

        if EmoteName.AnimationOptions.PtfxAsset then
            PtfxAsset = EmoteName.AnimationOptions.PtfxAsset
            PtfxName = EmoteName.AnimationOptions.PtfxName
            if EmoteName.AnimationOptions.PtfxNoProp then
                PtfxNoProp = EmoteName.AnimationOptions.PtfxNoProp
            else
                PtfxNoProp = false
            end
            Ptfx1, Ptfx2, Ptfx3, Ptfx4, Ptfx5, Ptfx6, PtfxScale = table.unpack(EmoteName.AnimationOptions.PtfxPlacement)
            PtfxBone = EmoteName.AnimationOptions.PtfxBone
            PtfxColor = EmoteName.AnimationOptions.PtfxColor
            PtfxInfo = EmoteName.AnimationOptions.PtfxInfo
            PtfxWait = EmoteName.AnimationOptions.PtfxWait
            PtfxCanHold = EmoteName.AnimationOptions.PtfxCanHold
            PtfxNotif = false
            PtfxPrompt = true
            -- RunAnimationThread() -- ? This call should not be required, see if needed with tests

            TriggerServerEvent("busra_animmenu:ptfx:sync", PtfxAsset, PtfxName, vector3(Ptfx1, Ptfx2, Ptfx3),
                vector3(Ptfx4, Ptfx5, Ptfx6), PtfxBone, PtfxScale, PtfxColor)
        else
            DebugPrint("Ptfx = none")
            PtfxPrompt = false
        end
    end

    TaskPlayAnim(ped, ChosenDict, ChosenAnimation, 5.0, 5.0, AnimationDuration, MovementType, 0, false, false,
        false)
    RemoveAnimDict(ChosenDict)
    IsInAnimation = true
    RunAnimationThread()
    MostRecentDict = ChosenDict
    MostRecentAnimation = ChosenAnimation
    
    if EmoteName.AnimationOptions then
        if EmoteName.AnimationOptions.Prop then
            PropName = EmoteName.AnimationOptions.Prop
            PropBone = EmoteName.AnimationOptions.PropBone
            PropPl1, PropPl2, PropPl3, PropPl4, PropPl5, PropPl6 = table.unpack(EmoteName.AnimationOptions.PropPlacement)
            if EmoteName.AnimationOptions.SecondProp then
                SecondPropName = EmoteName.AnimationOptions.SecondProp
                SecondPropBone = EmoteName.AnimationOptions.SecondPropBone
                SecondPropPl1, SecondPropPl2, SecondPropPl3, SecondPropPl4, SecondPropPl5, SecondPropPl6 = table.unpack(EmoteName
                    .AnimationOptions.SecondPropPlacement)
                SecondPropEmote = true
            else
                SecondPropEmote = false
            end
            Wait(AttachWait)
            -- if not AddPropToPlayer(PropName, PropBone, PropPl1, PropPl2, PropPl3, PropPl4, 0.0, 300.0, textureVariation) then return end
            if not AddPropToPlayer(PropName, PropBone, PropPl1, PropPl2, PropPl3, PropPl4, PropPl5, PropPl6, textureVariation) then return end
            if SecondPropEmote then
                if not AddPropToPlayer(SecondPropName, SecondPropBone, SecondPropPl1, SecondPropPl2, SecondPropPl3,
                    SecondPropPl4, SecondPropPl5, SecondPropPl6, textureVariation) then 
                    DestroyAllProps()
                    return 
                end
            end

            -- Ptfx is on the prop, then we need to sync it
            if EmoteName.AnimationOptions.PtfxAsset and not PtfxNoProp then
                TriggerServerEvent("busra_animmenu:ptfx:syncProp", ObjToNet(prop))
            end
        end
    end
end

function CheckGender()
    local PlayerGender = "male"
    local hashSkinFemale = `mp_f_freemode_01`
    if GetEntityModel(PlayerPedId()) == hashSkinFemale then
        PlayerGender = "female"
    end
    DebugPrint("Set gender as = (" .. PlayerGender .. ")")
end

function EmoteCancel(force)
    local ply = PlayerPedId()
    if not CanCancel and force ~= true then return end
    if ChosenDict == "MaleScenario" and IsInAnimation then
        ClearPedTasksImmediately(ply)
        IsInAnimation = false
        DebugPrint("Forced scenario exit")
    elseif ChosenDict == "Scenario" and IsInAnimation then
        ClearPedTasksImmediately(ply)
        IsInAnimation = false
        DebugPrint("Forced scenario exit")
    end

    PtfxNotif = false
    PtfxPrompt = false
    Pointing = false

    if IsInAnimation then
        if LocalPlayer.state.ptfx then
            PtfxStop()
        end
        DetachEntity(ply, true, false)
        CancelSharedEmote(ply)
        DestroyAllProps()

        -- if ChosenAnimOptions and ChosenAnimOptions.ExitEmote then
        --     -- If the emote exit type is not spesifed it defaults to Emotes
        --     local ExitEmoteType = ChosenAnimOptions.ExitEmoteType or "Emotes"

        --     -- Checks that the exit emote actually exists
        --     if not RP[ExitEmoteType] or not RP[ExitEmoteType][ChosenAnimOptions.ExitEmote] then
        --         DebugPrint("Exit emote was invalid")
        --         ClearPedTasks(ply)
        --         IsInAnimation = false
        --         return
        --     end

        --     OnEmotePlay(RP[ExitEmoteType][ChosenAnimOptions.ExitEmote])
        --     DebugPrint("Playing exit animation")
        -- else
            ClearPedTasks(ply)
            IsInAnimation = false
        -- end
    end
    AnimationThreadStatus = false
end

function LoadPropDict(model)
    local model = GetHashKey(model)
    if not IsModelValid(model) then return DebugPrint("NO PROP FOUND!", model) end
    RequestModel(model)
    while not HasModelLoaded(model) do
        Wait(10)
    end
end

function AddPropToPlayer(prop1, bone, off1, off2, off3, rot1, rot2, rot3, textureVariation)
    local Player = PlayerPedId()
    local x, y, z = table.unpack(GetEntityCoords(Player))

    if not HasModelLoaded(prop1) then
        LoadPropDict(prop1)
    end

    prop = CreateObject(GetHashKey(prop1), x, y, z + 0.2, true, true, true)
    if textureVariation ~= nil then
        SetObjectTextureVariation(prop, textureVariation)
    end
    off1 = off1 and off1 + 0.0 or 0.0
    off2 = off2 and off2 + 0.0 or 0.0
    off3 = off3 and off3 + 0.0 or 0.0
    rot1 = rot1 and rot1 + 0.0 or 0.0
    rot2 = rot2 and rot2 + 0.0 or 0.0
    rot3 = rot3 and rot3 + 0.0 or 0.0
    AttachEntityToEntity(prop, Player, GetPedBoneIndex(Player, bone), off1, off2, off3, rot1, rot2, rot3, true, true,
        false, true, 1, true)
    table.insert(PlayerProps, prop)
    PlayerHasProp = true
    SetModelAsNoLongerNeeded(prop1)
    return true
end

function DestroyAllProps()
    for _, v in pairs(PlayerProps) do
        DeleteEntity(v)
    end
    PlayerHasProp = false
    DebugPrint("Destroyed Props")
end

CreateThread(function()
    RegisterCommand('emotecancel', function(source, args, raw) EmoteCancel() end, false)
    RegisterKeyMapping("emotecancel", "Cancel current emote", "keyboard", Config.CancelEmoteKey)
end)



DebugPrint = function(...)
    print("DEBUG", ...)
end


notify = function(...)
    print(...)
end

function LoadAnim(dict)
    if not DoesAnimDictExist(dict) then
        return false
    end

    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Wait(10)
    end

    return true
end

function RunAnimationThread()
    if AnimationThreadStatus then return end
    AnimationThreadStatus = true
    CreateThread(function()
        local sleep
        while AnimationThreadStatus and (IsInAnimation or PtfxPrompt) do
            sleep = 500

            if IsInAnimation then
                sleep = 0
                if IsPedShooting(PlayerPedId()) then
                    EmoteCancel()
                end
            end

            if PtfxPrompt then
                sleep = 0
                if not PtfxNotif then
                    SimpleNotify(PtfxInfo)
                    PtfxNotif = true
                end
                if IsControlPressed(0, 47) then
                    PtfxStart()
                    Wait(PtfxWait)
                    if PtfxCanHold then
                        while IsControlPressed(0, 47) and IsInAnimation and AnimationThreadStatus do
                            Wait(5)
                        end
                    end
                    PtfxStop()
                end
            end

            Wait(sleep)
        end
    end)
end

function onAnimTriggered(data)
    local dict = data.dict
    local name = data.name

    local foundData = Config.animations[data.categ] and Config.animations[data.categ][data.id]
    if not foundData then 
        if data.categ == "Expressions" then
            if name == "reset" then
                ClearFacialIdleAnimOverride(PlayerPedId())
            else
                SetFacialIdleAnimOverride(PlayerPedId(), name, 0)
            end
            return
        end
    
        if data.categ == "Walks" then 
            return WalkMenuStart(dict)
        end
        return print('no data', json.encode(data)) 
    end

    OnEmotePlay(data)
end

function SimpleNotify(message)
    Config.Notification(message)
    -- if Config.NotificationsAsChatMessage then
    --     TriggerEvent("chat:addMessage", { color = { 255, 255, 255 }, args = { tostring(message) } })
    -- else
    --     TriggerEvent('notification', message)
    --     BeginTextCommandThefeedPost("STRING")
    --     AddTextComponentSubstringPlayerName(message)
    --     EndTextCommandThefeedPostTicker(0, 1)
    -- end
end

CanDoEmote = true

function CanUseFavKeyBind()
    return true
end

-- Added events
RegisterNetEvent('animations:client:PlayEmote', function(args)
    EmoteCommandStart(source, args)
end)

-- if Config.SqlKeybinding then
    RegisterNetEvent('animations:client:BindEmote', function(args)
        EmoteBindStart(source, args)
    end)

    RegisterNetEvent('animations:client:EmoteBinds', function()
        EmoteBindsStart()
    end)
-- end

RegisterNetEvent('animations:client:EmoteMenu', function()
    OpenEmoteMenu()
end)

RegisterNetEvent('animations:client:ListEmotes', function()
    EmotesOnCommand()
end)

RegisterNetEvent('animations:client:Walk', function(args)
    WalkCommandStart(source, args)
end)

RegisterNetEvent('animations:client:ListWalks', function()
    WalksOnCommand()
end)

RegisterNetEvent('animations:ToggleCanDoAnims', function(bool)
    CanDoEmote = bool
end)

RegisterNetEvent('animations:client:EmoteCommandStart', function(args)
    if CanDoEmote then
        EmoteCommandStart(source, args)
    end
end)
