CreateThread(function()
    RegisterCommand('walk', function(source, args, raw) WalkCommandStart(source, args, raw) end)
end)

function WalkMenuStart(name)
    if Config.PersistentWalk then SetResourceKvp("walkstyle", name) end
    LocalPlayer.state:set('walkstyle', name, false)
    if name:lower() == "reset" then
        LocalPlayer.state:set('walkstyle', nil, false)
        ResetPedMovementClipset(PlayerPedId())
        return
    end
    RequestWalking(name)
    SetPedMovementClipset(PlayerPedId(), name, 0.2)
    RemoveAnimSet(name)
end

function RequestWalking(set)
    RequestAnimSet(set)
    while not HasAnimSetLoaded(set) do
        Wait(1)
    end
end

function WalksOnCommand(source, args, raw)
    -- local WalksCommand = ""
    -- for a in pairsByKeys(RP.Walks) do
    --     WalksCommand = WalksCommand .. "" .. string.lower(a) .. ", "
    -- end
    -- SimpleNotify(WalksCommand)
    -- SimpleNotify("To reset do /walk reset")
end

function firstToUpper(str)
    return (str:gsub("^%l", string.upper))
end

function WalkCommandStart(source, args, raw)
    local name = firstToUpper(string.lower(args[1]))

    if name == "Reset" then
        ResetPedMovementClipset(PlayerPedId())
        return
    end

    local anim = getWalk(name)
    if anim and anim.categ == "Walks" then
        WalkMenuStart(anim.dict)
    elseif name == "Injured" then
        WalkMenuStart("move_m@injured")
    else
        SimpleNotify("'" .. name .. "' is not a valid walk")
    end
end

function tableHasKey(table, key)
    return table[key] ~= nil
end

if Config.WalkingStyles and Config.PersistentWalk then
    AddEventHandler('playerSpawned', function()
        local kvp = GetResourceKvpString("walkstyle")
        LocalPlayer.state:set('walkstyle', kvp, false)

        if kvp ~= nil then
            WalkMenuStart(kvp)
        end
    end)
end
