Config = {}

Config.UseLogs = false -- Set to true to enable discord logs, using default QBCore logs system

Config.BanWhenExploit = false -- Set to true if you want to ban players / cheaters (Just another safety system)

Config.CompanyFunds = {
    Enable = false, -- Set to false to disable the company funds feature (Havent been tested completely. NOT recommended to use)
    CheckDistance = 10.0 -- The radius that the script checks for nearby players (If Enable)
}

Config.UseBlips = true -- Set to false to disable all script blips

Config.RentMaximum = 60 -- The rent maximum allowed in minutes

Config.Target = "qb-target" -- The name of your target

Config.FuelSystem = "cdn-fuel" -- The fuel system, cdn-fuel by default

Config.SetVehicleTransparency = 'none' -- The vehicle transparency level for the preview. Options : low, medium, high, none

Config.Locals = {
    Targets = {
        GarageTarget = {
            Distance = 5.0,
            Icon = "fa fa-car",
            Label = "Garaj - "
        }
    },

    Notifications = {
        RentOver = "Araç kiralama süresi doldu: ",
        RentWarning = "Araç teslim edilmezse silinecek! Araç ",
        NoRentedVehicle = "Adınıza kiralanan araç bulunmamaktadır",
        NoMoney = "Yeterli paranız bulunmamaktadır",
        VehicleReturned = "Araç iade edildi. Araç ",
        SuccessfullyRented = " başarıyla kiralık alındı: ",
        SuccessfullyBought = " başarıyla satın alındı: ",
        NotDriver = "Sürücü siz olmalısınız!",
        ExtraTurnedOn = " araç ekstrası başarıyla açıldı",
        NoFunds = " için yeterli bakiye bulunmamaktadır",
        ExtraTurnedOff = " araç ekstrası başarıyla kapatıldı",
        NoJob = " doğru mesleğe sahip değil",
        NoRank = " doğru gereken rütbe seviyesine sahip değil",
        VehicleInSpawn = "Spawn alanında bir araç bulunmaktadır!",
        NotInVehicle = "Herhangi bir araçta değilsiniz!",
        LiverySet = "Araç kaplaması başarıyla ayarlandı: ",
        LeftVehicle = "Araçtan ayrıldınız",
        IncorrectVehicle = "Yanlış araç! Kiraladığınız araç "
    }
}

