QBCore = exports['qb-core']:GetCoreObject()

local RentingCar = false
local Vehspawn = nil
local VehPlate = nil
local currentvehicle = nil
local currentcatagory = nil
local time = 0
local currentfee = 0
local Account = "none"
local secure = false

CreateThread(function()
    for k, v in pairs(Config.Locations) do
        if Config.Locations[k].BlipEnabled then
            RentalVehicle = AddBlipForCoord(Config.Locations[k].GetVehicle.x, Config.Locations[k].GetVehicle.y,
                Config.Locations[k].GetVehicle.z)
            SetBlipSprite(RentalVehicle, Config.Locations[k].BlipIcon)
            SetBlipScale(RentalVehicle, Config.Locations[k].BlipSize)
            SetBlipDisplay(RentalVehicle, 4)
            SetBlipColour(RentalVehicle, Config.Locations[k].BlipColor)
            SetBlipAsShortRange(RentalVehicle, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentSubstringPlayerName(Config.Locations[k].BlipLabel)
            EndTextCommandSetBlipName(RentalVehicle)
        end
    end
end)

function GetPlrMoney(currentfee)
    local PlrCash = QBCore.Functions.GetPlayerData().money["cash"]
    local PlrBank = QBCore.Functions.GetPlayerData().money["bank"]

    if PlrCash >= currentfee then
        Account = "cash"
    elseif PlrBank >= currentfee then
        Account = "bank"
    else
        Account = "none"
    end
end

function GetVehicleSpawn()
    for k, v in pairs(Config.Locations) do
        local PlrCoords = GetEntityCoords(PlayerPedId())
        local RenCoords = Config.Locations[k].GetVehicle
        local dist = #(vector3(PlrCoords) - vector3(RenCoords))

        if dist < 10 then
            Vehspawn = Config.Locations[k].VehicleSpawn
        end
    end
end

function GenerateLicensePlate()
    VehPlate = Config.Localization.RentalVehiclePlate .. math.random(1000, 9999)
end

function GetTime()
    time = Config.Rental.RentalRateInterval
end

CreateThread(function()
    while true do
        if RentingCar then
            if time > 0 then
                time = time - 1
            else
                GetPlrMoney(currentfee)
                if Account == "cash" then
                    TriggerServerEvent('wm-vehiclerentals:server:removemoney', src, currentfee, "cash")
                elseif Account == "bank" or Account == "none" then
                    TriggerServerEvent('wm-vehiclerentals:server:removemoney', src, currentfee, "bank")
                end
                QBCore.Functions.Notify(Config.Localization.RentalSuccessNotificationFiv .. currentfee ..
                                            Config.Localization.RentalSuccessNotificationSix, "success", 5000)
                GetTime()
            end
            if Config.Rental.CheckForEngineDamage then
                if GetVehicleEngineHealth(currentvehicle) <= 0 then
                    RentingCar = false
                    TriggerServerEvent('wm-vehiclerentals:server:removemoney', src,
                        Config.Rental.RentalVehicleDamagedFee, "bank")
                    QBCore.Functions.Notify(Config.Localization.ErrorVehicleBroken ..
                                                Config.Rental.RentalVehicleDamagedFee, "error", 5000)
                end
            end

            if Config.Rental.CheckForUnderWaterVeh then
                if currentcatagory ~= 3 then
                    if IsEntityInWater(currentvehicle) then
                        Wait(5000)
                        if not GetIsVehicleEngineRunning(currentvehicle) then
                            RentingCar = false
                            TriggerServerEvent('wm-vehiclerentals:server:removemoney', src,
                                Config.Rental.RentalVehicleDamagedFee, "bank")
                            QBCore.Functions.Notify(Config.Localization.ErrorVehicleBroken ..
                                                        Config.Rental.RentalVehicleDamagedFee, "error", 5000)
                        end
                    end
                end
            end
        end
        Wait(1000)
    end
end)

RegisterNetEvent('wm-vehiclerentals:client:spawncar', function(data)
    if not RentingCar then
        currentfee = data.fee
        GetPlrMoney(currentfee)
        if Account == "cash" or Account == "bank" then
            local src = PlayerPedId()
            local PlayerFirstName = QBCore.Functions.GetPlayerData().charinfo.firstname
            local PlayerLastName = QBCore.Functions.GetPlayerData().charinfo.lastname
            RentalRateTime = (Config.Rental.RentalRateInterval / 60)
            TriggerServerEvent('wm-vehiclerentals:server:removemoney', src, data.fee, Account)
            GetTime()
            GetVehicleSpawn()
            GenerateLicensePlate()
            currentcatagory = data.catagory
            RentingCar = true
            QBCore.Functions.SpawnVehicle(data.vehicle, function(rentvehicle)
                currentvehicle = rentvehicle
                SetVehicleNumberPlateText(rentvehicle, VehPlate)
                SetEntityHeading(rentvehicle, Vehspawn.w)
                exports[Config.FuelScript]:SetFuel(rentvehicle, 100.0)
                TaskWarpPedIntoVehicle(PlayerPedId(), rentvehicle, -1)
                TriggerEvent("vehiclekeys:client:SetOwner", GetVehicleNumberPlateText(rentvehicle))
                SetVehicleEngineOn(rentvehicle, true, true)
            end, Vehspawn, true)
            TriggerServerEvent('wm-vehiclerentals:server:givedocument', src, PlayerFirstName, PlayerLastName,
                data.label, VehPlate)
            QBCore.Functions.Notify(Config.Localization.RentalSuccessNotificationOne .. data.label, 'success', 5000)
        else
            QBCore.Functions.Notify(Config.Localization.ErrorNotEnoughMoney, 'error')
        end
    else
        QBCore.Functions.Notify(Config.Localization.ErrorAlreadyRenting, 'error')
    end
end)

RegisterNetEvent('wm-vehiclerentals:client:returncar', function()
    if currentvehicle ~= nil then
        local PlrCoords = GetEntityCoords(PlayerPedId())
        local VehCoords = GetEntityCoords(currentvehicle)
        local dist = #(vector3(PlrCoords) - vector3(VehCoords))
        if dist < 20 then
            if Config.Rental.ChrgPlrFeeIfRtrnDmged then
                if (GetVehicleBodyHealth(currentvehicle) <= 980 or GetVehicleEngineHealth(currentvehicle) <= 980) then
                    TriggerServerEvent('wm-vehiclerentals:server:removemoney', src,
                        Config.Rental.RentalVehicleRtrnDmgFee, "bank")
                    QBCore.Functions.Notify(Config.Localization.ErrorRentalReturnedDamaged ..
                                                Config.Rental.RentalVehicleRtrnDmgFee, 'error', 7000)
                end
            end
            DeleteEntity(currentvehicle)
            QBCore.Functions.Notify(Config.Localization.RentalReturnedSuccess, 'success')
            RentingCar = false
            TriggerServerEvent('wm-vehiclerentals:server:removedocument', src)
        else
            QBCore.Functions.Notify(Config.Localization.ErrorRentalVehicleNotNearby, 'error')
        end
    else
        QBCore.Functions.Notify(Config.Localization.ErrorNoRentalVehicle, 'error')
    end
end)

RegisterNetEvent('wm-vehiclerentals:client:openmenu', function(Catagory)
    local rentvehicleMenu = {{
        header = Config.Localization.RentalSelectionHeader,
        isMenuHeader = true
    }}
    if Catagory == 1 then
        for k, v in pairs(Config.RentableVehicles.Catagorys[1]) do
            rentvehicleMenu[#rentvehicleMenu + 1] = {
                header = {Config.RentableVehicles.Catagorys[1][k].Label ..
                    Config.Localization.RentalSelectionRentalFeeText .. Config.RentableVehicles.Catagorys[1][k].RentFee},
                txt = "",
                params = {
                    event = "wm-vehiclerentals:client:spawncar",
                    args = {
                        vehicle = Config.RentableVehicles.Catagorys[1][k].SpawnName,
                        label = Config.RentableVehicles.Catagorys[1][k].Label,
                        fee = Config.RentableVehicles.Catagorys[1][k].RentFee,
                        catagory = 1
                    }
                }
            }
        end
    elseif Catagory == 2 then
        for k, v in pairs(Config.RentableVehicles.Catagorys[2]) do
            rentvehicleMenu[#rentvehicleMenu + 1] = {
                header = {Config.RentableVehicles.Catagorys[2][k].Label ..
                    Config.Localization.RentalSelectionRentalFeeText .. Config.RentableVehicles.Catagorys[2][k].RentFee},
                txt = "",
                params = {
                    event = "wm-vehiclerentals:client:spawncar",
                    args = {
                        vehicle = Config.RentableVehicles.Catagorys[2][k].SpawnName,
                        label = Config.RentableVehicles.Catagorys[2][k].Label,
                        fee = Config.RentableVehicles.Catagorys[2][k].RentFee,
                        catagory = 2
                    }
                }
            }
        end
    elseif Catagory == 3 then
        for k, v in pairs(Config.RentableVehicles.Catagorys[3]) do
            rentvehicleMenu[#rentvehicleMenu + 1] = {
                header = {Config.RentableVehicles.Catagorys[3][k].Label ..
                    Config.Localization.RentalSelectionRentalFeeText .. Config.RentableVehicles.Catagorys[3][k].RentFee},
                txt = "",
                params = {
                    event = "wm-vehiclerentals:client:spawncar",
                    args = {
                        vehicle = Config.RentableVehicles.Catagorys[3][k].SpawnName,
                        label = Config.RentableVehicles.Catagorys[3][k].Label,
                        fee = Config.RentableVehicles.Catagorys[3][k].RentFee,
                        catagory = 3
                    }
                }
            }
        end
    end

    rentvehicleMenu[#rentvehicleMenu + 1] = {
        header = Config.Localization.RentalSelectionCloseButton,
        txt = "",
        params = {
            event = "qb-menu:client:closeMenu"
        }

    }
    exports['qb-menu']:openMenu(rentvehicleMenu)
end)

CreateThread(function()
    for k, v in pairs(Config.Locations) do
        Ped = type(Config.Locations[k].TargetPed) == "string" and GetHashKey(Config.Locations[k].TargetPed) or Ped
        RequestModel(Ped)

        while not HasModelLoaded(Ped) do
            Wait(0)
        end

        RentalPed = CreatePed(0, Ped, Config.Locations[k].GetVehicle.x, Config.Locations[k].GetVehicle.y,
            Config.Locations[k].GetVehicle.z - 1, Config.Locations[k].GetVehicle.w, false, false)
        TaskStartScenarioInPlace(RentalPed, Config.Locations[k].TargetPedScenario, true)
        FreezeEntityPosition(RentalPed, true)
        SetEntityInvincible(RentalPed, true)
        SetBlockingOfNonTemporaryEvents(RentalPed, true)

        if Config.Locations[k].VehicleCatagory == 1 then
            exports['qb-target']:AddTargetEntity(RentalPed, {
                options = {{
                    label = Config.Localization.TargetText,
                    icon = "fa fa-car",
                    action = function()
                        TriggerEvent('wm-vehiclerentals:client:openmenu', 1)
                        GetVehicleSpawn()
                    end
                }, {
                    label = Config.Localization.TargetTextTwo,
                    icon = "fa fa-long-arrow-right",
                    action = function()
                        TriggerEvent('wm-vehiclerentals:client:returncar')
                        GetVehicleSpawn()
                    end
                }},
                distance = 2.0
            })
        elseif Config.Locations[k].VehicleCatagory == 2 then
            exports['qb-target']:AddTargetEntity(RentalPed, {
                options = {{
                    label = Config.Localization.TargetTextAir,
                    icon = "fas fa-plane",
                    action = function()
                        TriggerEvent('wm-vehiclerentals:client:openmenu', 2)
                        GetVehicleSpawn()
                    end
                }, {
                    label = Config.Localization.TargetTextTwo,
                    icon = "fa fa-long-arrow-right",
                    action = function()
                        TriggerEvent('wm-vehiclerentals:client:returncar')
                        GetVehicleSpawn()
                    end
                }},
                distance = 2.0
            })
        elseif Config.Locations[k].VehicleCatagory == 3 then
            exports['qb-target']:AddTargetEntity(RentalPed, {
                options = {{
                    label = Config.Localization.TargetTextWater,
                    icon = "fas fa-water",
                    action = function()
                        TriggerEvent('wm-vehiclerentals:client:openmenu', 3)
                        GetVehicleSpawn()
                    end
                }, {
                    label = Config.Localization.TargetTextTwo,
                    icon = "fa fa-long-arrow-right",
                    action = function()
                        TriggerEvent('wm-vehiclerentals:client:returncar')
                        GetVehicleSpawn()
                    end
                }},
                distance = 2.0
            })
        end
    end
end)

CreateThread(function() -- vpd2
    exports['qb-target']:AddBoxZone("hoodkiyafet", vector3(306.38, -1249.12, 37.78), 3, 3, {
        name = "hoodkiyafet",
        heading = 0,
        minZ = 36.77834,
        maxZ = 39.87834,
        debugPoly = false
    }, {
        options = {{
            type = "Client",
            event = "illenium-appearance:client:openClothingShopMenu",
            icon = "fas fa-circle",
            label = "Kıyafet Dolabı",
            job = "mechanic1"
        }},
        distance = 2.5
    })
end)

CreateThread(function() -- unicorn vector3(-1379.31, -635.27, 30.32)
    exports['qb-target']:AddBoxZone("bahamclo", vector3(-1379.31, -635.27, 30.32), 3, 3, {
        name = "bahamclo",
        heading = 0,
        minZ = 28.77834,
        maxZ = 33.87834,
        debugPoly = false
    }, {
        options = {{
            type = "Client",
            event = "illenium-appearance:client:openClothingShopMenu",
            icon = "fas fa-circle",
            label = "Kıyafet Dolabı",
            job = "bahama"
        }},
        distance = 2.5
    })
end)

CreateThread(function() -- mp
    exports['qb-target']:AddBoxZone("mpcloch", vector3(2522.67, -333.66, 94.09), 3, 3, {
        name = "mpcloch",
        heading = 0,
        minZ = 92.77834,
        maxZ = 96.87834,
        debugPoly = false
    }, {
        options = {{
            type = "Client",
            event = "illenium-appearance:client:openClothingShopMenu",
            icon = "fas fa-circle",
            label = "Kıyafet Dolabı",
            job = "ranger"
        }},
        distance = 2.5
    })
end)

-- serendipity

Config.Serendipity = {
    label = "Dolap",
    slots = 20,
    items = {{
        name = "obezmenu",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "bhotchoc",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "bhoneyhazelnutoatlatte",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "bstrawberrycreamfrappuccino",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "bicedcaffelatte",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "bespresso",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "bespressomacchiato",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "bcoldbrewlatte",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "bchocolatemuffin",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "bberrymuffin",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "bdonut",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }}
}
Config.Bong = {
    label = "Bong",
    slots = 1,
    items = {{
        name = "bong",
        amount = 10,
        type = "item",
        price = 15,
        slot = 1
    }}
}

RegisterNetEvent("l1-base:bong")
AddEventHandler("l1-base:bong", function()
    local PlayerData = QBCore.Functions.GetPlayerData()
    TriggerServerEvent("jim-shops:ShopOpen", "bong", "bong", Config.Bong)
end)

CreateThread(function() -- bong
    exports['qb-target']:AddBoxZone("bong", vec3(-195.47422790527, -1707.0677490234, 32.983749389648), 3, 3, {
        name = "bong",
        heading = 0,
        minZ = 31.77834,
        maxZ = 33.57834,
        debugPoly = false
    }, {
        options = {{
            type = "Client",
            event = "l1-base:bong",
            icon = "fas fa-circle",
            label = "Bong",
            job = "bong"
        }},
        distance = 2.5
    })
end)

RegisterNetEvent("l1-base:serendipity")
AddEventHandler("l1-base:serendipity", function()
    local PlayerData = QBCore.Functions.GetPlayerData()
    TriggerServerEvent("jim-shops:ShopOpen", "serendipity", "serendipity", Config.Serendipity)
end)

-- CreateThread(function () --serendipity
--     exports['qb-target']:AddBoxZone("srndipty", vector3(-931.96, -1491.68, 4.67), 3, 3, 
--     {
--         name = "srndipty",
--          heading = 0,
--          minZ = 3.77834,
--     maxZ = 5.57834,
--          debugPoly = false,
--      }, {
--          options = {
--              {
--                  type = "Client",
--                 event = "l1-base:serendipity",
--                  icon = "fas fa-circle",
--                  label = "Serendipity",
--                  job = "serendipity",
--             },
--         },
--          distance = 2.5
--      })
--     end)

RegisterNetEvent("l1-base:tray")
AddEventHandler("l1-base:tray", function()
    TriggerEvent("inventory:client:SetCurrentStash", "serendipitytepsi")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "serendipitytepsi", {
        maxweight = 15000,
        slots = 5
    })
end)

