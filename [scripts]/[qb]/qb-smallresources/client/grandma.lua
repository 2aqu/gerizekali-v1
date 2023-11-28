local QBCore = exports['qb-core']:GetCoreObject()
local ped

RegisterNetEvent('qb-smallresources:client:grandmaMenu', function()
    local menu = {
        {
            header = "İllegal Doktor",
            txt = "Tedavi ol!",
            icon = 'fas fa-user-doctor',
            params = {
                event = "qb-smallresources:client:grandmaRrevive",
            }
        }
    }
    exports['qb-menu']:openMenu(menu)
end)

RegisterNetEvent('qb-smallresources:client:grandmaRrevive', function()
    QBCore.Functions.Progressbar("hospital_checkin", "Tedavi Oluyorsun...", 20000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent("hospital:client:Revive")
    end, function() -- Cancel
        QBCore.Functions.Notify("Iptal edildi.", "error")
    end)
end)

local SellLocation = vector4(1981.79, 5174.83, 46.64, 129.92)
CreateThread(function()
    -- Load ped model
    local pedModel = `a_f_o_ktown_01`
    RequestModel(pedModel)
    while not HasModelLoaded(pedModel) do Wait(0) end

    -- Create Ped
    ped = CreatePed(0, pedModel, SellLocation.x, SellLocation.y, SellLocation.z, SellLocation.w, false, false)
    FreezeEntityPosition(ped, true)
    SetEntityInvincible(ped, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    TaskStartScenarioInPlace(ped, "WORLD_HUMAN_CLIPBOARD", 0, true)

    -- Add qb-target interaction
    exports['qb-target']:AddTargetEntity(ped, {
        options = {
            {
                type = "client",
                event = "qb-smallresources:client:grandmaMenu",
                icon = 'fas fa-user-doctor',
                label = 'İllegal Doktor',
            }
        },
        distance = 2.5,
    })
end)
