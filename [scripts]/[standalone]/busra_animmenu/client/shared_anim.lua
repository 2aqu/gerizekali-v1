local isRequestAnim = false
local requestedemote = ''
local targetPlayerId = ''

-- Some of the work here was done by Super.Cool.Ninja / rubbertoe98
-- https://forum.fivem.net/t/release-nanimstarget/876709

-----------------------------------------------------------------------------------------------------
-- Commands / Events --------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------
-- if Config.SharedEmotes then
--     RegisterCommand('nearby', function(source, args, raw)
--         if #args > 0 then
--             local emotename = string.lower(args[1])
--             target, distance = GetClosestPlayer()
--             if (distance ~= -1 and distance < 3) then
--                 local anim = getAnim(emotename)
--                 if anim and anim.categ == "Shared" then
--                     dict, anim, ename = table.unpack(RP.Shared[emotename])
--                     TriggerServerEvent("ServerEmoteRequest", GetPlayerServerId(target), emotename)
--                     SimpleNotify(Config.Languages[lang]['sentrequestto'] ..
--                         GetPlayerName(target) .. " ~w~(~g~" .. ename .. "~w~)")
--                 else
--                     EmoteChatMessage("'" .. emotename .. "' " .. Config.Languages[lang]['notvalidsharedemote'] .. "")
--                 end
--             else
--                 SimpleNotify(Config.Languages[lang]['nobodyclose'])
--             end
--         else
--             NearbysOnCommand()
--         end
--     end, false)
-- end

RegisterNetEvent("SyncPlayEmote")
AddEventHandler("SyncPlayEmote", function(emote, player)
    EmoteCancel()
    Wait(300)
    targetPlayerId = player
    -- wait a little to make sure animation shows up right on both clients after canceling any previous emote
    local anim = getAnim(emote)
    if not anim then return end
    -- if anim.categ == "Shared" then
        if anim.AnimationOptions and anim.AnimationOptions.Attachto then
            -- We do not want to attach the player if the target emote already is attached to player
            -- this would cause issue where both player would be attached to each other and fall under the map
            local targetEmote = anim.sharedAnim
            local targetAnim = getAnim(targetEmote)
            if not targetEmote or not targetAnim or not targetAnim.AnimationOptions or
                not targetAnim.AnimationOptions.Attachto then
                local plyServerId = GetPlayerFromServerId(player)
                local ply = PlayerPedId()
                local pedInFront = GetPlayerPed(plyServerId ~= 0 and plyServerId or GetClosestPlayer())
                local bone = anim.AnimationOptions.bone or -1 -- No bone
                local xPos = anim.AnimationOptions.xPos or 0.0
                local yPos = anim.AnimationOptions.yPos or 0.0
                local zPos = anim.AnimationOptions.zPos or 0.0
                local xRot = anim.AnimationOptions.xRot or 0.0
                local yRot = anim.AnimationOptions.yRot or 0.0
                local zRot = anim.AnimationOptions.zRot or 0.0
                AttachEntityToEntity(ply, pedInFront, GetPedBoneIndex(pedInFront, bone), xPos, yPos, zPos, xRot, yRot,
                    zRot, false, false, false, true, 1, true)
            end
        end

        return OnEmotePlay(anim)
        
    -- elseif anim.categ == "Dances" then
    --     return OnEmotePlay(anim)
    -- end
end)

RegisterNetEvent("SyncPlayEmoteSource")
AddEventHandler("SyncPlayEmoteSource", function(emote, player)
    -- Thx to Poggu for this part!
    local ply = PlayerPedId()
    local plyServerId = GetPlayerFromServerId(player)
    local pedInFront = GetPlayerPed(plyServerId ~= 0 and plyServerId or GetClosestPlayer())

    local SyncOffsetFront = 1.0
    local SyncOffsetSide = 0.0
    local SyncOffsetHeight = 0.0
    local SyncOffsetHeading = 180.1

    local anim = getAnim(emote)
    if not anim then return end
    local AnimationOptions = anim.AnimationOptions
    if AnimationOptions then
        if AnimationOptions.SyncOffsetFront then
            SyncOffsetFront = AnimationOptions.SyncOffsetFront + 0.0
        end
        if AnimationOptions.SyncOffsetSide then
            SyncOffsetSide = AnimationOptions.SyncOffsetSide + 0.0
        end
        if AnimationOptions.SyncOffsetHeight then
            SyncOffsetHeight = AnimationOptions.SyncOffsetHeight + 0.0
        end
        if AnimationOptions.SyncOffsetHeading then
            SyncOffsetHeading = AnimationOptions.SyncOffsetHeading + 0.0
        end

        -- There is a priority to the source attached, if it is not set, it will use the target
        if (AnimationOptions.Attachto) then
            local bone = AnimationOptions.bone or -1 -- No bone
            local xPos = AnimationOptions.xPos or 0.0
            local yPos = AnimationOptions.yPos or 0.0
            local zPos = AnimationOptions.zPos or 0.0
            local xRot = AnimationOptions.xRot or 0.0
            local yRot = AnimationOptions.yRot or 0.0
            local zRot = AnimationOptions.zRot or 0.0
            AttachEntityToEntity(ply, pedInFront, GetPedBoneIndex(pedInFront, bone), xPos, yPos, zPos, xRot, yRot, zRot,
                false, false, false, true, 1, true)
        end
    end
    local coords = GetOffsetFromEntityInWorldCoords(pedInFront, SyncOffsetSide, SyncOffsetFront, SyncOffsetHeight)
    local heading = GetEntityHeading(pedInFront)
    SetEntityHeading(ply, heading - SyncOffsetHeading)
    SetEntityCoordsNoOffset(ply, coords.x, coords.y, coords.z, 0)
    EmoteCancel()
    Wait(300)
    targetPlayerId = player
    -- if anim.categ == "Shared" then
        OnEmotePlay(anim)
        return
    -- elseif anim.categ == "Dances" then
    --     OnEmotePlay(anim)
    --     return
    -- end
end)

