TestDriveActive, isBoss, canAccess = nil, false, false

CreateThread(function()
    while Framework == nil do
        Citizen.Wait(1)
    end
    local check = false
    for shopId, _ in pairs(Config.Locations) do
        if _.blip["show"] then
            CreateShopBlip(shopId)
        end
    end
    while true do
        local msec = 1000
        local ped = PlayerPedId()
        local pedCoords = GetEntityCoords(ped)
        if not TestDriveActive then
            for shopId, shop in pairs(Config.Locations) do
                local shopVisible = IsSphereVisible(shop.coords, 0.5)
                local bossVisible = IsSphereVisible(shop.bossmarker.coords, 0.5)
    
                local dist = #(pedCoords - shop.coords)
                if dist < 10 and shopVisible then
                    msec = 5

                    if not check then
                        check = true
                        CheckIsBoss(shopId)
                    end
                    if isBoss or canAccess then
                        if dist < 2 then
                            msec = 0
                            local offettedCoords = shop.coords + shop.marker.labelOffset
                            if Config.InteractionHandler == 'drawtext' then
                                Draw3DText(offettedCoords.x, offettedCoords.y, offettedCoords.z, shop.marker.label)
                                if IsControlJustPressed(0, 38) then
                                    HandleOpenShowroom(shopId)
                                end
                            elseif Config.InteractionHandler == 'ox_target' and not shop.targetEnabled then
                                exports.ox_target:addSphereZone({
                                    coords = vec3(offettedCoords.x, offettedCoords.y, offettedCoords.z),
                                    radius = 2,
                                    options = {
                                        {
                                            name = 'vehicleShop',
                                            icon = 'fas fa-car',
                                            label = 'Open Vehicle Shop',
                                            onSelect = function()
                                                HandleOpenShowroom(shopId)
                                            end
                                        }
                                    }
                                })
                                shop.targetEnabled = true
                            elseif Config.InteractionHandler == 'qb-target' then
                                exports['qb-target']:AddBoxZone('vehicleShop', vec3(offettedCoords.x, offettedCoords.y, offettedCoords.z), 2.0, 2.0, {
                                    name = 'vehicleShop', 
                                    heading = 2,
                                    debugPoly = true,
                                    minZ = 20,
                                    maxZ = 30
                                }, {
                                    options = {
                                        {
                                            type = "client",
                                            icon = "fas fa-car",
                                            label = "Galeriyi Aç",
                                            action = function()
                                                HandleOpenShowroom(shopId)
                                            end,
                                        }
                                    },
                                    distance = 2.0
                                })
                            end
                        end
    
                        if shop.marker.type and Config.InteractionHandler == 'drawtext' then
                            msec = 0
                            DrawMarker(shop.marker.type, shop.coords.x, shop.coords.y, shop.coords.z, 0, 0, 0, 0, 0, 0, shop.marker.scale.x, shop.marker.scale.y, shop.marker.scale.z, shop.marker.color.x, shop.marker.color.y, shop.marker.color.z, 100, false, true, 2, false, false, false, false)
                        end
                    end
                elseif dist < 10 and not visible and not bossVisible then
                    msec = 250
                    check = false
                end
    
                local bossDist = #(pedCoords - shop.bossmarker.coords)
                if isBoss and bossDist < 10 and bossVisible then
                    msec = 5

                    if not check then
                        check = true
                        CheckIsBoss(shopId)
                    end

                    if bossDist < 2 then
                        msec = 0
                        local offettedCoords = shop.bossmarker.coords + shop.bossmarker.labelOffset
                        if Config.InteractionHandler == 'drawtext' then
                            Draw3DText(offettedCoords.x, offettedCoords.y, offettedCoords.z + 1, shop.bossmarker.label)
                            if IsControlJustPressed(0, 38) then
                                HandleOpenShowroom(shopId, "management")
                            end
                        elseif Config.InteractionHandler == 'ox_target' and not shop.bossTargetEnabled then
                            exports.ox_target:addSphereZone({
                                coords = vec3(offettedCoords.x, offettedCoords.y, offettedCoords.z + 0.5),
                                radius = 2,
                                options = {
                                    {
                                        name = 'vehicleShop',
                                        icon = 'fas fa-car',
                                        label = 'Open Boss Menu',
                                        onSelect = function()
                                            HandleOpenShowroom(shopId, "management")
                                        end
                                    }
                                }
                            })
                            shop.bossTargetEnabled = true
                        elseif Config.InteractionHandler == 'qb-target' then
                            exports['qb-target']:AddBoxZone('vehicleShop', vec3(offettedCoords.x, offettedCoords.y, offettedCoords.z + 0.5), 2.0, 2.0, {
                                name = 'vehicleShop',
                                heading = 0,
                                debugPoly = false,
                                minZ = offettedCoords.z - 1.0,
                                maxZ = offettedCoords.z + 1.0
                            }, {
                                options = {
                                    {
                                        type = "client",
                                        icon = "fas fa-car",
                                        label = "Open Boss Menu",
                                        action = function()
                                            HandleOpenShowroom(shopId, "management")
                                        end,
                                    }
                                },
                                distance = 2.0
                            })
                        end
                    end
                    if shop.bossmarker.type and Config.InteractionHandler == 'drawtext' then
                        msec = 0
                        DrawMarker(shop.bossmarker.type, shop.bossmarker.coords.x, shop.bossmarker.coords.y, shop.bossmarker.coords.z, 0, 0, 0, 0, 0, 0, shop.bossmarker.scale.x, shop.bossmarker.scale.y, shop.bossmarker.scale.z, shop.bossmarker.color.x, shop.bossmarker.color.y, shop.bossmarker.color.z, 100, false, true, 2, false, false, false, false)
                    end
                elseif dist < 10 and not shopVisible and not bossVisible then
                    msec = 250
                    check = false
                end
            end
        end
        Wait(msec)
    end
end)