Config.Locations = {
    Stations = {
        ["MRPD"] = { -- Full template, inculdes all script features (The string is the garage name used as the station / garage name)
            UseTarget = true, -- Set to false to use the Marker for this station
            UseRent = false, -- Set to false to disable the rent feature for this station (Garage WONT WORK if UseRent and UsePurchasable are set to false)
            UseOwnable = true, -- Set to false to disable ownable vehicles 
            UseExtras = false, -- Set to false to disable the extras feature
            UsePurchasable = true, -- Set to false to disable purchasable vehicles (Garage WONT WORK if UseRent and UsePurchasable are set to false)
            UseLiveries = true, -- Set to false to disable the livery feature
            JobRequired = "police", -- The job required for this station garage; For 1 job use, for multiple jobs JobRequired = {"job1", "job2"}, for all job use JobRequired = "all"
            VehiclesInformation = {
                RentVehicles = { -- Rent vehicles information, if UseRent set to true as : UseRent = true
                    ["Bati"] = {
                        Vehicle = "bati", -- The vehicle to spawn
                        PricePerMinute = 50 -- The price to charge for that vehicle every minute
                    }
                },
                PurchaseVehicles = { -- Purchasable vehicles, make sure you have the vehicle information set in qb-core > shared > vehicles.lua
                    ["Police Mustang"] = {
                        Vehicle = "npolstang", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 5, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Victoria"] = {
                        Vehicle = "npolvic", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Charger"] = {
                        Vehicle = "npolchar", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Challenger"] = {
                        Vehicle = "npolchal", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 5, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Explorer"] = {
                        Vehicle = "npolexp", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Motorcycle"] = {
                        Vehicle = "npolmm", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Taurus"] = {
                        Vehicle = "clrgtaurus", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Tahoe"] = {
                        Vehicle = "clrgtahoe", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Bear Cat"] = {
                        Vehicle = "bcat", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Bicycle"] = {
                        Vehicle = "pbike", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Raptor"] = {
                        Vehicle = "tolprap", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Durango"] = {
                        Vehicle = "ypdurango18", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Caprice"] = {
                        Vehicle = "ypcpr", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 13, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police TRX"] = {
                        Vehicle = "yptrx", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 5, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Africa Twin"] = {
                        Vehicle = "ypafricat", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    }

                },
                SpawnCoords = {
                    VehicleSpawn = vector4(438.42324, -1021.07, 28.677057, 101.4219), -- Vehicle spawn and vehicle clear check coords
                    PreviewSpawn = vector4(453.6509, -1023.771, 28.494075, 62.526172), -- Preview vehicle spawn coords
                    CheckRadius = 5.0, -- The radius the script checks for vehicle
                    CameraInformation = {
                        CameraCoords = vector3(447.5325, -1020.384, 30.494419), -- Vehicle preview camera coords
                        CameraRotation = vector3(-10.00, 0.00, 240.494419), -- Vehicle preview camera rotation coords
                        CameraFOV = 80.0 -- The vehicle preview camera fov value
                    }
                }
            },
            GeneralInformation = {
                Blip = { -- If UseTarget set to true it uses the target ped coords and if false it uses the marker coords
                    BlipId = 357, -- The blip id. More can be found at : https://docs.fivem.net/docs/game-references/blips/
                    BlipColour = 2, -- The blip colour. More can be found at : https://docs.fivem.net/docs/game-references/blips/
                    BlipScale = 0.4, -- The blip scale
                    Title = "MRPD - Garaj" -- The blip title string
                },
                TargetInformation = { -- If UseTarget set to true this is the required information
                    Ped = "a_m_y_smartcaspat_01", -- The ped model. More models can be found at : https://docs.fivem.net/docs/game-references/ped-models/
                    Coords = vector4(459.05987, -1017.118, 27.153299, 96.337463), -- The ped coords
                    Scenario = "WORLD_HUMAN_CLIPBOARD" -- Ped scenario. More can be found at : https://wiki.rage.mp/index.php?title=Scenarios
                },
                MarkerInformation = { -- If UseTarget set to false this is the required information
                    Coords = vector3(443.73809, -1017.172, 28.648283), -- The marker coords
                    MarkerType = 36, -- The marker type. More can be found at : https://docs.fivem.net/docs/game-references/markers/
                    MarkerColor = {
                        R = 255,
                        G = 0,
                        B = 0,
                        A = 100
                    } -- The marker color. You can pick other colors here : https://rgbacolorpicker.com/
                }
            }
        },
        ["VPD"] = { -- Full template, inculdes all script features (The string is the garage name used as the station / garage name)
            UseTarget = true, -- Set to false to use the Marker for this station
            UseRent = false, -- Set to false to disable the rent feature for this station (Garage WONT WORK if UseRent and UsePurchasable are set to false)
            UseOwnable = true, -- Set to false to disable ownable vehicles 
            UseExtras = false, -- Set to false to disable the extras feature
            UsePurchasable = true, -- Set to false to disable purchasable vehicles (Garage WONT WORK if UseRent and UsePurchasable are set to false)
            UseLiveries = true, -- Set to false to disable the livery feature
            JobRequired = "vpd", -- The job required for this station garage; For 1 job use, for multiple jobs JobRequired = {"job1", "job2"}, for all job use JobRequired = "all"
            VehiclesInformation = {
                RentVehicles = { -- Rent vehicles information, if UseRent set to true as : UseRent = true
                    ["Bati"] = {
                        Vehicle = "bati", -- The vehicle to spawn
                        PricePerMinute = 50 -- The price to charge for that vehicle every minute
                    }
                },
                PurchaseVehicles = { -- Purchasable vehicles, make sure you have the vehicle information set in qb-core > shared > vehicles.lua
                    ["Police Mustang"] = {
                        Vehicle = "npolstang", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 5, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Victoria"] = {
                        Vehicle = "npolvic", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Charger"] = {
                        Vehicle = "npolchar", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Challenger"] = {
                        Vehicle = "npolchal", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Explorer"] = {
                        Vehicle = "npolexp", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Motorcycle"] = {
                        Vehicle = "npolmm", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Taurus"] = {
                        Vehicle = "clrgtaurus", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Tahoe"] = {
                        Vehicle = "clrgtahoe", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Bear Cat"] = {
                        Vehicle = "bcat", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Bicycle"] = {
                        Vehicle = "pbike", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Raptor"] = {
                        Vehicle = "tolprap", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Durango"] = {
                        Vehicle = "ypdurango18", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Caprice"] = {
                        Vehicle = "ypcpr", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 5, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police TRX"] = {
                        Vehicle = "yptrx", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 5, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Africa Twin"] = {
                        Vehicle = "ypafricat", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    }
                },
                SpawnCoords = {
                    VehicleSpawn = vector4(581.18, -30.01, 70.63, 347.57), -- Vehicle spawn and vehicle clear check coords
                    PreviewSpawn = vector4(581.18, -30.01, 70.63, 347.57), -- Preview vehicle spawn coords
                    CheckRadius = 5.0, -- The radius the script checks for vehicle
                    CameraInformation = {
                        CameraCoords = vector3(585.83, -25.65, 71.84), -- Vehicle preview camera coords
                        CameraRotation = vector3(-10.00, 0.00, 150.494419), -- Vehicle preview camera rotation coords
                        CameraFOV = 80.0 -- The vehicle preview camera fov value
                    }
                }
            },
            GeneralInformation = {
                Blip = { -- If UseTarget set to true it uses the target ped coords and if false it uses the marker coords
                    BlipId = 357, -- The blip id. More can be found at : https://docs.fivem.net/docs/game-references/blips/
                    BlipColour = 2, -- The blip colour. More can be found at : https://docs.fivem.net/docs/game-references/blips/
                    BlipScale = 0.4, -- The blip scale
                    Title = "VPD - Garaj" -- The blip title string
                },
                TargetInformation = { -- If UseTarget set to true this is the required information
                    Ped = "a_m_y_smartcaspat_01", -- The ped model. More models can be found at : https://docs.fivem.net/docs/game-references/ped-models/
                    Coords = vector4(596.8, -13.79, 69.63, 342.95), -- The ped coords
                    Scenario = "WORLD_HUMAN_CLIPBOARD" -- Ped scenario. More can be found at : https://wiki.rage.mp/index.php?title=Scenarios
                },
                MarkerInformation = { -- If UseTarget set to false this is the required information
                    Coords = vector3(443.73809, -1017.172, 28.648283), -- The marker coords
                    MarkerType = 36, -- The marker type. More can be found at : https://docs.fivem.net/docs/game-references/markers/
                    MarkerColor = {
                        R = 255,
                        G = 0,
                        B = 0,
                        A = 100
                    } -- The marker color. You can pick other colors here : https://rgbacolorpicker.com/
                }
            }
        },
        ["Davis"] = { -- Full template, inculdes all script features (The string is the garage name used as the station / garage name)
            UseTarget = true, -- Set to false to use the Marker for this station
            UseRent = false, -- Set to false to disable the rent feature for this station (Garage WONT WORK if UseRent and UsePurchasable are set to false)
            UseOwnable = true, -- Set to false to disable ownable vehicles 
            UseExtras = false, -- Set to false to disable the extras feature
            UsePurchasable = true, -- Set to false to disable purchasable vehicles (Garage WONT WORK if UseRent and UsePurchasable are set to false)
            UseLiveries = true, -- Set to false to disable the livery feature
            JobRequired = "davison", -- The job required for this station garage; For 1 job use, for multiple jobs JobRequired = {"job1", "job2"}, for all job use JobRequired = "all"
            VehiclesInformation = {
                RentVehicles = { -- Rent vehicles information, if UseRent set to true as : UseRent = true
                    ["Bati"] = {
                        Vehicle = "bati", -- The vehicle to spawn
                        PricePerMinute = 50 -- The price to charge for that vehicle every minute
                    }
                },
                PurchaseVehicles = { -- Purchasable vehicles, make sure you have the vehicle information set in qb-core > shared > vehicles.lua
                    ["Police Mustang"] = {
                        Vehicle = "npolstang", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 5, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Victoria"] = {
                        Vehicle = "npolvic", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Charger"] = {
                        Vehicle = "npolchar", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Challenger"] = {
                        Vehicle = "npolchal", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Explorer"] = {
                        Vehicle = "npolexp", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Motorcycle"] = {
                        Vehicle = "npolmm", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Taurus"] = {
                        Vehicle = "clrgtaurus", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Tahoe"] = {
                        Vehicle = "clrgtahoe", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Bear Cat"] = {
                        Vehicle = "bcat", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Bicycle"] = {
                        Vehicle = "pbike", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Raptor"] = {
                        Vehicle = "tolprap", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Durango"] = {
                        Vehicle = "ypdurango18", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Caprice"] = {
                        Vehicle = "ypcpr", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 5, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police TRX"] = {
                        Vehicle = "yptrx", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 5, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Africa Twin"] = {
                        Vehicle = "ypafricat", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    }
                },
                SpawnCoords = {
                    VehicleSpawn = vector4(384.32, -1634.66, 29.29, 312.83), -- Vehicle spawn and vehicle clear check coords
                    PreviewSpawn = vector4(384.32, -1634.66, 29.29, 312.83), -- Preview vehicle spawn coords
                    CheckRadius = 5.0, -- The radius the script checks for vehicle
                    CameraInformation = {
                        CameraCoords = vector3(386.33, -1626.0, 32.12), -- Vehicle preview camera coords
                        CameraRotation = vector3(-10.00, 0.00, 180.494419), -- Vehicle preview camera rotation coords
                        CameraFOV = 80.0 -- The vehicle preview camera fov value
                    }
                }
            },
            GeneralInformation = {
                Blip = { -- If UseTarget set to true it uses the target ped coords and if false it uses the marker coords
                    BlipId = 357, -- The blip id. More can be found at : https://docs.fivem.net/docs/game-references/blips/
                    BlipColour = 2, -- The blip colour. More can be found at : https://docs.fivem.net/docs/game-references/blips/
                    BlipScale = 0.4, -- The blip scale
                    Title = "Davis - Garaj" -- The blip title string
                },
                TargetInformation = { -- If UseTarget set to true this is the required information
                    Ped = "a_m_y_smartcaspat_01", -- The ped model. More models can be found at : https://docs.fivem.net/docs/game-references/ped-models/
                    Coords = vector4(376.14, -1631.54, 28.29, 317.89), -- The ped coords
                    Scenario = "WORLD_HUMAN_CLIPBOARD" -- Ped scenario. More can be found at : https://wiki.rage.mp/index.php?title=Scenarios
                },
                MarkerInformation = { -- If UseTarget set to false this is the required information
                    Coords = vector3(443.73809, -1017.172, 28.648283), -- The marker coords
                    MarkerType = 36, -- The marker type. More can be found at : https://docs.fivem.net/docs/game-references/markers/
                    MarkerColor = {
                        R = 255,
                        G = 0,
                        B = 0,
                        A = 100
                    } -- The marker color. You can pick other colors here : https://rgbacolorpicker.com/
                }
            }
        },
        ["SASP"] = { -- Full template, inculdes all script features (The string is the garage name used as the station / garage name)
            UseTarget = true, -- Set to false to use the Marker for this station
            UseRent = false, -- Set to false to disable the rent feature for this station (Garage WONT WORK if UseRent and UsePurchasable are set to false)
            UseOwnable = true, -- Set to false to disable ownable vehicles 
            UseExtras = false, -- Set to false to disable the extras feature
            UsePurchasable = true, -- Set to false to disable purchasable vehicles (Garage WONT WORK if UseRent and UsePurchasable are set to false)
            UseLiveries = true, -- Set to false to disable the livery feature
            JobRequired = "state", -- The job required for this station garage; For 1 job use, for multiple jobs JobRequired = {"job1", "job2"}, for all job use JobRequired = "all"
            VehiclesInformation = {
                RentVehicles = { -- Rent vehicles information, if UseRent set to true as : UseRent = true
                    ["Bati"] = {
                        Vehicle = "bati", -- The vehicle to spawn
                        PricePerMinute = 50 -- The price to charge for that vehicle every minute
                    }
                },
                PurchaseVehicles = { -- Purchasable vehicles, make sure you have the vehicle information set in qb-core > shared > vehicles.lua
                    ["Police Mustang"] = {
                        Vehicle = "npolstang", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 5, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Victoria"] = {
                        Vehicle = "npolvic", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Charger"] = {
                        Vehicle = "npolchar", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Challenger"] = {
                        Vehicle = "npolchal", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Explorer"] = {
                        Vehicle = "npolexp", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Motorcycle"] = {
                        Vehicle = "npolmm", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Taurus"] = {
                        Vehicle = "clrgtaurus", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Tahoe"] = {
                        Vehicle = "clrgtahoe", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Bear Cat"] = {
                        Vehicle = "bcat", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Bicycle"] = {
                        Vehicle = "pbike", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Raptor"] = {
                        Vehicle = "tolprap", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Durango"] = {
                        Vehicle = "ypdurango18", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Caprice"] = {
                        Vehicle = "ypcpr", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 5, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police TRX"] = {
                        Vehicle = "yptrx", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 5, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Africa Twin"] = {
                        Vehicle = "ypafricat", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    }

                },
                SpawnCoords = {
                    VehicleSpawn = vector4(860.59, -1350.17, 26.07, 87.01), -- Vehicle spawn and vehicle clear check coords
                    PreviewSpawn = vector4(860.59, -1350.17, 26.07, 87.01), -- Preview vehicle spawn coords
                    CheckRadius = 5.0, -- The radius the script checks for vehicle
                    CameraInformation = {
                        CameraCoords = vector3(854.1, -1344.13, 29.18), -- Vehicle preview camera coords
                        CameraRotation = vector3(-10.00, 0.00, 220.494419), -- Vehicle preview camera rotation coords
                        CameraFOV = 80.0 -- The vehicle preview camera fov value
                    }
                }
            },
            GeneralInformation = {
                Blip = { -- If UseTarget set to true it uses the target ped coords and if false it uses the marker coords
                    BlipId = 357, -- The blip id. More can be found at : https://docs.fivem.net/docs/game-references/blips/
                    BlipColour = 2, -- The blip colour. More can be found at : https://docs.fivem.net/docs/game-references/blips/
                    BlipScale = 0.4, -- The blip scale
                    Title = "State - Garaj" -- The blip title string
                },
                TargetInformation = { -- If UseTarget set to true this is the required information
                    Ped = "a_m_y_smartcaspat_01", -- The ped model. More models can be found at : https://docs.fivem.net/docs/game-references/ped-models/
                    Coords = vector4(863.54, -1337.58, 25.03, 90.87), -- The ped coords
                    Scenario = "WORLD_HUMAN_CLIPBOARD" -- Ped scenario. More can be found at : https://wiki.rage.mp/index.php?title=Scenarios
                },
                MarkerInformation = { -- If UseTarget set to false this is the required information
                    Coords = vector3(443.73809, -1017.172, 28.648283), -- The marker coords
                    MarkerType = 36, -- The marker type. More can be found at : https://docs.fivem.net/docs/game-references/markers/
                    MarkerColor = {
                        R = 255,
                        G = 0,
                        B = 0,
                        A = 100
                    } -- The marker color. You can pick other colors here : https://rgbacolorpicker.com/
                }
            }
        },
        ["DOJ"] = { -- Full template, inculdes all script features (The string is the garage name used as the station / garage name)
            UseTarget = true, -- Set to false to use the Marker for this station
            UseRent = false, -- Set to false to disable the rent feature for this station (Garage WONT WORK if UseRent and UsePurchasable are set to false)
            UseOwnable = true, -- Set to false to disable ownable vehicles 
            UseExtras = false, -- Set to false to disable the extras feature
            UsePurchasable = true, -- Set to false to disable purchasable vehicles (Garage WONT WORK if UseRent and UsePurchasable are set to false)
            UseLiveries = true, -- Set to false to disable the livery feature
            JobRequired = "doj", -- The job required for this station garage; For 1 job use, for multiple jobs JobRequired = {"job1", "job2"}, for all job use JobRequired = "all"
            VehiclesInformation = {
                RentVehicles = { -- Rent vehicles information, if UseRent set to true as : UseRent = true
                    ["Bati"] = {
                        Vehicle = "bati", -- The vehicle to spawn
                        PricePerMinute = 50 -- The price to charge for that vehicle every minute
                    }
                },
                PurchaseVehicles = { -- Purchasable vehicles, make sure you have the vehicle information set in qb-core > shared > vehicles.lua
                    ["Police Mustang"] = {
                        Vehicle = "npolstang", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 5, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Victoria"] = {
                        Vehicle = "npolvic", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Charger"] = {
                        Vehicle = "npolchar", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Challenger"] = {
                        Vehicle = "npolchal", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Explorer"] = {
                        Vehicle = "npolexp", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Motorcycle"] = {
                        Vehicle = "npolmm", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Taurus"] = {
                        Vehicle = "clrgtaurus", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Tahoe"] = {
                        Vehicle = "clrgtahoe", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Bicycle"] = {
                        Vehicle = "pbike", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Raptor"] = {
                        Vehicle = "tolprap", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Durango"] = {
                        Vehicle = "ypdurango18", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Caprice"] = {
                        Vehicle = "ypcpr", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 5, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police TRX"] = {
                        Vehicle = "yptrx", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 5, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Unmarked Oracle"] = {
                        Vehicle = "apoliceu9", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Unmarked Explorer"] = {
                        Vehicle = "apoliceu6", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Unmarked Buffalo S"] = {
                        Vehicle = "apoliceu14", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    }

                },
                SpawnCoords = {
                    VehicleSpawn = vector4(-540.33, -243.66, 36.32, 206.05), -- Vehicle spawn and vehicle clear check coords
                    PreviewSpawn = vector4(-540.33, -243.66, 36.32, 206.05), -- Preview vehicle spawn coords
                    CheckRadius = 5.0, -- The radius the script checks for vehicle
                    CameraInformation = {
                        CameraCoords = vector3(-540.09, -254.51, 38.39), -- Vehicle preview camera coords
                        CameraRotation = vector3(-10.00, 0.00, 15.494419), -- Vehicle preview camera rotation coords
                        CameraFOV = 80.0 -- The vehicle preview camera fov value
                    }
                }
            },
            GeneralInformation = {
                Blip = { -- If UseTarget set to true it uses the target ped coords and if false it uses the marker coords
                    BlipId = 357, -- The blip id. More can be found at : https://docs.fivem.net/docs/game-references/blips/
                    BlipColour = 2, -- The blip colour. More can be found at : https://docs.fivem.net/docs/game-references/blips/
                    BlipScale = 0.4, -- The blip scale
                    Title = "DOJ - Garaj" -- The blip title string
                },
                TargetInformation = { -- If UseTarget set to true this is the required information
                    Ped = "a_m_y_smartcaspat_01", -- The ped model. More models can be found at : https://docs.fivem.net/docs/game-references/ped-models/
                    Coords = vector4(-539.08, -232.86, 35.71, 287.32), -- The ped coords
                    Scenario = "WORLD_HUMAN_CLIPBOARD" -- Ped scenario. More can be found at : https://wiki.rage.mp/index.php?title=Scenarios
                },
                MarkerInformation = { -- If UseTarget set to false this is the required information
                    Coords = vector3(443.73809, -1016.172, 28.648283), -- The marker coords
                    MarkerType = 36, -- The marker type. More can be found at : https://docs.fivem.net/docs/game-references/markers/
                    MarkerColor = {
                        R = 255,
                        G = 0,
                        B = 0,
                        A = 100
                    } -- The marker color. You can pick other colors here : https://rgbacolorpicker.com/
                }
            }
        },
        ["Ranger"] = { -- Full template, inculdes all script features (The string is the garage name used as the station / garage name)
            UseTarget = true, -- Set to false to use the Marker for this station
            UseRent = false, -- Set to false to disable the rent feature for this station (Garage WONT WORK if UseRent and UsePurchasable are set to false)
            UseOwnable = true, -- Set to false to disable ownable vehicles 
            UseExtras = false, -- Set to false to disable the extras feature
            UsePurchasable = true, -- Set to false to disable purchasable vehicles (Garage WONT WORK if UseRent and UsePurchasable are set to false)
            UseLiveries = true, -- Set to false to disable the livery feature
            JobRequired = "ranger", -- The job required for this station garage; For 1 job use, for multiple jobs JobRequired = {"job1", "job2"}, for all job use JobRequired = "all"
            VehiclesInformation = {
                RentVehicles = { -- Rent vehicles information, if UseRent set to true as : UseRent = true
                    ["Bati"] = {
                        Vehicle = "bati", -- The vehicle to spawn
                        PricePerMinute = 50 -- The price to charge for that vehicle every minute
                    }
                },
                PurchaseVehicles = { -- Purchasable vehicles, make sure you have the vehicle information set in qb-core > shared > vehicles.lua
                    ["Police Victoria"] = {
                        Vehicle = "npolvic", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Charger"] = {
                        Vehicle = "npolchar", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Explorer"] = {
                        Vehicle = "npolexp", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Motorcycle"] = {
                        Vehicle = "npolmm", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Taurus"] = {
                        Vehicle = "clrgtaurus", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Tahoe"] = {
                        Vehicle = "clrgtahoe", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Bear Cat"] = {
                        Vehicle = "bcat", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Bicycle"] = {
                        Vehicle = "pbike", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Raptor"] = {
                        Vehicle = "tolprap", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Durango"] = {
                        Vehicle = "ypdurango18", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police TRX"] = {
                        Vehicle = "yptrx", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 5, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Mustang"] = {
                        Vehicle = "npolstang", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 5, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Challenger"] = {
                        Vehicle = "npolchal", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 5, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Africa Twin"] = {
                        Vehicle = "ypafricat", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    }

                },
                SpawnCoords = {
                    VehicleSpawn = vector4(363.0, 804.63, 189.38, 207.91), -- Vehicle spawn and vehicle clear check coords
                    PreviewSpawn = vector4(363.0, 804.63, 189.38, 207.91), -- Preview vehicle spawn coords
                    CheckRadius = 5.0, -- The radius the script checks for vehicle
                    CameraInformation = {
                        CameraCoords = vector3(364.62, 798.63, 188.64), -- Vehicle preview camera coords
                        CameraRotation = vector3(-10.00, 0.00, 15.494419), -- Vehicle preview camera rotation coords
                        CameraFOV = 80.0 -- The vehicle preview camera fov value
                    }
                }
            },
            GeneralInformation = {
                Blip = { -- If UseTarget set to true it uses the target ped coords and if false it uses the marker coords
                    BlipId = 357, -- The blip id. More can be found at : https://docs.fivem.net/docs/game-references/blips/
                    BlipColour = 2, -- The blip colour. More can be found at : https://docs.fivem.net/docs/game-references/blips/
                    BlipScale = 0.4, -- The blip scale
                    Title = "Ranger - Garaj" -- The blip title string
                },
                TargetInformation = { -- If UseTarget set to true this is the required information
                    Ped = "a_m_y_smartcaspat_01", -- The ped model. More models can be found at : https://docs.fivem.net/docs/game-references/ped-models/
                    Coords = vector4(376.53, 791.49, 186.59, 94.55), -- The ped coords
                    Scenario = "WORLD_HUMAN_CLIPBOARD" -- Ped scenario. More can be found at : https://wiki.rage.mp/index.php?title=Scenarios
                },
                MarkerInformation = { -- If UseTarget set to false this is the required information
                    Coords = vector3(443.73809, -1016.172, 28.648283), -- The marker coords
                    MarkerType = 36, -- The marker type. More can be found at : https://docs.fivem.net/docs/game-references/markers/
                    MarkerColor = {
                        R = 255,
                        G = 0,
                        B = 0,
                        A = 100
                    } -- The marker color. You can pick other colors here : https://rgbacolorpicker.com/
                }
            }
        },
        ["MPD"] = { -- Full template, inculdes all script features (The string is the garage name used as the station / garage name)
            UseTarget = true, -- Set to false to use the Marker for this station
            UseRent = false, -- Set to false to disable the rent feature for this station (Garage WONT WORK if UseRent and UsePurchasable are set to false)
            UseOwnable = true, -- Set to false to disable ownable vehicles 
            UseExtras = false, -- Set to false to disable the extras feature
            UsePurchasable = true, -- Set to false to disable purchasable vehicles (Garage WONT WORK if UseRent and UsePurchasable are set to false)
            UseLiveries = true, -- Set to false to disable the livery feature
            JobRequired = "fbi", -- The job required for this station garage; For 1 job use, for multiple jobs JobRequired = {"job1", "job2"}, for all job use JobRequired = "all"
            VehiclesInformation = {
                RentVehicles = { -- Rent vehicles information, if UseRent set to true as : UseRent = true
                    ["Bati"] = {
                        Vehicle = "bati", -- The vehicle to spawn
                        PricePerMinute = 50 -- The price to charge for that vehicle every minute
                    }
                },
                PurchaseVehicles = { -- Purchasable vehicles, make sure you have the vehicle information set in qb-core > shared > vehicles.lua
                    ["Police Victoria"] = {
                        Vehicle = "npolvic", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Charger"] = {
                        Vehicle = "npolchar", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Explorer"] = {
                        Vehicle = "npolexp", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Motorcycle"] = {
                        Vehicle = "npolmm", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Taurus"] = {
                        Vehicle = "clrgtaurus", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Tahoe"] = {
                        Vehicle = "clrgtahoe", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Bear Cat"] = {
                        Vehicle = "bcat", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Bicycle"] = {
                        Vehicle = "pbike", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Raptor"] = {
                        Vehicle = "tolprap", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Durango"] = {
                        Vehicle = "ypdurango18", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police TRX"] = {
                        Vehicle = "yptrx", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 5, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Mustang"] = {
                        Vehicle = "npolstang", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 5, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Challenger"] = {
                        Vehicle = "npolchal", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 5, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Africa Twin"] = {
                        Vehicle = "ypafricat", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["mocpacker"] = {
                        Vehicle = "mocpacker", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    }

                },
                SpawnCoords = {
                    VehicleSpawn = vector4(2544.94, -413.89, 92.57, 225.43), -- Vehicle spawn and vehicle clear check coords
                    PreviewSpawn = vector4(2544.94, -413.89, 92.57, 225.43), -- Preview vehicle spawn coords
                    CheckRadius = 5.0, -- The radius the script checks for vehicle
                    CameraInformation = {
                        CameraCoords = vector3(2545.37, -420.7, 93.39), -- Vehicle preview camera coords
                        CameraRotation = vector3(-10.00, 0.00, 15.494419), -- Vehicle preview camera rotation coords
                        CameraFOV = 80.0 -- The vehicle preview camera fov value
                    }
                }
            },
            GeneralInformation = {
                Blip = { -- If UseTarget set to true it uses the target ped coords and if false it uses the marker coords
                    BlipId = 357, -- The blip id. More can be found at : https://docs.fivem.net/docs/game-references/blips/
                    BlipColour = 2, -- The blip colour. More can be found at : https://docs.fivem.net/docs/game-references/blips/
                    BlipScale = 0.4, -- The blip scale
                    Title = "MPD - Garaj" -- The blip title string
                },
                TargetInformation = { -- If UseTarget set to true this is the required information
                    Ped = "a_m_y_smartcaspat_01", -- The ped model. More models can be found at : https://docs.fivem.net/docs/game-references/ped-models/
                    Coords = vector4(2536.1, -412.99, 92.14, 324.6), -- The ped coords
                    Scenario = "WORLD_HUMAN_CLIPBOARD" -- Ped scenario. More can be found at : https://wiki.rage.mp/index.php?title=Scenarios
                },
                MarkerInformation = { -- If UseTarget set to false this is the required information
                    Coords = vector3(443.73809, -1016.172, 28.648283), -- The marker coords
                    MarkerType = 36, -- The marker type. More can be found at : https://docs.fivem.net/docs/game-references/markers/
                    MarkerColor = {
                        R = 255,
                        G = 0,
                        B = 0,
                        A = 100
                    } -- The marker color. You can pick other colors here : https://rgbacolorpicker.com/
                }
            }
        },
        ["DPPD"] = { -- Full template, inculdes all script features (The string is the garage name used as the station / garage name)
            UseTarget = true, -- Set to false to use the Marker for this station
            UseRent = false, -- Set to false to disable the rent feature for this station (Garage WONT WORK if UseRent and UsePurchasable are set to false)
            UseOwnable = true, -- Set to false to disable ownable vehicles 
            UseExtras = false, -- Set to false to disable the extras feature
            UsePurchasable = true, -- Set to false to disable purchasable vehicles (Garage WONT WORK if UseRent and UsePurchasable are set to false)
            UseLiveries = true, -- Set to false to disable the livery feature
            JobRequired = "dppd", -- The job required for this station garage; For 1 job use, for multiple jobs JobRequired = {"job1", "job2"}, for all job use JobRequired = "all"
            VehiclesInformation = {
                RentVehicles = { -- Rent vehicles information, if UseRent set to true as : UseRent = true
                    ["Bati"] = {
                        Vehicle = "bati", -- The vehicle to spawn
                        PricePerMinute = 50 -- The price to charge for that vehicle every minute
                    }
                },
                PurchaseVehicles = { -- Purchasable vehicles, make sure you have the vehicle information set in qb-core > shared > vehicles.lua
                    ["Police Victoria"] = {
                        Vehicle = "npolvic", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Charger"] = {
                        Vehicle = "npolchar", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Explorer"] = {
                        Vehicle = "npolexp", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Motorcycle"] = {
                        Vehicle = "npolmm", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Taurus"] = {
                        Vehicle = "clrgtaurus", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Tahoe"] = {
                        Vehicle = "clrgtahoe", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Bear Cat"] = {
                        Vehicle = "bcat", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Bicycle"] = {
                        Vehicle = "pbike", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Raptor"] = {
                        Vehicle = "tolprap", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Durango"] = {
                        Vehicle = "ypdurango18", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police TRX"] = {
                        Vehicle = "yptrx", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 5, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Mustang"] = {
                        Vehicle = "npolstang", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 5, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Challenger"] = {
                        Vehicle = "npolchal", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 5, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Africa Twin"] = {
                        Vehicle = "ypafricat", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["mocpacker"] = {
                        Vehicle = "mocpacker", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    }

                },
                SpawnCoords = { 
                    VehicleSpawn = vector4(-1613.59, -1036.61, 13.15, 313.7), -- Vehicle spawn and vehicle clear check coords
                    PreviewSpawn = vector4(-1613.59, -1036.61, 13.15, 313.7), -- Preview vehicle spawn coords
                    CheckRadius = 5.0, -- The radius the script checks for vehicle
                    CameraInformation = {
                        CameraCoords = vector4(-1606.35, -1032.96, 13.09, 127.17),  -- Vehicle preview camera coords
                        CameraRotation = vector3(0.00, 0.00, 100.0), -- Vehicle preview camera rotation coords
                        CameraFOV = 80.0 -- The vehicle preview camera fov value
                    }
                }
            },
            GeneralInformation = {
                Blip = { -- If UseTarget set to true it uses the target ped coords and if false it uses the marker coords
                    BlipId = 357, -- The blip id. More can be found at : https://docs.fivem.net/docs/game-references/blips/
                    BlipColour = 2, -- The blip colour. More can be found at : https://docs.fivem.net/docs/game-references/blips/
                    BlipScale = 0.4, -- The blip scale
                    Title = "DPPD - Garaj" -- The blip title string
                },
                TargetInformation = { -- If UseTarget set to true this is the required information
                    Ped = "a_m_y_smartcaspat_01", -- The ped model. More models can be found at : https://docs.fivem.net/docs/game-references/ped-models/
                    Coords = vector4(-1611.16, -1029.82, 12.35, 210.45), -- The ped coords
                    Scenario = "WORLD_HUMAN_CLIPBOARD" -- Ped scenario. More can be found at : https://wiki.rage.mp/index.php?title=Scenarios
                },
                MarkerInformation = { -- If UseTarget set to false this is the required information
                    Coords = vector3(443.73809, -1016.172, 28.648283), -- The marker coords
                    MarkerType = 36, -- The marker type. More can be found at : https://docs.fivem.net/docs/game-references/markers/
                    MarkerColor = {
                        R = 255,
                        G = 0,
                        B = 0,
                        A = 100
                    } -- The marker color. You can pick other colors here : https://rgbacolorpicker.com/
                }
            }
        },
        ["BCSO"] = { -- Full template, inculdes all script features (The string is the garage name used as the station / garage name)
            UseTarget = true, -- Set to false to use the Marker for this station
            UseRent = false, -- Set to false to disable the rent feature for this station (Garage WONT WORK if UseRent and UsePurchasable are set to false)
            UseOwnable = true, -- Set to false to disable ownable vehicles 
            UseExtras = false, -- Set to false to disable the extras feature
            UsePurchasable = true, -- Set to false to disable purchasable vehicles (Garage WONT WORK if UseRent and UsePurchasable are set to false)
            UseLiveries = true, -- Set to false to disable the livery feature
            JobRequired = "sheriff", -- The job required for this station garage; For 1 job use, for multiple jobs JobRequired = {"job1", "job2"}, for all job use JobRequired = "all"
            VehiclesInformation = {
                RentVehicles = { -- Rent vehicles information, if UseRent set to true as : UseRent = true
                    ["Bati"] = {
                        Vehicle = "bati", -- The vehicle to spawn
                        PricePerMinute = 50 -- The price to charge for that vehicle every minute
                    }
                },
                PurchaseVehicles = { -- Purchasable vehicles, make sure you have the vehicle information set in qb-core > shared > vehicles.lua
                    ["Police Mustang"] = {
                        Vehicle = "npolstang", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 5, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Victoria"] = {
                        Vehicle = "npolvic", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Charger"] = {
                        Vehicle = "npolchar", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Challenger"] = {
                        Vehicle = "npolchal", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Explorer"] = {
                        Vehicle = "npolexp", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Motorcycle"] = {
                        Vehicle = "npolmm", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Taurus"] = {
                        Vehicle = "clrgtaurus", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Tahoe"] = {
                        Vehicle = "clrgtahoe", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Bear Cat"] = {
                        Vehicle = "bcat", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Bicycle"] = {
                        Vehicle = "pbike", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Raptor"] = {
                        Vehicle = "tolprap", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Durango"] = {
                        Vehicle = "ypdurango18", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Caprice"] = {
                        Vehicle = "ypcpr", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 5, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police TRX"] = {
                        Vehicle = "yptrx", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 5, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Africa Twin"] = {
                        Vehicle = "ypafricat", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    }

                },
                SpawnCoords = {
                    VehicleSpawn = vector4(1865.2, 3692.93, 33.97, 117.59), -- Vehicle spawn and vehicle clear check coords
                    PreviewSpawn = vector4(1865.2, 3692.93, 33.97, 117.59), -- Preview vehicle spawn coords
                    CheckRadius = 5.0, -- The radius the script checks for vehicle
                    CameraInformation = {
                        CameraCoords = vector3(1856.81, 3694.06, 35.82), -- Vehicle preview camera coords
                        CameraRotation = vector3(-10.00, 0.00, 240.494419), -- Vehicle preview camera rotation coords
                        CameraFOV = 65.0 -- The vehicle preview camera fov value
                    }
                }
            },
            GeneralInformation = {
                Blip = { -- If UseTarget set to true it uses the target ped coords and if false it uses the marker coords
                    BlipId = 357, -- The blip id. More can be found at : https://docs.fivem.net/docs/game-references/blips/
                    BlipColour = 2, -- The blip colour. More can be found at : https://docs.fivem.net/docs/game-references/blips/
                    BlipScale = 0.4, -- The blip scale
                    Title = "BCSO - Garaj" -- The blip title string
                },
                TargetInformation = { -- If UseTarget set to true this is the required information
                    Ped = "a_m_y_smartcaspat_01", -- The ped model. More models can be found at : https://docs.fivem.net/docs/game-references/ped-models/
                    Coords = vector4(1840.18, 3689.07, 32.97, 295.21), -- The ped coords
                    Scenario = "WORLD_HUMAN_CLIPBOARD" -- Ped scenario. More can be found at : https://wiki.rage.mp/index.php?title=Scenarios
                },
                MarkerInformation = { -- If UseTarget set to false this is the required information
                    Coords = vector3(443.73809, -1016.172, 28.648283), -- The marker coords
                    MarkerType = 36, -- The marker type. More can be found at : https://docs.fivem.net/docs/game-references/markers/
                    MarkerColor = {
                        R = 255,
                        G = 0,
                        B = 0,
                        A = 100
                    } -- The marker color. You can pick other colors here : https://rgbacolorpicker.com/
                }
            }
        },
        ["EMS"] = { -- Used as the station / garage name
            UseTarget = true, -- Set to false to use the Marker for this station
            UseRent = false, -- Set to false to disable the rent feature for this station (Garage WONT WORK if UseRent and UsePurchasable are set to false)
            UseOwnable = true, -- Set to false to disable ownable vehicles 
            UsePurchasable = true, -- Set to false to disable purchasable vehicles (Garage WONT WORK if UseRent and UsePurchasable are set to false)
            UseExtras = false, -- Set to false to disable the extras feature
            UseLiveries = false, -- Set to false to disable the livery menu
            JobRequired = "ambulance", -- The job required for this station garage
            VehiclesInformation = {
                PurchaseVehicles = { -- Purchasable vehicles, make sure you have the vehicle information set in qb-core > shared > vehicles.lua
                    ["Ambulans"] = {
                        Vehicle = "emsnspeedo", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            TrunkItems = { -- Trunk items (This is optional)
                                [1] = {
                                    name = "bandage",
                                    amount = 10,
                                    info = {},
                                    type = "item",
                                    slot = 1
                                }
                            }
                        }
                    },
                    ["Coroner"] = {
                        Vehicle = "emsv", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Charger"] = {
                        Vehicle = "ypemscharg", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    }

                },
                SpawnCoords = {
                    VehicleSpawn = vector4(295.38, -606.4, 43.24, 69.16), -- Vehicle spawn and vehicle clear check coords
                    PreviewSpawn = vector4(295.38, -606.4, 43.24, 69.16), -- Preview vehicle spawn coords
                    CheckRadius = 5.0, -- The radius the script checks for vehicle
                    CameraInformation = {
                        CameraCoords = vector3(292.63, -598.95, 43.93), -- Vehicle preview camera coords
                        CameraRotation = vector3(-20.00, 0.00, 213.18), -- Vehicle preview camera rotation coords
                        CameraFOV = 70.0 -- The vehicle preview camera fov value
                    }
                }
            },
            GeneralInformation = {
                Blip = { -- If UseTarget set to true it uses the target ped coords and if false it uses the marker coords
                    BlipId = 357, -- The blip id. More can be found at : https://docs.fivem.net/docs/game-references/blips/
                    BlipColour = 2, -- The blip colour. More can be found at : https://docs.fivem.net/docs/game-references/blips/
                    BlipScale = 0.4, -- The blip scale
                    Title = "EMS - Garaj" -- The blip title string
                },
                TargetInformation = { -- If UseTarget set to true this is the required information
                    Ped = "a_m_y_smartcaspat_01", -- The ped model. More models can be found at : https://docs.fivem.net/docs/game-references/ped-models/
                    Coords = vector4(296.39, -600.19, 42.16, 159.8), -- The ped coords
                    Scenario = "WORLD_HUMAN_CLIPBOARD" -- Ped scenario. More can be found at : https://wiki.rage.mp/index.php?title=Scenarios
                }
            }
        },
        ["MPDheli"] = { -- Used as the station / garage name
            UseTarget = true, -- Set to false to use the Marker for this station
            UseRent = false, -- Set to false to disable the rent feature for this station (Garage WONT WORK if UseRent and UsePurchasable are set to false)
            UseOwnable = false, -- Set to false to disable ownable vehicles 
            UsePurchasable = true, -- Set to false to disable purchasable vehicles (Garage WONT WORK if UseRent and UsePurchasable are set to false)
            UseExtras = false, -- Set to false to disable the extras feature
            UseLiveries = true, -- Set to false to disable the livery menu
            JobRequired = "ranger", -- The job required for this station garage
            VehiclesInformation = {
                PurchaseVehicles = { -- Purchasable vehicles, make sure you have the vehicle information set in qb-core > shared > vehicles.lua
                    ["Swat"] = {
                        Vehicle = "c3swathawk", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    }
                },
                SpawnCoords = {
                    VehicleSpawn = vector4(2511.05, -342.11, 117.94, 309.22), -- Vehicle spawn and vehicle clear check coords
                    PreviewSpawn = vector4(2511.05, -342.11, 117.94, 309.22), -- Preview vehicle spawn coords
                    CheckRadius = 5.0, -- The radius the script checks for vehicle
                    CameraInformation = {
                        CameraCoords = vector3(2511.38, -335.28, 118.25), -- Vehicle preview camera coords
                        CameraRotation = vector3(-20.00, 0.00, 213.18), -- Vehicle preview camera rotation coords
                        CameraFOV = 70.0 -- The vehicle preview camera fov value
                    }
                }
            },
            GeneralInformation = {
                Blip = { -- If UseTarget set to true it uses the target ped coords and if false it uses the marker coords
                    BlipId = 357, -- The blip id. More can be found at : https://docs.fivem.net/docs/game-references/blips/
                    BlipColour = 2, -- The blip colour. More can be found at : https://docs.fivem.net/docs/game-references/blips/
                    BlipScale = 0.4, -- The blip scale
                    Title = "MPD - Garaj" -- The blip title string
                },
                TargetInformation = { -- If UseTarget set to true this is the required information
                    Ped = "a_m_y_smartcaspat_01", -- The ped model. More models can be found at : https://docs.fivem.net/docs/game-references/ped-models/
                    Coords = vector4(2505.18, -336.17, 117.02, 224.83), -- The ped coords
                    Scenario = "WORLD_HUMAN_CLIPBOARD" -- Ped scenario. More can be found at : https://wiki.rage.mp/index.php?title=Scenarios
                }
            }
        },
        -- ["RANGERAIR"] = { -- Used as the station / garage name
        --     UseTarget = true, -- Set to false to use the Marker for this station
        --     UseRent = false, -- Set to false to disable the rent feature for this station (Garage WONT WORK if UseRent and UsePurchasable are set to false)
        --     UseOwnable = false, -- Set to false to disable ownable vehicles 
        --     UsePurchasable = true, -- Set to false to disable purchasable vehicles (Garage WONT WORK if UseRent and UsePurchasable are set to false)
        --     UseExtras = false, -- Set to false to disable the extras feature
        --     UseLiveries = true, -- Set to false to disable the livery menu
        --     JobRequired = "ranger", -- The job required for this station garage
        --     VehiclesInformation = {
        --         PurchaseVehicles = { -- Purchasable vehicles, make sure you have the vehicle information set in qb-core > shared > vehicles.lua
        --             ["POLAS"] = {
        --                 Vehicle = "polas350", -- The vehicle to spawn
        --                 TotalPrice = 0, -- The total price it costs to buy this vehicle
        --                 Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
        --                 VehicleSettings = { -- Everthing inside those brackets is totally optional
        --                     TrunkItems = { -- Trunk items (This is optional)
        --                         [1] = {
        --                             name = "bandage",
        --                             amount = 10,
        --                             info = {},
        --                             type = "item",
        --                             slot = 1,
        --                         },
        --                     },
        --                 },
        --             }, 
        --             ["Maverick"] = {
        --                 Vehicle = "polmav", -- The vehicle to spawn
        --                 TotalPrice = 0, -- The total price it costs to buy this vehicle
        --                 Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
        --                 VehicleSettings = { -- Everthing inside those brackets is totally optional
        --                     -- Example of how it should look like if you dont want to use any of those features
        --                 },
        --             },

        --         },
        --         SpawnCoords = {
        --             VehicleSpawn = vector4(410.77, 850.14, 195.68, 169.0), -- Vehicle spawn and vehicle clear check coords
        --             PreviewSpawn = vector4(410.77, 850.14, 195.68, 169.0), -- Preview vehicle spawn coords
        --             CheckRadius = 5.0, -- The radius the script checks for vehicle
        --             CameraInformation = {
        --                 CameraCoords = vector3(394.21, 868.15, 199.65), -- Vehicle preview camera coords
        --                 CameraRotation = vector3(-20.00, 0.00, 213.18), -- Vehicle preview camera rotation coords
        --                 CameraFOV = 70.0, -- The vehicle preview camera fov value
        --             },
        --         },
        --     },
        --     GeneralInformation = {
        --         Blip = { -- If UseTarget set to true it uses the target ped coords and if false it uses the marker coords
        --             BlipId = 357, -- The blip id. More can be found at : https://docs.fivem.net/docs/game-references/blips/
        --             BlipColour = 2, -- The blip colour. More can be found at : https://docs.fivem.net/docs/game-references/blips/
        --             BlipScale = 0.4, -- The blip scale
        --             Title = "RANGER - AIR Garaj" -- The blip title string
        --         },
        --         TargetInformation = { -- If UseTarget set to true this is the required information
        --             Ped = "a_m_y_smartcaspat_01", -- The ped model. More models can be found at : https://docs.fivem.net/docs/game-references/ped-models/
        --             Coords = vector4(408.62, 812.53, 190.54, 248.12), -- The ped coords
        --             Scenario = "WORLD_HUMAN_CLIPBOARD", -- Ped scenario. More can be found at : https://wiki.rage.mp/index.php?title=Scenarios
        --         },
        --     },  
        -- },
        -- ["VPDAIR"] = { -- Used as the station / garage name
        --     UseTarget = true, -- Set to false to use the Marker for this station
        --     UseRent = false, -- Set to false to disable the rent feature for this station (Garage WONT WORK if UseRent and UsePurchasable are set to false)
        --     UseOwnable = false, -- Set to false to disable ownable vehicles 
        --     UsePurchasable = true, -- Set to false to disable purchasable vehicles (Garage WONT WORK if UseRent and UsePurchasable are set to false)
        --     UseExtras = false, -- Set to false to disable the extras feature
        --     UseLiveries = true, -- Set to false to disable the livery menu
        --     JobRequired = "vpd", -- The job required for this station garage
        --     VehiclesInformation = {
        --         PurchaseVehicles = { -- Purchasable vehicles, make sure you have the vehicle information set in qb-core > shared > vehicles.lua
        --         ["POLAS"] = {
        --             Vehicle = "polas350", -- The vehicle to spawn
        --             TotalPrice = 0, -- The total price it costs to buy this vehicle
        --             Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
        --             VehicleSettings = { -- Everthing inside those brackets is totally optional
        --                 -- Example of how it should look like if you dont want to use any of those features
        --             },
        --         },
        --             ["Maverick"] = {
        --                 Vehicle = "polmav", -- The vehicle to spawn
        --                 TotalPrice = 0, -- The total price it costs to buy this vehicle
        --                 Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
        --                 VehicleSettings = { -- Everthing inside those brackets is totally optional
        --                     -- Example of how it should look like if you dont want to use any of those features
        --                 },
        --             },

        --         },
        --         SpawnCoords = {
        --             VehicleSpawn = vector4(579.84, 12.53, 103.23, 175.78), -- Vehicle spawn and vehicle clear check coords
        --             PreviewSpawn = vector4(579.84, 12.53, 103.23, 175.78), -- Preview vehicle spawn coords
        --             CheckRadius = 5.0, -- The radius the script checks for vehicle
        --             CameraInformation = {
        --                 CameraCoords = vector3(573.77, 18.02, 105.15), -- Vehicle preview camera coords
        --                 CameraRotation = vector3(-20.00, 0.00, 213.18), -- Vehicle preview camera rotation coords
        --                 CameraFOV = 70.0, -- The vehicle preview camera fov value
        --             },
        --         },
        --     },
        --     GeneralInformation = {
        --         Blip = { -- If UseTarget set to true it uses the target ped coords and if false it uses the marker coords
        --             BlipId = 357, -- The blip id. More can be found at : https://docs.fivem.net/docs/game-references/blips/
        --             BlipColour = 2, -- The blip colour. More can be found at : https://docs.fivem.net/docs/game-references/blips/
        --             BlipScale = 0.4, -- The blip scale
        --             Title = "VPD - AIR Garaj" -- The blip title string
        --         },
        --         TargetInformation = { -- If UseTarget set to true this is the required information
        --             Ped = "a_m_y_smartcaspat_01", -- The ped model. More models can be found at : https://docs.fivem.net/docs/game-references/ped-models/
        --             Coords = vector4(568.37, 9.44, 102.23, 179.69), -- The ped coords
        --             Scenario = "WORLD_HUMAN_CLIPBOARD", -- Ped scenario. More can be found at : https://wiki.rage.mp/index.php?title=Scenarios
        --         },
        --     },  
        -- },
        -- ["MPD"] = { -- Used as the station / garage name
        --     UseTarget = true, -- Set to false to use the Marker for this station
        --     UseRent = false, -- Set to false to disable the rent feature for this station (Garage WONT WORK if UseRent and UsePurchasable are set to false)
        --     UseOwnable = false, -- Set to false to disable ownable vehicles 
        --     UsePurchasable = true, -- Set to false to disable purchasable vehicles (Garage WONT WORK if UseRent and UsePurchasable are set to false)
        --     UseExtras = false, -- Set to false to disable the extras feature
        --     UseLiveries = true, -- Set to false to disable the livery menu
        --     JobRequired = "ranger", -- The job required for this station garage
        --     VehiclesInformation = {
        --         PurchaseVehicles = { -- Purchasable vehicles, make sure you have the vehicle information set in qb-core > shared > vehicles.lua
        --         ["POLAS"] = {
        --             Vehicle = "c3swathawk", -- The vehicle to spawn
        --             TotalPrice = 0, -- The total price it costs to buy this vehicle
        --             Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
        --             VehicleSettings = { -- Everthing inside those brackets is totally optional
        --                 -- Example of how it should look like if you dont want to use any of those features
        --             },
        --         },
        --         SpawnCoords = {
        --             VehicleSpawn = vector4(2510.35, -343.02, 117.91, 316.07), -- Vehicle spawn and vehicle clear check coords
        --             PreviewSpawn = vector4(2510.35, -343.02, 117.91, 316.07), -- Preview vehicle spawn coords
        --             CheckRadius = 5.0, -- The radius the script checks for vehicle
        --             CameraInformation = {
        --                 CameraCoords = vector3(2510.18, -335.07, 118.22), -- Vehicle preview camera coords
        --                 CameraRotation = vector3(-20.00, 0.00, 213.18), -- Vehicle preview camera rotation coords
        --                 CameraFOV = 70.0, -- The vehicle preview camera fov value
        --             },
        --         },
        --     },
        --     GeneralInformation = {
        --         Blip = { -- If UseTarget set to true it uses the target ped coords and if false it uses the marker coords
        --             BlipId = 357, -- The blip id. More can be found at : https://docs.fivem.net/docs/game-references/blips/
        --             BlipColour = 2, -- The blip colour. More can be found at : https://docs.fivem.net/docs/game-references/blips/
        --             BlipScale = 0.4, -- The blip scale
        --             Title = "MD - AIR Garaj" -- The blip title string
        --         },
        --         TargetInformation = { -- If UseTarget set to true this is the required information
        --             Ped = "a_m_y_smartcaspat_01", -- The ped model. More models can be found at : https://docs.fivem.net/docs/game-references/ped-models/
        --             Coords = vector4(2504.94, -336.17, 118.02, 221.67), -- The ped coords
        --             Scenario = "WORLD_HUMAN_CLIPBOARD", -- Ped scenario. More can be found at : https://wiki.rage.mp/index.php?title=Scenarios
        --         },
        --     },  
        -- },
        -- ["SASPAIR"] = { -- Used as the station / garage name
        --     UseTarget = true, -- Set to false to use the Marker for this station
        --     UseRent = false, -- Set to false to disable the rent feature for this station (Garage WONT WORK if UseRent and UsePurchasable are set to false)
        --     UseOwnable = false, -- Set to false to disable ownable vehicles 
        --     UsePurchasable = true, -- Set to false to disable purchasable vehicles (Garage WONT WORK if UseRent and UsePurchasable are set to false)
        --     UseExtras = false, -- Set to false to disable the extras feature
        --     UseLiveries = true, -- Set to false to disable the livery menu
        --     JobRequired = "state", -- The job required for this station garage
        --     VehiclesInformation = {
        --         PurchaseVehicles = { -- Purchasable vehicles, make sure you have the vehicle information set in qb-core > shared > vehicles.lua
        --         ["POLAS"] = {
        --             Vehicle = "polas350", -- The vehicle to spawn
        --             TotalPrice = 0, -- The total price it costs to buy this vehicle
        --             Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
        --             VehicleSettings = { -- Everthing inside those brackets is totally optional
        --                 -- Example of how it should look like if you dont want to use any of those features
        --             },
        --         },
        --             ["Maverick"] = {
        --                 Vehicle = "polmav", -- The vehicle to spawn
        --                 TotalPrice = 0, -- The total price it costs to buy this vehicle
        --                 Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
        --                 VehicleSettings = { -- Everthing inside those brackets is totally optional
        --                     -- Example of how it should look like if you dont want to use any of those features
        --                 },
        --             },

        --         },
        --         SpawnCoords = {
        --             VehicleSpawn = vector4(834.55, -1409.4, 26.15, 348.42), -- Vehicle spawn and vehicle clear check coords
        --             PreviewSpawn = vector4(834.55, -1409.4, 26.15, 348.42), -- Preview vehicle spawn coords
        --             CheckRadius = 5.0, -- The radius the script checks for vehicle
        --             CameraInformation = {
        --                 CameraCoords = vector3(825.14, -1402.02, 31.19), -- Vehicle preview camera coords
        --                 CameraRotation = vector3(-20.00, 0.00, 213.18), -- Vehicle preview camera rotation coords
        --                 CameraFOV = 70.0, -- The vehicle preview camera fov value
        --             },
        --         },
        --     },
        --     GeneralInformation = {
        --         Blip = { -- If UseTarget set to true it uses the target ped coords and if false it uses the marker coords
        --             BlipId = 357, -- The blip id. More can be found at : https://docs.fivem.net/docs/game-references/blips/
        --             BlipColour = 2, -- The blip colour. More can be found at : https://docs.fivem.net/docs/game-references/blips/
        --             BlipScale = 0.4, -- The blip scale
        --             Title = "SASP - AIR Garaj" -- The blip title string
        --         },
        --         TargetInformation = { -- If UseTarget set to true this is the required information
        --             Ped = "a_m_y_smartcaspat_01", -- The ped model. More models can be found at : https://docs.fivem.net/docs/game-references/ped-models/
        --             Coords = vector4(840.28, -1400.37, 25.15, 199.79), -- The ped coords
        --             Scenario = "WORLD_HUMAN_CLIPBOARD", -- Ped scenario. More can be found at : https://wiki.rage.mp/index.php?title=Scenarios
        --         },
        --     },  
        -- },
        -- ["SDAIR"] = { -- Used as the station / garage name
        --     UseTarget = true, -- Set to false to use the Marker for this station
        --     UseRent = false, -- Set to false to disable the rent feature for this station (Garage WONT WORK if UseRent and UsePurchasable are set to false)
        --     UseOwnable = false, -- Set to false to disable ownable vehicles 
        --     UsePurchasable = true, -- Set to false to disable purchasable vehicles (Garage WONT WORK if UseRent and UsePurchasable are set to false)
        --     UseExtras = false, -- Set to false to disable the extras feature
        --     UseLiveries = true, -- Set to false to disable the livery menu
        --     JobRequired = "sheriff", -- The job required for this station garage
        --     VehiclesInformation = {
        --         PurchaseVehicles = { -- Purchasable vehicles, make sure you have the vehicle information set in qb-core > shared > vehicles.lua
        --         ["POLAS"] = {
        --             Vehicle = "polas350", -- The vehicle to spawn
        --             TotalPrice = 0, -- The total price it costs to buy this vehicle
        --             Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
        --             VehicleSettings = { -- Everthing inside those brackets is totally optional
        --                 -- Example of how it should look like if you dont want to use any of those features
        --             },
        --         },
        --             ["Maverick"] = {
        --                 Vehicle = "polmav", -- The vehicle to spawn
        --                 TotalPrice = 0, -- The total price it costs to buy this vehicle
        --                 Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
        --                 VehicleSettings = { -- Everthing inside those brackets is totally optional
        --                     -- Example of how it should look like if you dont want to use any of those features
        --                 },
        --             },

        --         },
        --         SpawnCoords = {
        --             VehicleSpawn = vector4(1853.84, 3705.27, 33.97, 28.91), -- Vehicle spawn and vehicle clear check coords
        --             PreviewSpawn = vector4(1853.84, 3705.27, 33.97, 28.91), -- Preview vehicle spawn coords
        --             CheckRadius = 5.0, -- The radius the script checks for vehicle
        --             CameraInformation = {
        --                 CameraCoords = vector3(1847.6, 3713.71, 37.74), -- Vehicle preview camera coords
        --                 CameraRotation = vector3(-20.00, 0.00, 213.18), -- Vehicle preview camera rotation coords
        --                 CameraFOV = 70.0, -- The vehicle preview camera fov value
        --             },
        --         },
        --     },
        --     GeneralInformation = {
        --         Blip = { -- If UseTarget set to true it uses the target ped coords and if false it uses the marker coords
        --             BlipId = 357, -- The blip id. More can be found at : https://docs.fivem.net/docs/game-references/blips/
        --             BlipColour = 2, -- The blip colour. More can be found at : https://docs.fivem.net/docs/game-references/blips/
        --             BlipScale = 0.4, -- The blip scale
        --             Title = "SD - AIR Garaj" -- The blip title string
        --         },
        --         TargetInformation = { -- If UseTarget set to true this is the required information
        --             Ped = "a_m_y_smartcaspat_01", -- The ped model. More models can be found at : https://docs.fivem.net/docs/game-references/ped-models/
        --             Coords = vector4(1863.05, 3702.74, 32.97, 119.7), -- The ped coords
        --             Scenario = "WORLD_HUMAN_CLIPBOARD", -- Ped scenario. More can be found at : https://wiki.rage.mp/index.php?title=Scenarios
        --         },
        --     },  
        -- },
        -- ["DSDAIR"] = { -- Used as the station / garage name
        --     UseTarget = true, -- Set to false to use the Marker for this station
        --     UseRent = false, -- Set to false to disable the rent feature for this station (Garage WONT WORK if UseRent and UsePurchasable are set to false)
        --     UseOwnable = false, -- Set to false to disable ownable vehicles 
        --     UsePurchasable = true, -- Set to false to disable purchasable vehicles (Garage WONT WORK if UseRent and UsePurchasable are set to false)
        --     UseExtras = false, -- Set to false to disable the extras feature
        --     UseLiveries = true, -- Set to false to disable the livery menu
        --     JobRequired = "davison", -- The job required for this station garage
        --     VehiclesInformation = {
        --         PurchaseVehicles = { -- Purchasable vehicles, make sure you have the vehicle information set in qb-core > shared > vehicles.lua
        --         ["POLAS"] = {
        --             Vehicle = "polas350", -- The vehicle to spawn
        --             TotalPrice = 0, -- The total price it costs to buy this vehicle
        --             Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
        --             VehicleSettings = { -- Everthing inside those brackets is totally optional
        --                 -- Example of how it should look like if you dont want to use any of those features
        --             },
        --         },
        --             ["Maverick"] = {
        --                 Vehicle = "polmav", -- The vehicle to spawn
        --                 TotalPrice = 0, -- The total price it costs to buy this vehicle
        --                 Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
        --                 VehicleSettings = { -- Everthing inside those brackets is totally optional
        --                     -- Example of how it should look like if you dont want to use any of those features
        --                 },
        --             },

        --         },
        --         SpawnCoords = {
        --             VehicleSpawn = vector4(403.87, -1638.87, 29.29, 252.37), -- Vehicle spawn and vehicle clear check coords
        --             PreviewSpawn = vector4(403.87, -1638.87, 29.29, 252.37), -- Preview vehicle spawn coords
        --             CheckRadius = 5.0, -- The radius the script checks for vehicle
        --             CameraInformation = {
        --                 CameraCoords = vector3(399.62, -1633.86, 31.81), -- Vehicle preview camera coords
        --                 CameraRotation = vector3(-20.00, 0.00, 213.18), -- Vehicle preview camera rotation coords
        --                 CameraFOV = 70.0, -- The vehicle preview camera fov value
        --             },
        --         },
        --     },
        --     GeneralInformation = {
        --         Blip = { -- If UseTarget set to true it uses the target ped coords and if false it uses the marker coords
        --             BlipId = 357, -- The blip id. More can be found at : https://docs.fivem.net/docs/game-references/blips/
        --             BlipColour = 2, -- The blip colour. More can be found at : https://docs.fivem.net/docs/game-references/blips/
        --             BlipScale = 0.4, -- The blip scale
        --             Title = "SD - AIR Garaj" -- The blip title string
        --         },
        --         TargetInformation = { -- If UseTarget set to true this is the required information
        --             Ped = "a_m_y_smartcaspat_01", -- The ped model. More models can be found at : https://docs.fivem.net/docs/game-references/ped-models/
        --             Coords = vector4(394.52, -1634.1, 28.29, 229.86), -- The ped coords
        --             Scenario = "WORLD_HUMAN_CLIPBOARD", -- Ped scenario. More can be found at : https://wiki.rage.mp/index.php?title=Scenarios
        --         },
        --     },  
        -- },
        ["Paleto"] = { -- Full template, inculdes all script features (The string is the garage name used as the station / garage name)
            UseTarget = true, -- Set to false to use the Marker for this station
            UseRent = false, -- Set to false to disable the rent feature for this station (Garage WONT WORK if UseRent and UsePurchasable are set to false)
            UseOwnable = true, -- Set to false to disable ownable vehicles 
            UseExtras = false, -- Set to false to disable the extras feature
            UsePurchasable = true, -- Set to false to disable purchasable vehicles (Garage WONT WORK if UseRent and UsePurchasable are set to false)
            UseLiveries = true, -- Set to false to disable the livery feature
            JobRequired = "davison", -- The job required for this station garage; For 1 job use, for multiple jobs JobRequired = {"job1", "job2"}, for all job use JobRequired = "all"
            VehiclesInformation = {
                RentVehicles = { -- Rent vehicles information, if UseRent set to true as : UseRent = true
                    ["Bati"] = {
                        Vehicle = "bati", -- The vehicle to spawn
                        PricePerMinute = 50 -- The price to charge for that vehicle every minute
                    }
                },
                PurchaseVehicles = { -- Purchasable vehicles, make sure you have the vehicle information set in qb-core > shared > vehicles.lua
                    ["Police Mustang"] = {
                        Vehicle = "npolstang", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 5, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Victoria"] = {
                        Vehicle = "npolvic", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Charger"] = {
                        Vehicle = "npolchar", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Challenger"] = {
                        Vehicle = "npolchal", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Explorer"] = {
                        Vehicle = "npolexp", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Motorcycle"] = {
                        Vehicle = "npolmm", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Taurus"] = {
                        Vehicle = "clrgtaurus", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Tahoe"] = {
                        Vehicle = "clrgtahoe", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Bear Cat"] = {
                        Vehicle = "bcat", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Bicycle"] = {
                        Vehicle = "pbike", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Raptor"] = {
                        Vehicle = "tolprap", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Durango"] = {
                        Vehicle = "ypdurango18", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Caprice"] = {
                        Vehicle = "ypcpr", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 13, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police TRX"] = {
                        Vehicle = "yptrx", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 5, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    },
                    ["Police Africa Twin"] = {
                        Vehicle = "ypafricat", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    }
                },
                SpawnCoords = {
                    VehicleSpawn = vector4(-482.44, 6024.98, 31.15, 225.4), -- Vehicle spawn and vehicle clear check coords
                    PreviewSpawn = vector4(-482.44, 6024.98, 31.15, 225.4), -- Preview vehicle spawn coords
                    CheckRadius = 5.0, -- The radius the script checks for vehicle
                    CameraInformation = {
                        CameraCoords = vector3(-482.46, 6032.29, 35.87), -- Vehicle preview camera coords
                        CameraRotation = vector3(-10.00, 0.00, 180.494419), -- Vehicle preview camera rotation coords
                        CameraFOV = 80.0 -- The vehicle preview camera fov value
                    }
                }
            },
            GeneralInformation = {
                Blip = { -- If UseTarget set to true it uses the target ped coords and if false it uses the marker coords
                    BlipId = 357, -- The blip id. More can be found at : https://docs.fivem.net/docs/game-references/blips/
                    BlipColour = 2, -- The blip colour. More can be found at : https://docs.fivem.net/docs/game-references/blips/
                    BlipScale = 0.4, -- The blip scale
                    Title = "Paleto - Garaj" -- The blip title string
                },
                TargetInformation = { -- If UseTarget set to true this is the required information
                    Ped = "a_m_y_smartcaspat_01", -- The ped model. More models can be found at : https://docs.fivem.net/docs/game-references/ped-models/
                    Coords = vector4(-464.86, 6010.42, 30.49, 47.2), -- The ped coords
                    Scenario = "WORLD_HUMAN_CLIPBOARD" -- Ped scenario. More can be found at : https://wiki.rage.mp/index.php?title=Scenarios
                },
                MarkerInformation = { -- If UseTarget set to false this is the required information
                    Coords = vector3(-464.86, 6010.42, 31.49), -- The marker coords
                    MarkerType = 36, -- The marker type. More can be found at : https://docs.fivem.net/docs/game-references/markers/
                    MarkerColor = {
                        R = 255,
                        G = 0,
                        B = 0,
                        A = 100
                    } -- The marker color. You can pick other colors here : https://rgbacolorpicker.com/
                }
            }
        },
        -- ["PALETOAIR"] = { -- Used as the station / garage name
        --         UseTarget = true, -- Set to false to use the Marker for this station
        --         UseRent = false, -- Set to false to disable the rent feature for this station (Garage WONT WORK if UseRent and UsePurchasable are set to false)
        --         UseOwnable = false, -- Set to false to disable ownable vehicles 
        --         UsePurchasable = true, -- Set to false to disable purchasable vehicles (Garage WONT WORK if UseRent and UsePurchasable are set to false)
        --         UseExtras = false, -- Set to false to disable the extras feature
        --         UseLiveries = true, -- Set to false to disable the livery menu
        --         JobRequired = "davison", -- The job required for this station garage
        --         VehiclesInformation = {
        --             PurchaseVehicles = { -- Purchasable vehicles, make sure you have the vehicle information set in qb-core > shared > vehicles.lua
        --             ["POLAS"] = {
        --                 Vehicle = "polas350", -- The vehicle to spawn
        --                 TotalPrice = 0, -- The total price it costs to buy this vehicle
        --                 Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
        --                 VehicleSettings = { -- Everthing inside those brackets is totally optional
        --                     -- Example of how it should look like if you dont want to use any of those features
        --                 },
        --             },
        --                 ["Maverick"] = {
        --                     Vehicle = "polmav", -- The vehicle to spawn
        --                     TotalPrice = 0, -- The total price it costs to buy this vehicle
        --                     Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
        --                     VehicleSettings = { -- Everthing inside those brackets is totally optional
        --                         -- Example of how it should look like if you dont want to use any of those features
        --                     },
        --                 },

        --             },
        --             SpawnCoords = {
        --                 VehicleSpawn = vector4(-475.28, 5988.66, 31.34, 306.03), -- Vehicle spawn and vehicle clear check coords
        --                 PreviewSpawn = vector4(-475.28, 5988.66, 31.34, 306.03), -- Preview vehicle spawn coords
        --                 CheckRadius = 5.0, -- The radius the script checks for vehicle
        --                 CameraInformation = {
        --                     CameraCoords = vector3(-483.39, 5998.57, 34.37), -- Vehicle preview camera coords
        --                     CameraRotation = vector3(-20.00, 0.00, 213.18), -- Vehicle preview camera rotation coords
        --                     CameraFOV = 70.0, -- The vehicle preview camera fov value
        --                 },
        --             },
        --         },
        --         GeneralInformation = {
        --             Blip = { -- If UseTarget set to true it uses the target ped coords and if false it uses the marker coords
        --                 BlipId = 357, -- The blip id. More can be found at : https://docs.fivem.net/docs/game-references/blips/
        --                 BlipColour = 2, -- The blip colour. More can be found at : https://docs.fivem.net/docs/game-references/blips/
        --                 BlipScale = 0.4, -- The blip scale
        --                 Title = "SD - AIR Garaj" -- The blip title string
        --             },
        --             TargetInformation = { -- If UseTarget set to true this is the required information
        --                 Ped = "a_m_y_smartcaspat_01", -- The ped model. More models can be found at : https://docs.fivem.net/docs/game-references/ped-models/
        --                 Coords = vector4(-480.32, 5972.55, 30.3, 316.12), -- The ped coords
        --                 Scenario = "WORLD_HUMAN_CLIPBOARD", -- Ped scenario. More can be found at : https://wiki.rage.mp/index.php?title=Scenarios
        --             },
        --         },  
        --     },
        ["WZAIR"] = { -- Used as the station / garage name
            UseTarget = true, -- Set to false to use the Marker for this station
            UseRent = false, -- Set to false to disable the rent feature for this station (Garage WONT WORK if UseRent and UsePurchasable are set to false)
            UseOwnable = false, -- Set to false to disable ownable vehicles 
            UsePurchasable = true, -- Set to false to disable purchasable vehicles (Garage WONT WORK if UseRent and UsePurchasable are set to false)
            UseExtras = false, -- Set to false to disable the extras feature
            UseLiveries = true, -- Set to false to disable the livery menu
            JobRequired = "reporter", -- The job required for this station garage
            VehiclesInformation = {
                PurchaseVehicles = { -- Purchasable vehicles, make sure you have the vehicle information set in qb-core > shared > vehicles.lua
                    ["Maverick"] = {
                        Vehicle = "newsmav", -- The vehicle to spawn
                        TotalPrice = 0, -- The total price it costs to buy this vehicle
                        Rank = 0, -- The rank required to purchase this vehicle. Set to 0 to enable all ranks
                        VehicleSettings = { -- Everthing inside those brackets is totally optional
                            -- Example of how it should look like if you dont want to use any of those features
                        }
                    }

                },
                SpawnCoords = {
                    VehicleSpawn = vector4(-1050.46, -234.83, 53.51, 307.48), -- Vehicle spawn and vehicle clear check coords
                    PreviewSpawn = vector4(-1050.46, -234.83, 53.51, 307.48), -- Preview vehicle spawn coords
                    CheckRadius = 5.0, -- The radius the script checks for vehicle
                    CameraInformation = {
                        CameraCoords = vector3(-1057.44, -227.36, 55.93), -- Vehicle preview camera coords
                        CameraRotation = vector3(-20.00, 0.00, 213.18), -- Vehicle preview camera rotation coords
                        CameraFOV = 70.0 -- The vehicle preview camera fov value
                    }
                }
            },
            GeneralInformation = {
                Blip = { -- If UseTarget set to true it uses the target ped coords and if false it uses the marker coords
                    BlipId = 357, -- The blip id. More can be found at : https://docs.fivem.net/docs/game-references/blips/
                    BlipColour = 2, -- The blip colour. More can be found at : https://docs.fivem.net/docs/game-references/blips/
                    BlipScale = 0.4, -- The blip scale
                    Title = "WZ - AIR Garaj" -- The blip title string
                },
                TargetInformation = { -- If UseTarget set to true this is the required information
                    Ped = "a_m_y_smartcaspat_01", -- The ped model. More models can be found at : https://docs.fivem.net/docs/game-references/ped-models/
                    Coords = vector4(-1057.67, -236.67, 52.62, 298.5), -- The ped coords
                    Scenario = "WORLD_HUMAN_CLIPBOARD" -- Ped scenario. More can be found at : https://wiki.rage.mp/index.php?title=Scenarios
                }
            }
        }
    }
}