-- CreateThread(function () --serendipity
--     exports['qb-target']:AddBoxZone("srndipty2", vector3(-937.89, -1491.15, 5.12), 3, 3, 
--     {
--         name = "srndipty2",
--          heading = 0,
--          minZ = 4.57834,
--     maxZ = 6.57834,
--          debugPoly = false,
--      }, {
--          options = {
--              {
--                  type = "Client",
--                 event = "l1-base:tray",
--                  icon = "fas fa-circle",
--                  label = "Tepsi",
--             },
--             {
--                 type = "Client",
--                event = "g-billing:client:engageChooseBillViewMenu",
--                 icon = "fas fa-circle",
--                 label = "Fatura Kes",
--                 job = "serendipity"
--            },
--         },
--          distance = 2.5
--      })
--     end)
-- serendipity

-- irishpub
Config.irishpub = {
    label = "Irish Pub",
    slots = 20,
    items = {{
        name = "bhotchoc",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "bhoneyhazelnutoatlatte",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "bstrawberrycreamfrappuccino",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "bicedcaffelatte",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "bespresso",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "bespressomacchiato",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "bcoldbrewlatte",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "bchocolatemuffin",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "bberrymuffin",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "bdonut",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "kizartma",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "irishpub_berry_hydrating",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "irishpub_cake",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "irishpub_kamikaze",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "beer",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "whiskey",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "vodka",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }}
}

