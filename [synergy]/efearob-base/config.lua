Rob = {}
Dance = {}
Safe = {}

Rob.Locale = 'en'

Rob.EnableCash       = true
Rob.EnableBlackMoney = false
Rob.EnableInventory  = true
Rob.EnableWeapons    = true


Dance.MLO = "gabz"

Rental = {
    FuelScript = "cdn-fuel", -- Change to the Fuel script you are using (For Ex. if you are using lj-fuel)
    Rental = {
        RentalRateInterval = 7200, -- Everytime the player gets charged for renting the vehicle. (In Seconds) (Default 15 Mins)
        RentalVehicleRtrnDmgFee = 150, -- The fee a player has to pay if ChrgPlrFeeIfRtrnDmged is set to true. 
        ChrgPlrFeeIfRtrnDmged = true, -- If a player returns a damaged vehicle they will be charged the RentalVehicleRtrnDmgFee. (Set to false if you don't want them charged for returning a damaged vehicle)
        RentalVehicleDamagedFee = 150, -- If the rental vehicle is destroyed, the player will pay this fee
        CheckForEngineDamage = true, -- Checks if the engine health is below 0 (If the car is blown up)
        CheckForUnderWaterVeh = true, -- Check if the vehicle is underwater (If you are having issues with this, please change it to false :)
    },
    RentableVehicles = {
        Catagorys = {
            [1] = {  -- Land Vehicle Catagory
                [1] = { -- Example One
                    SpawnName = "bimx", -- Vehicles Spawn Name
                    Label = "BMX", -- Vehicles Label
                    RentFee = 100, -- The fee that will be charged at every rental rate interval
                },
                [2] = { -- Example Two
                    SpawnName = "faggio2", -- Vehicles Spawn Name
                    Label = "Faggio", -- Vehicles Label
                    RentFee = 250, -- The fee that will be charged at every rental rate interval
                },
                [3] = { -- Example Two
                    SpawnName = "blista", -- Vehicles Spawn Name
                    Label = "Blista", -- Vehicles Label
                    RentFee = 400, -- The fee that will be charged at every rental rate interval
                },
            },
            [2] = { -- Boat Catagory
                [1] = { -- Example One
                    SpawnName = "toro", -- Vehicles Spawn Name
                    Label = "Toro", -- Vehicles Label
                    RentFee = 500, -- The fee that will be charged at every rental rate interval
                },
                [2] = { -- Example Two
                    SpawnName = "seashark3", -- Vehicles Spawn Name
                    Label = "Sea Shark", -- Vehicles Label
                    RentFee = 250, -- The fee that will be charged at every rental rate interval
                },
            },
            [3] = { -- Boat Catagory
                [1] = { -- Example One
                    SpawnName = "blazer", -- Vehicles Spawn Name
                    Label = "Blazer", -- Vehicles Label
                    RentFee = 250, -- The fee that will be charged at every rental rate interval
                },
            },
            [4] = { -- Boat Catagory
                [1] = { -- Example One
                    SpawnName = "toro", -- Vehicles Spawn Name
                    Label = "Toro", -- Vehicles Label
                    RentFee = 500, -- The fee that will be charged at every rental rate interval
                },
                [2] = { -- Example Two
                    SpawnName = "seashark3", -- Vehicles Spawn Name
                    Label = "Sea Shark", -- Vehicles Label
                    RentFee = 250, -- The fee that will be charged at every rental rate interval
                },
            },
        }
    },
    Locations = {
        [1] = { -- Example Land Rental Location
            GetVehicle = vector4(-3007.74, 80.44, 11.61, 327.75), -- This is where the Ped spawns (Vector 4 Required)
            VehicleSpawn = vector4(-3000.9, 79.41, 11.18, 329.18), -- Vehicle Spawn Point (Make sure its not too far away from the GetVehicle Point) (Vector 4 Required)
            TargetPed = "a_m_y_business_02", -- The ped model
            TargetPedScenario = "WORLD_HUMAN_CLIPBOARD", -- The scenario the ped is doing
            BlipEnabled = false, -- Blips Enabled
            BlipIcon = 227, -- Blip Icon
            BlipColor = 3, -- Blip Color
            BlipSize = 0.6, -- Blip Size
            BlipLabel = "Vehicle Rental", -- Label for the blip
            VehicleCatagory = 1, -- The rentable vehicle catagory that this loccation will use
        },
        [2] = { -- Example Boat Rental Location
            GetVehicle = vector4(-906.65, -1466.04, 1.63, 218.54), -- This is where the Ped spawns (Vector 4 Required)
            VehicleSpawn = vector4(-904.44, -1450.59, 0.63, 281.81), -- Vehicle Spawn Point (Make sure its not too far away from the GetVehicle Point) (Vector 4 Required)
            TargetPed = "a_m_m_hillbilly_01", -- The ped model
            TargetPedScenario = "WORLD_HUMAN_CLIPBOARD", -- The scenario the ped is doing
            BlipEnabled = true, -- Blips Enabled
            BlipIcon = 410, -- Blip Icon
            BlipColor = 3, -- Blip Color
            BlipSize = 0.6, -- Blip Size
            BlipLabel = "Tekne Kiralama", -- Label for the blip
            VehicleCatagory = 2, -- The rentable vehicle catagory that this loccation will use
        },
        [3] = { -- Example Boat Rental Location
            GetVehicle = vector4(3931.4, -4679.63, 3.88, 194.37), -- This is where the Ped spawns (Vector 4 Required)
            VehicleSpawn = vector4(3936.53, -4681.9, 4.13, 277.46), -- Vehicle Spawn Point (Make sure its not too far away from the GetVehicle Point) (Vector 4 Required)
            TargetPed = "a_m_m_hillbilly_01", -- The ped model
            TargetPedScenario = "WORLD_HUMAN_CLIPBOARD", -- The scenario the ped is doing
            BlipEnabled = false, -- Blips Enabled
            BlipIcon = 410, -- Blip Icon
            BlipColor = 3, -- Blip Color
            BlipSize = 0.6, -- Blip Size
            BlipLabel = "ATV Kiralama", -- Label for the blip
            VehicleCatagory = 3, -- The rentable vehicle catagory that this loccation will use
        },
        [4] = { -- Example Boat Rental Location
            GetVehicle = vector4(-3017.98, -6.38, 2.02, 62.74), -- This is where the Ped spawns (Vector 4 Required)
            VehicleSpawn = vector4(-3029.59, -22.99, 0.88, 149.9), -- Vehicle Spawn Point (Make sure its not too far away from the GetVehicle Point) (Vector 4 Required)
            TargetPed = "a_m_m_hillbilly_01", -- The ped model
            TargetPedScenario = "WORLD_HUMAN_CLIPBOARD", -- The scenario the ped is doing
            BlipEnabled = true, -- Blips Enabled
            BlipIcon = 410, -- Blip Icon
            BlipColor = 3, -- Blip Color
            BlipSize = 0.6, -- Blip Size
            BlipLabel = "Tekne Kiralama", -- Label for the blip
            VehicleCatagory = 2, -- The rentable vehicle catagory that this loccation will use
        },
    },
    Localization = { -- Localization
        TargetText = "Kiralık Araçlar",
        TargetTextAir = "Kiralık Araçlar",
        TargetTextWater = "Kiralık Araçlar",
        TargetTextTwo = "Kiralık Aracı İade Et",
        ErrorInVehicle = "Aracın içindeyken kiralık araçlara bakamazsın..",
        ErrorRentalVehicleNotNearby = "Kiralık araç yakınlarda değil..",
        ErrorAlreadyRenting = "Daha önce kiraladığın aracı iade etmelisin..",
        ErrorNoRentalVehicle = "Kiralık aracın bulunmuyor..",
        ErrorNotEnoughMoney = "Yeterli paran yok..",
        ErrorVehicleBroken = "Kiralık aracın ağır hasar aldığı için ceza kesildi $",
        ErrorRentalReturnedDamaged = "Aracı hasarlı iade ettiğiniz için ceza kesildi $",
        RentalSelectionHeader = "Kiralanabilir Araçlar",
        RentalSelectionCloseButton = "Kapat",
        RentalSelectionRentalFeeText = " | Kiralama Ücreti $",
        RentalVehiclePlate = "KIRALIK",
        RentalReturnedSuccess = "Aracı başarıyla geri teslim ettiniz!",
        RentalSuccessNotificationOne = "Başarıyla kiraladın ",
        RentalSuccessNotificationThr = "Kiralama ücreti tekrar tahsil edilecektir ",
        RentalSuccessNotificationFor = " Dakika!",
        RentalSuccessNotificationFiv = "Ücretlendirildiniz $",
        RentalSuccessNotificationSix = " Kiralama ücretiniz için!",
        RentalPapersRemovedError = "Üzerinde kiralama sertifikan yok..",
    }
}


Safe['guvenlibolge'] = true

Safe['bolge'] = {
	{['x'] = -3039.82, ['y'] = 31.94, ['z'] = 10.12, ['alan'] = 200.0}, -- Motel vector3(-3039.82, 31.94, 10.12)
}