local QBCore = exports['qb-core']:GetCoreObject()

Citizen.CreateThread(function ()
    for vitrineKey, vitrine in pairs(Config.ammuVitrines) do
        exports['qb-target']:AddBoxZone(vitrine.name, vitrine.coords, vitrine.length, vitrine.width, {
            name = vitrine.name,
            heading = vitrine.heading,
            debugPoly = Config.DebugPoly,
        }, {
            options = {
                {
                    type = "client",
                   -- item = Config.requiredItem,
                    action = function(entity)
                        if IsPedAPlayer(entity) then return false end
                        TriggerEvent("mt-ammurobbery:client:startStealing", vitrineKey, entity)
                    end,              
                    icon = vitrine.target_icon,
                    label = Lang:t(vitrine.target_label)
                },
            },
            distance = Config.boxDistance
        })
    end
end)