RegisterNetEvent("l1-base:irishpub")
AddEventHandler("l1-base:irishpub", function()
    local PlayerData = QBCore.Functions.GetPlayerData()
    TriggerServerEvent("jim-shops:ShopOpen", "irishpub", "irishpub", Config.irishpub)
end)

CreateThread(function() -- irishpub
    exports['qb-target']:AddBoxZone("irishpub", vector3(833.17, -114.25, 79.77), 3, 3, {
        name = "irishpub",
        heading = 0,
        minZ = 79.77834,
        maxZ = 80.17834,
        debugPoly = false
    }, {
        options = {{
            type = "Client",
            event = "l1-base:irishpub",
            icon = "fas fa-circle",
            label = "Irish Pub",
            job = "irishpub"
        }},
        distance = 2.5
    })
end)

RegisterNetEvent("l1-base:tray2")
AddEventHandler("l1-base:tray2", function()
    TriggerEvent("inventory:client:SetCurrentStash", "irishpubtepsi")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "irishpubtepsi", {
        maxweight = 15000,
        slots = 5
    })
end)

-- CreateThread(function () --serendipity
--     exports['qb-target']:AddBoxZone("irishpubtepsi", vector3(836.67, -114.51, 79.7), 3, 3, 
--     {
--         name = "irishpubtepsi",
--          heading = 0,
--          minZ = 79.77834,
--     maxZ = 80.17834,
--          debugPoly = false,
--      }, {
--          options = {
--              {
--                  type = "Client",
--                 event = "l1-base:tray2",
--                  icon = "fas fa-circle",
--                  label = "Tepsi",
--             },
--             {
--                 type = "Client",
--                event = "g-billing:client:engageChooseBillViewMenu",
--                 icon = "fas fa-circle",
--                 label = "Fatura Kes",
--                 job = "irishpub"
--            },
--         },
--          distance = 2.5
--      })
--     end)

