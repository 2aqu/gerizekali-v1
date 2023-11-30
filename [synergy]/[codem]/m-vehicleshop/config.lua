

Config = {
    Framework = "qbcore", -- esx or qbcore
    FrameworkCustomName = false, -- if you have custom framework name, set this to your framework name or leave it false
    saveMods = false, -- true if you want everything to be saved in the mods or vehicle table
    NewESX = false,
    Vehiclekey = true,
    VehicleSystem = "qb-vehiclekeys", -- cd_garage / qs-vehiclekeys / wasabi-carlock / qb-vehiclekeys
    VehicleRemovekey = true, -- Do NOT Touch if you have any car lock system
    VehicleRemoveKeySystem = "qb-vehiclekeys", -- cd_garage / qs-vehiclekeys / qb-vehiclekeys
    EnableFuel = true,
    FuelSystem = 'cdn-fuel', -- LegacyFuel / ox-fuel / nd-fuel / frfuel / cdn-fuel / hyon_gas_station
    InteractionHandler = 'drawtext', -- 'drawtext (included drawmarker)' , 'qb-target' , 'ox_target' (u can add your own handler in client/cl_interactions.lua)
    Locations = {
        ["pdm_main_1"] = {
            coords = vector3(113.64, -141.59, 54.86), -- marker and blip coords
            --accessJob = "cardealer",
            managementJob = "pdm2",
            preview = { -- vehicle preview
                campos = vector3(141.49, -156.43, 54.86),
                camrot = vector3(0.0, 0.0, -16.0),
                vehpos = vector4(141.98, -163.86, 53.79, 342.04)
            },
            name = "Rich Autos",
            blip = {
                show = true, -- if you want to disable the blip, set this to false
                sprite = 326,
                color = 2,
                scale = 0.8
            },
            marker = {
                type = 23, -- if you want to disable the marker, set this to false
                scale = vector3(1, 1, 1),
                color = vector3(0, 255, 255),
                label = "Galeriyi açmak için ~g~[E]~s~ tuşuna bas",
                labelOffset = vector3(0, 0, 1.0)
            },
            bossmarker = {
                coords = vector3(132.13, -145.14, 60.49),
                type = 21, -- if you want to disable the marker, set this to false
                scale = vector3(0.5, 0.5, 0.2),
                color = vector3(0, 255, 255),
                label = "~g~[E]~s~ ile patron menüsünü aç",
                labelOffset = vector3(0, 0, -0.7)
            },
            testdrive = {
                spawn = vector4(-9.87, -1096.9, 25.84, 98.82),
                time = 60 -- in seconds
            },
            vehiclespawn = vector3(148.41, -129.79, 54.83),
            defaultPreset = "pdm2"
        },
    },
    UI = {
        ppType = "discord", -- steam or discord
        customPlatePrice = 15000,
        previewColors = { -- https://wiki.rage.mp/index.php?title=Vehicle_Colors | Index for game vehicle, value is for UI (they must be the same)
            ["0"] = {13, 17, 22},
            ["21"] = {30, 35, 47}, 
            ["28"] = {218, 25, 24},
            ["80"] = {66, 113, 225},
            ["112"] = {237, 237, 237},
            ["137"] = {223, 88, 145},
        },
        EnableCustomPlate = false,
        classDescriptions = {
            [0] = 'Compacts in Grand Theft Auto V and Grand Theft Auto Online. These are defined by the Vehicle Class System introduced in GTA V. Those cars are such as Brioso 300 Widebody, Club, Blista Kanjo, Brioso 300, Blista, Brioso R/A, Dilettante, Asbo etc.',  -- Compacts 
            [1] = 'Sedans in Grand Theft Auto V and Grand Theft Auto Online. These are defined by the Vehicle Class System introduced in GTA V. For Sedans in the Grand Theft Auto series, see Sedans. Those cars are such as Emperor, Rhinehart, Tailgater S, Cinquemila, Asea, Super Diamond etc. ',  -- Sedans
            [2] = 'SUVs in Grand Theft Auto V and Grand Theft Auto Online. These are defined by the Vehicle Class System introduced in GTA V. For a list of all SUVs and SUTs in the Grand Theft Auto series, see SUVs. Those cars are such as XLS, Granger 3600LX, Astron, Patriot, I-Wagen, Rebla GTS, Cavalcade, Dubsta etc. ',  -- SUVs 
            [3] = 'Coupes in Grand Theft Auto V and Grand Theft Auto Online. These are defined by the Vehicle Class System introduced in GTA V. For other Coupes in the Grand Theft Auto series, see Coupes. Those cars are such as Kanjo SJ, Sentinel, Previon, Postlude, Sentinel XS, F620, Oracle, Felon GT etc. ',  -- Coupes 
            [4] = 'Muscle Cars in Grand Theft Auto V and Grand Theft Auto Online. These are defined by the Vehicle Class System introduced in GTA V. For other muscle cars in the Grand Theft Auto series, see Muscle Cars. Those cars are such as Vigero ZX, Ruiner ZZ-8, Greenwood, Phoenix, Dominator GTT, Duke O Death, Chino, Hustler etc. ',  -- Muscle 
            [5] = 'Sports Classics Vehicles in Grand Theft Auto V and Grand Theft Auto Online. These are defined by the Vehicle Class System introduced in GTA V. For other classic cars in the Grand Theft Auto series, see Classic Cars. Those cars are such as Mamba, Toreador, Stirling GT, Turismo Classic, Ardent, Zion Classic, 190z, JB 700 etc.',  -- Sports Classics 
            [6] = 'Sports Cars in Grand Theft Auto V and Grand Theft Auto Online. These are defined by the Vehicle Class System introduced in GTA V. For other sports cars in the Grand Theft Auto series, see Sports Cars. Those cars are such as Hotring Sabre, Locust, 10F Widebody, Paragon R, Corsita, ZR-350, Imorgon, Elegy Retro Custom etc.',  -- Sports 
            [7] = 'Supercars and hypercars in Grand Theft Auto V and Grand Theft Auto Online. These are defined by the Vehicle Class System introduced in GTA V. For other supercars in the Grand Theft Auto series, see Super Cars. Those cars are such as LM87, Torero XO, Cyclone II, Sultan RS, Champion, Vacca, Turismo R, Vigilante etc.',  -- Super
            [8] = 'Motorcycles in Grand Theft Auto V and Grand Theft Auto Online. These are defined by the Vehicle Class System introduced in GTA V. For other motorcycles in the Grand Theft Auto series, see Motorcycles. Those vehicles are such as Oppressor Mk II, Hakuchou Custom, Oppressor, Bati 800, PCJ 600, Faggio etc.',  -- Motorcycles
            [9] = 'Off-Road Vehicles in Grand Theft Auto V and Grand Theft Auto Online. These are defined by the Vehicle Class System introduced in GTA V. For Off-Road vehicles in the Grand Theft Auto series, see Off-Road Vehicles. Those cars are such as Dune FAV, Nightshark, Mesa Grande, Draugur, Patriot Mil-Spec, Everon etc.',  --  Off-road 
            [10] = 'Industrial Vehicles in Grand Theft Auto V and Grand Theft Auto Online. These are defined by the Vehicle Class System introduced in GTA V. For other Industrial Vehicles, see Industrial Vehicles. Those cars are such as Guardian, Dozer, Flatbed, Dump, Dock Handler, Mixer etc.', -- Industrial
            [11] = 'Utility Vehicles in Grand Theft Auto V and Grand Theft Auto Online. These are defined by the Vehicle Class System introduced in GTA V. For utility vehicles in the entire Grand Theft Auto series, see Utility Vehicles. Those vehicles are such as Mobile Operations Center, Sadler, Towtruck, Caddy, Slamtruck, Trailer, Tractor etc.', -- Utility 
            [12] = 'Vans in Grand Theft Auto V and Grand Theft Auto Online. These are defined by the Vehicle Class System introduced in GTA V. For all vans in the Grand Theft Auto series, see Vans. Those cars are such as Bison, Speedo Custom, Rumpo Custom, Journey, Surfer, Burrito, Youga Custom etc.', -- Vans
            [13] = 'Cycles (bicycles) in Grand Theft Auto V and Grand Theft Auto Online. These are defined by the Vehicle Class System introduced in GTA V. For other bicycles in the Grand Theft Auto series, see Bicycles. Those bicycles are such as BMX, Fixter, Scorcher, Tri-Cycles Race Bike etc.', -- Cycles 
            [14] = 'Boats in Grand Theft Auto V and Grand Theft Auto Online. These are defined by the Vehicle Class System introduced in GTA V. Those boats are such as Kosatka, Submersible, Kraken, Avisa, Marquis, Dinghy, Predator etc.', -- Boats 
            [15] = 'Helicopters in Grand Theft Auto V and Grand Theft Auto Online. These are defined by the Vehicle Class System introduced in GTA V. For helicopters in the Grand Theft Auto series, see Helicopters. Those helicopters are such as Sparrow, Akula, Cargobob, Hunter, Police Maverick etc. ', -- Helicopters 
            [16] = 'Planes in Grand Theft Auto V and Grand Theft Auto Online. These are defined by the Vehicle Class System introduced in GTA V. For other planes/aircraft in the series, see Fixed-Wing Aircraft. Those aircrafts are such as P-996 LAZER, RO-86 Alkonost, Hydra, Volatol etc.', -- Planes  
            [17] = 'Public Service Vehicles in Grand Theft Auto V and Grand Theft Auto Online. These are defined by the Vehicle Class System introduced in GTA V. Those vehicles are such as Bus, Festival Bus, Taxi, Dune, Dashound, Trashmaster etc.', -- Service
            [18] = 'Emergency Vehicles in Grand Theft Auto V and Grand Theft Auto Online. These are defined by the Vehicle Class System introduced in GTA V. For other emergency vehicles in the Grand Theft Auto series, see Emergency Vehicles. Those vehicles are such as FIB Buffalo, Police Buffalo, Police Cruiser, Fire Truck, Ambulance, Police Roadcruiser, Police Riot etc. ', -- Emergency 
            [19] = 'Military Vehicles in Grand Theft Auto V and Grand Theft Auto Online. These are defined by the Vehicle Class System introduced in GTA V. For other military vehicles, see Military Vehicles. Those vehicles are such as TM-02 Khanjali, APC, Anti-Aircraft Trailer, Rhino etc. ', -- Military
            [20] = 'Commercial Vehicles in Grand Theft Auto V and Grand Theft Auto Online. These are defined by the Vehicle Class System introduced in GTA V. Those vehicles are such as Terrorbyte, Securicar, Mule, Pounder Custom, Phantom Wedge, Hauler Custom, Phantom, Mule Custom etc.'  -- Commercial 
        }
    },
    -- functions
    OnVehicleBought = function(shopId, vehicle)
        local plate = GetVehicleNumberPlateText(vehicle)
        TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
        if Config.Vehiclekey then
            TriggerEvent("vehiclekeys:client:SetOwner", plate)
            if Config.VehicleSystem == 'cd_garage' then
                TriggerEvent('cd_garage:AddKeys', exports['cd_garage']:GetPlate(vehicle))
            elseif Config.VehicleSystem == 'qs-vehiclekeys' then
                exports['qs-vehiclekeys']:GiveKeys(plate)
            elseif Config.VehicleSystem == 'wasabi-carlock' then
                exports.wasabi_carlock:GiveKey(plate)
            elseif Config.VehicleSystem == 'qb-vehiclekeys' then
                TriggerServerEvent('qb-vehiclekeys:server:AcquireVehicleKeys', plate)
            end
        end
        if Config.EnableFuel then
            if Config.FuelSystem == 'LegacyFuel' then
                return exports["LegacyFuel"]:SetFuel(vehicle, 100)
            elseif Config.FuelSystem == 'ox-fuel' then
                return SetVehicleFuelLevel(vehicle, 100)
            elseif Config.FuelSystem == 'nd-fuel' then
                return exports["nd-fuel"]:SetFuel(vehicle, 100)
            elseif Config.FuelSystem == 'frfuel' then
                return exports.frfuel:setFuel(vehicle, 100)
            elseif Config.FuelSystem == 'cdn-fuel' then
                return exports['cdn-fuel']:SetFuel(vehicle, 100)
            elseif Config.FuelSystem == 'hyon_gas_station' then
                return exports["hyon_gas_station"]:SetFuel(vehicle, 100)
            end
        end
    end,

    RemoveVehicleKeys = function(vehicle)
        if Config.VehicleRemovekey then
            local plate = GetVehicleNumberPlateText(vehicle)
            TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
            if Config.VehicleRemoveKeySystem == 'cd_garage' then
                TriggerServerEvent('cd_garage:RemovePersistentVehicles', exports['cd_garage']:GetPlate(vehicle))
            elseif Config.VehicleRemoveKeySystem == 'qs-vehiclekeys' then
                exports['qs-vehiclekeys']:RemoveKeysAuto()
            elseif Config.VehicleRemoveKeySystem == 'wasabi-carlock' then
                exports.wasabi_carlock:RemoveKey(plate)
            elseif Config.VehicleRemoveKeySystem == 'qb-vehiclekeys' then
                TriggerServerEvent('qb-vehiclekeys:client:RemoveKeys', plate)
            end
        end
    end,

    OnTestDriveVehicleSpawned = function(vehicle)
        local plate = GetVehicleNumberPlateText(vehicle)
        if Config.Vehiclekey then
            TriggerEvent("vehiclekeys:client:SetOwner", plate)
            if Config.VehicleSystem == 'cd_garage' then
                TriggerEvent('cd_garage:AddKeys', exports['cd_garage']:GetPlate(vehicle))
            elseif Config.VehicleSystem == 'qs-vehiclekeys' then
                exports['qs-vehiclekeys']:GiveKeys(plate)
            elseif Config.VehicleSystem == 'wasabi-carlock' then
                exports.wasabi_carlock:GiveKey(plate)
            elseif Config.VehicleSystem == 'qb-vehiclekeys' then
                TriggerServerEvent('qb-vehiclekeys:server:AcquireVehicleKeys', plate)
            end
        end
        if Config.EnableFuel then
            if Config.FuelSystem == 'LegacyFuel' then
                return exports["LegacyFuel"]:SetFuel(vehicle, 100)
            elseif Config.FuelSystem == 'ox-fuel' then
                return SetVehicleFuelLevel(vehicle, 100)
            elseif Config.FuelSystem == 'nd-fuel' then
                return exports["nd-fuel"]:SetFuel(vehicle, 100)
            elseif Config.FuelSystem == 'frfuel' then
                return exports.frfuel:setFuel(vehicle, 100)
            elseif Config.FuelSystem == 'cdn-fuel' then
                return exports['cdn-fuel']:SetFuel(vehicle, 100)
            elseif Config.FuelSystem == 'hyon_gas_station' then
                return exports["hyon_gas_station"]:SetFuel(vehicle, 100)
            end
        end
    end,
    Locales = {
        ["svnotify"] = {
            ["noperm"] = "Bunu yapma izniniz yok",
            ["novaultmoney"] = "Kasada yeterli para yok",
            ["vaultnomoney"] = "Kasada yeterli para yok",
            ["employeeoffline"] = "Çalışan çevrimdışı",
            ["playeroffline"] = "Oyuncu çevrimdışı",
            ["paymentsuccess"] = "Ödeme başarılı",
            ["businesstransfer"] = "İşletmeyi %s'ye transfer ettiniz", -- %s oyuncu adıdır
            ["nocash"] = "Yeterli nakitiniz yok",
            ["nomoney"] = "Yeterli paranız yok",
            ["platetaken"] = "Plaka zaten alınmış",
            ["noshopfound"] = "Mağaza bulunamadı",
            ["noplayerfound"] = "Oyuncu bulunamadı",
            ["withdraw"] = "Kasadan para çekme",
            ["deposit"] = "Kasaya para yatırma",
            ["employeepayment"] = "Çalışan ödemesi",
            ["notfound"] = "Araç bulunamadı",
            ["outofstock"] = "Bu araç stokta yok",
            ["stockadded"] = "%s stok, %s'ye eklendi", -- %s stok sayısı, %s araç adı
            
        },
        ["specs"] = {
            ["braking"] = "Frenleme",
            ["traction"] = "Çekiş",
            ["transmission"] = "Şanzıman",
            ["acceleration"] = "İvmelenme",
            ["handling"] = "Yol Tutuşu"
        }
    }
}