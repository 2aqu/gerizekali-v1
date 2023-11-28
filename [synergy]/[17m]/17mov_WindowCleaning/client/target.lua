local targetSystem

if Config.Framework == "QBCore" then
    targetSystem = "qb-target"
else
    targetSystem = "qtarget"
end

function SpawnStartingPed()
    local model = `a_m_y_business_03`
    RequestModel(model)
	while not HasModelLoaded(model) do
		Citizen.Wait(50)
	end
    spawnedPed = CreatePed(0, model, vector4(-1243.86, -1241.11, 10.03, 20.86), false, true)
    FreezeEntityPosition(spawnedPed, true)
    SetBlockingOfNonTemporaryEvents(spawnedPed, true)
    SetEntityInvincible(spawnedPed, true)
    exports[targetSystem]:AddTargetEntity(spawnedPed, {
        options = {
            {
                event = "multiplayerCleaner:OpenMainMenu",
                icon = "fa-solid fa-handshake-simple",
                label = "İşe Başla",
                -- job = "RequiredJob",
                canInteract = function(entity)
                    return #(GetEntityCoords(PlayerPedId()) - vector3(-1243.86, -1241.11, 11.03)) < 5.0
                end
            },
        },
        distance = 2.5
    })
end

RegisterNetEvent("multiplayerCleaner:OpenMainMenu", function()
    OpenDutyMenu()
end)