CreateThread(function() -- cepnaleik
    exports['qb-target']:AddBoxZone("dojcephane", vector3(-527.22, -185.96, 43.39), 3, 3, {
        name = "dojcephane",
        heading = 112.33,
        minZ = 42.77834,
        maxZ = 44.57834,
        debugPoly = false
    }, {
        options = {{
            type = "Client",
            event = "qb-police:client:openArmoury",
            icon = "fas fa-circle",
            label = "Cephanelik",
            job = "doj"
        }},
        distance = 2.5
    })
end)

-- irishpub

CreateThread(function() -- vpd2
    exports['qb-target']:AddBoxZone("wutang", vector3(-2.5, -1815.81, 20.7), 3, 3, {
        name = "wutang",
        heading = 0,
        minZ = 19.57834,
        maxZ = 21.87834,
        debugPoly = false
    }, {
        options = {{
            type = "Client",
            event = "illenium-appearance:client:openClothingShopMenu",
            icon = "fas fa-circle",
            label = "Kıyafet Dolabı"
        }},
        distance = 2.5
    })
end)

CreateThread(function() -- kask takma engelleme
    while true do
        Wait(100)
        SetPedConfigFlag(PlayerPedId(), 35, false)
    end
end)

Config.Pizzeria = {
    label = "Pizzeria",
    slots = 20,
    items = {{
        name = "pvegpizza",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "pmushroomspizza",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "pnapollitano",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "pmargharita",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "bsprite",
        amount = 10,
        type = "item",
        price = 30,
        slot = 1
    }, {
        name = "bcocacola",
        amount = 10,
        type = "item",
        price = 30,
        slot = 1
    }, {
        name = "bchocolatemuffin",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }}
}
RegisterNetEvent("l1-base:pizzeria")
AddEventHandler("l1-base:pizzeria", function()
    local PlayerData = QBCore.Functions.GetPlayerData()
    TriggerServerEvent("jim-shops:ShopOpen", "pizzeria", "pizzeria", Config.Pizzeria)
end)

CreateThread(function() -- pizzeria
    exports['qb-target']:AddBoxZone("pizzeria", vector3(813.74, -752.99, 26.78), 3, 3, {
        name = "pizzeria",
        heading = 0,
        minZ = 26.77834,
        maxZ = 28.17834,
        debugPoly = false
    }, {
        options = {{
            type = "Client",
            event = "l1-base:pizzeria",
            icon = "fas fa-circle",
            label = "Pizzeria",
            job = "pizzeria"
        }},
        distance = 2.5
    })
end)

RegisterNetEvent("l1-base:tray5")
AddEventHandler("l1-base:tray5", function()
    TriggerEvent("inventory:client:SetCurrentStash", "pizzeriatepsi")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "pizzeriatepsi", {
        maxweight = 15000,
        slots = 5
    })
end)

-- CreateThread(function () --pizzeriatepsi
--     exports['qb-target']:AddBoxZone("pizzeriatepsi", vector3(811.09, -752.55, 26.85), 3, 3, 
--     {
--         name = "pizzeriatepsi",
--          heading = 0,
--          minZ = 26.17834,
--     maxZ = 28.17834,
--          debugPoly = false,
--      }, {
--          options = {
--              {
--                  type = "Client",
--                 event = "l1-base:tray5",
--                  icon = "fas fa-circle",
--                  label = "Tepsi",
--             },
--             {
--                 type = "Client",
--                event = "g-billing:client:engageChooseBillViewMenu",
--                 icon = "fas fa-circle",
--                 label = "Fatura Kes",
--                 job = "pizzeria"
--            },
--         },
--          distance = 2.5
--      })
-- end)

RegisterNetEvent("l1-base:tray6")
AddEventHandler("l1-base:tray6", function()
    TriggerEvent("inventory:client:SetCurrentStash", "triadstepsi")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "triadstepsi", {
        maxweight = 15000,
        slots = 5
    })
end)

-- CreateThread(function () --triads tepsi
--     exports['qb-target']:AddBoxZone("triadstepsi", vector3(-828.23, -727.71, 28.09), 3, 3, 
--     {
--         name = "triadstepsi",
--          heading = 0,
--          minZ = 27.17834,
--     maxZ = 29.17834,
--          debugPoly = false,
--      }, {
--          options = {
--              {
--                  type = "Client",
--                 event = "l1-base:tray6",
--                  icon = "fas fa-circle",
--                  label = "Tepsi",
--             },
--             {
--                 type = "Client",
--                event = "g-billing:client:engageChooseBillViewMenu",
--                 icon = "fas fa-circle",
--                 label = "Fatura Kes",
--                 job = "records"
--            },
--         },
--          distance = 2.5
--      })
--     end)

Config.Triads = {
    label = "Bar",
    slots = 20,
    items = {{
        name = "beer",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "whiskey",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "vodka",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "tekila",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "sexon",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "bespresso",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "bhotchoc",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "bcoldbrewlatte",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "kizartma",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "bchocolatemuffin",
        amount = 10,
        type = "item",
        price = 30,
        slot = 1
    }, {
        name = "bberrymuffin",
        amount = 10,
        type = "item",
        price = 30,
        slot = 1
    }, {
        name = "bdonut",
        amount = 10,
        type = "item",
        price = 30,
        slot = 1
    }}
}

RegisterNetEvent("l1-base:triads")
AddEventHandler("l1-base:triads", function()
    local PlayerData = QBCore.Functions.GetPlayerData()
    TriggerServerEvent("jim-shops:ShopOpen", "triads", "triads", Config.Triads)
end)

CreateThread(function() -- triads
    exports['qb-target']:AddBoxZone("triads", vector3(-829.3, -730.45, 28.05), 3, 3, {
        name = "triads",
        heading = 0,
        minZ = 27.77834,
        maxZ = 29.17834,
        debugPoly = false
    }, {
        options = {{
            type = "Client",
            event = "l1-base:triads",
            icon = "fas fa-circle",
            label = "Studyo",
            job = "records"
        }},
        distance = 2.0
    })
end)

