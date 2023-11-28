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
    for k,v in pairs(Rental.Locations) do
        if Rental.Locations[k].BlipEnabled then
            RentalVehicle = AddBlipForCoord(Rental.Locations[k].GetVehicle.x, Rental.Locations[k].GetVehicle.y, Rental.Locations[k].GetVehicle.z)
            SetBlipSprite(RentalVehicle, Rental.Locations[k].BlipIcon)
            SetBlipScale(RentalVehicle, Rental.Locations[k].BlipSize)
            SetBlipDisplay(RentalVehicle, 4)
            SetBlipColour(RentalVehicle, Rental.Locations[k].BlipColor)
            SetBlipAsShortRange(RentalVehicle, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentSubstringPlayerName(Rental.Locations[k].BlipLabel)
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
    for k,v in pairs(Rental.Locations) do
        local PlrCoords = GetEntityCoords(PlayerPedId())
        local RenCoords = Rental.Locations[k].GetVehicle
        local dist = #(vector3(PlrCoords) - vector3(RenCoords))

        if dist < 10 then
            Vehspawn = Rental.Locations[k].VehicleSpawn
        end
    end
end

function GenerateLicensePlate()
    VehPlate = Rental.Localization.RentalVehiclePlate..math.random(1000, 9999)
end

function GetTime()
    time = Rental.Rental.RentalRateInterval
end

CreateThread(function()
    while true do
        if RentingCar then
            if time > 0 then
                time = time - 1
            else
                GetPlrMoney(currentfee)
                if Account == "cash" then
                    TriggerServerEvent('efearob-vehiclerentals:server:removemoney', src, currentfee, "cash")
                elseif Account == "bank" or Account == "none" then
                    TriggerServerEvent('efearob-vehiclerentals:server:removemoney', src, currentfee, "bank")
                end
                QBCore.Functions.Notify(Rental.Localization.RentalSuccessNotificationFiv..currentfee..Rental.Localization.RentalSuccessNotificationSix, "success", 5000)
                GetTime()
            end
            if Rental.Rental.CheckForEngineDamage then
                if GetVehicleEngineHealth(currentvehicle) <= 0 then
                    RentingCar = false
                    TriggerServerEvent('efearob-vehiclerentals:server:removemoney', src, Rental.Rental.RentalVehicleDamagedFee, "bank")
                    QBCore.Functions.Notify(Rental.Localization.ErrorVehicleBroken..Rental.Rental.RentalVehicleDamagedFee, "error", 5000)
                end
            end

            if Rental.Rental.CheckForUnderWaterVeh then
                if currentcatagory ~= 3 then
                    if IsEntityInWater(currentvehicle) then
                        Wait(5000)
                        if not GetIsVehicleEngineRunning(currentvehicle) then
                            RentingCar = false
                            TriggerServerEvent('efearob-vehiclerentals:server:removemoney', src, Rental.Rental.RentalVehicleDamagedFee, "bank")
                            QBCore.Functions.Notify(Rental.Localization.ErrorVehicleBroken..Rental.Rental.RentalVehicleDamagedFee, "error", 5000)
                        end
                    end
                end
            end
        end
    Wait(1000)
    end
end)



RegisterNetEvent('efearob-vehiclerentals:client:spawncar', function(data)
    if not RentingCar then
        currentfee = data.fee
        GetPlrMoney(currentfee)
        if Account == "cash" or Account == "bank" then
            local src = PlayerPedId()
            local PlayerFirstName = QBCore.Functions.GetPlayerData().charinfo.firstname
            local PlayerLastName = QBCore.Functions.GetPlayerData().charinfo.lastname
            RentalRateTime = (Rental.Rental.RentalRateInterval / 60)
            TriggerServerEvent('efearob-vehiclerentals:server:removemoney', src, data.fee, Account)
            GetTime()
            GetVehicleSpawn()
            GenerateLicensePlate()
            currentcatagory = data.catagory
            RentingCar = true
            QBCore.Functions.SpawnVehicle(data.vehicle, function(rentvehicle)
                currentvehicle = rentvehicle
                SetVehicleNumberPlateText(rentvehicle, VehPlate)
                SetEntityHeading(rentvehicle, Vehspawn.w)
                exports[Rental.FuelScript]:SetFuel(rentvehicle, 100.0)
                TaskWarpPedIntoVehicle(PlayerPedId(), rentvehicle, -1)
                TriggerEvent("vehiclekeys:client:SetOwner", GetVehicleNumberPlateText(rentvehicle))
                SetVehicleEngineOn(rentvehicle, true, true)
            end, Vehspawn, true)
            TriggerServerEvent('efearob-vehiclerentals:server:givedocument', src, PlayerFirstName, PlayerLastName, data.label, VehPlate)
            QBCore.Functions.Notify(Rental.Localization.RentalSuccessNotificationOne..data.label, 'success', 5000)
        else
            QBCore.Functions.Notify(Rental.Localization.ErrorNotEnoughMoney, 'error')
        end
    else
        QBCore.Functions.Notify(Rental.Localization.ErrorAlreadyRenting, 'error')
    end
end)

RegisterNetEvent('efearob-vehiclerentals:client:returncar', function()
    if currentvehicle ~= nil then
        local PlrCoords = GetEntityCoords(PlayerPedId())
        local VehCoords = GetEntityCoords(currentvehicle)
        local dist = #(vector3(PlrCoords) - vector3(VehCoords))
        if dist < 20 then
            if Rental.Rental.ChrgPlrFeeIfRtrnDmged then
                if (GetVehicleBodyHealth(currentvehicle) <= 980 or GetVehicleEngineHealth(currentvehicle) <= 980) then
                    TriggerServerEvent('efearob-vehiclerentals:server:removemoney', src, Rental.Rental.RentalVehicleRtrnDmgFee, "bank")
                    QBCore.Functions.Notify(Rental.Localization.ErrorRentalReturnedDamaged..Rental.Rental.RentalVehicleRtrnDmgFee, 'error', 7000)
                end
            end
            DeleteEntity(currentvehicle)
            QBCore.Functions.Notify(Rental.Localization.RentalReturnedSuccess, 'success')
            RentingCar = false
            TriggerServerEvent('efearob-vehiclerentals:server:removedocument', src)
        else
            QBCore.Functions.Notify(Rental.Localization.ErrorRentalVehicleNotNearby, 'error')
        end
    else
        QBCore.Functions.Notify(Rental.Localization.ErrorNoRentalVehicle, 'error')
    end
end)

RegisterNetEvent('efearob-vehiclerentals:client:openmenu', function(Catagory)
    local rentvehicleMenu = {
        {
            header = Rental.Localization.RentalSelectionHeader,
            isMenuHeader = true
        }
    }
    if Catagory == 1 then
        for k,v in pairs(Rental.RentableVehicles.Catagorys[1]) do
            rentvehicleMenu[#rentvehicleMenu+1] = {
                header = {Rental.RentableVehicles.Catagorys[1][k].Label..Rental.Localization.RentalSelectionRentalFeeText..Rental.RentableVehicles.Catagorys[1][k].RentFee},
                txt = "",
                params = {
                    event = "efearob-vehiclerentals:client:spawncar",
                    args = {
                        vehicle = Rental.RentableVehicles.Catagorys[1][k].SpawnName,
                        label = Rental.RentableVehicles.Catagorys[1][k].Label,
                        fee = Rental.RentableVehicles.Catagorys[1][k].RentFee,
                        catagory = 1
                    }
                }
            }
        end
    elseif Catagory == 2 then
        for k,v in pairs(Rental.RentableVehicles.Catagorys[2]) do
            rentvehicleMenu[#rentvehicleMenu+1] = {
                header = {Rental.RentableVehicles.Catagorys[2][k].Label..Rental.Localization.RentalSelectionRentalFeeText..Rental.RentableVehicles.Catagorys[2][k].RentFee},
                txt = "",
                params = {
                    event = "efearob-vehiclerentals:client:spawncar",
                    args = {
                        vehicle = Rental.RentableVehicles.Catagorys[2][k].SpawnName,
                        label = Rental.RentableVehicles.Catagorys[2][k].Label,
                        fee = Rental.RentableVehicles.Catagorys[2][k].RentFee,
                        catagory = 2
                    }
                }
            }
        end
    elseif Catagory == 3 then
        for k,v in pairs(Rental.RentableVehicles.Catagorys[3]) do
            rentvehicleMenu[#rentvehicleMenu+1] = {
                header = {Rental.RentableVehicles.Catagorys[3][k].Label..Rental.Localization.RentalSelectionRentalFeeText..Rental.RentableVehicles.Catagorys[3][k].RentFee},
                txt = "",
                params = {
                    event = "efearob-vehiclerentals:client:spawncar",
                    args = {
                        vehicle = Rental.RentableVehicles.Catagorys[3][k].SpawnName,
                        label = Rental.RentableVehicles.Catagorys[3][k].Label,
                        fee = Rental.RentableVehicles.Catagorys[3][k].RentFee,
                        catagory = 3
                    }
                }
            }
        end
    end

    rentvehicleMenu[#rentvehicleMenu+1] = {
        header = Rental.Localization.RentalSelectionCloseButton,
        txt = "",
        params = {
            event = "qb-menu:client:closeMenu"
        }

    }
    exports['qb-menu']:openMenu(rentvehicleMenu)
end)

CreateThread(function()
    for k,v in pairs(Rental.Locations) do
            Ped = type(Rental.Locations[k].TargetPed) == "string" and GetHashKey(Rental.Locations[k].TargetPed) or Ped
            RequestModel(Ped)

            while not HasModelLoaded(Ped) do
                Wait(0)
            end

            RentalPed = CreatePed(0, Ped, Rental.Locations[k].GetVehicle.x, Rental.Locations[k].GetVehicle.y, Rental.Locations[k].GetVehicle.z-1, Rental.Locations[k].GetVehicle.w, false, false)
            TaskStartScenarioInPlace(RentalPed, Rental.Locations[k].TargetPedScenario, true)
            FreezeEntityPosition(RentalPed, true)
            SetEntityInvincible(RentalPed, true)
            SetBlockingOfNonTemporaryEvents(RentalPed, true)

            if Rental.Locations[k].VehicleCatagory == 1 then
                exports['qb-target']:AddTargetEntity(RentalPed, {
                    options = {
                        {
                            label = Rental.Localization.TargetText,
                            icon = "fa fa-car",
                            action = function()
                                TriggerEvent('efearob-vehiclerentals:client:openmenu', 1)
                                GetVehicleSpawn()
                            end
                        },
                        {
                            label = Rental.Localization.TargetTextTwo,
                            icon = "fa fa-long-arrow-right",
                            action = function()
                                TriggerEvent('efearob-vehiclerentals:client:returncar')
                                GetVehicleSpawn()
                            end
                        }
                    },
                    distance = 2.0,
                }) 
            elseif Rental.Locations[k].VehicleCatagory == 2 then
                exports['qb-target']:AddTargetEntity(RentalPed, {
                    options = {
                        {
                            label = Rental.Localization.TargetTextAir,
                            icon = "fas fa-plane",
                            action = function()
                                TriggerEvent('efearob-vehiclerentals:client:openmenu', 2)
                                GetVehicleSpawn()
                            end
                        },
                        {
                            label = Rental.Localization.TargetTextTwo,
                            icon = "fa fa-long-arrow-right",
                            action = function()
                                TriggerEvent('efearob-vehiclerentals:client:returncar')
                                GetVehicleSpawn()
                            end
                        }
                    },
                    distance = 2.0,
                }) 
            elseif Rental.Locations[k].VehicleCatagory == 3 then
                exports['qb-target']:AddTargetEntity(RentalPed, {
                    options = {
                        {
                            label = Rental.Localization.TargetTextWater,
                            icon = "fas fa-water",
                            action = function()
                                TriggerEvent('efearob-vehiclerentals:client:openmenu', 3)
                                GetVehicleSpawn()
                            end
                        },
                        {
                            label = Rental.Localization.TargetTextTwo,
                            icon = "fa fa-long-arrow-right",
                            action = function()
                                TriggerEvent('efearob-vehiclerentals:client:returncar')
                                GetVehicleSpawn()
                            end
                        }
                    },
                    distance = 2.0,
                }) 
            end
    end
end)

local tekneSpawn = false
RegisterCommand("ptekne", function()
    print("ptekne")
    if not tekneSpawn then
        if QBCore.Functions.GetPlayerData().job.type == "leo" then
            local PlayerPed = PlayerPedId()
            if IsPedSwimming(PlayerPed) then
                tekneSpawn = true
                local sayi = 8
                while sayi > 0 do
                    QBCore.Functions.Notify('Araç '..sayi..' Saniye Sonra Çıkarılacak!', "inform", 1000)
                    sayi = sayi - 1
                    Citizen.Wait(1000)
                end

                local coords = GetEntityCoords(PlayerPed)
                QBCore.Functions.SpawnVehicle("predator", function(vehicle)
                    QBCore.Functions.Notify('Araç Çıkarıldı!')
                    SetVehRadioStation(vehicle, "OFF")
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                    TriggerEvent('vehiclekeys:client:SetOwner', GetVehicleNumberPlateText(vehicle))
                end, {x=coords.x + 1, y=coords.y + 1, z=coords.z + 1, h= 90.0 }, true)
                tekneSpawn = false
            else
                QBCore.Functions.Notify('Suda Olman Lazım!', 'error')
            end
        end
    end
end)