RegisterNetEvent("SyncCancelEmote")
AddEventHandler("SyncCancelEmote", function(player)
    if targetPlayerId and targetPlayerId == player then
        targetPlayerId = nil
        EmoteCancel()
    end
end)

function CancelSharedEmote(ply)
    if targetPlayerId then
        TriggerServerEvent("ServerEmoteCancel", targetPlayerId)
        targetPlayerId = nil
    end
end

RegisterNetEvent("ClientEmoteRequestReceive")
AddEventHandler("ClientEmoteRequestReceive", function(anim, etype)
    isRequestAnim = true
    requestedemote = anim.animName
    if not anim then return end
    -- if anim.categ == 'Dances' or anim.categ == "Shared" then
    -- else
    --     return
    -- end

    PlaySound(-1, "NAV", "HUD_AMMO_SHOP_SOUNDSET", 0, 0, 1)
    SimpleNotify(Config.Languages[lang]['doyouwanna'] .. anim.label .. "~w~)")
end)

CreateThread(function()
    while true do
        Wait(0)
        if IsControlJustPressed(1, 246) and isRequestAnim then --TODO
            target, distance = GetClosestPlayer()
            if (distance ~= -1 and distance < 3) then
                local anim = getAnim(requestedemote)
                if not anim then return end
                -- if anim.categ == 'Dances' or anim.categ == "Shared" then
                    otheremote = anim.sharedAnim or requestedemote
                -- end
                TriggerServerEvent("ServerValidEmote", GetPlayerServerId(target), requestedemote, otheremote)
                isRequestAnim = false
            else
                SimpleNotify(Config.Languages[lang]['nobodyclose'])
            end
        elseif IsControlJustPressed(1, 182) and isRequestAnim then
            SimpleNotify(Config.Languages[lang]['refuseemote'])
            isRequestAnim = false
        end
    end
end)

-----------------------------------------------------------------------------------------------------
------ Functions and stuff --------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------

function GetPlayerFromPed(ped)
    for _, player in ipairs(GetActivePlayers()) do
        if GetPlayerPed(player) == ped then
            return player
        end
    end
    return -1
end

function GetPedInFront()
    local player = PlayerId()
    local plyPed = GetPlayerPed(player)
    local plyPos = GetEntityCoords(plyPed, false)
    local plyOffset = GetOffsetFromEntityInWorldCoords(plyPed, 0.0, 1.3, 0.0)
    local rayHandle = StartShapeTestCapsule(plyPos.x, plyPos.y, plyPos.z, plyOffset.x, plyOffset.y, plyOffset.z, 10.0, 12
        , plyPed, 7)
    local _, _, _, _, ped2 = GetShapeTestResult(rayHandle)
    return ped2
end

function NearbysOnCommand(source, args, raw)
    local NearbysCommand = ""
    for a in pairsByKeys(RP.Shared) do
        NearbysCommand = NearbysCommand .. "" .. a .. ", "
    end
    EmoteChatMessage(NearbysCommand)
    EmoteChatMessage(Config.Languages[lang]['emotemenucmd'])
end

function GetClosestPlayer()
    local players = GetPlayers()
    local closestDistance = -1
    local closestPlayer = -1
    local ply = PlayerPedId()
    local plyCoords = GetEntityCoords(ply, 0)

    for index, value in ipairs(players) do
        local target = GetPlayerPed(value)
        if (target ~= ply) then
            local targetCoords = GetEntityCoords(GetPlayerPed(value), 0)
            local distance = GetDistanceBetweenCoords(targetCoords["x"], targetCoords["y"], targetCoords["z"],
                plyCoords["x"], plyCoords["y"], plyCoords["z"], true)
            if (closestDistance == -1 or closestDistance > distance) then
                closestPlayer = value
                closestDistance = distance
            end
        end
    end
    return closestPlayer, closestDistance
end

function GetPlayers()
    local players = {}

    for i = 0, 255 do
        if NetworkIsPlayerActive(i) then
            table.insert(players, i)
        end
    end

    return players
end