RegisterNetEvent("l1-base:tray9")
AddEventHandler("l1-base:tray9", function()
    TriggerEvent("inventory:client:SetCurrentStash", "luxerytepsi")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "luxerytepsi", {
        maxweight = 15000,
        slots = 5
    })
end)

-- CreateThread(function () --triads tepsi
--     exports['qb-target']:AddBoxZone("luxerytepsi", vector3(-863.92, -229.25, 61.14), 3, 3, 
--     {
--         name = "luxerytepsi",
--          heading = 0,
--          minZ = 60.17834,
--     maxZ = 62.17834,
--          debugPoly = false,
--      }, {
--          options = {
--              {
--                  type = "Client",
--                 event = "l1-base:tray9",
--                  icon = "fas fa-circle",
--                  label = "Tepsi",
--             },
--             {
--                 type = "Client",
--                event = "g-billing:client:engageChooseBillViewMenu",
--                 icon = "fas fa-circle",
--                 label = "Fatura Kes",
--                job = "luxery"
--            },
--         },
--          distance = 2.0
--      })
--     end)

CreateThread(function() -- triads
    exports['qb-target']:AddBoxZone("triads2", vector3(-862.6, -233.1, 61.01), 3, 3, {
        name = "triads2",
        heading = 0,
        minZ = 60.77834,
        maxZ = 62.17834,
        debugPoly = false
    }, {
        options = {{
            type = "Client",
            event = "l1-base:triads",
            icon = "fas fa-circle",
            label = "Luxery",
            job = "luxery"
        }},
        distance = 2.0
    })
end)

-- SetPlayerCanDoDriveBy(PlayerId(), false) --antidriveby

RegisterNetEvent("l1-base:tray10")
AddEventHandler("l1-base:tray10", function()
    TriggerEvent("inventory:client:SetCurrentStash", "tequilatepsi")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "tequilatepsi", {
        maxweight = 15000,
        slots = 5
    })
end)

-- CreateThread(function () --triads tepsi
--     exports['qb-target']:AddBoxZone("tequilatepsi", vector3(-560.92, 286.34, 82.12), 3, 3, 
--     {
--         name = "tequilatepsi",
--          heading = 0,
--          minZ = 81.77834,
--     maxZ = 83.17834,
--          debugPoly = false,
--      }, {
--          options = {
--              {
--                  type = "Client",
--                 event = "l1-base:tray9",
--                  icon = "fas fa-circle",
--                  label = "Tepsi",
--             },
--             {
--                 type = "Client",
--                event = "g-billing:client:engageChooseBillViewMenu",
--                 icon = "fas fa-circle",
--                 label = "Fatura Kes",
--                job = "tequila"
--            },
--         },
--          distance = 2.0
--      })
--     end)

CreateThread(function() -- triads
    exports['qb-target']:AddBoxZone("triads5", vector3(-562.64, 289.07, 82.14), 3, 3, {
        name = "triads5",
        heading = 0,
        minZ = 81.17834,
        maxZ = 83.17834,
        debugPoly = false
    }, {
        options = {{
            type = "Client",
            event = "l1-base:triads",
            icon = "fas fa-circle",
            label = "Tequila",
            job = "tequila"
        }},
        distance = 2.0
    })
end)

CreateThread(function() -- vpd2
    exports['qb-target']:AddBoxZone("hoodkiyafet", vector3(692.09, -744.92, 25.34), 3, 3, {
        name = "hoodkiyafet",
        heading = 0,
        minZ = 24.77834,
        maxZ = 26.87834,
        debugPoly = false
    }, {
        options = {{
            type = "Client",
            event = "illenium-appearance:client:openClothingShopMenu",
            icon = "fas fa-circle",
            label = "Kıyafet Dolabı",
            job = "japanese"
        }},
        distance = 2.5
    })
end)
CreateThread(function() -- vpd2
    exports['qb-target']:AddBoxZone("wnewskiyafet", vector3(-562.25, -935.42, 23.88), 3, 3, {
        name = "wnewskiyafet",
        heading = 0,
        minZ = 23.17834,
        maxZ = 24.87834,
        debugPoly = false
    }, {
        options = {{
            type = "Client",
            event = "illenium-appearance:client:openClothingShopMenu",
            icon = "fas fa-circle",
            label = "Kıyafet Dolabı",
            job = "reporter"
        }},
        distance = 2.5
    })
end)
CreateThread(function() -- uwu
    exports['qb-target']:AddBoxZone("uwukiyafet", vector3(-586.1, -1050.14, 22.38), 3, 3, {
        name = "uwukiyafet",
        heading = 0,
        minZ = 21.17834,
        maxZ = 23.87834,
        debugPoly = false
    }, {
        options = {{
            type = "Client",
            event = "illenium-appearance:client:openClothingShopMenu",
            icon = "fas fa-circle",
            label = "Kıyafet Dolabı",
            job = "uwu"
        }},
        distance = 2.5
    })
end)

CreateThread(function() -- cepnaleik
    exports['qb-target']:AddBoxZone("vpdpchn", vector3(607.56, -20.81, 76.64), 3, 3, {
        name = "vpdpchn",
        heading = 0,
        minZ = 75.77834,
        maxZ = 77.17834,
        debugPoly = false
    }, {
        options = {{
            type = "Client",
            event = "qb-police:client:openArmoury",
            icon = "fas fa-circle",
            label = "Cephanelik",
            job = "vpd"
        }},
        distance = 2.5
    })
end)

-- la dolce vita
CreateThread(function() -- serendipity
    exports['qb-target']:AddBoxZone("ladolcvita", vector3(-2873.6, -3.3, 7.99), 3, 3, {
        name = "ladolcvita",
        heading = 0,
        minZ = 7.77834,
        maxZ = 9.17834,
        debugPoly = false
    }, {
        options = {{
            type = "Client",
            event = "l1-base:serendipity",
            icon = "fas fa-circle",
            label = "La Dolce Vita",
            job = "ldv"
        }},
        distance = 2.5
    })
end)

RegisterNetEvent("l1-base:tray33")
AddEventHandler("l1-base:tray33", function()
    TriggerEvent("inventory:client:SetCurrentStash", "ldvtepsi")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "ldvtepsi", {
        maxweight = 15000,
        slots = 5
    })
end)

