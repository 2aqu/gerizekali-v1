Citizen.CreateThread(function()
    RequestModel(Config.Ped)
    while not HasModelLoaded(Config.Ped) do
        Citizen.Wait(0)
    end
    local hunterped = CreatePed(
		2 --[[ integer ]], 
		Config.Ped --[[ Hash ]], 
		Config.PedCoords.x --[[ number ]], 
		Config.PedCoords.y --[[ number ]], 
		Config.PedCoords.z --[[ number ]], 
		Config.PedCoords.w --[[ number ]], 
		false --[[ boolean ]], 
		false --[[ boolean ]]
	)
    FreezeEntityPosition(hunterped, true)
    SetEntityInvincible(hunterped, true)
    PlaceObjectOnGroundProperly(hunterped)
    SetBlockingOfNonTemporaryEvents(hunterped, true)
    if Config.Action.actiontype == "drawtext" then
        while true do
            local wait = 1000
            local playercoord = GetEntityCoords(PlayerPedId())
            local diff = #(playercoord - vector3(Config.PedCoords.x, Config.PedCoords.y, Config.PedCoords.z))
            if (diff <= 3.0) then
                wait = 1
                DrawText3Ds(Config.PedCoords.x, Config.PedCoords.y, Config.PedCoords.z +0.90, Config.Translate["action"])
                if IsControlJustPressed(1,38) then
                    TriggerServerEvent("m-hunting:OpenHunting")
                end
            end
            Citizen.Wait(wait)
        end
    elseif Config.Action.actiontype == 'target' then
        if Config.Action.target == 'qb-target' then
            exports['qb-target']:AddTargetEntity(hunterped, {
                options = {
                    {
                        type = "server",
                        event = "m-hunting:OpenHunting",
                        icon = 'fas fa-clipboard',
                        label = Config.Translate["action"],
                    }
                },
                distance = 2.5,
            })
        elseif Config.Action.target == 'ox_target' then
            local models = GetHashKey(Config.Ped)
            options = {
                {
                    type = "server",
                    onSelect = function()
                        TriggerServerEvent("m-hunting:OpenHunting")
                    end,
                    icon = 'fas fa-clipboard',
                    label = Config.Translate["action"],
                }
            }
            exports.ox_target:addModel(models, options)
        end
    end
end)

RegisterNetEvent("m-hunting:client:SpawnVehicle")
AddEventHandler("m-hunting:client:SpawnVehicle", function()
    local model = GetHashKey(Config.VehicleHash)
    if not IsModelInCdimage(model) then return end
    RequestModel(model) 
    while not HasModelLoaded(model) do
      Wait(0)
    end
    vehicle = CreateVehicle(model, Config.CarSpawnCoord.x, Config.CarSpawnCoord.y, Config.CarSpawnCoord.z, Config.CarSpawnCoord.w, true, true)
    SetVehicleEngineOn(vehicle, true, true)
    SetVehicleHasBeenOwnedByPlayer(vehicle, true)
    SetVehRadioStation(vehicle, "OFF")
    SetEntityAsMissionEntity(vehicle, true, true)
    SetModelAsNoLongerNeeded(model)
    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
    Config.SetVehicleFuel(vehicle,100.0)
    Config.GiveVehicleKey(vehicle)
end)

RegisterNetEvent("m-hunting:client:SetOwner")
AddEventHandler('m-hunting:client:SetOwner', function(Vehicle)
    vehicle = NetToVeh(Vehicle)
    Config.SetVehicleFuel(vehicle,100.0)
    Config.GiveVehicleKey(vehicle)
end)

function DrawText3Ds(x, y, z, text)
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = string.len(text) / 370
    DrawRect(0.0, 0.0125, 0.017 + factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end

Citizen.CreateThread(function ()
    if Config.PedProtection then
        local hasHuntingRifle = false
        local blockShotActive = false
        local function blockShooting()
            if blockShotActive then return end
            blockShotActive = true
            Citizen.CreateThread(function()
                while hasHuntingRifle do
                    local ply = PlayerId()
                    local ped = PlayerPedId()
                    local ent = nil
                    local aiming, ent = GetEntityPlayerIsFreeAimingAt(ply)
                    local freeAiming = IsPlayerFreeAiming(ply)
                    local et = GetEntityType(ent)
                    if not freeAiming
                        or IsPedAPlayer(ent)
                        or et == 2
                        or (et == 1 and IsPedInAnyVehicle(ent))
                    then
                        DisableControlAction(0, 24, true)
                        DisableControlAction(0, 47, true)
                        DisableControlAction(0, 58, true)
                        DisablePlayerFiring(ped, true)
                    end
                    Citizen.Wait(0)
                end
                blockShotActive = false
            end)
        end
        
        
        Citizen.CreateThread(function()
            local huntingRifleHash = `weapon_sniperrifle` -- -646649097
        
            while true do
                if GetSelectedPedWeapon(PlayerPedId()) == huntingRifleHash then
                    hasHuntingRifle = true
                    blockShooting()
                else
                    hasHuntingRifle = false
                end
                Citizen.Wait(2000)
            end
        end)
    end
end)



