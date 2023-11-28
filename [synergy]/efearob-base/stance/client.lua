local isCrouching = false
local walkSet = 'default'
local latestAnimSet = {
    dict = "default"
}
local function loadAnimSet(anim)
    if HasAnimSetLoaded(anim) then
        return
    end
    RequestAnimSet(anim)
    while not HasAnimSetLoaded(anim) do
        Wait(10)
    end
end

local function resetAnimSet()
    local ped = PlayerPedId()
    ResetPedMovementClipset(ped, 1.0)
    ResetPedWeaponMovementClipset(ped)
    ResetPedStrafeClipset(ped)

    if latestAnimSet.dict ~= 'default' then
        loadAnimSet(latestAnimSet.dict)
        SetPedMovementClipset(ped, latestAnimSet.dict, 1.0)
        RemoveAnimSet(latestAnimSet.dict)
    end
end
exports("isCrouching", function() return isCrouching end)

RegisterNetEvent('crouchprone:client:SetWalkSet', function(clipset)
    walkSet = clipset
end)
RegisterNetEvent('syn:base:saveanim', function(aset)
    latestAnimSet = aset
end)

CreateThread(function()
    local sleep
    while true do
        sleep = 100
        local ped = PlayerPedId()
        DisableControlAction(0, 26, true)
        if not IsPedSittingInAnyVehicle(ped) and not IsPedFalling(ped) and not IsPedSwimming(ped) and
            not IsPedSwimmingUnderWater(ped) and not IsPauseMenuActive() then
            sleep = 0
            if IsDisabledControlJustReleased(2, 26) then
                if isCrouching then
                    ClearPedTasks(ped)
                    resetAnimSet()
                    SetPedStealthMovement(ped, false, 'DEFAULT_ACTION')
                    isCrouching = false
                else
                    ClearPedTasks(ped)
                    loadAnimSet('move_ped_crouched')
                    SetPedMovementClipset(ped, 'move_ped_crouched', 1.0)
                    SetPedStrafeClipset(ped, 'move_ped_crouched_strafing')
                    isCrouching = true
                end
            end
        end
        Wait(sleep)
    end
end)