-- CreateThread(function () --serendipity
--     exports['qb-target']:AddBoxZone("ldv2", vector3(-2876.06, -4.41, 7.73), 3, 3, 
--     {
--         name = "ldv2",
--          heading = 0,
--          minZ = 7.57834,
--     maxZ = 9.17834,
--          debugPoly = false,
--      }, {
--          options = {
--              {
--                  type = "Client",
--                 event = "l1-base:tray",
--                  icon = "fas fa-circle",
--                  label = "Tepsi",
--             },
--             {
--                 type = "Client",
--                event = "g-billing:client:engageChooseBillViewMenu",
--                 icon = "fas fa-circle",
--                 label = "Fatura Kes",
--                 job = "ldv"
--            },
--         },
--          distance = 2.5
--      })
--     end)

RegisterNetEvent("l1-base:uwut")
AddEventHandler("l1-base:uwut", function()
    TriggerEvent("inventory:client:SetCurrentStash", "uwut")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "uwut", {
        maxweight = 15000,
        slots = 5
    })
end)

-- CreateThread(function () --serendipity
--     exports['qb-target']:AddBoxZone("uwut", vector3(-584.13, -1060.93, 22.31), 3, 3, 
--     {
--         name = "uwut",
--          heading = 0,
--          minZ = 21.57834,
--     maxZ = 23.17834,
--          debugPoly = false,
--      }, {
--          options = {
--              {
--                  type = "Client",
--                 event = "l1-base:uwut",
--                  icon = "fas fa-circle",
--                  label = "Tepsi",
--             },
--             {
--                 type = "Client",
--                event = "g-billing:client:engageChooseBillViewMenu",
--                 icon = "fas fa-circle",
--                 label = "Fatura Kes",
--                 job = "uwu"
--            },
--         },
--          distance = 2.5
--      })
--     end)

-- CreateThread(function () --serendipity
--     exports['qb-target']:AddBoxZone("uwuy", vector3(-587.87, -1059.88, 22.49), 3, 3, 
--     {
--         name = "uwuy",
--          heading = 0,
--          minZ = 21.77834,
--     maxZ = 23.17834,
--          debugPoly = false,
--      }, {
--          options = {
--              {
--                  type = "Client",
--                 event = "l1-base:uwu",
--                  icon = "fas fa-circle",
--                  label = "UwU",
--                  job = "uwu",
--             },
--         },
--          distance = 2.5
--      })
--     end)

RegisterNetEvent("l1-base:tpct")
AddEventHandler("l1-base:tpct", function()
    TriggerEvent("inventory:client:SetCurrentStash", "tpct")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "tpct", {
        maxweight = 15000,
        slots = 5
    })
end)

-- CreateThread(function () --serendipity
--     exports['qb-target']:AddBoxZone("tpct", vector3(301.13, -924.69, 58.37), 3, 3, 
--     {
--         name = "tpct",
--          heading = 0,
--          minZ = 57.57834,
--     maxZ = 59.17834,
--          debugPoly = false,
--      }, {
--          options = {
--              {
--                  type = "Client",
--                 event = "l1-base:tpct",
--                  icon = "fas fa-circle",
--                  label = "Tepsi",
--             },
--             {
--                 type = "Client",
--                event = "g-billing:client:engageChooseBillViewMenu",
--                 icon = "fas fa-circle",
--                 label = "Fatura Kes",
--                 job = "tpc"
--            },
--         },
--          distance = 2.5
--      })
--     end)

-- CreateThread(function () --serendipity
--     exports['qb-target']:AddBoxZone("tpcd", vector3(299.14, -925.69, 58.37), 3, 3, 
--     {
--         name = "tpcd",
--          heading = 0,
--          minZ = 57.17834,
--     maxZ = 59.17834,
--          debugPoly = false,
--      }, {
--          options = {
--              {
--                  type = "Client",
--                 event = "l1-base:serendipity",
--                  icon = "fas fa-circle",
--                  label = "Two Planets Coffee",
--                  job = "tpc",
--             },
--         },
--          distance = 2.5
--      })
--     end)

--
Config.Uwu = {
    label = "Uwu",
    slots = 20,
    items = {{
        name = "muffin-chocolate",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "cupcake-morango",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "cupcake-chocolate",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "cupcake-limao",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "gelado-morango",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "gelado-chocolate",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "gelado-baunilha",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "panqueca-nutela",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "panqueca-oreo",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "waffle-nutela",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "pastel-frango",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "cafe-uwu",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "latte-uwu",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "bubble-amora",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "bubble-menta",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "bubble-morango",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "milkshake-morango",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }, {
        name = "milkshake-chocolate",
        amount = 10,
        type = "item",
        price = 50,
        slot = 1
    }}
}

RegisterNetEvent("l1-base:uwu")
AddEventHandler("l1-base:uwu", function()
    local PlayerData = QBCore.Functions.GetPlayerData()
    TriggerServerEvent("jim-shops:ShopOpen", "uwu", "uwu", Config.Uwu)
end)

RegisterNetEvent("l1-base:traybb")
AddEventHandler("l1-base:traybb", function()
    TriggerEvent("inventory:client:SetCurrentStash", "bahamastepsi")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "bahamastepsi", {
        maxweight = 15000,
        slots = 5
    })
end)

-- CreateThread(function () --triads tepsi
--     exports['qb-target']:AddBoxZone("traybb", vector3(-1399.76, -603.07, 30.38), 3, 3, 
--     {
--         name = "traybb",
--          heading = 0,
--          minZ = 29.67834,
--     maxZ = 31.17834,
--          debugPoly = false,
--      }, {
--          options = {
--              {
--                  type = "Client",
--                 event = "l1-base:traybb",
--                  icon = "fas fa-circle",
--                  label = "Tepsi",
--             },
--             {
--                 type = "Client",
--                event = "g-billing:client:engageChooseBillViewMenu",
--                 icon = "fas fa-circle",
--                 label = "Fatura Kes",
--                job = "bahama"
--            },
--         },
--          distance = 2.0
--      })
--     end)

CreateThread(function() -- bahama
    exports['qb-target']:AddBoxZone("bamaha", vector3(-1401.57, -597.74, 30.34), 3, 3, {
        name = "bamaha",
        heading = 0,
        minZ = 29.17834,
        maxZ = 31.17834,
        debugPoly = false
    }, {
        options = {{
            type = "Client",
            event = "l1-base:triads",
            icon = "fas fa-circle",
            label = "Bahama",
            job = "bahama"
        }},
        distance = 2.0
    })
end)

RegisterNetEvent("l1-base:trayyj")
AddEventHandler("l1-base:trayyj", function()
    TriggerEvent("inventory:client:SetCurrentStash", "yjtepsi")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "yjtepsi", {
        maxweight = 15000,
        slots = 5
    })
end)

AddEventHandler("arob:uwut", function()
    TriggerEvent("inventory:client:SetCurrentStash", "uwutep")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "uwutep", {
        maxweight = 15000,
        slots = 5
    })
end)

AddEventHandler("arob:uwut2", function()
    TriggerEvent("inventory:client:SetCurrentStash", "uwutepp")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "uwutepp", {
        maxweight = 15000,
        slots = 5
    })
end)

CreateThread(function() -- triads tepsi
    exports['qb-target']:AddBoxZone("uwutep", vector3(-584.12, -1061.98, 22.4), 3, 3, {
        name = "uwutep",
        heading = 0,
        minZ = 20.67834,
        maxZ = 24.17834,
        debugPoly = false
    }, {
        options = {{
            type = "Client",
            event = "arob:uwut",
            icon = "fas fa-circle",
            label = "Tepsi"
        }},
        distance = 2.0
    })
end)

CreateThread(function() -- triads tepsi
    exports['qb-target']:AddBoxZone("uwutep2", vector3(-583.97, -1059.23, 22.4), 3, 3, {
        name = "uwutep2",
        heading = 0,
        minZ = 20.67834,
        maxZ = 24.17834,
        debugPoly = false
    }, {
        options = {{
            type = "Client",
            event = "arob:uwut2",
            icon = "fas fa-circle",
            label = "Tepsi"
        }},
        distance = 2.0
    })
end)

CreateThread(function() -- triads
    exports['qb-target']:AddBoxZone("yjj", vector3(1981.59, 3053.0, 47.0), 3, 3, {
        name = "yjj",
        heading = 0,
        minZ = 46.17834,
        maxZ = 48.17834,
        debugPoly = false
    }, {
        options = {{
            type = "Client",
            event = "l1-base:triads",
            icon = "fas fa-circle",
            label = "Yellow Jack",
            job = "mechanicmc"
        }},
        distance = 2.0
    })
end)

CreateThread(function() -- triads
    exports['qb-target']:AddBoxZone("casino", vector3(979.37, 24.52, 71.51), 3, 3, {
        name = "casino",
        heading = 0,
        minZ = 70.57834,
        maxZ = 72.57834,
        debugPoly = false
    }, {
        options = {{
            type = "Client",
            event = "l1-base:triads",
            icon = "fas fa-circle",
            label = "Casino",
            job = "casino"
        }},
        distance = 2.0
    })
end)

-- m4lanom

CreateThread(function(src, source)
    local hash = a_m_m_ktown_01
    local coords = vector4(707.09, -966.98, 30.41, 1.43)
    QBCore.Functions.LoadModel(hash)
    local melanom = CreatePed(0, hash, coords.x, coords.y, coords.z - 1.0, coords.w, false, false)
    TaskStartScenarioInPlace(melanom, 'WORLD_HUMAN_CLIPBOARD', true)
    FreezeEntityPosition(melanom, true)
    SetEntityInvincible(melanom, true)
    SetBlockingOfNonTemporaryEvents(melanom, true)

    exports['qb-target']:AddTargetEntity(melanom, {
        options = {{
            icon = 'fas fa-circle',
            label = 'Dönüştür',
            action = function()
                local pedPos = GetEntityCoords(PlayerPedId())
                local dist = #(pedPos - vector3(coords))
                if dist <= 5.0 then

                    TriggerServerEvent('melanom:abc')
                end
            end
        }},
        distance = 2.0
    })
end)

RegisterNetEvent("l1-base:tray3131")
AddEventHandler("l1-base:tray3131", function()
    TriggerEvent("inventory:client:SetCurrentStash", "galaxytepsi")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "galaxytepsi", {
        maxweight = 15000,
        slots = 5
    })
end)

-- CreateThread(function () --serendipity
--     exports['qb-target']:AddBoxZone("galaxy", vector3(358.97, 280.58, 94.16), 3, 3, 
--     {
--         name = "galaxy",
--          heading = 0,
--          minZ = 93.57834,
--     maxZ = 95.17834,
--          debugPoly = false,
--      }, {
--          options = {
--              {
--                  type = "Client",
--                 event = "l1-base:tray3131",
--                  icon = "fas fa-circle",
--                  label = "Tepsi",
--             },
--             {
--                 type = "Client",
--                event = "g-billing:client:engageChooseBillViewMenu",
--                 icon = "fas fa-circle",
--                 label = "Fatura Kes",
--                 job = "galaxy"
--            },
--         },
--          distance = 2.5
--      })
--     end)

CreateThread(function() -- triads
    exports['qb-target']:AddBoxZone("glxy", vector3(355.71, 281.92, 93.91), 3, 3, {
        name = "glxy",
        heading = 0,
        minZ = 93.17834,
        maxZ = 94.67834,
        debugPoly = false
    }, {
        options = {{
            type = "Client",
            event = "l1-base:triads",
            icon = "fas fa-circle",
            label = "Galaxy Bar",
            job = "galaxy"
        }},
        distance = 2.0
    })
end)

CreateThread(function() -- triads
    exports['qb-target']:AddBoxZone("tiki", vector3(-1130.38, -1716.98, 4.56), 3, 3, {
        name = "tiki",
        heading = 0,
        minZ = 4.07834,
        maxZ = 5.67834,
        debugPoly = false
    }, {
        options = {{
            type = "Client",
            event = "l1-base:triads",
            icon = "fas fa-circle",
            label = "Tiki Bar",
            job = "gmg"
        }},
        distance = 2.0
    })
end)

RegisterNetEvent("l1-base:tiki")
AddEventHandler("l1-base:tiki", function()
    TriggerEvent("inventory:client:SetCurrentStash", "tikitepsi")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "tikitepsi", {
        maxweight = 15000,
        slots = 5
    })
end)

-- CreateThread(function () --serendipity
--     exports['qb-target']:AddBoxZone("tiki31", vector3(-1135.1, -1717.9, 4.81), 3, 3, 
--     {
--         name = "tiki31",
--          heading = 0,
--          minZ = 3.57834,
--     maxZ = 5.57834,
--          debugPoly = false,
--      }, {
--          options = {
--              {
--                  type = "Client",
--                 event = "l1-base:tiki",
--                  icon = "fas fa-circle",
--                  label = "Tepsi",
--             },
--             {
--                 type = "Client",
--                event = "g-billing:client:engageChooseBillViewMenu",
--                 icon = "fas fa-circle",
--                 label = "Fatura Kes",
--                 job = "gmg"
--            },
--         },
--          distance = 2.5
--      })
--     end)

CreateThread(function() -- vpd2
    exports['qb-target']:AddBoxZone("serifkyiafet", vector3(1841.88, 3681.74, 33.76), 3, 3, {
        name = "serifkyiafet",
        heading = 0,
        minZ = 32.77834,
        maxZ = 34.87834,
        debugPoly = false
    }, {
        options = {{
            type = "Client",
            event = "illenium-appearance:client:openClothingShopMenu",
            icon = "fas fa-circle",
            label = "Kıyafet Dolabı",
            job = "sheriff"
        }},
        distance = 2.5
    })
end)

CreateThread(function() -- vpd2 
    exports['qb-target']:AddBoxZone("paletoyiafet", vector3(-440.51321411133, 6010.7739257813, 37.268081665039), 3, 3,
        {
            name = "paletoyiafet",
            heading = 0,
            minZ = 36.77834,
            maxZ = 39.87834,
            debugPoly = false
        }, {
            options = {{
                type = "Client",
                event = "illenium-appearance:client:openClothingShopMenu",
                icon = "fas fa-circle",
                label = "Kıyafet Dolabı",
                job = "davison"
            }},
            distance = 2.5
        })
end)

CreateThread(function() -- dppd 
    exports['qb-target']:AddBoxZone("dppdkiyafet", vector3(-1622.44, -1020.27, 13.16), 3, 3,
        {
            name = "dppdkiyafet",
            heading = 0,
            minZ = 10.77834,
            maxZ = 16.87834,
            debugPoly = false
        }, {
            options = {{
                type = "Client",
                event = "illenium-appearance:client:openClothingShopMenu",
                icon = "fas fa-circle",
                label = "Kıyafet Dolabı",
                job = "dppd"
            }},
            distance = 2.5
        })
end)

-- CreateThread(function () --cepnaleik
--     exports['qb-target']:AddBoxZone("paleto", vector3(-450.04, 6014.93, 36.79), 3, 3, 
--     {
--         name = "paleto",
--          heading = 0,
--          minZ = 35.77834,
--     maxZ = 37.57834,
--          debugPoly = false,
--      }, {
--          options = {
--              {
--                  type = "Client",
--                 event = "qb-police:client:openArmoury",
--                  icon = "fas fa-circle",
--                  label = "Cephanelik",
--                  job = "davison",
--             },
--         },
--          distance = 2.5
--      })
--     end)

-- UCUBE ÇÖZÜNÜRLÜK ENGELLEME
local dortucengel = false
Citizen.CreateThread(function()
    while true do
        if GetIsWidescreen() or (GetAspectRatio() >= 1.6 and GetAspectRatio() < 1.7) then
            if dortucengel then
                dortucengel = false
            end
        else
            Wait(450)
            DoScreenFadeOut(200)
            Wait(500)
            DoScreenFadeIn(200)
            Wait(1000)
            QBCore.Functions.Notify("16:9 Çözünürlüğe geçmeniz gerekiyor.", 'error', 5000)
            dortucengel = true
        end
        Citizen.Wait(100)
    end
end)
-- UCUBE ÇÖZÜNÜRLÜK ENGELLEME

-- HELİLERİN SİLAH VERMESİNİ ENGELLEME
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(100)
        id = PlayerId()
        DisablePlayerVehicleRewards(id)
    end
end)
-- HELİLERİN SİLAH VERMESİNİ ENGELLEME

CreateThread(function() -- vpd2
    exports['qb-target']:AddBoxZone("mobkiyafet", vector3(426.34, -1720.07, 28.54), 3, 3, {
        name = "mobkiyafet",
        heading = 0,
        minZ = 27.57834,
        maxZ = 29.57834,
        debugPoly = false
    }, {
        options = {{
            type = "Client",
            event = "illenium-appearance:client:openClothingShopMenu",
            icon = "fas fa-circle",
            label = "Kıyafet Dolabı",
            gang = "mob"
        }},
        distance = 2.5
    })
end)

CreateThread(function() -- kadın charların can 200
    while true do
        Wait(5000)
        if GetEntityMaxHealth(PlayerPedId()) ~= 200 then
            SetEntityMaxHealth(PlayerPedId(), 200)
            SetEntityHealth(PlayerPedId(), 200)
        end
    end
end)

Citizen.CreateThread(function() -- şapka düşmeme
    while true do
        SetPedCanLosePropsOnDamage(PlayerPedId(), false, 0)
        Wait(100)
    end
end)

Citizen.CreateThread(function() -- antibhop
    while true do
        Citizen.Wait(100)
        local ped = PlayerPedId()
        if IsPedOnFoot(ped) and not IsPedSwimming(ped) and (IsPedRunning(ped) or IsPedSprinting(ped)) and
            not IsPedClimbing(ped) and IsPedJumping(ped) and not IsPedRagdoll(ped) then
            local chance_result = math.random()
            if chance_result < 0.50 then
                Citizen.Wait(600)
                SetPedToRagdoll(ped, 5000, 1, 3) -- kaç zıplamada yere düşmesini istiyorsanız ayarlıyabilirsiniz.
            else
                Citizen.Wait(2000)
            end
        end
    end
end)

RegisterCommand("koltuk", function(source, args)
    local playerPed = PlayerPedId()
    if args[1] == nil then
        Koltuk = -1
    else
        Koltuk = QBCore.Shared.Round(tonumber(args[1] - 2))
    end
    if IsPedInAnyVehicle(PlayerPedId()) then
        local Arac = GetVehiclePedIsIn(playerPed, false)
        if IsVehicleSeatFree(Arac, Koltuk) then
            SetPedIntoVehicle(playerPed, Arac, Koltuk)
        else
            QBCore.Functions.Notify('Koltuk Dolu')
        end
    end
end)

RegisterCommand('çapa', function(source, args, rawCommand)
    local plyVeh = GetVehiclePedIsIn(PlayerPedId(), false)
    if plyVeh then
        local model = GetEntityModel(plyVeh)
        local displayName = GetDisplayNameFromVehicleModel(GetEntityModel(plyVeh))
        if IsThisModelABoat(model) then
            if GetEntitySpeed(PlayerPedId()) < 7 then
                if args[1] ~= nil and args[1] == "aç" then
                    FreezeEntityPosition(plyVeh, true)
                    QBCore.Functions.Notify('Çapayı attın.', "success")
                elseif args[1] ~= nil and args[1] == "kapat" then
                    QBCore.Functions.Notify('Çapayı geri çektin.', "error")
                    FreezeEntityPosition(plyVeh, false)
                else
                    QBCore.Functions.Notify('Doğru kullanım: /çapa aç - /çapa kapat', "error")
                end
            else
                QBCore.Functions.Notify('Çapa atmak için biraz yavaşla!', "error")
            end
        else
            QBCore.Functions.Notify('Çapayı sadece botta atabilirsin!', "error")
        end
    end
end)

