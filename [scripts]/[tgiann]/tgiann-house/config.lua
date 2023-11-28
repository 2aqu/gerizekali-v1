--[[ 
    - this script needs tgiann-core script to work, you can download the script from your keymaster account
      Start tgiann-core script after es_extented/qb-core script and before tgiann-* scripts
      Adjust the tgiann-core config file according to the framework you are using
    
      Client Event List
        "tgiann-house:firstLoginControl" | loads player's houses | teleports the player back to the house if the player left the game inside the house
            TriggerEvent("tgiann-house:firstLoginControl")
]]

-- if you want to add extra mlo please check interiorData.lua

tgiCoreExports = exports["tgiann-core"]
Config = tgiCoreExports:getConfig()
Config.test = false -- activates some test features(dev fatures invite yourself into your own home)
Config.command = "ev" -- Open blips command
Config.raidCommandEnable = true -- can polices use raid command
Config.lockVehicleInGarage = false -- locks the doors of vehicle in the garage

--If set to true the player can only put own vehicle in the garage
--If it is false, players can put NPC cars and their own cars in the garage
Config.justStoreOwnVehicle = false 

Config.policeJobs = {"police", "vpd", "doj", "davison", "state", "ranger", "dppd"}
Config.autoSpawnHouseWhenJoiningGame = true -- if the player was last inside the house, when he enters the game, the player is teleported into the house
Config.useOxInventory = true -- https://github.com/overextended/ox_inventory
Config.Realestate = {
    active = true,
    jobs = {
        "realestate",
        "realestate2",
    }
}
Config.disableQbApartments = false --if you are not using qb-apartments set this to true
Config.useTgiannGarage = false --https://forum.cfx.re/t/tgiann-garage-car-heli-boat-impound-job/4963338

Config.PlayerMaxHouse = { -- maximum number of houses the player can buy
    active = true,
    number = 2,
}

if Config.framework == "esx" then
    Config.vehicleTableName = "owned_vehicles"
elseif Config.framework == "qb" then
    Config.vehicleTableName = "player_vehicles"
end
Config.blackListVehicles = {
    `npolstang`,
    `npolchar`,
    `npolchal`,
    `npolvic`,
    `npolexp`,
}
Config.blackListVehiclesClass = { -- https://docs.fivem.net/natives/?_0x29439776AAA00A62
    10, --Industrial  
    14, --Boats  
    15, --Helicopters  
    16, --Planes  
    17, --Service  
    18, --Emergency  
    19, --Military 
    21, --Trains  
}

Config.lang = "en"
Config.text = {
    en = {
        house = "Ev",
        apartment = "Apartman",
        myHouse = "Evim",
        doorKey = "[E]",
        garage = "Garaj",
        settings = "Ev Ayarları",
        alreadyBuyed = "Ev zaten başkası tarafından satın alındı",
        boughtHouse = "Evi satın aldın",
        dontHaveKey =  "Evin anahtarı sende yok",
        noMoney = "Yeterli paran yok",
        noBodyOutside = "Dışarıda kimse yok",
        farToDoor = "Kapıdan çok uzaktasın",
        inviteTimeOut = "Davet zaman aşımına uğradı",
        invitedHouse = "Eve davetlisin tuşa basıp ~INPUT_PICKUP~ kabul et",
        noOneNear = "Yakınlarda kimse yok",
        alreadyHasKey = "Oyuncu zaten anahtara sahip",
        takenHouseKey = "Evin anahtarını aldın",
        giveHouseKey = "Evin anahtarını verdin",
        resetHouseKey = "Ev anahtarı yenilendi",
        transferHouse = "Evi transfer ettin",
        handoverHouse = "Evin teslimini aldın",
        garageFull = "Garaj full",
        garageExit = "Garaj çıkış",
        garageBlacklist = "Bu arabayı garaja park edemezsin",
        garageError = "Bu araç başkasına ait",
        storage = "Depo",
        wardrobe = "Kıyafet dolabı",
        needApertName = "Daire odasının adını yazmalısınız.",
        apertNotFound = "Apartman bulunamadı",
        notFoundDoor = "Yakınlarda evin kapısı yok",
        noMoreBuy = "Daha fazla ev satın alamazsınız",
    }
}
Config.UItext = {
    en = {
        houseBuyButtonMenuLeftText = "DON'T GET LOST IN THE ADS!<br />Q ESTATE IS HERE TO MAKE YOUR LIFE EASIER!",
        carSlots = "Car Slots",
        redBoxFeatureshtml = "Özellikler",
        areyousure = "Emin misin?",
        areyousureyes = "Yes",
        areyousureno = "No",
        inspectGarageText = "Garajı inceleyin",
        inspectHouseText = "Evi inceleyin",
        buyHouseText = "SATIN AL",
        houseInviteText = "DAVET ET",
        houseGarageText = "GARAJ",
        houseHouseText = "EV",
        houseLeaveText = "AYRIL",
        houseRaidText = "RAID",
        housekeyshtml = "Ev Anahtarları",
        houseGiveKeyText = "ANAHTAR VER",
        houseResetKeyText = "RESET KEYS",
        houseTransferText = "EVİ TRANSFER ET",
        pricehtml = "Fiyat",
        houseSellText = "Satış",
        viewhtml = "Görüş",
        buyhtml = "Buy",
        Strip = "Strip",
        Booze = "Booze",
        Smoke = "Smoke",
        Style = "Style",
        none = "none",
        stage1 = "stage1",
        stage2 = "stage2",
        stage3 = "stage3",
        modern = "modern",
        moody = "moody",
        vibrant = "vibrant",
        monochrome = "monochrome",
        seductive = "seductive",
        regal = "regal",
        aqua = "aqua",
        B = "B",
        A = "A",
        C = "C",
        dollar = "$"
    }
}
Config.key = {
    door = 38 --If you don't know what it's for, don't change it.
}
-- Stash size by house star(only works in qb and ox inventory)
Config.QBStorageData = {
    [1] = {maxweight = 450000, slots = 50},
    [2] = {maxweight = 650000, slots = 50},
    [3] = {maxweight = 800000, slots = 50},
    [4] = {maxweight = 950000, slots = 50},
    [5] = {maxweight = 1250000, slots = 50},
}
--selling price of the house
Config.sellPercent = 0.5 -- max 1.0 (0.5 = %50)
--prices for home settings menu
Config.settingsPrice = {
    ["GetGTAOHouseLow1Object"] = { Strip = 100, Booze = 100, Smoke = 100},
    ["GetGTAOHouseMid1Object"] = { Strip = 100, Booze = 100, Smoke = 100},
    ["GetGTAOHouseHi8Object"] = { Strip = 100, Booze = 100, Smoke = 100},
    ["GetGTAOHouseHi7Object"] = { Strip = 100, Booze = 100, Smoke = 100},
    ["GetGTAOHouseHi6Object"] = { Strip = 100, Booze = 100, Smoke = 100},
    ["GetGTAOHouseHi5Object"] = { Strip = 100, Booze = 100, Smoke = 100},
    ["GetGTAOHouseHi4Object"] = { Strip = 100, Booze = 100, Smoke = 100},
    ["GetGTAOHouseHi3Object"] = { Strip = 100, Booze = 100, Smoke = 100},
    ["GetGTAOHouseHi2Object"] = { Strip = 100, Booze = 100, Smoke = 100},
    ["GetGTAOHouseHi1Object"] = { Strip = 100, Booze = 100, Smoke = 100},
    ["GetGTAOApartmentHi2Object"] = { Strip = 100, Booze = 100, Smoke = 100},
    ["GetGTAOApartmentHi1Object"] = { Strip = 100, Booze = 100, Smoke = 100},
    ["GetHLApartment1Object"] = { Strip = 100, Booze = 100, Smoke = 100},
    ["GetHLApartment2Object"] = { Strip = 100, Booze = 100, Smoke = 100},
    ["GetHLApartment3Object"] = { Strip = 100, Booze = 100, Smoke = 100},
    ["GetHLApartment4Object"] = { Strip = 100, Booze = 100, Smoke = 100},
    ["GetHLApartment5Object"] = { Strip = 100, Booze = 100, Smoke = 100},
    ["GetHLApartment6Object"] = { Strip = 100, Booze = 100, Smoke = 100},
    ["GetExecApartment1Object"] = { Strip = 100, Booze = 100, Smoke = 100, Style = 100},
    ["GetExecApartment2Object"] = { Strip = 100, Booze = 100, Smoke = 100, Style = 100},
    ["GetExecApartment3Object"] = { Strip = 100, Booze = 100, Smoke = 100, Style = 100},
}

--[[ 
House List
    GetGTAOHouseLow1Object
    GetGTAOHouseMid1Object
    GetGTAOHouseHi8Object
    GetGTAOHouseHi7Object
    GetGTAOHouseHi6Object
    GetGTAOHouseHi5Object
    GetGTAOHouseHi4Object
    GetGTAOHouseHi3Object
    GetGTAOHouseHi2Object
    GetGTAOHouseHi1Object
    GetGTAOApartmentHi2Object
    GetGTAOApartmentHi1Object
    GetHLApartment1Object
    GetHLApartment2Object
    GetHLApartment3Object
    GetHLApartment4Object
    GetHLApartment5Object
    GetHLApartment6Object
    GetExecApartment1Object
    GetExecApartment2Object
    GetExecApartment3Object
    Motel1

Garage List
    2cargarage
    6cargarage
    10cargarage
]]

Config.houseList = {
    {
        name = "Buen Vino No.1",
        price = 5000000,
        star = 5,
        doorCoord = vector3(-2587.9123535156, 1910.99609375, 167.49885559082),
        garageDoorCoord = vector3(-2596.3701171875, 1930.056640625, 167.3076171875),
        garageDoorCoordH = 272.62,
        garage = "10cargarage",
        interior = "GetExecApartment2Object",
        features = {
            { label = "Ultra-luxury", exist = true},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true},
            { label = "landscape", exist = true},
            { label = "Fast Internet", exist = false},
            { label = "Editable Interior Design", exist = false},
            { label = "Safe Neighborhood", exist = false},
        }        
    },
    {
        name = "Buen Vino No.2",
        price = 2000000,
        star = 5,
        doorCoord = vector3(-2797.71875, 1431.6716308594, 100.92834472656),
        garageDoorCoord = vector3(-2785.7995605469, 1432.1091308594, 100.92834472656),
        garageDoorCoordH = 231.92,
        garage = "10cargarage",
        interior = "GetExecApartment1Object",
        features = {
            { label = "Ultra-luxury", exist = true},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true},
            { label = "landscape", exist = true},
            { label = "Fast Internet", exist = false},
            { label = "Editable Interior Design", exist = false},
            { label = "Safe Neighborhood", exist = false},
        }        
    },
    {
        name = "Lake Vinevood No.1",
        price = 3000000,
        star = 5,
        doorCoord = vector3(-113.16439819336, 985.90258789063, 235.75413513184),
        garageDoorCoord = vector3(-126.29237365723, 1004.4746704102, 235.73233032227),
        garageDoorCoordH = 197.73,
        garage = "10cargarage",
        interior = "GetExecApartment2Object",
        features = {
            { label = "Ultra-luxury", exist = true},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true},
            { label = "landscape", exist = true},
            { label = "Fast Internet", exist = false},
            { label = "Editable Interior Design", exist = false},
            { label = "Safe Neighborhood", exist = true},
        }        
    },
    {
        name = "Lake Vinevood No.2",
        price = 1700000,
        star = 5,
        doorCoord = vector3(-85.728935241699, 834.73004150391, 235.92039489746),
        garageDoorCoord = vector3(-105.24000549316, 825.44500732422, 235.72494506836),
        garageDoorCoordH = 6.37,
        garage = "10cargarage",
        interior = "GetExecApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true},
        }        
    },
    {
        name = "Lake Vinevood No.3",
        price = 2000000,
        star = 5,
        doorCoord = vector3(-167.8346862793, 916.20104980469, 235.6555480957),
        garageDoorCoord = vector3(-138.32388305664, 906.46630859375, 235.78793334961),
        garageDoorCoordH = 235.66,
        garage = "10cargarage",
        interior = "GetExecApartment2Object",
        features = {
            { label = "Ultra-luxury", exist = true},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true},
            { label = "landscape", exist = true},
            { label = "Fast Internet", exist = false},
            { label = "Editable Interior Design", exist = false},
            { label = "Safe Neighborhood", exist = false},
        }        
    },
    {
        name = "Lake Vinevood No.4",
        price = 1500000,
        star = 5,
        doorCoord = vector3(-184.26382446289, 967.45056152344, 232.13404846191),
        garageDoorCoord = vector3(-167.66168212891, 971.65155029297, 236.63700866699),
        garageDoorCoordH = 315.47,
        garage = "10cargarage",
        interior = "GetExecApartment1Object",
        features = {
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true},
            { label = "landscape", exist = true},
            { label = "Fast Internet", exist = false},
            { label = "Editable Interior Design", exist = false},
            { label = "Safe Neighborhood", exist = false},
        }        
    },
    {
        name = "North Conker Ave No.1",
        price = 350000,
        star = 3,
        doorCoord = vector3(373.85928344727, 427.80358886719, 145.68406677246),
        garageDoorCoord = vector3(390.64703369141, 431.76089477539, 143.32551574707),
        garageDoorCoordH = 73.46,
        garage = "2cargarage",
        interior = "GetGTAOHouseHi8Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = false},
            { label = "Sound insulation", exist = true},
            { label = "Teras", exist = true},
            { label = "Garage", exist = true},
        }        
    },
    {
        name = "North Conker Ave No.2",
        price = 375000,
        star = 3,
        doorCoord = vector3(346.59860229492, 440.62573242188, 147.70231628418),
        garageDoorCoord = vector3(354.40853881836, 438.36898803711, 146.33033752441),
        garageDoorCoordH = 306.88,
        garage = "2cargarage",
        interior = "GetGTAOHouseHi8Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = false},
            { label = "Sound insulation", exist = true},
            { label = "Teras", exist = true},
            { label = "Garage", exist = true}
        }          
    },
    {
        name = "North Conker Ave No.3",
        price = 450000,
        star = 3,
        doorCoord = vector3(331.50610351563, 465.58587646484, 151.22662353516),
        garageDoorCoord = vector3(328.81829833984, 482.14044189453, 150.83004760742),
        garageDoorCoordH = 341.43,
        garage = "2cargarage",
        interior = "GetGTAOHouseHi8Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Conker Ave No.4",
        price = 550000,
        star = 3,
        doorCoord = vector3(325.15734863281, 513.42645263672, 153.18014526367),
        garageDoorCoord = vector3(319.8017578125, 496.02920532227, 152.59819030762),
        garageDoorCoordH = 285.57,
        garage = "6cargarage",
        interior = "GetGTAOHouseHi8Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Conker Ave No.5",
        price = 475000,
        star = 3,
        doorCoord = vector3(325.20367431641, 537.13830566406, 153.8616027832),
        garageDoorCoord = vector3(315.19271850586, 569.1171875, 154.37712097168),
        garageDoorCoordH = 2.22,
        garage = "2cargarage",
        interior = "GetGTAOHouseHi8Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vinewood Dr. No.1",
        price = 750000,
        star = 4,
        doorCoord = vector3(228.77966308594, 765.71594238281, 204.97653198242),
        garageDoorCoord = vector3(216.44448852539, 758.13812255859, 204.6602935791),
        garageDoorCoordH = 46.27,
        garage = "6cargarage",
        interior = "GetGTAOHouseHi5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Milton Road No.1",
        price = 1500000,
        star = 5,
        doorCoord = vector3(-658.42669677734, 886.58166503906, 229.24966430664),
        garageDoorCoord = vector3(-675.67529296875, 905.38702392578, 230.58767700195),
        garageDoorCoordH = 323.76,
        garage = "10cargarage",
        interior = "GetExecApartment2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Milton Road No.2",
        price = 450000,
        star = 3,
        doorCoord = vector3(-596.98852539063, 851.60327148438, 211.46061706543),
        garageDoorCoord = vector3(-608.46337890625, 868.04010009766, 213.61331176758),
        garageDoorCoordH = 293.33,
        garage = "2cargarage",
        interior = "GetGTAOHouseHi5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Milton Road No.3",
        price = 500000,
        star = 3,
        doorCoord = vector3(-536.66979980469, 818.47113037109, 197.51034545898),
        garageDoorCoord = vector3(-552.45434570313, 832.69024658203, 198.13526916504),
        garageDoorCoordH = 302.42,
        garage = "6cargarage",
        interior = "GetGTAOHouseHi5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Milton Road No.4",
        price = 300000,
        star = 3,
        doorCoord = vector3(-494.5859375, 796.18090820313, 184.34727478027),
        garageDoorCoord = vector3(-482.87899780273, 798.99517822266, 180.99496459961),
        garageDoorCoordH = 287.98,
        garage = "2cargarage",
        interior = "GetGTAOHouseHi5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Milton Road No.5",
        price = 210000,
        star = 2,
        doorCoord = vector3(-495.66119384766, 738.49664306641, 163.03096008301),
        garageDoorCoord = vector3(-492.95297241211, 749.37493896484, 162.8310546875),
        garageDoorCoordH = 243.88,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Milton Road No.6",
        price = 150000,
        star = 2,
        doorCoord = vector3(-492.95297241211, 749.37493896484, 162.8310546875),
        garageDoorCoord = vector3(-521.72125244141, 711.04718017578, 152.23011779785),
        garageDoorCoordH = 144.67,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Milton Road No.7",
        price = 275000,
        star = 2,
        doorCoord = vector3(-499.13732910156, 683.20275878906, 151.85934448242),
        garageDoorCoord = vector3(-521.30999755859, 694.03063964844, 149.66770935059),
        garageDoorCoordH = 106.77,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Milton Road No.8",
        price = 380000,
        star = 3,
        doorCoord = vector3(-523.06030273438, 628.27435302734, 137.97380065918),
        garageDoorCoord = vector3(-524.15814208984, 646.2763671875, 138.20401000977),
        garageDoorCoordH = 332.78,
        garage = "2cargarage",
        interior = "GetGTAOHouseHi7Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Kimble Hill Dr. No.1",
        price = 725000,
        star = 4,
        doorCoord = vector3(-476.71139526367, 647.89459228516, 144.38661193848),
        garageDoorCoord = vector3(-461.79135131836, 641.06164550781, 144.18873596191),
        garageDoorCoordH = 44.41,
        garage = "6cargarage",
        interior = "GetGTAOHouseHi7Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Kimble Hill Dr. No.2",
        price = 825000,
        star = 4,
        doorCoord = vector3(-446.11169433594, 686.18371582031, 153.11764526367),
        garageDoorCoord = vector3(-465.90658569336, 672.92346191406, 147.78198242188),
        garageDoorCoordH = 148.99,
        garage = "6cargarage",
        interior = "GetGTAOHouseHi7Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Kimble Hill Dr. No.3",
        price = 905000,
        star = 4,
        doorCoord = vector3(-400.11190795898, 665.01373291016, 163.83032226563),
        garageDoorCoord = vector3(-394.09970092773, 672.17553710938, 163.0905456543),
        garageDoorCoordH = 26.10,
        garage = "6cargarage",
        interior = "GetGTAOHouseHi7Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Kimble Hill Dr. No.4",
        price = 315000,
        star = 3,
        doorCoord = vector3(-353.35614013672, 668.13616943359, 169.07270812988),
        garageDoorCoord = vector3(-345.02502441406, 662.94866943359, 169.52420043945),
        garageDoorCoordH = 164.09,
        garage = "2cargarage",
        interior = "GetGTAOHouseHi4Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Kimble Hill Dr. No.5",
        price = 1050000,
        star = 5,
        doorCoord = vector3(-339.71728515625, 625.52954101563, 171.35670471191),
        garageDoorCoord = vector3(-340.29049682617, 631.84033203125, 172.35377502441),
        garageDoorCoordH = 56.72,
        garage = "6cargarage",
        interior = "GetGTAOHouseHi4Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Kimble Hill Dr. No.6",
        price = 410000,
        star = 3,
        doorCoord = vector3(-307.48965454102, 643.46160888672, 176.13394165039),
        garageDoorCoord = vector3(-302.8674621582, 631.64898681641, 175.65475463867),
        garageDoorCoordH = 113.71,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Kimble Hill Dr. No.7",
        price = 670000,
        star = 4,
        doorCoord = vector3(-293.51385498047, 600.84619140625, 181.57542419434),
        garageDoorCoord = vector3(-274.11038208008, 600.71588134766, 181.71726989746),
        garageDoorCoordH = 347.87,
        garage = "6cargarage",
        interior = "GetGTAOApartmentHi2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Kimble Hill Dr. No.8",
        price = 875000,
        star = 4,
        doorCoord = vector3(-257.00549316406, 632.35986328125, 187.80511474609),
        garageDoorCoord = vector3(-242.57081604004, 609.48693847656, 187.06352233887),
        garageDoorCoordH = 113.63,
        garage = "6cargarage",
        interior = "GetGTAOApartmentHi2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Kimble Hill Dr. No.9",
        price = 650000,
        star = 4,
        doorCoord = vector3(-232.57409667969, 588.38006591797, 190.5362701416),
        garageDoorCoord = vector3(-223.19769287109, 593.49053955078, 190.39292907715),
        garageDoorCoordH = 313.02,
        garage = "6cargarage",
        interior = "GetGTAOApartmentHi2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Kimble Hill Dr. No.10",
        price = 900000,
        star = 4,
        doorCoord = vector3(-189.44592285156, 618.27801513672, 199.66128540039),
        garageDoorCoord = vector3(-196.48500061035, 614.70953369141, 196.99896240234),
        garageDoorCoordH = 183.66,
        garage = "6cargarage",
        interior = "GetGTAOApartmentHi2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Kimble Hill Dr. No.11",
        price = 495000,
        star = 3,
        doorCoord = vector3(-185.31924438477, 591.56427001953, 197.82304382324),
        garageDoorCoord = vector3(-178.52033996582, 586.9033203125, 197.62854003906),
        garageDoorCoordH = 356.47,
        garage = "2cargarage",
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Kimble Hill Dr. No.12",
        price = 625000,
        star = 4,
        doorCoord = vector3(-126.51575469971, 588.29632568359, 204.71049499512),
        garageDoorCoord = vector3(-144.57623291016, 597.74450683594, 203.7389831543),
        garageDoorCoordH = 356.47,
        garage = "6cargarage",
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }           
    },
    {
        name = "Whispymound Dr. No.1",
        price = 715000,
        star = 4,
        doorCoord = vector3(232.1591796875, 672.34552001953, 189.94546508789),
        garageDoorCoord = vector3(226.6981048584, 680.67248535156, 189.4642791748),
        garageDoorCoordH = 113.84,
        garage = "6cargarage",
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Whispymound Dr. No.2",
        price = 150000,
        star = 2,
        doorCoord = vector3(216.22299194336, 620.42211914063, 187.63606262207),
        garageDoorCoord = vector3(211.07362365723, 608.76489257813, 186.94416809082),
        garageDoorCoordH = 132.68,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Whispymound Dr. No.3",
        price = 725000,
        star = 4,
        doorCoord = vector3(184.3889465332, 571.60107421875, 183.34121704102),
        garageDoorCoord = vector3(148.22123718262, 570.31854248047, 183.8211517334),
        garageDoorCoordH = 84.60,
        garage = "6cargarage",
        interior = "GetHLApartment2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Whispymound Dr. No.4",
        price = 160000,
        star = 2,
        doorCoord = vector3(119.38842773438, 564.26947021484, 183.95927429199),
        garageDoorCoord = vector3(131.10723876953, 568.37133789063, 183.33168029785),
        garageDoorCoordH = 62.63,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Whispymound Dr. No.5",
        price = 630000,
        star = 4,
        doorCoord = vector3(84.943000793457, 561.80615234375, 182.77301025391),
        garageDoorCoord = vector3(97.293296813965, 566.95697021484, 182.32791137695),
        garageDoorCoordH = 69.36,
        garage = "6cargarage",
        interior = "GetHLApartment2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Whispymound Dr. No.6",
        price = 850000,
        star = 4,
        doorCoord = vector3(46.042560577393, 555.92059326172, 180.08195495605),
        garageDoorCoord = vector3(50.666748046875, 563.81604003906, 180.29382324219),
        garageDoorCoordH = 64.13,
        garage = "6cargarage",
        interior = "GetHLApartment2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Wild Oats Dr. No.1",
        price = 500000,
        star = 4,
        doorCoord = vector3(223.94960021973, 513.67608642578, 140.7670135498),
        garageDoorCoord = vector3(237.1478729248, 527.96209716797, 140.54835510254),
        garageDoorCoordH = 109.19,
        garage = "6cargarage",
        interior = "GetHLApartment2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Wild Oats Dr. No.2",
        price = 931000,
        star = 4,
        doorCoord = vector3(148.76148986816, 474.99346923828, 142.51153564453),
        garageDoorCoord = vector3(173.07786560059, 471.09649658203, 141.90739440918),
        garageDoorCoordH = 345.46,
        garage = "10cargarage",
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Wild Oats Dr. No.3",
        price = 210000,
        star = 2,
        doorCoord = vector3(119.69889068604, 494.47216796875, 147.3429107666),
        garageDoorCoord = vector3(113.62482452393, 498.80352783203, 147.14814758301),
        garageDoorCoordH = 188.97,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Wild Oats Dr. No.4",
        price = 300000,
        star = 3,
        doorCoord = vector3(107.17660522461, 466.95364379883, 147.56198120117),
        garage = false,
        interior = "GetHLApartment2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Wild Oats Dr. No.5",
        price = 240000,
        star = 3,
        doorCoord = vector3(79.842079162598, 486.26879882813, 148.20169067383),
        garageDoorCoord = vector3(90.072471618652, 487.59106445313, 147.75152587891),
        garageDoorCoordH = 209.24,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Wild Oats Dr. No.6",
        price = 675000,
        star = 4,
        doorCoord = vector3(57.59513092041, 449.65112304688, 147.03137207031),
        garageDoorCoord = vector3(64.526702880859, 456.76809692383, 146.80799865723),
        garageDoorCoordH = 36.87,
        garage = "6cargarage",
        interior = "GetHLApartment2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Wild Oats Dr. No.7",
        price = 267500,
        star = 2,
        doorCoord = vector3(43.024810791016, 468.82534790039, 148.09614562988),
        garageDoorCoord = vector3(56.275932312012, 467.22744750977, 146.68377685547),
        garageDoorCoordH = 130.16,
        garage = "2cargarage",
        interior = "GetHLApartment2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Wild Oats Dr. No.8",
        price = 430000,
        star = 3,
        doorCoord = vector3(-7.7731409072876, 467.79605102539, 145.84515380859),
        garageDoorCoord = vector3(0.96201229095459, 469.05364990234, 145.81198120117),
        garageDoorCoordH = 32.11,
        garage = "2cargarage",
        interior = "GetGTAOHouseHi7Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Wild Oats Dr. No.9",
        price = 375000,
        star = 3,
        doorCoord = vector3(-66.820320129395, 490.01849365234, 144.88478088379),
        garageDoorCoord = vector3(-75.952072143555, 497.39782714844, 144.37875366211),
        garageDoorCoordH = 35.78,
        garage = "2cargarage",
        interior = "GetGTAOHouseHi7Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Wild Oats Dr. No.10",
        price = 480000,
        star = 3,
        doorCoord = vector3(-109.94352722168, 501.93853759766, 143.47875976563),
        garageDoorCoord = vector3(-124.57390594482, 509.94750976563, 142.81770324707),
        garageDoorCoordH = 57.25,
        garage = "2cargarage",
        interior = "GetGTAOHouseHi7Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Wild Oats Dr. No.11",
        price = 450000,
        star = 3,
        doorCoord = vector3(-174.69883728027, 502.5341796875, 137.4203338623),
        garageDoorCoord = vector3(-190.09065246582, 502.9616394043, 134.2367401123),
        garageDoorCoordH = 85.99,
        garage = "2cargarage",
        interior = "GetGTAOHouseHi7Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Wild Oats Dr. No.12",
        price = 650000,
        star = 4,
        doorCoord = vector3(-230.17437744141, 488.00927734375, 128.76802062988),
        garageDoorCoord = vector3(-248.35830688477, 493.66076660156, 125.41848754883),
        garageDoorCoordH = 49.99,
        garage = "6cargarage",
        interior = "GetGTAOHouseHi7Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Wild Oats Dr. No.13",
        price = 850000,
        star = 4,
        doorCoord = vector3(-311.90875244141, 474.890625, 111.82425689697),
        garageDoorCoord = vector3(-316.94940185547, 480.34655761719, 112.75521850586),
        garageDoorCoordH = 122.78,
        garage = "6cargarage",
        interior = "GetHLApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Cox Way No.1",
        price = 587500,
        star = 4,
        doorCoord = vector3(-305.06729125977, 431.04290771484, 110.48235321045),
        garageDoorCoord = vector3(-320.71313476563, 433.22024536133, 109.54653167725),
        garageDoorCoordH = 54.76,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Cox Way No.2",
        price = 515200,
        star = 4,
        doorCoord = vector3(-371.43740844727, 408.18338012695, 110.69452667236),
        garageDoorCoord = vector3(-349.95153808594, 427.04254150391, 110.58750915527),
        garageDoorCoordH = 77.77,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Cox Way No.3",
        price = 1080000,
        star = 5,
        doorCoord = vector3(-401.10137939453, 427.51837158203, 112.34145355225),
        garageDoorCoord = vector3(-391.19775390625, 433.14053344727, 112.2502822876),
        garageDoorCoordH = 200.19,
        garage = "6cargarage",
        interior = "GetExecApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Cox Way No.4",
        price = 715000,
        star = 4,
        doorCoord = vector3(-451.04159545898, 395.49838256836, 104.77421569824),
        garageDoorCoord = vector3(-456.45336914063, 375.28811645508, 104.77909851074),
        garageDoorCoordH = 359.16,
        garage = "6cargarage",
        interior = "GetGTAOHouseHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Cox Way No.5",
        price = 520000,
        star = 4,
        doorCoord = vector3(-477.26770019531, 413.16827392578, 103.12187194824),
        garageDoorCoord = vector3(-491.41116333008, 409.45355224609, 98.998031616211),
        garageDoorCoordH = 90.80,
        garage = "6cargarage",
        interior = "GetGTAOHouseHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Cox Way No.6",
        price = 650000,
        star = 4,
        doorCoord = vector3(-516.43267822266, 433.42242431641, 97.808250427246),
        garageDoorCoord = vector3(-499.99475097656, 428.49920654297, 97.287178039551),
        garageDoorCoordH = 129.55,
        garage = "6cargarage",
        interior = "GetGTAOHouseHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Cox Way No.7",
        price = 975000,
        star = 4,
        doorCoord = vector3(-500.09936523438, 398.23104858398, 98.27271270752),
        garageDoorCoord = vector3(-521.15960693359, 394.91598510742, 93.644599914551),
        garageDoorCoordH = 6.61,
        garage = "6cargarage",
        interior = "GetHLApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Cox Way No.8",
        price = 520000,
        star = 4,
        doorCoord = vector3(-560.93316650391, 402.53182983398, 101.80534362793),
        garageDoorCoord = vector3(-575.74829101563, 399.07656860352, 100.66507720947),
        garageDoorCoordH = 15.33,
        garage = "6cargarage",
        interior = "GetGTAOHouseHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Cox Way No.9",
        price = 285000,
        star = 3,
        doorCoord = vector3(-595.66192626953, 392.9700012207, 101.88244628906),
        garageDoorCoord = vector3(-604.41381835938, 397.27362060547, 101.76756286621),
        garageDoorCoordH = 6.11,
        garage = "2cargarage",
        interior = "GetGTAOHouseHi6Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Cox Way No.10",
        price = 140000,
        star = 2,
        doorCoord = vector3(-615.52899169922, 398.19583129883, 101.62676239014),
        garageDoorCoord = vector3(-629.31024169922, 402.45281982422, 101.09844207764),
        garageDoorCoordH = 309.67,
        garage = "2cargarage",
        interior = "GetGTAOHouseHi6Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Didion Dr. No.1",
        price = 235000,
        star = 2,
        doorCoord = vector3(-469.28659057617, 330.03149414063, 104.74682617188),
        garageDoorCoord = vector3(-472.62884521484, 354.1208190918, 103.82542419434),
        garageDoorCoordH = 316.43,
        garage = "2cargarage",
        interior = "GetGTAOHouseHi6Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Didion Dr. No.2",
        price = 165000,
        star = 2,
        doorCoord = vector3(-444.29513549805, 343.34713745117, 105.53492736816),
        garageDoorCoord = vector3(-431.64535522461, 345.00473022461, 105.9849395752),
        garageDoorCoordH = 298.59,
        garage = "2cargarage",
        interior = "GetGTAOHouseHi6Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Didion Dr. No.3",
        price = 230000,
        star = 2,
        doorCoord = vector3(-409.62710571289, 341.49087524414, 108.90742492676),
        garageDoorCoord = vector3(-404.07876586914, 337.55297851563, 108.71784210205),
        garageDoorCoordH = 358.31,
        garage = "2cargarage",
        interior = "GetGTAOHouseHi6Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Didion Dr. No.4",
        price = 330000,
        star = 3,
        doorCoord = vector3(-371.79232788086, 343.53402709961, 109.94281768799),
        garageDoorCoord = vector3(-381.29510498047, 347.419921875, 109.16802978516),
        garageDoorCoordH = 15.31,
        garage = "2cargarage",
        interior = "GetGTAOHouseHi6Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Didion Dr. No.5",
        price = 450000,
        star = 3,
        doorCoord = vector3(-328.05197143555, 369.67105102539, 110.00605773926),
        garageDoorCoord = vector3(-349.04620361328, 369.48971557617, 109.98425292969),
        garageDoorCoordH = 328.45,
        garage = "2cargarage",
        interior = "GetGTAOHouseHi6Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Didion Dr. No.6",
        price = 280000,
        star = 2,
        doorCoord = vector3(-297.69088745117, 379.75741577148, 112.09544372559),
        garageDoorCoord = vector3(-305.83856201172, 381.4111328125, 110.32318878174),
        garageDoorCoordH = 16.18,
        garage = "2cargarage",
        interior = "GetGTAOHouseHi6Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Didion Dr. No.7",
        price = 450000,
        star = 3,
        doorCoord = vector3(-214.08460998535, 399.43075561523, 111.31070709229),
        garageDoorCoord = vector3(-201.13218688965, 411.20263671875, 110.32992553711),
        garageDoorCoordH = 323.93,
        garage = "2cargarage",
        interior = "GetGTAOHouseHi6Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Didion Dr. No.8",
        price = 575000,
        star = 4,
        doorCoord = vector3(-166.37455749512, 424.10256958008, 111.80588531494),
        garageDoorCoord = vector3(-182.73059082031, 424.68460083008, 110.37322998047),
        garageDoorCoordH = 335.87,
        garage = "2cargarage",
        interior = "GetGTAOHouseHi6Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Didion Dr. No.9",
        price = 400000,
        star = 3,
        doorCoord = vector3(-72.884384155273, 428.56723022461, 113.03810119629),
        garageDoorCoord = vector3(-97.033798217773, 428.07656860352, 113.05878448486),
        garageDoorCoordH = 245.72,
        garage = "2cargarage",
        interior = "GetGTAOHouseHi6Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Didion Dr. No.10",
        price = 650000,
        star = 4,
        doorCoord = vector3(-6.398820400238, 409.14440917969, 120.29103088379),
        garageDoorCoord = vector3(15.514422416687, 375.25698852539, 112.22525787354),
        garageDoorCoordH = 85.26,
        garage = "6cargarage",
        interior = "GetGTAOHouseHi6Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Didion Dr. No.11",
        price = 450000,
        star = 3,
        doorCoord = vector3(37.660575866699, 365.6357421875, 116.04092407227),
        garageDoorCoord = vector3(26.174955368042, 367.16729736328, 112.60569763184),
        garageDoorCoordH = 214.94,
        garage = "2cargarage",
        interior = "GetGTAOHouseHi6Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Gentry Manor No.1",
        price = 75000,
        star = 1,
        doorCoord = vector3(8.489860534668, 297.70199584961, 111.07904815674),
        garage = false,
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Gentry Manor No.2",
        price = 75000,
        star = 2,
        doorCoord = vector3(-0.88686448335648, 302.00750732422, 111.07904815674),
        garage = false,
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Gentry Manor No.3",
        price = 75000,
        star = 2,
        doorCoord = vector3(18.300109863281, 318.92080688477, 111.0788269043),
        garage = false,
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Gentry Manor No.4",
        price = 75000,
        star = 2,
        doorCoord = vector3(9.1783790588379, 323.29879760742, 111.07858276367),
        garage = false,
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Gentry Manor No.5",
        price = 75000,
        star = 2,
        doorCoord = vector3(20.917116165161, 324.52001953125, 111.07883453369),
        garage = false,
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Gentry Manor No.6",
        price = 75000,
        star = 2,
        doorCoord = vector3(11.852794647217, 329.01702880859, 111.07758331299),
        garage = false,
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Gentry Manor No.7",
        price = 125000,
        star = 2,
        doorCoord = vector3(-34.194927215576, 347.90972900391, 113.99793243408),
        garage = false,
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Gentry Manor No.8",
        price = 125000,
        star = 2,
        doorCoord = vector3(-25.644990921021, 367.05471801758, 114.83798217773),
        garage = false,
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Gentry Manor No.9",
        price = 125000,
        star = 2,
        doorCoord = vector3(-41.105876922607, 327.37478637695, 112.79364013672),
        garage = false,
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Gentry Manor No.10",
        price = 125000,
        star = 2,
        doorCoord = vector3(-51.175312042236, 304.9518737793, 112.79253387451),
        garage = false,
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Sam Austin Dr. No.1",
        price = 2400000,
        star = 5,
        doorCoord = vector3(-1465.1793212891, -34.442840576172, 55.049976348877),
        garageDoorCoord = vector3(-1461.9812011719, -26.956212997437, 54.64758682251),
        garageDoorCoordH = 220.67,
        garage = "2cargarage",
        interior = "GetHLApartment4Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Sam Austin Dr. No.2",
        price = 2200000,
        star = 5,
        doorCoord = vector3(-1549.2969970703, -90.547592163086, 54.928802490234),
        garageDoorCoord = vector3(-1576.7248535156, -82.73078918457, 54.134956359863),
        garageDoorCoordH = 273.16,
        garage = "2cargarage",
        interior = "GetHLApartment4Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Sam Austin Dr. No.3",
        price = 2300000,
        star = 5,
        doorCoord = vector3(-1580.5626220703, -34.019340515137, 57.564929962158),
        garageDoorCoord = vector3(-1581.3302001953, -59.283931732178, 56.491554260254),
        garageDoorCoordH = 267.53,
        garage = "2cargarage",
        interior = "GetHLApartment4Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Americano Way No.1",
        price = 1800000,
        star = 5,
        doorCoord = vector3(-1467.3884277344, 34.676719665527, 54.545074462891),
        garageDoorCoord = vector3(-1490.7609863281, 23.408159255981, 54.730655670166),
        garageDoorCoordH = 348.56,
        garage = "10cargarage",
        interior = "GetExecApartment2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Americano Way No.2",
        price = 1700000,
        star = 5,
        doorCoord = vector3(-1515.4945068359, 23.70753288269, 56.820755004883),
        garageDoorCoord = vector3(-1504.578125, 24.219116210938, 56.183547973633),
        garageDoorCoordH = 13.13,
        garage = "10cargarage",
        interior = "GetExecApartment2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Americano Way No.3",
        price = 1650000,
        star = 5,
        doorCoord = vector3(-1570.7486572266, 22.120906829834, 59.55392074585),
        garageDoorCoord = vector3(-1554.6673583984, 21.334815979004, 58.620716094971),
        garageDoorCoordH = 351.92,
        garage = "10cargarage",
        interior = "GetExecApartment2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Americano Way No.4",
        price = 1750000,
        star = 5,
        doorCoord = vector3(-1629.8507080078, 36.360919952393, 62.936408996582),
        garageDoorCoord = vector3(-1614.8464355469, 18.045707702637, 62.178035736084),
        garageDoorCoordH = 333.62,
        garage = "10cargarage",
        interior = "GetExecApartment2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Greenwich Pl No.1",
        price = 1700000,
        star = 5,
        doorCoord = vector3(-1189.9841308594, 292.31546020508, 69.892654418945),
        garageDoorCoord = vector3(-1205.6437988281, 270.35412597656, 69.551239013672),
        garageDoorCoordH = 252.44,
        garage = "10cargarage",
        interior = "GetExecApartment2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Greenwich Pl No.2",
        price = 1500000,
        star = 5,
        doorCoord = vector3(-1116.8690185547, 304.41354370117, 66.521438598633),
        garageDoorCoord = vector3(-1130.1639404297, 306.13143920898, 66.186058044434),
        garageDoorCoordH = 170.26,
        garage = "10cargarage",
        interior = "GetExecApartment2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Greenwich Pl No.3",
        price = 2000000,
        star = 5,
        doorCoord = vector3(-1135.6511230469, 375.91918945313, 71.299591064453),
        garageDoorCoord = vector3(-1096.2790527344, 358.18313598633, 68.501068115234),
        garageDoorCoordH = 358.58,
        garage = "10cargarage",
        interior = "GetExecApartment2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Greenwich Pl No.4",
        price = 1200000,
        star = 5,
        doorCoord = vector3(-1038.5778808594, 312.1647644043, 67.274307250977),
        garageDoorCoord = vector3(-1061.7368164063, 303.34826660156, 65.95760345459),
        garageDoorCoordH = 352.38,
        garage = "10cargarage",
        interior = "GetExecApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Greenwich Pl No.5",
        price = 1500000,
        star = 5,
        doorCoord = vector3(-1026.1842041016, 360.4765625, 71.361549377441),
        garageDoorCoord = vector3(-1048.2529296875, 386.49594116211, 69.341232299805),
        garageDoorCoordH = 302.38,
        garage = "10cargarage",
        interior = "GetExecApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Portolia Dr. No.1",
        price = 2400000,
        star = 5,
        doorCoord = vector3(-949.32611083984, 196.96012878418, 67.389945983887),
        garageDoorCoord = vector3(-928.96240234375, 210.28118896484, 67.464736938477),
        garageDoorCoordH = 115.98,
        garage = "10cargarage",
        interior = "GetExecApartment2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Portolia Dr. No.2",
        price = 1200000,
        star = 5,
        doorCoord = vector3(-902.38250732422, 191.60482788086, 69.445945739746),
        garageDoorCoord = vector3(-914.68469238281, 191.86224365234, 69.43391418457),
        garageDoorCoordH = 264.68,
        garage = "10cargarage",
        interior = "GetExecApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Portolia Dr. No.3",
        price = 1100000,
        star = 5,
        doorCoord = vector3(-998.18048095703, 157.83226013184, 62.318813323975),
        garageDoorCoord = vector3(-993.98992919922, 143.84327697754, 60.669231414795),
        garageDoorCoordH = 280.01,
        garage = "10cargarage",
        interior = "GetExecApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Portolia Dr. No.4",
        price = 1100000,
        star = 5,
        doorCoord = vector3(-971.47741699219, 122.05312347412, 57.048542022705),
        garageDoorCoord = vector3(-962.49200439453, 109.33460235596, 56.238658905029),
        garageDoorCoordH = 306.65,
        garage = "10cargarage",
        interior = "GetExecApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Portolia Dr. No.5",
        price = 1250000,
        star = 5,
        doorCoord = vector3(-913.37701416016, 108.17672729492, 55.514659881592),
        garageDoorCoord = vector3(-919.06378173828, 111.15760040283, 55.318828582764),
        garageDoorCoordH = 70.64,
        garage = "10cargarage",
        interior = "GetExecApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Portolia Dr. No.6",
        price = 1400000,
        star = 5,
        doorCoord = vector3(-888.12408447266, 42.493576049805, 49.146965026855),
        garageDoorCoord = vector3(-874.65789794922, 46.032215118408, 48.789108276367),
        garageDoorCoordH = 185.23,
        garage = "10cargarage",
        interior = "GetExecApartment2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Portolia Dr. No.7",
        price = 1550000,
        star = 5,
        doorCoord = vector3(-930.35369873047, 19.461946487427, 48.525779724121),
        garageDoorCoord = vector3(-928.03198242188, 12.00171661377, 47.74870300293),
        garageDoorCoordH = 213.22,
        garage = "10cargarage",
        interior = "GetExecApartment2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Portolia Dr. No.8",
        price = 1375000,
        star = 5,
        doorCoord = vector3(-896.57580566406, -5.1530699729919, 43.798862457275),
        garageDoorCoord = vector3(-887.98345947266, -15.878307342529, 43.113311767578),
        garageDoorCoordH = 12.85,
        garage = "10cargarage",
        interior = "GetExecApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Portolia Dr. No.9",
        price = 1875000,
        star = 5,
        doorCoord = vector3(-842.18829345703, -25.09143447876, 40.398376464844),
        garageDoorCoord = vector3(-873.34802246094, -54.307186126709, 38.216941833496),
        garageDoorCoordH = 290.64,
        garage = "10cargarage",
        interior = "GetExecApartment2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Portolia Dr. No.10",
        price = 1600000,
        star = 5,
        doorCoord = vector3(-830.39074707031, 115.11083221436, 56.02974319458),
        garageDoorCoord = vector3(-837.61883544922, 114.35732269287, 55.325752258301),
        garageDoorCoordH = 196.99,
        garage = "10cargarage",
        interior = "GetExecApartment2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Portolia Dr. No.11",
        price = 1200000,
        star = 5,
        doorCoord = vector3(-877.31872558594, 306.54382324219, 84.154251098633),
        garageDoorCoord = vector3(-868.97198486328, 319.07797241211, 83.977798461914),
        garageDoorCoordH = 186.97,
        garage = "10cargarage",
        interior = "GetExecApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Portolia Dr. No.12",
        price = 1100000,
        star = 5,
        doorCoord = vector3(-881.29425048828, 363.69644165039, 85.362678527832),
        garageDoorCoord = vector3(-888.78894042969, 366.23684692383, 85.031448364258),
        garageDoorCoordH = 342.06,
        garage = "10cargarage",
        interior = "GetExecApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Portolia Dr. No.13",
        price = 1000000,
        star = 5,
        doorCoord = vector3(-819.33184814453, 267.78500366211, 86.395919799805),
        garageDoorCoord = vector3(-826.06427001953, 272.49691772461, 86.262878417969),
        garageDoorCoordH = 330.30,
        garage = "10cargarage",
        interior = "GetExecApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Senora Fw. No.184",
        price = 80000,
        star = 1,
        doorCoord = vector3(2588.3032226563, 3167.7561035156, 51.367385864258),
        garageDoorCoord = vector3(2590.7790527344, 3159.349609375, 50.80643081665),
        garageDoorCoordH = 316.32,
        garage = "2cargarage",
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Senora Fw. No.2148",
        price = 70000,
        star = 1,
        doorCoord = vector3(2634.4240722656, 3292.13671875, 55.728385925293),
        garage = "2cargarage",
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Senora Fw. No.2149",
        price = 70000,
        star = 1,
        doorCoord = vector3(2632.3247070313, 3257.8291015625, 55.463340759277),
        garageDoorCoord = vector3(2659.9865722656, 3275.6994628906, 55.240516662598),
        garageDoorCoordH = 117.48,
        garage = "2cargarage",
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Senora Fw. No.2150",
        price = 70000,
        star = 1,
        doorCoord = vector3(2618.2099609375, 3275.2553710938, 55.738208770752),
        garage = "2cargarage",
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Smoke Tree Rd. No.1",
        price = 10000,
        star = 1,
        doorCoord = vector3(2392.9675292969, 3320.3344726563, 48.45751953125),
        garage = false,
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = false}
        }        
    },
    {
        name = "Smoke Tree Rd. No.2",
        price = 10000,
        star = 1,
        doorCoord = vector3(2389.2280273438, 3341.7060546875, 47.939506530762),
        garage = false,
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = false}
        }        
    },
    {
        name = "Smoke Tree Rd. No.3",
        price = 10000,
        star = 1,
        doorCoord = vector3(2483.9228515625, 3445.7221679688, 51.068325042725),
        garage = false,
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Smoke Tree Rd. No.4",
        price = 13000,
        star = 1,
        doorCoord = vector3(2200.6328125, 3317.9145507813, 47.054454803467),
        garage = false,
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Smoke Tree Rd. No.5",
        price = 13000,
        star = 1,
        doorCoord = vector3(2175.2106933594, 3322.2241210938, 46.466625213623),
        garage = false,
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Smoke Tree Rd. No.6",
        price = 13000,
        star = 1,
        doorCoord = vector3(2162.970703125, 3374.8400878906, 46.385391235352),
        garage = false,
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Smoke Tree Rd. No.7",
        price = 13000,
        star = 1,
        doorCoord = vector3(2179.0554199219, 3496.369140625, 46.014045715332),
        garage = false,
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Smoke Tree Rd. No.8",
        price = 15000,
        star = 1,
        doorCoord = vector3(2728.1066894531, 4142.16796875, 44.287902832031),
        garage = false,
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Smoke Tree Rd. No.9",
        price = 20000,
        star = 1,
        doorCoord = vector3(2729.1315917969, 4280.6782226563, 48.961166381836),
        garageDoorCoord = vector3(2735.4262695313, 4294.1435546875, 48.301029205322),
        garageDoorCoordH = 93.27,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Smoke Tree Rd. No.10",
        price = 14000,
        star = 1,
        doorCoord = vector3(2639.4565429688, 4246.2163085938, 44.752346038818),
        garage = false,
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Smoke Tree Rd. No.11",
        price = 20000,
        star = 1,
        doorCoord = vector3(2566.6867675781, 4283.2880859375, 41.973751068115),
        garage = false,
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Catfish View No.1",
        price = 250000,
        star = 3,
        doorCoord = vector3(3310.7453613281, 5176.5708007813, 19.614812850952),
        garageDoorCoord = vector3(3331.3796386719, 5156.671875, 18.314249038696),
        garageDoorCoordH = 143.23,
        garage = "6cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Catfish View No.2",
        price = 135000,
        star = 2,
        doorCoord = vector3(3688.0600585938, 4562.8598632813, 25.183048248291),
        garageDoorCoord = vector3(3695.6440429688, 4562.2294921875, 25.306564331055),
        garageDoorCoordH = 177.35,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Catfish View No.3",
        price = 125000,
        star = 2,
        doorCoord = vector3(3725.296875, 4525.5751953125, 22.47047996521),
        garageDoorCoord = vector3(3717.2641601563, 4528.6245117188, 21.733924865723),
        garageDoorCoordH = 152.25,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Catfish View No.4",
        price = 180000,
        star = 2,
        doorCoord = vector3(3807.80859375, 4478.5463867188, 6.3652153015137),
        garageDoorCoord = vector3(3807.8322753906, 4471.576171875, 4.348690032959),
        garageDoorCoordH = 109.14,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Chilliad Resort No.1",
        price = 400000,
        star = 3,
        doorCoord = vector3(2221.9736328125, 5614.73046875, 54.901416778564),
        garageDoorCoord = vector3(2195.2236328125, 5606.6977539063, 53.572845458984),
        garageDoorCoordH = 335.11,
        garage = "6cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Seaview Rd. No.1",
        price = 200000,
        star = 2,
        doorCoord = vector3(1967.0113525391, 4634.16796875, 41.10160446167),
        garageDoorCoord = vector3(1973.1782226563, 4642.6293945313, 41.004531860352),
        garageDoorCoordH = 72.58,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Seaview Rd. No.2",
        price = 165000,
        star = 2,
        doorCoord = vector3(1662.0999755859, 4776.0415039063, 42.067543029785),
        garageDoorCoord = vector3(1665.1976318359, 4768.8071289063, 41.998428344727),
        garageDoorCoordH = 280.80,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Seaview Rd. No.3",
        price = 95000,
        star = 1,
        doorCoord = vector3(1663.947265625, 4739.62890625, 42.011096954346),
        garage = false,
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Seaview Rd. No.4",
        price = 175000,
        star = 2,
        doorCoord = vector3(1719.1420898438, 4677.2719726563, 43.655776977539),
        garageDoorCoord = vector3(1718.3923339844, 4669.3188476563, 43.169464111328),
        garageDoorCoordH = 85.54,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Seaview Rd. No.5",
        price = 90000,
        star = 1,
        doorCoord = vector3(1682.7958984375, 4689.5126953125, 43.065658569336),
        garage = false,
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Seaview Rd. No.6",
        price = 165000,
        star = 2,
        doorCoord = vector3(1673.7252197266, 4658.23828125, 43.371189117432),
        garageDoorCoord = vector3(1683.7025146484, 4663.2685546875, 43.364696502686),
        garageDoorCoordH = 268.30,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Seaview Rd. No.7",
        price = 70000,
        star = 1,
        doorCoord = vector3(1725.4802246094, 4642.484375, 43.875476837158),
        garage = false,
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Calafia Rd. No.1",
        price = 65000,
        star = 1,
        doorCoord = vector3(1429.6730957031, 4377.603515625, 44.599262237549),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Calafia Rd. No.2",
        price = 65000,
        star = 1,
        doorCoord = vector3(1381.6384277344, 4381.9663085938, 45.183815002441),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Calafia Rd. No.3",
        price = 65000,
        star = 1,
        doorCoord = vector3(1365.9730224609, 4358.0498046875, 44.500484466553),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Calafia Rd. No.4",
        price = 65000,
        star = 1,
        doorCoord = vector3(1338.2855224609, 4359.4721679688, 44.367290496826),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Calafia Rd. No.5",
        price = 75000,
        star = 1,
        doorCoord = vector3(776.36889648438, 4184.1127929688, 41.796817779541),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Calafia Rd. No.6",
        price = 85000,
        star = 1,
        doorCoord = vector3(741.67907714844, 4170.8842773438, 41.087844848633),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Marina Dr. No.1",
        price = 115000,
        star = 1,
        doorCoord = vector3(909.53948974609, 3554.8981933594, 33.817623138428),
        garageDoorCoord = vector3(918.67834472656, 3565.1398925781, 33.762702941895),
        garageDoorCoordH = 331.86,
        garage = "2cargarage",
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Marina Dr. No.2",
        price = 70000,
        star = 1,
        doorCoord = vector3(1385.2869873047, 3659.4375, 34.928737640381),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Marina Dr. No.3",
        price = 120000,
        star = 2,
        doorCoord = vector3(1407.0565185547, 3655.984375, 34.430492401123),
        garageDoorCoord = vector3(1404.6379394531, 3667.7458496094, 34.059062957764),
        garageDoorCoordH = 90.82,
        garage = "2cargarage",
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Marina Dr. No.4",
        price = 70000,
        star = 1,
        doorCoord = vector3(1532.7603759766, 3722.2504882813, 34.817447662354),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Marina Dr. No.5",
        price = 65000,
        star = 1,
        doorCoord = vector3(1639.244140625, 3731.3283691406, 35.067100524902),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Marina Dr. No.6",
        price = 115000,
        star = 1,
        doorCoord = vector3(1728.4376220703, 3851.7912597656, 34.785037994385),
        garageDoorCoord = vector3(1733.0943603516, 3860.1877441406, 34.708164215088),
        garageDoorCoordH = 213.3,
        garage = "2cargarage",
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Marina Dr. No.7",
        price = 74500,
        star = 1,
        doorCoord = vector3(1733.6839599609, 3895.2980957031, 35.554676055908),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Marina Dr. No.8",
        price = 65500,
        star = 1,
        doorCoord = vector3(1748.8787841797, 3783.6142578125, 34.834911346436),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Marina Dr. No.9",
        price = 67500,
        star = 1,
        doorCoord = vector3(1777.4440917969, 3738.1696777344, 34.655052185059),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Marina Dr. No.10",
        price = 55000,
        star = 1,
        doorCoord = vector3(1826.8059082031, 3729.6047363281, 33.961898803711),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Marina Dr. No.11",
        price = 75000,
        star = 1,
        doorCoord = vector3(1777.4744873047, 3799.8491210938, 34.525177001953),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Marina Dr. No.12",
        price = 125000,
        star = 2,
        doorCoord = vector3(1803.5263671875, 3913.96484375, 37.056930541992),
        garageDoorCoord = vector3(1809.8905029297, 3924.3176269531, 33.672832489014),
        garageDoorCoordH = 36.98,
        garage = "2cargarage",
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Marina Dr. No.13",
        price = 115000,
        star = 2,
        doorCoord = vector3(1861.8979492188, 3857.2202148438, 36.271614074707),
        garageDoorCoord = vector3(1849.4702148438, 3873.625, 33.185810089111),
        garageDoorCoordH = 41.02,
        garage = "2cargarage",
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Marina Dr. No.14",
        price = 65000,
        star = 1,
        doorCoord = vector3(1880.5426025391, 3920.6442871094, 33.217182159424),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Marina Dr. No.15",
        price = 57000,
        star = 1,
        doorCoord = vector3(1915.7470703125, 3909.3408203125, 33.441631317139),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Marina Dr. No.16",
        price = 59000,
        star = 1,
        doorCoord = vector3(1932.8836669922, 3804.9609375, 32.911247253418),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Marina Dr. No.17",
        price = 115000,
        star = 1,
        doorCoord = vector3(1899.8342285156, 3773.2705078125, 32.877902984619),
        garageDoorCoord = vector3(1887.3817138672, 3771.322265625, 32.813735961914),
        garageDoorCoordH = 199.11,
        garage = "2cargarage",
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Route 68 No.1",
        price = 35000,
        star = 1,
        doorCoord = vector3(851.72387695313, 2857.9606933594, 58.391265869141),
        garage = false,
        interior = "Motel1",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Route 68 No.2",
        price = 34000,
        star = 1,
        doorCoord = vector3(866.53948974609, 2878.4626464844, 57.875839233398),
        garage = false,
        interior = "Motel1",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Route 68 No.3",
        price = 34000,
        star = 1,
        doorCoord = vector3(890.84893798828, 2854.8229980469, 57.000381469727),
        garage = false,
        interior = "Motel1",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Route 68 No.4",
        price = 27000,
        star = 1,
        doorCoord = vector3(524.53021240234, 3080.6110839844, 40.912227630615),
        garage = false,
        interior = "Motel1",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Route 68 No.5",
        price = 26000,
        star = 1,
        doorCoord = vector3(509.00924682617, 3099.6750488281, 41.307907104492),
        garage = false,
        interior = "Motel1",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Route 68 No.6",
        price = 26000,
        star = 1,
        doorCoord = vector3(436.37857055664, 2996.1584472656, 41.283821105957),
        garage = false,
        interior = "Motel1",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Route 68 No.7",
        price = 26000,
        star = 1,
        doorCoord = vector3(412.49133300781, 2965.2541503906, 41.888076782227),
        garage = false,
        interior = "Motel1",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Route 68 No.8",
        price = 85000,
        star = 1,
        doorCoord = vector3(361.52819824219, 2977.01171875, 41.622894287109),
        garageDoorCoord = vector3(375.24060058594, 2984.6040039063, 40.867027282715),
        garageDoorCoordH = 304.79,
        garage = "2cargarage",
        interior = "Motel1",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Route 68 No.9",
        price = 48500,
        star = 1,
        doorCoord = vector3(980.34063720703, 2666.12890625, 40.023113250732),
        garage = false,
        interior = "Motel1",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Route 68 No.10",
        price = 30000,
        star = 1,
        doorCoord = vector3(1586.3154296875, 2906.9243164063, 57.96760559082),
        garage = false,
        interior = "Motel1",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Senora Rd No.1541",
        price = 30000,
        star = 1,
        doorCoord = vector3(722.36486816406, 2330.8439941406, 51.75036239624),
        garage = false,
        interior = "Motel1",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Senora Rd No.1453",
        price = 117500,
        star = 1,
        doorCoord = vector3(791.58740234375, 2176.5327148438, 52.648380279541),
        garageDoorCoord = vector3(808.89947509766, 2180.8879394531, 52.307090759277),
        garageDoorCoordH = 336.94,
        garage = "2cargarage",
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Joshua Rd. No.1",
        price = 105000,
        star = 1,
        doorCoord = vector3(248.74578857422, 3180.3225097656, 42.918804168701),
        garageDoorCoord = vector3(240.54025268555, 3165.353515625, 42.64672088623),
        garageDoorCoordH = 100.82,
        garage = "2cargarage",
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Joshua Rd. No.2",
        price = 115000,
        star = 1,
        doorCoord = vector3(241.60772705078, 3107.7788085938, 42.48722076416),
        garageDoorCoord = vector3(238.00224304199, 3112.1057128906, 42.419490814209),
        garageDoorCoordH = 173.05,
        garage = "2cargarage",
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Joshua Rd. No.3",
        price = 38000,
        star = 1,
        doorCoord = vector3(191.1300201416, 3081.904296875, 43.472805023193),
        garage = false,
        interior = "Motel1",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Joshua Rd. No.4",
        price = 110000,
        star = 1,
        doorCoord = vector3(195.14033508301, 3030.9020996094, 43.886650085449),
        garageDoorCoord = vector3(195.95883178711, 3039.0297851563, 43.770515441895),
        garageDoorCoordH = 272.88,
        garage = "2cargarage",
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Harmony No.1",
        price = 15000,
        star = 1,
        doorCoord = vector3(341.57592773438, 2615.2687988281, 44.672409057617),
        garage = false,
        interior = "Motel1",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Harmony No.2",
        price = 15000,
        star = 1,
        doorCoord = vector3(354.11447143555, 2620.1530761719, 44.672378540039),
        garage = false,
        interior = "Motel1",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Harmony No.3",
        price = 15000,
        star = 1,
        doorCoord = vector3(367.03677368164, 2624.73828125, 44.672428131104),
        garage = false,
        interior = "Motel1",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Harmony No.4",
        price = 15000,
        star = 1,
        doorCoord = vector3(379.71398925781, 2629.5395507813, 44.672443389893),
        garage = false,
        interior = "Motel1",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Harmony No.5",
        price = 15000,
        star = 1,
        doorCoord = vector3(392.56079101563, 2634.1081542969, 44.672454833984),
        garage = false,
        interior = "Motel1",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Harmony No.6",
        price = 45000,
        star = 1,
        doorCoord = vector3(471.25003051758, 2607.4594726563, 44.477653503418),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Harmony No.7",
        price = 45000,
        star = 1,
        doorCoord = vector3(506.47412109375, 2610.1496582031, 43.978401184082),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Senora Rd No.2716",
        price = 95500,
        star = 1,
        doorCoord = vector3(200.94938659668, 2442.0991210938, 60.454399108887),
        garageDoorCoord = vector3(200.16607666016, 2455.7163085938, 56.095329284668),
        garageDoorCoordH = 250.87,
        garage = "2cargarage",
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Baytree Canyon Rd No.216",
        price = 105500,
        star = 1,
        doorCoord = vector3(-43.913242340088, 1959.8270263672, 190.35316467285),
        garageDoorCoord = vector3(-53.617069244385, 1949.6796875, 190.18623352051),
        garageDoorCoordH = 25.75,
        garage = "2cargarage",
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Baytree Canyon Rd No.215",
        price = 37500,
        star = 3,
        doorCoord = vector3(-264.04696655273, 2196.4299316406, 130.3988494873),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Zancudo Grande Vl. No.658",
        price = 35500,
        star = 1,
        doorCoord = vector3(-287.63809204102, 2535.8813476563, 75.694702148438),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Procopio Dr. No.1",
        price = 64500,
        star = 1,
        doorCoord = vector3(35.418880462646, 6663.2016601563, 32.190460205078),
        garage = false,
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Procopio Dr. No.2",
        price = 67500,
        star = 1,
        doorCoord = vector3(-9.6510429382324, 6654.1977539063, 31.699552536011),
        garage = false,
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Procopio Dr. No.3",
        price = 75500,
        star = 1,
        doorCoord = vector3(1.6597291231155, 6612.4750976563, 32.08141708374),
        garage = false,
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Procopio Dr. No.4",
        price = 165000,
        star = 2,
        doorCoord = vector3(31.216381072998, 6596.7153320313, 32.822040557861),
        garageDoorCoord = vector3(35.521137237549, 6606.6357421875, 32.47066116333),
        garageDoorCoordH = 252.21,
        garage = "2cargarage",
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Procopio Dr. No.5",
        price = 145000,
        star = 2,
        doorCoord = vector3(11.509558677673, 6578.4135742188, 33.070621490479),
        garageDoorCoord = vector3(15.419644355774, 6583.7568359375, 32.450775146484),
        garageDoorCoordH = 220.05,
        garage = "2cargarage",
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Procopio Dr. No.6",
        price = 175000,
        star = 2,
        doorCoord = vector3(-26.493965148926, 6597.2348632813, 31.860782623291),
        garageDoorCoord = vector3(-10.193800926208, 6600.197265625, 31.470548629761),
        garageDoorCoordH = 30.14,
        garage = "2cargarage",
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Procopio Dr. No.7",
        price = 55000,
        star = 2,
        doorCoord = vector3(-41.583469390869, 6637.373046875, 31.087532043457),
        garage = false,
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Procopio Dr. No.8",
        price = 52000,
        star = 2,
        doorCoord = vector3(-44.322647094727, 6582.1157226563, 32.175525665283),
        garage = false,
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Procopio Dr. No.9",
        price = 175000,
        star = 2,
        doorCoord = vector3(-15.266209602356, 6557.3930664063, 33.240432739258),
        garageDoorCoord = vector3(-11.438286781311, 6563.9360351563, 31.961599349976),
        garageDoorCoordH = 220.34,
        garage = "2cargarage",
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Procopio Dr. No.10",
        price = 165000,
        star = 2,
        doorCoord = vector3(-105.72046661377, 6528.5190429688, 30.166913986206),
        garageDoorCoord = vector3(-106.16706085205, 6535.79296875, 29.809169769287),
        garageDoorCoordH = 48.57,
        garage = "2cargarage",
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Procopio Dr. No.11",
        price = 135000,
        star = 2,
        doorCoord = vector3(-229.66577148438, 6445.5756835938, 31.197437286377),
        garageDoorCoord = vector3(-227.03598022461, 6437.43359375, 31.199449539185),
        garageDoorCoordH = 227.16,
        garage = "2cargarage",
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Procopio Dr. No.12",
        price = 135000,
        star = 2,
        doorCoord = vector3(-188.81262207031, 6409.6796875, 32.296714782715),
        garage = false,
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Procopio Dr. No.13",
        price = 75000,
        star = 2,
        doorCoord = vector3(-213.69790649414, 6396.1567382813, 33.085140228271),
        garageDoorCoord = vector3(-196.43385314941, 6395.80078125, 31.862531661987),
        garageDoorCoordH = 40.88,
        garage = "2cargarage",
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Procopio Dr. No.14",
        price = 65000,
        star = 2,
        doorCoord = vector3(-245.90742492676, 6414.4052734375, 31.465780258179),
        garage = false,
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Procopio Dr. No.15",
        price = 115000,
        star = 2,
        doorCoord = vector3(-227.28759765625, 6377.337890625, 31.759462356567),
        garageDoorCoord = vector3(-219.33749389648, 6382.3627929688, 31.600614547729),
        garageDoorCoordH = 43.36,
        garage = "2cargarage",
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Procopio Dr. No.16",
        price = 155000,
        star = 2,
        doorCoord = vector3(-247.69929504395, 6370.015625, 31.850879669189),
        garageDoorCoord = vector3(-253.12864685059, 6358.91796875, 31.481126785278),
        garageDoorCoordH = 43.51,
        garage = "2cargarage",
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Procopio Dr. No.17",
        price = 165000,
        star = 2,
        doorCoord = vector3(-302.2135925293, 6326.99609375, 32.886779785156),
        garageDoorCoord = vector3(-295.75009155273, 6339.8583984375, 32.129947662354),
        garageDoorCoordH = 45.44,
        garage = "2cargarage",
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Procopio Dr. No.18",
        price = 125000,
        star = 2,
        doorCoord = vector3(-359.61898803711, 6334.619140625, 29.849021911621),
        garageDoorCoord = vector3(-360.57052612305, 6327.6196289063, 29.832275390625),
        garageDoorCoordH = 221.36,
        garage = "2cargarage",
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Procopio Dr. No.19",
        price = 145000,
        star = 2,
        doorCoord = vector3(-407.41445922852, 6314.0615234375, 28.940866470337),
        garageDoorCoord = vector3(-395.27728271484, 6310.9599609375, 29.031341552734),
        garageDoorCoordH = 219.25,
        garage = "2cargarage",
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Procopio Dr. No.20",
        price = 125000,
        star = 2,
        doorCoord = vector3(-360.23239135742, 6260.6030273438, 31.902849197388),
        garageDoorCoord = vector3(-358.91772460938, 6272.2001953125, 30.961696624756),
        garageDoorCoordH = 41.79,
        garage = "2cargarage",
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Procopio Dr. No.21",
        price = 140000,
        star = 2,
        doorCoord = vector3(-448.08352661133, 6260.0947265625, 30.047985076904),
        garageDoorCoord = vector3(-432.1096496582, 6262.5375976563, 30.313659667969),
        garageDoorCoordH = 257.48,
        garage = "2cargarage",
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Procopio Dr. No.22",
        price = 135000,
        star = 2,
        doorCoord = vector3(-347.55648803711, 6225.3188476563, 31.888505935669),
        garageDoorCoord = vector3(-354.73443603516, 6222.0971679688, 31.488920211792),
        garageDoorCoordH = 222.41,
        garage = "2cargarage",
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Procopio Dr. No.23",
        price = 134500,
        star = 2,
        doorCoord = vector3(-356.91015625, 6207.5576171875, 31.842830657959),
        garageDoorCoord = vector3(-367.88354492188, 6200.5698242188, 31.493228912354),
        garageDoorCoordH = 224.88,
        garage = "2cargarage",
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Procopio Dr. No.24",
        price = 127500,
        star = 2,
        doorCoord = vector3(-374.49969482422, 6191.0424804688, 31.729541778564),
        garageDoorCoord = vector3(-380.00469970703, 6185.5014648438, 31.490594863892),
        garageDoorCoordH = 221.26,
        garage = "2cargarage",
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Barbareno Rd. No.1",
        price = 167500,
        star = 2,
        doorCoord = vector3(-3190.9716796875, 1297.7791748047, 19.073663711548),
        garageDoorCoord = vector3(-3173.1391601563, 1298.2113037109, 14.546550750732),
        garageDoorCoordH = 296.28,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Barbareno Rd. No.2",
        price = 145000,
        star = 2,
        doorCoord = vector3(-3187.3083496094, 1273.8688964844, 12.671424865723),
        garageDoorCoord = vector3(-3181.583984375, 1276.0246582031, 12.659193992615),
        garageDoorCoordH = 196.21,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Barbareno Rd. No.3",
        price = 125000,
        star = 2,
        doorCoord = vector3(-3194.2277832031, 1229.6772460938, 10.048321723938),
        garageDoorCoord = vector3(-3186.3327636719, 1224.4228515625, 10.029109954834),
        garageDoorCoordH = 203.94,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Barbareno Rd. No.4",
        price = 135000,
        star = 2,
        doorCoord = vector3(-3193.6557617188, 1208.4691162109, 9.4252271652222),
        garageDoorCoord = vector3(-3187.7919921875, 1203.1931152344, 9.4959497451782),
        garageDoorCoordH = 182.08,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Barbareno Rd. No.5",
        price = 125000,
        star = 2,
        doorCoord = vector3(-3200.4575195313, 1165.3388671875, 9.6543474197388),
        garageDoorCoord = vector3(-3196.0959472656, 1159.8706054688, 9.548059463501),
        garageDoorCoordH = 190.08,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Barbareno Rd. No.6",
        price = 127000,
        star = 2,
        doorCoord = vector3(-3215.1181640625, 1148.6049804688, 9.8954095840454),
        garageDoorCoord = vector3(-3202.6684570313, 1136.9223632813, 9.850604057312),
        garageDoorCoordH = 173.08,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Barbareno Rd. No.7",
        price = 132000,
        star = 2,
        doorCoord = vector3(-3225.376953125, 1112.8559570313, 10.577641487122),
        garageDoorCoord = vector3(-3219.6555175781, 1104.5185546875, 10.443312644958),
        garageDoorCoordH = 189.92,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Barbareno Rd. No.8",
        price = 142000,
        star = 2,
        doorCoord = vector3(-3238.34375, 952.54449462891, 13.34122467041),
        garageDoorCoord = vector3(-3233.9948730469, 950.77374267578, 13.245481491089),
        garageDoorCoordH = 223.36,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Barbareno Rd. No.9",
        price = 135200,
        star = 2,
        doorCoord = vector3(-3229.0554199219, 927.35333251953, 13.969766616821),
        garageDoorCoord = vector3(-3224.8972167969, 927.54418945313, 13.902680397034),
        garageDoorCoordH = 236.03,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Ineseno Rd. No.1",
        price = 215000,
        star = 2,
        doorCoord = vector3(-2972.2094726563, 599.02893066406, 24.441497802734),
        garageDoorCoord = vector3(-2981.4714355469, 611.22027587891, 20.146753311157),
        garageDoorCoordH = 153.80,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Ineseno Rd. No.2",
        price = 465000,
        star = 3,
        doorCoord = vector3(-2972.6201171875, 642.63763427734, 25.989063262939),
        garageDoorCoord = vector3(-2983.0546875, 653.97857666016, 24.872737884521),
        garageDoorCoordH = 103.36,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Ineseno Rd. No.3",
        price = 435000,
        star = 3,
        doorCoord = vector3(-2994.4829101563, 682.63879394531, 25.041288375854),
        garageDoorCoord = vector3(-3002.322265625, 687.80725097656, 24.217620849609),
        garageDoorCoordH = 95.9,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Ineseno Rd. No.4",
        price = 625000,
        star = 4,
        doorCoord = vector3(-2992.9790039063, 707.66943359375, 28.696725845337),
        garageDoorCoord = vector3(-2995.1198730469, 704.42590332031, 28.487424850464),
        garageDoorCoordH = 109.54,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Ineseno Rd. No.5",
        price = 535000,
        star = 4,
        doorCoord = vector3(-3017.0703125, 746.79022216797, 27.782644271851),
        garageDoorCoord = vector3(-3019.513671875, 739.26513671875, 27.542840957642),
        garageDoorCoordH = 99.46,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Ineseno Rd. No.6",
        price = 225000,
        star = 3,
        doorCoord = vector3(-3089.2744140625, 221.09141540527, 14.120671272278),
        garageDoorCoord = vector3(-3083.3032226563, 222.67134094238, 14.001518249512),
        garageDoorCoordH = 329.85,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Ineseno Rd. No.7",
        price = 95000,
        star = 1,
        doorCoord = vector3(-3105.3408203125, 246.6593170166, 12.496008872986),
        garage = false,
        interior = "GetGTAOApartmentHi2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Ineseno Rd. No.8",
        price = 205000,
        star = 2,
        doorCoord = vector3(-3115.1435546875, 304.34066772461, 8.3810424804688),
        garageDoorCoord = vector3(-3096.6926269531, 307.00756835938, 8.3272819519043),
        garageDoorCoordH = 262.71,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Ineseno Rd. No.9",
        price = 235000,
        star = 2,
        doorCoord = vector3(-3093.7687988281, 349.40557861328, 7.5440902709961),
        garageDoorCoord = vector3(-3088.4731445313, 341.37033081055, 7.4004549980164),
        garageDoorCoordH = 250.41,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Ineseno Rd. No.10",
        price = 215000,
        star = 2,
        doorCoord = vector3(-3088.8623046875, 392.32684326172, 11.447468757629),
        garageDoorCoord = vector3(-3071.2683105469, 393.4684753418, 6.9685235023499),
        garageDoorCoordH = 296.04,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Ineseno Rd. No.11",
        price = 205000,
        star = 2,
        doorCoord = vector3(-3071.1984863281, 442.68688964844, 6.3579468727112),
        garageDoorCoord = vector3(-3055.3991699219, 446.08975219727, 6.3617043495178),
        garageDoorCoordH = 242.23,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Ineseno Rd. No.12",
        price = 195000,
        star = 2,
        doorCoord = vector3(-3031.8010253906, 525.05938720703, 7.4227676391602),
        garageDoorCoord = vector3(-3028.4401855469, 525.3056640625, 7.373598575592),
        garageDoorCoordH = 195.23,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Ineseno Rd. No.13",
        price = 185000,
        star = 2,
        doorCoord = vector3(-3044.7509765625, 564.45733642578, 7.8188967704773),
        garageDoorCoord = vector3(-3026.9782714844, 572.07537841797, 7.6042976379395),
        garageDoorCoordH = 344.85,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Ineseno Rd. No.14",
        price = 225000,
        star = 2,
        doorCoord = vector3(-3077.9794921875, 658.89825439453, 11.66605091095),
        garageDoorCoord = vector3(-3072.9750976563, 658.01599121094, 11.143644332886),
        garageDoorCoordH = 336.35,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Ineseno Rd. No.15",
        price = 205000,
        star = 2,
        doorCoord = vector3(-3107.4418945313, 718.87103271484, 20.643203735352),
        garageDoorCoord = vector3(-3101.5964355469, 716.07995605469, 20.444328308105),
        garageDoorCoordH = 216.03,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Ineseno Rd. No.16",
        price = 185000,
        star = 2,
        doorCoord = vector3(-3108.970703125, 751.95343017578, 24.701854705811),
        garageDoorCoord = vector3(-3098.6564941406, 741.84753417969, 21.034044265747),
        garageDoorCoordH = 293.65,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Forum Dr. No.1",
        price = 245000,
        star = 2,
        doorCoord = vector3(16.868028640747, -1443.7818603516, 30.949487686157),
        garageDoorCoord = vector3(6.12535572052, -1453.0522460938, 30.504110336304),
        garageDoorCoordH = 156.15,
        garage = "2cargarage",
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Forum Dr. No.4",
        price = 215000,
        star = 2,
        doorCoord = vector3(-32.600444793701, -1446.3643798828, 31.891403198242),
        garageDoorCoord = vector3(-38.567001342773, -1447.7033691406, 31.498901367188),
        garageDoorCoordH = 186.41,
        garage = "2cargarage",
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Forum Dr. No.5",
        price = 200000,
        star = 2,
        doorCoord = vector3(-45.802150726318, -1445.4852294922, 32.429725646973),
        garageDoorCoord = vector3(-52.604759216309, -1456.3939208984, 32.036022186279),
        garageDoorCoordH = 118.36,
        garage = "2cargarage",
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Forum Dr. No.6",
        price = 185000,
        star = 2,
        doorCoord = vector3(-64.546257019043, -1449.4835205078, 32.525108337402),
        garageDoorCoord = vector3(-67.398498535156, -1460.5694580078, 32.051170349121),
        garageDoorCoordH = 142.89,
        garage = "2cargarage",
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Forum Dr. No.7",
        price = 40000,
        star = 1,
        doorCoord = vector3(-112.88721466064, -1478.9978027344, 33.822834014893),
        garage = false,
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Forum Dr. No.8",
        price = 40000,
        star = 1,
        doorCoord = vector3(-120.057472229, -1478.4305419922, 33.822875976563),
        garage = false,
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Forum Dr. No.9",
        price = 40000,
        star = 1,
        doorCoord = vector3(-132.32421875, -1462.7384033203, 33.822841644287),
        garage = false,
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Forum Dr. No.10",
        price = 40000,
        star = 1,
        doorCoord = vector3(-122.94079589844, -1460.1044921875, 33.822864532471),
        garage = false,
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Forum Dr. No.11",
        price = 40000,
        star = 1,
        doorCoord = vector3(-24.756162643433, -1556.7751464844, 30.686838150024),
        garage = false,
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Forum Dr. No.12",
        price = 40000,
        star = 1,
        doorCoord = vector3(-35.696807861328, -1555.2739257813, 30.676761627197),
        garage = false,
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Forum Dr. No.13",
        price = 40000,
        star = 1,
        doorCoord = vector3(-44.65140914917, -1547.0981445313, 31.448669433594),
        garage = false,
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Forum Dr. No.14",
        price = 40000,
        star = 1,
        doorCoord = vector3(-36.165657043457, -1536.9813232422, 31.454414367676),
        garage = false,
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Forum Dr. No.15",
        price = 40000,
        star = 1,
        doorCoord = vector3(-26.502464294434, -1544.2546386719, 30.676763534546),
        garage = false,
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Forum Dr. No.16",
        price = 20000,
        star = 1,
        doorCoord = vector3(-151.23078918457, -1622.3536376953, 33.649993896484),
        garage = false,
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Forum Dr. No.17",
        price = 20000,
        star = 1,
        doorCoord = vector3(-161.22459411621, -1638.6823730469, 34.028835296631),
        garage = false,
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Forum Dr. No.18",
        price = 25000,
        star = 1,
        doorCoord = vector3(-141.56118774414, -1693.6309814453, 33.06640625),
        garage = false,
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Forum Dr. No.19",
        price = 25000,
        star = 1,
        doorCoord = vector3(-157.94235229492, -1679.880859375, 33.836730957031),
        garage = false,
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Forum Dr. No.20",
        price = 15000,
        star = 1,
        doorCoord = vector3(-124.04337310791, -1671.283203125, 32.564311981201),
        garage = false,
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Forum Dr. No.21",
        price = 15000,
        star = 1,
        doorCoord = vector3(-131.53813171387, -1665.5695800781, 32.564315795898),
        garage = false,
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Forum Dr. No.22",
        price = 15000,
        star = 1,
        doorCoord = vector3(-138.74369812012, -1658.9069824219, 33.346103668213),
        garage = false,
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Forum Dr. No.23",
        price = 15000,
        star = 1,
        doorCoord = vector3(-129.11524963379, -1647.4299316406, 33.30350112915),
        garage = false,
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Forum Dr. No.24",
        price = 15000,
        star = 1,
        doorCoord = vector3(-121.17942810059, -1653.3038330078, 32.564376831055),
        garage = false,
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Forum Dr. No.25",
        price = 15000,
        star = 1,
        doorCoord = vector3(-114.30295562744, -1659.6928710938, 32.56432723999),
        garage = false,
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Amarillo Vista No.1",
        price = 85000,
        star = 1,
        doorCoord = vector3(1259.1832275391, -1761.6710205078, 49.658992767334),
        garageDoorCoord = vector3(1243.3708496094, -1755.0601806641, 45.291927337646),
        garageDoorCoordH = 301.91,
        garage = "2cargarage",
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Amarillo Vista No.2",
        price = 82500,
        star = 1,
        doorCoord = vector3(1250.9498291016, -1734.4407958984, 52.032356262207),
        garageDoorCoord = vector3(1246.6629638672, -1747.7686767578, 46.659351348877),
        garageDoorCoordH = 117.83,
        garage = "2cargarage",
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Amarillo Vista No.3",
        price = 90250,
        star = 1,
        doorCoord = vector3(1295.2205810547, -1739.5048828125, 54.272151947021),
        garageDoorCoord = vector3(1302.6434326172, -1741.5502929688, 53.878997802734),
        garageDoorCoordH = 24.86,
        garage = "2cargarage",
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Amarillo Vista No.4",
        price = 125500,
        star = 1,
        doorCoord = vector3(1288.9967041016, -1710.6002197266, 55.480094909668),
        garageDoorCoord = vector3(1302.3382568359, -1707.1003417969, 55.128265380859),
        garageDoorCoordH = 203.39,
        garage = "2cargarage",
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Amarillo Vista No.5",
        price = 110500,
        star = 1,
        doorCoord = vector3(1314.4576416016, -1732.8724365234, 54.700702667236),
        garageDoorCoord = vector3(1331.9182128906, -1732.5391845703, 56.155544281006),
        garageDoorCoordH = 351.27,
        garage = "2cargarage",
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Amarillo Vista No.6",
        price = 47500,
        star = 1,
        doorCoord = vector3(1354.9141845703, -1690.4514160156, 60.490970611572),
        garage = false,
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Amarillo Vista No.7",
        price = 123500,
        star = 1,
        doorCoord = vector3(1365.5490722656, -1721.6701660156, 65.633895874023),
        garageDoorCoord = vector3(1380.4664306641, -1733.134765625, 65.616889953613),
        garageDoorCoordH = 191.06,
        garage = "2cargarage",
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Fudge Lane No.1",
        price = 95500,
        star = 1,
        doorCoord = vector3(1411.8286132813, -1490.4064941406, 60.656936645508),
        garageDoorCoord = vector3(1421.8604736328, -1505.4533691406, 60.910549163818),
        garageDoorCoordH = 160.05,
        garage = "2cargarage",
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Fudge Lane No.2",
        price = 98500,
        star = 1,
        doorCoord = vector3(1390.9749755859, -1508.0306396484, 58.435791015625),
        garageDoorCoord = vector3(1373.2856445313, -1521.7706298828, 57.164730072021),
        garageDoorCoordH = 200.23,
        garage = "2cargarage",
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Fudge Lane No.3",
        price = 97500,
        star = 1,
        doorCoord = vector3(1381.9110107422, -1544.6995849609, 57.107189178467),
        garageDoorCoord = vector3(1394.6179199219, -1532.5167236328, 57.495384216309),
        garageDoorCoordH = 84.76,
        garage = "2cargarage",
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Fudge Lane No.4",
        price = 46500,
        star = 1,
        doorCoord = vector3(1360.6157226563, -1556.3629150391, 56.346870422363),
        garage = false,
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Fudge Lane No.5",
        price = 47500,
        star = 1,
        doorCoord = vector3(1338.2429199219, -1524.2338867188, 54.581619262695),
        garage = false,
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Fudge Lane No.6",
        price = 45500,
        star = 1,
        doorCoord = vector3(1315.7738037109, -1526.4957275391, 51.807476043701),
        garage = false,
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Fudge Lane No.7",
        price = 105500,
        star = 1,
        doorCoord = vector3(1327.6044921875, -1553.115234375, 54.051567077637),
        garageDoorCoord = vector3(1335.7354736328, -1547.8697509766, 52.609645843506),
        garageDoorCoordH = 40.25,
        garage = "2cargarage",
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Fudge Lane No.8",
        price = 55500,
        star = 1,
        doorCoord = vector3(1286.6285400391, -1604.5008544922, 54.824951171875),
        garage = false,
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Fudge Lane No.9",
        price = 53500,
        star = 1,
        doorCoord = vector3(1261.5085449219, -1616.7552490234, 54.742904663086),
        garage = false,
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Fudge Lane No.10",
        price = 56500,
        star = 1,
        doorCoord = vector3(1230.6778564453, -1591.0826416016, 53.769550323486),
        garage = false,
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Fudge Lane No.11",
        price = 115500,
        star = 1,
        doorCoord = vector3(1245.3590087891, -1626.8908691406, 53.28246307373),
        garageDoorCoord = vector3(1236.3430175781, -1629.8956298828, 51.869468688965),
        garageDoorCoordH = 28.23,
        garage = "2cargarage",
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Fudge Lane No.12",
        price = 56500,
        star = 1,
        doorCoord = vector3(1210.2133789063, -1606.6809082031, 50.736743927002),
        garage = false,
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Fudge Lane No.13",
        price = 58500,
        star = 1,
        doorCoord = vector3(1214.5599365234, -1644.3145751953, 48.645931243896),
        garage = false,
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Fudge Lane No.14",
        price = 62500,
        star = 1,
        doorCoord = vector3(1193.4942626953, -1622.2901611328, 45.22144317627),
        garage = false,
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Fudge Lane No.15",
        price = 54500,
        star = 1,
        doorCoord = vector3(1193.5107421875, -1656.5904541016, 43.026397705078),
        garage = false,
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Grove St. No.1",
        price = 48500,
        star = 1,
        doorCoord = vector3(-50.358661651611, -1783.3370361328, 28.300720214844),
        garage = false,
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Grove St. No.2",
        price = 49500,
        star = 1,
        doorCoord = vector3(-34.229461669922, -1847.1325683594, 26.193815231323),
        garage = false,
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Grove St. No.3",
        price = 51500,
        star = 1,
        doorCoord = vector3(-20.627014160156, -1858.7381591797, 25.408912658691),
        garage = false,
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Grove St. No.4",
        price = 145500,
        star = 2,
        doorCoord = vector3(21.177396774292, -1844.7987060547, 24.601703643799),
        garageDoorCoord = vector3(9.3408031463623, -1846.3955078125, 24.289245605469),
        garageDoorCoordH = 141.74,
        garage = "2cargarage",
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Grove St. No.5",
        price = 155500,
        star = 2,
        doorCoord = vector3(-4.7056169509888, -1872.03125, 24.151025772095),
        garageDoorCoord = vector3(-3.8994989395142, -1881.9100341797, 23.675033569336),
        garageDoorCoordH = 320.11,
        garage = "2cargarage",
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Grove St. No.6",
        price = 153500,
        star = 2,
        doorCoord = vector3(4.9712376594543, -1884.2264404297, 23.697195053101),
        garageDoorCoord = vector3(17.367530822754, -1883.6411132813, 23.24250793457),
        garageDoorCoordH = 321.18,
        garage = "2cargarage",
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Grove St. No.7",
        price = 148500,
        star = 2,
        doorCoord = vector3(23.14927482605, -1896.9279785156, 22.965797424316),
        garageDoorCoord = vector3(34.182273864746, -1892.8494873047, 22.210460662842),
        garageDoorCoordH = 1.78,
        garage = "2cargarage",
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Grove St. No.8",
        price = 55500,
        star = 1,
        doorCoord = vector3(54.149810791016, -1873.3555908203, 22.805574417114),
        garage = false,
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Grove St. No.9",
        price = 145500,
        star = 2,
        doorCoord = vector3(39.057777404785, -1911.5238037109, 21.953567504883),
        garageDoorCoord = vector3(39.850170135498, -1923.1387939453, 21.662872314453),
        garageDoorCoordH = 318.04,
        garage = "2cargarage",
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Grove St. No.10",
        price = 147600,
        star = 2,
        doorCoord = vector3(56.531894683838, -1922.8029785156, 21.91109085083),
        garageDoorCoord = vector3(68.224647521973, -1920.9644775391, 21.336273193359),
        garageDoorCoordH = 320.83,
        garage = "2cargarage",
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Grove St. No.11",
        price = 62500,
        star = 1,
        doorCoord = vector3(72.220191955566, -1939.1177978516, 21.369346618652),
        garage = false,
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Grove St. No.12",
        price = 61500,
        star = 1,
        doorCoord = vector3(76.349044799805, -1948.1195068359, 21.174230575562),
        garage = false,
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Grove St. No.13",
        price = 163500,
        star = 2,
        doorCoord = vector3(85.80069732666, -1959.5924072266, 21.121681213379),
        garageDoorCoord = vector3(89.012580871582, -1966.9462890625, 20.747573852539),
        garageDoorCoordH = 324.04,
        garage = "2cargarage",
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Grove St. No.14",
        price = 155500,
        star = 2,
        doorCoord = vector3(114.15111541748, -1961.0744628906, 21.334442138672),
        garageDoorCoord = vector3(116.21201324463, -1949.427734375, 20.708955764771),
        garageDoorCoordH = 87.92,
        garage = "2cargarage",
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Grove St. No.15",
        price = 63500,
        star = 1,
        doorCoord = vector3(126.76564025879, -1929.9870605469, 21.382499694824),
        garage = false,
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Grove St. No.16",
        price = 62200,
        star = 1,
        doorCoord = vector3(100.91075897217, -1912.1884765625, 21.4075050354),
        garage = false,
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Grove St. No.17",
        price = 60500,
        star = 1,
        doorCoord = vector3(103.93981933594, -1885.3011474609, 24.318307876587),
        garage = false,
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Grove St. No.18",
        price = 60000,
        star = 1,
        doorCoord = vector3(115.4038848877, -1887.724609375, 23.928256988525),
        garage = false,
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Grove St. No.19",
        price = 135500,
        star = 2,
        doorCoord = vector3(128.1290435791, -1897.1695556641, 23.674129486084),
        garageDoorCoord = vector3(139.64306640625, -1893.8167724609, 23.537509918213),
        garageDoorCoordH = 335.87,
        garage = "2cargarage",
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Grove St. No.20",
        price = 142500,
        star = 2,
        doorCoord = vector3(148.73225402832, -1904.4729003906, 23.532035827637),
        garageDoorCoord = vector3(160.03251647949, -1898.3883056641, 22.946798324585),
        garageDoorCoordH = 266.82,
        garage = "2cargarage",
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Grove St. No.21",
        price = 138000,
        star = 2,
        doorCoord = vector3(192.32897949219, -1883.3582763672, 25.056753158569),
        garageDoorCoord = vector3(176.08630371094, -1885.4576416016, 24.073028564453),
        garageDoorCoordH = 157.45,
        garage = "2cargarage",
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Grove St. No.22",
        price = 139000,
        star = 2,
        doorCoord = vector3(171.60151672363, -1871.4656982422, 24.400228500366),
        garageDoorCoord = vector3(163.10852050781, -1867.2451171875, 24.049493789673),
        garageDoorCoordH = 154.75,
        garage = "2cargarage",
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Grove St. No.23",
        price = 138500,
        star = 2,
        doorCoord = vector3(150.16268920898, -1864.7260742188, 24.59132194519),
        garageDoorCoord = vector3(139.34994506836, -1869.4774169922, 24.123216629028),
        garageDoorCoordH = 154.39,
        garage = "2cargarage",
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Grove St. No.24",
        price = 58500,
        star = 1,
        doorCoord = vector3(130.4483795166, -1853.1997070313, 25.234790802002),
        garage = false,
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Grove St. No.25",
        price = 134500,
        star = 2,
        doorCoord = vector3(152.76574707031, -1823.7407226563, 27.868375778198),
        garageDoorCoord = vector3(139.81053161621, -1829.8094482422, 27.19044303894),
        garageDoorCoordH = 50.60,
        garage = "2cargarage",
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Roy Lowenstein Blvd. No.1",
        price = 54500,
        star = 1,
        doorCoord = vector3(250.64535522461, -1934.9345703125, 24.70112991333),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Roy Lowenstein Blvd. No.2",
        price = 52500,
        star = 1,
        doorCoord = vector3(258.10586547852, -1927.0062255859, 25.444774627686),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Roy Lowenstein Blvd. No.3",
        price = 120500,
        star = 1,
        doorCoord = vector3(270.31887817383, -1917.1599121094, 26.180335998535),
        garageDoorCoord = vector3(269.49008178711, -1905.5357666016, 26.63232421875),
        garageDoorCoordH = 59.34,
        garage = "2cargarage",
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Roy Lowenstein Blvd. No.4",
        price = 55500,
        star = 1,
        doorCoord = vector3(282.72116088867, -1899.1948242188, 27.267324447632),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Roy Lowenstein Blvd. No.5",
        price = 137500,
        star = 2,
        doorCoord = vector3(329.4323425293, -1845.7884521484, 27.748081207275),
        garageDoorCoord = vector3(336.02261352539, -1837.0445556641, 27.308296203613),
        garageDoorCoordH = 44.23,
        garage = "2cargarage",
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Roy Lowenstein Blvd. No.6",
        price = 135500,
        star = 2,
        doorCoord = vector3(348.50866699219, -1820.7471923828, 28.894119262695),
        garageDoorCoord = vector3(347.90997314453, -1809.0695800781, 28.473281860352),
        garageDoorCoordH = 48.59,
        garage = "2cargarage",
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
   --[[ {
        name = "Roy Lowenstein Blvd. No.7",
        price = 52500,
        star = 1,
        doorCoord = vector3(406.05859375, -1751.4158935547, 29.710329055786),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Roy Lowenstein Blvd. No.8",
        price = 132500,
        star = 2,
        doorCoord = vector3(418.9909362793, -1735.4104003906, 29.607696533203),
        garageDoorCoord = vector3(431.66812133789, -1735.7209472656, 29.246934890747),
        garageDoorCoordH = 46.08,
        garage = "2cargarage",
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Roy Lowenstein Blvd. No.9",
        price = 134500,
        star = 2,
        doorCoord = vector3(431.14666748047, -1725.5308837891, 29.601463317871),
        garageDoorCoord = vector3(430.49716186523, -1713.8240966797, 29.454908370972),
        garageDoorCoordH = 59.22,
        garage = "2cargarage",
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Roy Lowenstein Blvd. No.10",
        price = 133500,
        star = 2,
        doorCoord = vector3(443.35873413086, -1707.3153076172, 29.708885192871),
        garageDoorCoord = vector3(440.67074584961, -1694.2683105469, 29.251754760742),
        garageDoorCoordH = 11.17,
        garage = "2cargarage",
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.1",
        price = 40500,
        star = 1,
        doorCoord = vector3(500.65225219727, -1697.1839599609, 29.78807258606),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.2",
        price = 125500,
        star = 2,
        doorCoord = vector3(489.61236572266, -1714.0876464844, 29.70689201355),
        garageDoorCoord = vector3(484.61059570313, -1719.7436523438, 29.410598754883),
        garageDoorCoordH = 244.11,
        garage = "2cargarage",
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.3",
        price = 124500,
        star = 2,
        doorCoord = vector3(479.77700805664, -1735.8016357422, 29.151021957397),
        garageDoorCoord = vector3(473.76330566406, -1743.013671875, 28.917320251465),
        garageDoorCoordH = 248.47,
        garage = "2cargarage",
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.4",
        price = 38500,
        star = 1,
        doorCoord = vector3(474.58047485352, -1757.595703125, 29.0924949646),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.5",
        price = 134500,
        star = 2,
        doorCoord = vector3(472.14709472656, -1775.3280029297, 29.069900512695),
        garageDoorCoord = vector3(481.89471435547, -1793.7369384766, 28.52702331543),
        garageDoorCoordH = 207.21,
        garage = "2cargarage",
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },]]
    {
        name = "Jamestown St. No.6",
        price = 39500,
        star = 1,
        doorCoord = vector3(514.24700927734, -1780.8795166016, 28.913974761963),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.7",
        price = 115000,
        star = 2,
        doorCoord = vector3(512.30114746094, -1790.6954345703, 28.919494628906),
        garageDoorCoord = vector3(501.28076171875, -1796.9873046875, 28.402921676636),
        garageDoorCoordH = 97.40,
        garage = "2cargarage",
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.8",
        price = 110500,
        star = 2,
        doorCoord = vector3(495.35360717773, -1823.3118896484, 28.869703292847),
        garageDoorCoord = vector3(482.70910644531, -1822.5780029297, 27.933393478394),
        garageDoorCoordH = 139.82,
        garage = "2cargarage",
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.9",
        price = 122500,
        star = 2,
        doorCoord = vector3(440.39749145508, -1830.0689697266, 28.361879348755),
        garageDoorCoord = vector3(430.82940673828, -1830.45703125, 27.978914260864),
        garageDoorCoordH = 221.32,
        garage = "2cargarage",
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.10",
        price = 40000,
        star = 1,
        doorCoord = vector3(427.38314819336, -1841.7385253906, 28.46343421936),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.11",
        price = 142500,
        star = 2,
        doorCoord = vector3(412.70489501953, -1856.4327392578, 27.323154449463),
        garageDoorCoord = vector3(402.43930053711, -1856.1793212891, 26.801834106445),
        garageDoorCoordH = 221.32,
        garage = "2cargarage",
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.12",
        price = 32000,
        star = 1,
        doorCoord = vector3(399.69100952148, -1865.1833496094, 26.716232299805),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.13",
        price = 132500,
        star = 2,
        doorCoord = vector3(385.25942993164, -1881.7308349609, 26.031337738037),
        garageDoorCoord = vector3(385.68771362305, -1895.1633300781, 25.04280090332),
        garageDoorCoordH = 266.51,
        garage = "2cargarage",
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.14",
        price = 132500,
        star = 2,
        doorCoord = vector3(368.57229614258, -1895.6329345703, 25.178527832031),
        garageDoorCoord = vector3(360.28631591797, -1899.5047607422, 24.800649642944),
        garageDoorCoordH = 229.84,
        garage = "2cargarage",
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.15",
        price = 134500,
        star = 2,
        doorCoord = vector3(324.38555908203, -1937.3729248047, 25.018972396851),
        garageDoorCoord = vector3(314.55587768555, -1941.5102539063, 24.644090652466),
        garageDoorCoordH = 232.35,
        garage = "2cargarage",
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.16",
        price = 128500,
        star = 2,
        doorCoord = vector3(312.48950195313, -1956.2292480469, 24.616903305054),
        garageDoorCoord = vector3(313.51483154297, -1967.9022216797, 23.518577575684),
        garageDoorCoordH = 262.58,
        garage = "2cargarage",
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.17",
        price = 38000,
        star = 1,
        doorCoord = vector3(295.66516113281, -1971.9466552734, 22.900663375854),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.18",
        price = 132500,
        star = 2,
        doorCoord = vector3(291.52905273438, -1980.3489990234, 21.600528717041),
        garageDoorCoord = vector3(284.78207397461, -1984.2625732422, 21.158464431763),
        garageDoorCoordH = 226.72,
        garage = "2cargarage",
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.19",
        price = 118500,
        star = 2,
        doorCoord = vector3(279.79718017578, -1993.4858398438, 20.803781509399),
        garageDoorCoord = vector3(282.53631591797, -2004.5786132813, 20.186588287354),
        garageDoorCoordH = 163.0,
        garage = "2cargarage",
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.20",
        price = 39200,
        star = 1,
        doorCoord = vector3(256.6721496582, -2023.7973632813, 19.268014907837),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.21",
        price = 122500,
        star = 2,
        doorCoord = vector3(236.44160461426, -2046.19140625, 18.380018234253),
        garageDoorCoord = vector3(249.5650177002, -2044.8666992188, 17.910009384155),
        garageDoorCoordH = 170.45,
        garage = "2cargarage",
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.22",
        price = 15000,
        star = 1,
        doorCoord = vector3(279.87771606445, -2043.5759277344, 19.767559051514),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.23",
        price = 15000,
        star = 1,
        doorCoord = vector3(286.47286987305, -2052.767578125, 19.652925491333),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.24",
        price = 15000,
        star = 1,
        doorCoord = vector3(293.19869995117, -2044.2757568359, 19.65970993042),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.25",
        price = 15000,
        star = 1,
        doorCoord = vector3(306.42080688477, -2045.1734619141, 20.911895751953),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.26",
        price = 15000,
        star = 1,
        doorCoord = vector3(315.70037841797, -2056.4670410156, 20.939493179321),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.27",
        price = 15000,
        star = 1,
        doorCoord = vector3(324.12152099609, -2063.5275878906, 20.932075500488),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.28",
        price = 15000,
        star = 1,
        doorCoord = vector3(332.45520019531, -2070.5258789063, 20.939834594727),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.29",
        price = 15000,
        star = 1,
        doorCoord = vector3(301.38153076172, -2076.3798828125, 17.708889007568),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.30",
        price = 15000,
        star = 1,
        doorCoord = vector3(304.97076416016, -2086.6674804688, 17.709043502808),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.31",
        price = 15000,
        star = 1,
        doorCoord = vector3(295.61141967773, -2093.1333007813, 17.663511276245),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.32",
        price = 15000,
        star = 1,
        doorCoord = vector3(293.42868041992, -2086.0651855469, 17.663568496704),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.33",
        price = 15000,
        star = 1,
        doorCoord = vector3(288.42272949219, -2072.505859375, 17.663564682007),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.34",
        price = 15000,
        star = 1,
        doorCoord = vector3(323.18545532227, -2111.6274414063, 18.128366470337),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.35",
        price = 15000,
        star = 1,
        doorCoord = vector3(332.65557861328, -2106.154296875, 18.126747131348),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.36",
        price = 15000,
        star = 1,
        doorCoord = vector3(357.85140991211, -2073.4096679688, 21.744485855103),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.37",
        price = 15000,
        star = 1,
        doorCoord = vector3(365.00424194336, -2064.5705566406, 21.740791320801),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.38",
        price = 15000,
        star = 1,
        doorCoord = vector3(372.40936279297, -2056.0126953125, 21.744480133057),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.39",
        price = 15000,
        star = 1,
        doorCoord = vector3(377.69729614258, -2066.4670410156, 21.75962638855),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.40",
        price = 15000,
        star = 1,
        doorCoord = vector3(370.76672363281, -2074.6762695313, 21.754688262939),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.41",
        price = 15000,
        star = 1,
        doorCoord = vector3(363.7682800293, -2083.0153808594, 21.75736618042),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.42",
        price = 15000,
        star = 1,
        doorCoord = vector3(391.99884033203, -2044.0865478516, 23.418725967407),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.43",
        price = 15000,
        star = 1,
        doorCoord = vector3(397.06060791016, -2034.1644287109, 23.414264678955),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.44",
        price = 15000,
        star = 1,
        doorCoord = vector3(401.29837036133, -2024.2406005859, 23.413867950439),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.45",
        price = 15000,
        star = 1,
        doorCoord = vector3(383.13571166992, -2037.6909179688, 23.401933670044),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.46",
        price = 15000,
        star = 1,
        doorCoord = vector3(388.57864379883, -2025.8645019531, 23.403121948242),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.47",
        price = 15000,
        star = 1,
        doorCoord = vector3(393.52478027344, -2015.4013671875, 23.403127670288),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.48",
        price = 15000,
        star = 1,
        doorCoord = vector3(365.39318847656, -2031.9532470703, 22.391584396362),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.49",
        price = 15000,
        star = 1,
        doorCoord = vector3(356.95880126953, -2025.0042724609, 22.395412445068),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.50",
        price = 15000,
        star = 1,
        doorCoord = vector3(345.39678955078, -2015.3264160156, 22.39280128479),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.51",
        price = 15000,
        star = 1,
        doorCoord = vector3(330.84368896484, -2000.2425537109, 24.046146392822),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.52",
        price = 15000,
        star = 1,
        doorCoord = vector3(337.52993774414, -1991.8883056641, 24.046339035034),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.53",
        price = 15000,
        star = 1,
        doorCoord = vector3(356.91091918945, -1996.6170654297, 24.245719909668),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.54",
        price = 15000,
        star = 1,
        doorCoord = vector3(366.87069702148, -2000.5745849609, 24.245738983154),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.55",
        price = 15000,
        star = 1,
        doorCoord = vector3(377.26071166992, -2004.4482421875, 24.256656646729),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.56",
        price = 15000,
        star = 1,
        doorCoord = vector3(385.29849243164, -1995.5284423828, 24.234964370728),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.57",
        price = 15000,
        star = 1,
        doorCoord = vector3(374.59909057617, -1991.509765625, 24.234888076782),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.58",
        price = 15000,
        star = 1,
        doorCoord = vector3(362.24505615234, -1987.1591796875, 24.233743667603),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.59",
        price = 15000,
        star = 1,
        doorCoord = vector3(334.5754699707, -1978.5701904297, 24.167032241821),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.60",
        price = 15000,
        star = 1,
        doorCoord = vector3(324.10290527344, -1990.7900390625, 24.160947799683),
        garage = false,
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Jamestown St. No.61",
        price = 212500,
        star = 1,
        doorCoord = vector3(519.59387207031, -1734.1594238281, 30.691484451294),
        garageDoorCoord = vector3(520.12280273438, -1762.1867675781, 28.692270278931),
        garageDoorCoordH = 63.60,
        garage = "2cargarage",
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "South LS Blokları No.1",
        price = 90000,
        star = 1,
        doorCoord = vector3(470.74752807617, -1561.3558349609, 32.815284729004),
        garageDoorCoord = vector3(453.21957397461, -1573.5294189453, 29.283018112183),
        garageDoorCoordH = 47.67,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "South LS Blokları No.2",
        price = 90000,
        star = 1,
        doorCoord = vector3(460.69515991211, -1573.3843994141, 32.822643280029),
        garageDoorCoord = vector3(453.21957397461, -1573.5294189453, 29.283018112183),
        garageDoorCoordH = 47.67,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "South LS Blokları No.3",
        price = 90000,
        star = 1,
        doorCoord = vector3(466.95590209961, -1590.2769775391, 32.820682525635),
        garageDoorCoord = vector3(453.21957397461, -1573.5294189453, 29.283018112183),
        garageDoorCoordH = 47.67,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "South LS Blokları No.4",
        price = 90000,
        star = 1,
        doorCoord = vector3(460.90093994141, -1585.1964111328, 32.821147918701),
        garageDoorCoord = vector3(453.21957397461, -1573.5294189453, 29.283018112183),
        garageDoorCoordH = 47.67,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "South LS Blokları No.5",
        price = 90000,
        star = 1,
        doorCoord = vector3(454.94821166992, -1580.2071533203, 32.820037841797),
        garageDoorCoord = vector3(453.21957397461, -1573.5294189453, 29.283018112183),
        garageDoorCoordH = 47.67,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "South LS Blokları No.6",
        price = 90000,
        star = 1,
        doorCoord = vector3(442.21588134766, -1569.6004638672, 32.823036193848),
        garageDoorCoord = vector3(453.21957397461, -1573.5294189453, 29.283018112183),
        garageDoorCoordH = 47.67,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "South LS Blokları No.7",
        price = 90000,
        star = 1,
        doorCoord = vector3(436.2385559082, -1564.5395507813, 32.822406768799),
        garageDoorCoord = vector3(453.21957397461, -1573.5294189453, 29.283018112183),
        garageDoorCoordH = 47.67,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "South LS Blokları No.8",
        price = 90000,
        star = 1,
        doorCoord = vector3(430.10101318359, -1559.3831787109, 32.823310852051),
        garageDoorCoord = vector3(453.21957397461, -1573.5294189453, 29.283018112183),
        garageDoorCoordH = 47.67,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "La Puerta Blokları. No.1",
        price = 60000,
        star = 1,
        doorCoord = vector3(-922.36486816406, -1414.0161132813, 7.6791644096375),
        garage = false,
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "La Puerta Blokları. No.2",
        price = 55000,
        star = 1,
        doorCoord = vector3(-923.13739013672, -1397.146484375, 7.6791715621948),
        garage = false,
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "La Puerta Blokları. No.3",
        price = 55000,
        star = 1,
        doorCoord = vector3(-939.14593505859, -1402.8674316406, 7.6791710853577),
        garage = false,
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "La Puerta Blokları. No.4",
        price = 55000,
        star = 1,
        doorCoord = vector3(-935.7314453125, -1412.0705566406, 7.6791634559631),
        garage = false,
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "La Puerta Blokları. No.5",
        price = 55000,
        star = 1,
        doorCoord = vector3(-931.17297363281, -1424.3649902344, 7.6791639328003),
        garage = false,
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "La Puerta Blokları. No.6",
        price = 60000,
        star = 1,
        doorCoord = vector3(-928.44097900391, -1416.3854980469, 7.7630076408386),
        garage = false,
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "La Puerta Blokları. No.7",
        price = 60000,
        star = 1,
        doorCoord = vector3(-963.57672119141, -1429.0817871094, 7.7604613304138),
        garage = false,
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "La Puerta Blokları. No.8",
        price = 55000,
        star = 1,
        doorCoord = vector3(-956.27362060547, -1433.4725341797, 7.6791734695435),
        garage = false,
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "La Puerta Blokları. No.9",
        price = 55000,
        star = 1,
        doorCoord = vector3(-960.7998046875, -1421.0672607422, 7.6791734695435),
        garage = false,
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "La Puerta Blokları. No.10",
        price = 55000,
        star = 1,
        doorCoord = vector3(-964.09375, -1411.8392333984, 7.6791734695435),
        garage = false,
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "La Puerta Blokları. No.11",
        price = 55000,
        star = 1,
        doorCoord = vector3(-980.09191894531, -1417.5090332031, 7.6791739463806),
        garage = false,
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "La Puerta Blokları. No.12",
        price = 55000,
        star = 1,
        doorCoord = vector3(-976.73577880859, -1426.7608642578, 7.6791667938232),
        garage = false,
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "La Puerta Blokları. No.13",
        price = 55000,
        star = 1,
        doorCoord = vector3(-972.09710693359, -1439.2420654297, 7.6791739463806),
        garage = false,
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
   --[[ {
        name = "La Puerta Blokları. No.14",
        price = 60000,
        star = 1,
        doorCoord = vector3(-969.79522705078, -1431.2817382813, 7.6791734695435),
        garage = false,
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },]]
    {
        name = "La Puerta Blokları. No.15",
        price = 55000,
        star = 1,
        doorCoord = vector3(-968.69830322266, -1447.9965820313, 7.6791687011719),
        garage = false,
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "La Puerta Blokları. No.16",
        price = 55000,
        star = 1,
        doorCoord = vector3(-953.00463867188, -1442.0744628906, 7.6791653633118),
        garage = false,
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Sahili No.1",
        price = 75000,
        star = 2,
        doorCoord = vector3(-1098.3905029297, -1679.0178222656, 4.3636336326599),
        garage = false,
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Sahili No.2",
        price = 80000,
        star = 2,
        doorCoord = vector3(-1097.5471191406, -1673.0406494141, 8.3941469192505),
        garage = false,
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Sahili No.3",
        price = 80000,
        star = 2,
        doorCoord = vector3(-1349.6997070313, -1161.4555664063, 4.5062212944031),
        garageDoorCoord = vector3(-1321.8955078125, -1148.6622314453, 4.4785628318787),
        garageDoorCoordH = 359.68,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Sahili No.4",
        price = 80000,
        star = 2,
        doorCoord = vector3(-1335.8530273438, -1146.8836669922, 6.7314195632935),
        garageDoorCoord = vector3(-1319.35, -1134.9, 4.12),
        garageDoorCoordH = 359.68,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Sahili No.5",
        price = 140000,
        star = 2,
        doorCoord = vector3(-1300.5325927734, -1233.5637207031, 4.4863390922546),
        garageDoorCoord = vector3(-1311.2121582031, -1239.5814208984, 4.7448282241821),
        garageDoorCoordH = 196.68,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Sahili No.6",
        price = 120000,
        star = 2,
        doorCoord = vector3(-1285.2094726563, -1253.2071533203, 4.519579410553),
        garageDoorCoord = vector3(-1311.2121582031, -1239.5814208984, 4.7448282241821),
        garageDoorCoordH = 196.68,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Sahili No.7",
        price = 120000,
        star = 2,
        doorCoord = vector3(-1286.3425292969, -1267.0994873047, 4.5214200019836),
        garageDoorCoord = vector3(-1311.2121582031, -1239.5814208984, 4.7448282241821),
        garageDoorCoordH = 196.68,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Sahili No.8",
        price = 135000,
        star = 2,
        doorCoord = vector3(-1269.890625, -1296.3304443359, 4.0039434432983),
        garageDoorCoord = vector3(-1278.2565917969, -1308.0671386719, 4.0327820777893),
        garageDoorCoordH = 194.89,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Sahili No.9",
        price = 125000,
        star = 2,
        doorCoord = vector3(-1272.4267578125, -1295.4376220703, 8.2858972549438),
        garageDoorCoord = vector3(-1278.2565917969, -1308.0671386719, 4.0327820777893),
        garageDoorCoordH = 194.89,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Sahili No.10",
        price = 125000,
        star = 2,
        doorCoord = vector3(-1271.6641845703, -1297.5262451172, 8.2858972549438),
        garageDoorCoord = vector3(-1278.2565917969, -1308.0671386719, 4.0327820777893),
        garageDoorCoordH = 194.89,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Sahili No.11",
        price = 155000,
        star = 2,
        doorCoord = vector3(-1256.3497314453, -1330.8298339844, 4.08074426651),
        garageDoorCoord = vector3(-1258.3684082031, -1315.6634521484, 4.0114922523499),
        garageDoorCoordH = 348.47,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Sahili No.12",
        price = 147000,
        star = 2,
        doorCoord = vector3(-1246.8718261719, -1358.7937011719, 7.8209562301636),
        garageDoorCoord = vector3(-1261.7042236328, -1355.6717529297, 4.1340327262878),
        garageDoorCoordH = 48.73,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Sahili No.13",
        price = 127000,
        star = 2,
        doorCoord = vector3(-1032.0524902344, -1620.1716308594, 5.1084499359131),
        garageDoorCoord = vector3(-1045.6007080078, -1604.3804931641, 4.8227405548096),
        garageDoorCoordH = 36.08,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Sahili No.14",
        price = 127000,
        star = 2,
        doorCoord = vector3(-1023.4848022461, -1614.3225097656, 5.0884709358215),
        garageDoorCoord = vector3(-1036.2735595703, -1599.8717041016, 4.8711385726929),
        garageDoorCoordH = 36.08,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Sahili No.15",
        price = 137000,
        star = 2,
        doorCoord = vector3(-1043.3848876953, -1580.3310546875, 5.0394496917725),
        garageDoorCoord = vector3(-1045.8745117188, -1571.9970703125, 4.9781441688538),
        garageDoorCoordH = 6.68,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Sahili No.16",
        price = 137000,
        star = 2,
        doorCoord = vector3(-1049.1669921875, -1580.98828125, 4.98357629776),
        garageDoorCoord = vector3(-1054.9114990234, -1575.9481201172, 4.7699270248413),
        garageDoorCoordH = 36.60,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Sahili No.17",
        price = 128000,
        star = 2,
        doorCoord = vector3(-1084.3570556641, -1559.1214599609, 4.7827897071838),
        garageDoorCoord = vector3(-1070.37890625, -1575.9202880859, 4.4594225883484),
        garageDoorCoordH = 177.89,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Sahili No.18",
        price = 138000,
        star = 2,
        doorCoord = vector3(-1084.6080322266, -1559.1754150391, 4.782726764679),
        garageDoorCoord = vector3(-1069.8243408203, -1575.66796875, 4.4714970588684),
        garageDoorCoordH = 273.88,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Sahili No.19",
        price = 138000,
        star = 2,
        doorCoord = vector3(-1057.7502441406, -1540.6694335938, 5.0480237007141),
        garageDoorCoord = vector3(-1046.3009033203, -1554.1064453125, 5.0211081504822),
        garageDoorCoordH = 302.76,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Sahili No.20",
        price = 138000,
        star = 2,
        doorCoord = vector3(-1108.1978759766, -1527.1264648438, 6.7795314788818),
        garageDoorCoord = vector3(-1110.1691894531, -1518.3050537109, 4.4738621711731),
        garageDoorCoordH = 314.76,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Sahili No.21",
        price = 125000,
        star = 2,
        doorCoord = vector3(-1090.9113769531, -1485.2119140625, 5.3065819740295),
        garageDoorCoord = vector3(-1088.4566650391, -1495.8695068359, 5.0591506958008),
        garageDoorCoordH = 133.76,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Sahili No.22",
        price = 122000,
        star = 2,
        doorCoord = vector3(-1146.2105712891, -1466.4114990234, 4.4971294403076),
        garageDoorCoord = vector3(-1125.5089111328, -1470.3033447266, 4.5925679206848),
        garageDoorCoordH = 284.81,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Sahili No.23",
        price = 122000,
        star = 2,
        doorCoord = vector3(-1142.3663330078, -1461.2268066406, 4.6251068115234),
        garageDoorCoord = vector3(-1125.5089111328, -1470.3033447266, 4.5925679206848),
        garageDoorCoordH = 284.81,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Sahili No.24",
        price = 122000,
        star = 2,
        doorCoord = vector3(-1135.1223144531, -1468.2899169922, 4.623203754425),
        garageDoorCoord = vector3(-1125.5089111328, -1470.3033447266, 4.5925679206848),
        garageDoorCoordH = 284.81,
        garage = "2cargarage",
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Nikola Pl. No.1",
        price = 420000,
        star = 3,
        doorCoord = vector3(1303.1000976563, -527.77209472656, 71.480323791504),
        garageDoorCoord = vector3(1313.55859375, -520.75701904297, 71.31224822998),
        garageDoorCoordH = 148.81,
        garage = "6cargarage",
        interior = "GetHLApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Nikola Pl. No.2",
        price = 460000,
        star = 3,
        doorCoord = vector3(1328.4631347656, -535.97509765625, 72.440734863281),
        garageDoorCoord = vector3(1318.9305419922, -532.58978271484, 72.122406005859),
        garageDoorCoordH = 160.67,
        garage = "6cargarage",
        interior = "GetHLApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Nikola Pl. No.3",
        price = 430000,
        star = 3,
        doorCoord = vector3(1348.3146972656, -546.91497802734, 73.891708374023),
        garageDoorCoord = vector3(1358.5159912109, -542.05157470703, 73.774055480957),
        garageDoorCoordH = 153.67,
        garage = "6cargarage",
        interior = "GetHLApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Nikola Pl. No.4",
        price = 430000,
        star = 3,
        doorCoord = vector3(1373.287109375, -555.82104492188, 74.685958862305),
        garageDoorCoord = vector3(1364.4080810547, -549.75543212891, 74.338157653809),
        garageDoorCoordH = 157.98,
        garage = "6cargarage",
        interior = "GetHLApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Nikola Pl. No.5",
        price = 450000,
        star = 3,
        doorCoord = vector3(1389.1170654297, -569.61944580078, 74.499839782715),
        garageDoorCoord = vector3(1400.125, -572.74621582031, 74.339088439941),
        garageDoorCoordH = 111.98,
        garage = "6cargarage",
        interior = "GetHLApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Nikola Pl. No.6",
        price = 480000,
        star = 3,
        doorCoord = vector3(1386.2396240234, -593.42138671875, 74.520980834961),
        garageDoorCoord = vector3(1387.2431640625, -603.05633544922, 74.338172912598),
        garageDoorCoordH = 46.54,
        garage = "6cargarage",
        interior = "GetHLApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Nikola Pl. No.7",
        price = 440000,
        star = 3,
        doorCoord = vector3(1367.2673339844, -606.31481933594, 74.726402282715),
        garageDoorCoord = vector3(1360.1683349609, -614.49713134766, 74.338172912598),
        garageDoorCoordH = 356.47,
        garage = "6cargarage",
        interior = "GetHLApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Nikola Pl. No.8",
        price = 420000,
        star = 3,
        doorCoord = vector3(1341.4774169922, -597.28771972656, 74.700988769531),
        garageDoorCoord = vector3(1347.4127197266, -605.55975341797, 74.356773376465),
        garageDoorCoordH = 324.47,
        garage = "6cargarage",
        interior = "GetHLApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Nikola Pl. No.9",
        price = 435000,
        star = 3,
        doorCoord = vector3(1323.4617919922, -583.10699462891, 73.246246337891),
        garageDoorCoord = vector3(1313.3159179688, -588.05108642578, 72.932495117188),
        garageDoorCoordH = 332.09,
        garage = "6cargarage",
        interior = "GetHLApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Nikola Pl. No.10",
        price = 425000,
        star = 3,
        doorCoord = vector3(1301.0153808594, -574.29742431641, 71.732841491699),
        garageDoorCoord = vector3(1291.7670898438, -579.71197509766, 71.736099243164),
        garageDoorCoordH = 343.94,
        garage = "6cargarage",
        interior = "GetHLApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "East Mirror Dr. No.1",
        price = 250000,
        star = 2,
        doorCoord = vector3(1262.3227539063, -429.81918334961, 70.016006469727),
        garageDoorCoord = vector3(1259.8166503906, -420.21905517578, 69.431037902832),
        garageDoorCoordH = 299.94,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "East Mirror Dr. No.2",
        price = 110000,
        star = 1,
        doorCoord = vector3(1265.7973632813, -458.03768920898, 70.51815032959),
        garage = false,
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "East Mirror Dr. No.3",
        price = 112000,
        star = 1,
        doorCoord = vector3(1259.6397705078, -480.23245239258, 70.189521789551),
        garage = false,
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "East Mirror Dr. No.4",
        price = 270000,
        star = 2,
        doorCoord = vector3(1251.6589355469, -494.16253662109, 69.90828704834),
        garageDoorCoord = vector3(1259.0736083984, -492.27786254883, 69.438148498535),
        garageDoorCoordH = 255.94,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "East Mirror Dr. No.5",
        price = 275000,
        star = 2,
        doorCoord = vector3(1250.896484375, -515.44476318359, 69.349250793457),
        garageDoorCoord = vector3(1246.0050048828, -522.16259765625, 68.974571228027),
        garageDoorCoordH = 257.35,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "East Mirror Dr. No.6",
        price = 285000,
        star = 2,
        doorCoord = vector3(1241.5717773438, -566.47912597656, 69.657501220703),
        garageDoorCoord = vector3(1242.7580566406, -578.44439697266, 69.383926391602),
        garageDoorCoordH = 273.16,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "East Mirror Dr. No.7",
        price = 300000,
        star = 3,
        doorCoord = vector3(1240.5140380859, -601.60296630859, 69.781196594238),
        garageDoorCoord = vector3(1241.3190917969, -585.56195068359, 69.309593200684),
        garageDoorCoordH = 268.71,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "East Mirror Dr. No.8",
        price = 285000,
        star = 2,
        doorCoord = vector3(1250.8979492188, -620.94079589844, 69.571594238281),
        garageDoorCoord = vector3(1253.9957275391, -623.86474609375, 69.352241516113),
        garageDoorCoordH = 300.59,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "East Mirror Dr. No.9",
        price = 295000,
        star = 2,
        doorCoord = vector3(1265.6859130859, -648.55914306641, 68.119560241699),
        garageDoorCoord = vector3(1269.2202148438, -659.40655517578, 67.752418518066),
        garageDoorCoordH = 291.59,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "East Mirror Dr. No.10",
        price = 242000,
        star = 2,
        doorCoord = vector3(1271.171875, -683.51177978516, 66.031715393066),
        garageDoorCoord = vector3(1272.4371337891, -672.69964599609, 65.843544006348),
        garageDoorCoordH = 271.34,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "East Mirror Dr. No.11",
        price = 262000,
        star = 2,
        doorCoord = vector3(1264.7877197266, -702.74945068359, 64.909255981445),
        garageDoorCoord = vector3(1257.7038574219, -712.21563720703, 64.50666809082),
        garageDoorCoordH = 240.54,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Mirror Park Blvd. No.1",
        price = 325000,
        star = 3,
        doorCoord = vector3(1204.8852539063, -557.77105712891, 69.615730285645),
        garageDoorCoord = vector3(1189.0974121094, -554.06799316406, 64.551300048828),
        garageDoorCoordH = 33.26,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Mirror Park Blvd. No.2",
        price = 315000,
        star = 3,
        doorCoord = vector3(1201.0454101563, -575.61560058594, 69.139213562012),
        garageDoorCoord = vector3(1186.8103027344, -572.63543701172, 64.317024230957),
        garageDoorCoordH = 33.26,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Mirror Park Blvd. No.3",
        price = 322000,
        star = 3,
        doorCoord = vector3(1203.5787353516, -598.42523193359, 68.063346862793),
        garageDoorCoord = vector3(1188.4432373047, -595.42761230469, 63.959663391113),
        garageDoorCoordH = 40.19,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Mirror Park Blvd. No.4",
        price = 295000,
        star = 3,
        doorCoord = vector3(1207.2957763672, -620.31555175781, 66.438568115234),
        garageDoorCoord = vector3(1202.3582763672, -613.0166015625, 65.823081970215),
        garageDoorCoordH = 94.19,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Mirror Park Blvd. No.5",
        price = 305000,
        star = 3,
        doorCoord = vector3(1221.6151123047, -669.26556396484, 63.50138092041),
        garageDoorCoord = vector3(1216.5108642578, -665.58032226563, 62.82173538208),
        garageDoorCoordH = 105.19,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Mirror Park Blvd. No.7",
        price = 315000,
        star = 3,
        doorCoord = vector3(1220.8813476563, -689.44873046875, 61.104434967041),
        garageDoorCoord = vector3(1222.3634033203, -703.63580322266, 60.72184753418),
        garageDoorCoordH = 99.4,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Mirror Park Blvd. No.8",
        price = 295000,
        star = 3,
        doorCoord = vector3(1229.6016845703, -725.47338867188, 60.956279754639),
        garageDoorCoord = vector3(1225.0200195313, -726.39868164063, 60.581951141357),
        garageDoorCoordH = 159.37,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "West Mirror Dr. No.1",
        price = 315000,
        star = 3,
        doorCoord = vector3(997.1123046875, -729.56213378906, 57.815994262695),
        garageDoorCoord = vector3(1006.3960571289, -731.36309814453, 57.623321533203),
        garageDoorCoordH = 341.37,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "West Mirror Dr. No.2",
        price = 275000,
        star = 3,
        doorCoord = vector3(979.23358154297, -716.12786865234, 58.234874725342),
        garageDoorCoord = vector3(980.01489257813, -710.62036132813, 57.681129455566),
        garageDoorCoordH = 308.37,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "West Mirror Dr. No.3",
        price = 305000,
        star = 3,
        doorCoord = vector3(970.83502197266, -701.47241210938, 58.482112884521),
        garageDoorCoord = vector3(973.30865478516, -685.41931152344, 57.61597442627),
        garageDoorCoordH = 310.63,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "West Mirror Dr. No.4",
        price = 555000,
        star = 4,
        doorCoord = vector3(959.88238525391, -669.86431884766, 58.450511932373),
        garageDoorCoord = vector3(945.83868408203, -669.24078369141, 58.011646270752),
        garageDoorCoordH = 296.87,
        garage = "6cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "West Mirror Dr. No.5",
        price = 285000,
        star = 3,
        doorCoord = vector3(943.56616210938, -653.51904296875, 58.429695129395),
        garageDoorCoord = vector3(949.73815917969, -654.37384033203, 57.992961883545),
        garageDoorCoordH = 309.43,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "West Mirror Dr. No.6",
        price = 345000,
        star = 3,
        doorCoord = vector3(928.89147949219, -639.77838134766, 58.239631652832),
        garageDoorCoord = vector3(920.72991943359, -635.98736572266, 57.863834381104),
        garageDoorCoordH = 316.43,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "West Mirror Dr. No.7",
        price = 645000,
        star = 4,
        doorCoord = vector3(903.09204101563, -615.46179199219, 58.453689575195),
        garageDoorCoord = vector3(914.86297607422, -628.40704345703, 58.049407958984),
        garageDoorCoordH = 317.43,
        garage = "6cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "West Mirror Dr. No.8",
        price = 345000,
        star = 3,
        doorCoord = vector3(886.77526855469, -608.20855712891, 58.445373535156),
        garageDoorCoord = vector3(873.20104980469, -599.59619140625, 58.207302093506),
        garageDoorCoordH = 322.43,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "West Mirror Dr. No.9",
        price = 295000,
        star = 3,
        doorCoord = vector3(861.66326904297, -583.54071044922, 58.157348632813),
        garageDoorCoord = vector3(871.56500244141, -590.61340332031, 58.07532119751),
        garageDoorCoordH = 324.43,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "West Mirror Dr. No.10",
        price = 370000,
        star = 3,
        doorCoord = vector3(844.07342529297, -562.60931396484, 57.993194580078),
        garageDoorCoord = vector3(847.56018066406, -566.62731933594, 57.708850860596),
        garageDoorCoordH = 277.43,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "West Mirror Dr. No.11",
        price = 450000,
        star = 3,
        doorCoord = vector3(850.27337646484, -532.66259765625, 57.925521850586),
        garageDoorCoord = vector3(850.880859375, -542.24652099609, 57.325691223145),
        garageDoorCoordH = 268.43,
        garage = "6cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "West Mirror Dr. No.12",
        price = 340000,
        star = 3,
        doorCoord = vector3(861.51885986328, -509.02728271484, 57.721481323242),
        garageDoorCoord = vector3(856.36004638672, -519.67321777344, 57.298652648926),
        garageDoorCoordH = 225.43,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "West Mirror Dr. No.13",
        price = 315000,
        star = 3,
        doorCoord = vector3(878.29998779297, -498.03109741211, 58.091567993164),
        garageDoorCoord = vector3(867.68646240234, -500.24032592773, 57.497611999512),
        garageDoorCoordH = 226.43,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "West Mirror Dr. No.14",
        price = 515000,
        star = 4,
        doorCoord = vector3(906.25738525391, -489.30651855469, 59.469631195068),
        garageDoorCoord = vector3(912.69030761719, -485.55578613281, 59.036418914795),
        garageDoorCoordH = 204.43,
        garage = "6cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "West Mirror Dr. No.15",
        price = 325000,
        star = 3,
        doorCoord = vector3(921.93487548828, -478.09906005859, 61.081207275391),
        garageDoorCoord = vector3(932.43670654297, -478.70928955078, 60.704830169678),
        garageDoorCoordH = 202.43,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "West Mirror Dr. No.16",
        price = 345000,
        star = 3,
        doorCoord = vector3(944.47613525391, -463.212890625, 61.553764343262),
        garageDoorCoord = vector3(941.30584716797, -465.73498535156, 61.251934051514),
        garageDoorCoordH = 212.43,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "West Mirror Dr. No.17",
        price = 145000,
        star = 2,
        doorCoord = vector3(967.00616455078, -451.61346435547, 62.788265228271),
        garage = false,
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "West Mirror Dr. No.18",
        price = 245000,
        star = 2,
        doorCoord = vector3(987.46942138672, -433.00692749023, 64.049453735352),
        garageDoorCoord = vector3(991.61157226563, -435.98544311523, 63.77225112915),
        garageDoorCoordH = 275.69,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "West Mirror Dr. No.19",
        price = 275000,
        star = 3,
        doorCoord = vector3(1010.5428466797, -423.4704284668, 65.349426269531),
        garageDoorCoord = vector3(1014.1151123047, -421.77563476563, 64.973526000977),
        garageDoorCoordH = 214.69,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "West Mirror Dr. No.20",
        price = 245000,
        star = 2,
        doorCoord = vector3(1028.8106689453, -408.33331298828, 66.341781616211),
        garageDoorCoord = vector3(1022.1197509766, -417.87573242188, 65.939384460449),
        garageDoorCoordH = 217.69,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "West Mirror Dr. No.21",
        price = 265000,
        star = 2,
        doorCoord = vector3(1060.3856201172, -378.23358154297, 68.231262207031),
        garageDoorCoord = vector3(1049.7506103516, -379.15328979492, 67.853469848633),
        garageDoorCoordH = 220.69,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "West Mirror Dr. No.22",
        price = 215000,
        star = 2,
        doorCoord = vector3(1114.4193115234, -391.32913208008, 68.94849395752),
        garageDoorCoord = vector3(1108.5196533203, -399.82284545898, 68.088569641113),
        garageDoorCoordH = 76.88,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "West Mirror Dr. No.23",
        price = 235000,
        star = 2,
        doorCoord = vector3(1101.1228027344, -411.36282348633, 67.55534362793),
        garageDoorCoord = vector3(1103.4133300781, -418.68572998047, 67.153671264648),
        garageDoorCoordH = 81.91,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "West Mirror Dr. No.24",
        price = 225000,
        star = 2,
        doorCoord = vector3(1099.3723144531, -438.51223754883, 67.798637390137),
        garageDoorCoord = vector3(1097.6094970703, -429.70098876953, 67.305908203125),
        garageDoorCoordH = 85.91,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "West Mirror Dr. No.25",
        price = 225000,
        star = 2,
        doorCoord = vector3(1098.6342773438, -464.47869873047, 67.320083618164),
        garageDoorCoord = vector3(1103.3872070313, -474.12847900391, 66.941917419434),
        garageDoorCoordH = 76.91,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "West Mirror Dr. No.26",
        price = 225000,
        star = 2,
        doorCoord = vector3(1090.4373779297, -484.3747253418, 65.661056518555),
        garageDoorCoord = vector3(1086.3389892578, -494.88537597656, 64.641487121582),
        garageDoorCoordH = 104.91,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "West Mirror Dr. No.27",
        price = 295000,
        star = 3,
        doorCoord = vector3(1056.2087402344, -448.95626831055, 66.257499694824),
        garageDoorCoord = vector3(1060.4404296875, -445.00747680664, 65.936325073242),
        garageDoorCoordH = 256.91,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "West Mirror Dr. No.28",
        price = 275000,
        star = 3,
        doorCoord = vector3(1051.0496826172, -470.5251159668, 64.296783447266),
        garageDoorCoord = vector3(1052.4753417969, -482.33038330078, 63.876304626465),
        garageDoorCoordH = 254.91,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "West Mirror Dr. No.29",
        price = 255000,
        star = 2,
        doorCoord = vector3(1046.2790527344, -498.14593505859, 64.279335021973),
        garageDoorCoord = vector3(1051.1489257813, -487.39202880859, 63.924522399902),
        garageDoorCoordH = 258.91,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "West Mirror Dr. No.30",
        price = 265000,
        star = 2,
        doorCoord = vector3(1014.5287475586, -469.24032592773, 64.50887298584),
        garageDoorCoord = vector3(1026.4030761719, -470.02877807617, 63.901542663574),
        garageDoorCoordH = 33.06,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "West Mirror Dr. No.31",
        price = 115000,
        star = 1,
        doorCoord = vector3(970.49365234375, -502.15670776367, 62.14087677002),
        garage = false,
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "West Mirror Dr. No.32",
        price = 245000,
        star = 2,
        doorCoord = vector3(945.86749267578, -518.98602294922, 60.620250701904),
        garageDoorCoord = vector3(948.19903564453, -513.50561523438, 60.227828979492),
        garageDoorCoordH = 29.06,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "West Mirror Dr. No.33",
        price = 255000,
        star = 2,
        doorCoord = vector3(924.390625, -526.04315185547, 59.789493560791),
        garageDoorCoord = vector3(917.74255371094, -526.31878662109, 59.210983276367),
        garageDoorCoordH = 28.06,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "West Mirror Dr. No.34",
        price = 215000,
        star = 2,
        doorCoord = vector3(893.15246582031, -540.54461669922, 58.506832122803),
        garageDoorCoord = vector3(892.21960449219, -550.47387695313, 58.174228668213),
        garageDoorCoordH = 118.06,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "West Mirror Dr. No.35",
        price = 375000,
        star = 3,
        doorCoord = vector3(919.86206054688, -569.82751464844, 58.376167297363),
        garageDoorCoord = vector3(925.57684326172, -564.54272460938, 57.967807769775),
        garageDoorCoordH = 208.06,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "West Mirror Dr. No.36",
        price = 235000,
        star = 2,
        doorCoord = vector3(965.23175048828, -541.94226074219, 59.725006103516),
        garageDoorCoord = vector3(956.95892333984, -550.05688476563, 59.377666473389),
        garageDoorCoordH = 212.06,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "West Mirror Dr. No.37",
        price = 245000,
        star = 2,
        doorCoord = vector3(987.88690185547, -525.7314453125, 60.691226959229),
        garageDoorCoord = vector3(976.86096191406, -524.93176269531, 60.11901473999),
        garageDoorCoordH = 210.06,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "West Mirror Dr. No.38",
        price = 255000,
        star = 2,
        doorCoord = vector3(1006.4717407227, -510.9700012207, 60.992099761963),
        garageDoorCoord = vector3(1003.4595947266, -514.90307617188, 60.694019317627),
        garageDoorCoordH = 208.06,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "West Mirror Dr. No.39",
        price = 315000,
        star = 3,
        doorCoord = vector3(1009.6701660156, -572.47662353516, 60.594429016113),
        garageDoorCoord = vector3(1005.7658081055, -562.82092285156, 60.199440002441),
        garageDoorCoordH = 262.06,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "West Mirror Dr. No.40",
        price = 295000,
        star = 3,
        doorCoord = vector3(999.52093505859, -594.07366943359, 59.638214111328),
        garageDoorCoord = vector3(1008.7885131836, -589.71807861328, 59.0071144104),
        garageDoorCoordH = 253.06,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "West Mirror Dr. No.41",
        price = 515000,
        star = 4,
        doorCoord = vector3(980.19830322266, -627.72454833984, 59.235889434814),
        garageDoorCoord = vector3(977.11468505859, -617.33050537109, 58.839080810547),
        garageDoorCoordH = 125.06,
        garage = "6cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "West Mirror Dr. No.42",
        price = 298000,
        star = 3,
        doorCoord = vector3(964.33404541016, -596.01995849609, 59.902786254883),
        garageDoorCoord = vector3(957.01391601563, -602.24853515625, 59.378631591797),
        garageDoorCoordH = 25.06,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "West Mirror Dr. No.43",
        price = 280000,
        star = 3,
        doorCoord = vector3(976.63262939453, -580.68389892578, 59.850772857666),
        garageDoorCoord = vector3(985.31268310547, -577.72088623047, 59.276805877686),
        garageDoorCoordH = 31.47,
        garage = "2cargarage",
        interior = "GetGTAOHouseMid1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Bridge St. No.1",
        price = 230000,
        star = 2,
        doorCoord = vector3(952.80706787109, -252.51234436035, 67.96736907959),
        garageDoorCoord = vector3(945.79852294922, -254.32705688477, 67.527717590332),
        garageDoorCoordH = 150.47,
        garage = "2cargarage",
        interior = "GetExecApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Bridge St. No.2",
        price = 260000,
        star = 2,
        doorCoord = vector3(930.57611083984, -245.11366271973, 69.003044128418),
        garageDoorCoord = vector3(939.34838867188, -251.00018310547, 68.374923706055),
        garageDoorCoordH = 150.47,
        garage = "2cargarage",
        interior = "GetExecApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Bridge St. No.3",
        price = 85000,
        star = 1,
        doorCoord = vector3(920.86212158203, -238.1851348877, 70.396774291992),
        garage = false,
        interior = "GetExecApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Bridge St. No.4",
        price = 280000,
        star = 2,
        doorCoord = vector3(880.33898925781, -205.14842224121, 71.976539611816),
        garageDoorCoord = vector3(877.31372070313, -194.79969787598, 70.781547546387),
        garageDoorCoordH = 145.47,
        garage = "2cargarage",
        interior = "GetExecApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Bridge St. No.5",
        price = 265000,
        star = 2,
        doorCoord = vector3(840.67364501953, -182.4190826416, 74.584770202637),
        garageDoorCoord = vector3(843.55395507813, -191.8249206543, 72.648223876953),
        garageDoorCoordH = 187.47,
        garage = "2cargarage",
        interior = "GetExecApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Bridge St. No.6",
        price = 90000,
        star = 1,
        doorCoord = vector3(808.64672851563, -163.54032897949, 75.880233764648),
        garage = false,
        interior = "GetExecApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Bridge St. No.7",
        price = 60000,
        star = 1,
        doorCoord = vector3(798.48223876953, -158.68618774414, 74.892906188965),
        garage = false,
        interior = "GetExecApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Del Perro Fwy. No.1",
        price = 325000,
        star = 3,
        doorCoord = vector3(-1987.1577148438, -512.42364501953, 12.178216934204),
        garageDoorCoord = vector3(-1977.2854003906, -492.56390380859, 12.085996627808),
        garageDoorCoordH = 321.86,
        garage = "2cargarage",
        interior = "GetGTAOHouseHi5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Del Perro Fwy. No.2",
        price = 275000,
        star = 2,
        doorCoord = vector3(-1979.9545898438, -520.07086181641, 11.889560699463),
        garageDoorCoord = vector3(-1966.5599365234, -501.11541748047, 11.832243919373),
        garageDoorCoordH = 353.86,
        garage = "2cargarage",
        interior = "GetGTAOHouseHi5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Del Perro Fwy. No.3",
        price = 100000,
        star = 1,
        doorCoord = vector3(-1968.9636230469, -522.81579589844, 11.846319198608),
        garage = false,
        interior = "GetGTAOHouseHi5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Del Perro Fwy. No.4",
        price = 265000,
        star = 2,
        doorCoord = vector3(-1967.6890869141, -531.77056884766, 12.170665740967),
        garageDoorCoord = vector3(-1966.5599365234, -501.11541748047, 11.832243919373),
        garageDoorCoordH = 353.86,
        garage = "2cargarage",
        interior = "GetGTAOHouseHi5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Del Perro Fwy. No.5",
        price = 245000,
        star = 2,
        doorCoord = vector3(-1920.0778808594, -569.68969726563, 14.744913101196),
        garageDoorCoord = vector3(-1906.3059082031, -551.39099121094, 11.770175933838),
        garageDoorCoordH = 359.86,
        garage = "2cargarage",
        interior = "GetGTAOHouseHi5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Del Perro Fwy. No.6",
        price = 255000,
        star = 2,
        doorCoord = vector3(-1913.4877929688, -574.19415283203, 11.43516254425),
        garageDoorCoord = vector3(-1899.6744384766, -560.41888427734, 11.793564796448),
        garageDoorCoordH = 283.86,
        garage = "2cargarage",
        interior = "GetGTAOHouseHi5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Del Perro Fwy. No.7",
        price = 265000,
        star = 2,
        doorCoord = vector3(-1901.2487792969, -586.19689941406, 11.87294960022),
        garageDoorCoord = vector3(-1887.7995605469, -570.00415039063, 11.777473449707),
        garageDoorCoordH = 1.28,
        garage = "2cargarage",
        interior = "GetGTAOHouseHi5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Del Perro Fwy. No.8",
        price = 275000,
        star = 2,
        doorCoord = vector3(-1884.8157958984, -599.86553955078, 11.899377822876),
        garageDoorCoord = vector3(-1872.6031494141, -584.44018554688, 11.834784507751),
        garageDoorCoordH = 344.31,
        garage = "2cargarage",
        interior = "GetGTAOHouseHi5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Del Perro Fwy. No.9",
        price = 265000,
        star = 2,
        doorCoord = vector3(-1776.9948730469, -701.54797363281, 10.525003433228),
        garageDoorCoord = vector3(-1757.5711669922, -684.66772460938, 10.069735527039),
        garageDoorCoordH = 357.77,
        garage = "2cargarage",
        interior = "GetGTAOHouseHi5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Del Perro Fwy. No.10",
        price = 255000,
        star = 2,
        doorCoord = vector3(-1764.0810546875, -707.87255859375, 10.614177703857),
        garageDoorCoord = vector3(-1750.9932861328, -691.74206542969, 10.076161384583),
        garageDoorCoordH = 1.52,
        garage = "2cargarage",
        interior = "GetGTAOHouseHi5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Del Perro Fwy. No.11",
        price = 255000,
        star = 2,
        doorCoord = vector3(-1757.9798583984, -716.89178466797, 10.555938720703),
        garageDoorCoord = vector3(-1742.2484130859, -700.20324707031, 10.129887580872),
        garageDoorCoordH = 18.91,
        garage = "2cargarage",
        interior = "GetGTAOHouseHi5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Kanalları No.2",
        price = 305000,
        star = 3,
        doorCoord = vector3(-1100.0198974609, -1211.2454833984, 2.8272337913513),
        garageDoorCoord = vector3(-1117.2319335938, -1224.2982177734, 2.5445368289948),
        garageDoorCoordH = 57.60,
        garage = "2cargarage",
        interior = "GetHLApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Kanalları No.3",
        price = 325000,
        star = 3,
        doorCoord = vector3(-1113.3330078125, -1195.8427734375, 6.6832871437073),
        garageDoorCoord = vector3(-1119.9193115234, -1209.7045898438, 2.4878821372986),
        garageDoorCoordH = 121.60,
        garage = "2cargarage",
        interior = "GetHLApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Kanalları No.4",
        price = 300000,
        star = 3,
        doorCoord = vector3(-1125.8133544922, -1171.8812255859, 2.3557806015015),
        garageDoorCoord = vector3(-1132.7180175781, -1173.6402587891, 2.3656280040741),
        garageDoorCoordH = 117.60,
        garage = "2cargarage",
        interior = "GetHLApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Kanalları No.5",
        price = 288000,
        star = 2,
        doorCoord = vector3(-1129.0845947266, -1162.6180419922, 6.4949555397034),
        garageDoorCoord = vector3(-1139.6625976563, -1164.9617919922, 2.7519464492798),
        garageDoorCoordH = 183.60,
        garage = "2cargarage",
        interior = "GetHLApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Kanalları No.6",
        price = 288000,
        star = 2,
        doorCoord = vector3(-1135.5524902344, -1153.421875, 2.7422208786011),
        garageDoorCoord = vector3(-1143.8020019531, -1155.0767822266, 2.7816019058228),
        garageDoorCoordH = 93.60,
        garage = "2cargarage",
        interior = "GetHLApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Kanalları No.7",
        price = 278000,
        star = 2,
        doorCoord = vector3(-1145.939453125, -1128.0129394531, 6.5031204223633),
        garageDoorCoord = vector3(-1155.2575683594, -1136.5562744141, 2.7623693943024),
        garageDoorCoordH = 115.60,
        garage = "2cargarage",
        interior = "GetHLApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Kanalları No.8",
        price = 285000,
        star = 2,
        doorCoord = vector3(-1177.5489501953, -1073.5068359375, 5.9064254760742),
        garageDoorCoord = vector3(-1186.5203857422, -1079.1956787109, 2.1504335403442),
        garageDoorCoordH = 59.60,
        garage = "2cargarage",
        interior = "GetHLApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Kanalları No.9",
        price = 275000,
        star = 2,
        doorCoord = vector3(-1204.5887451172, -1021.9315185547, 5.9450945854187),
        garageDoorCoord = vector3(-1211.9519042969, -1025.1394042969, 2.1504335403442),
        garageDoorCoordH = 66.21,
        garage = "2cargarage",
        interior = "GetHLApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Kanalları No.10",
        price = 280000,
        star = 2,
        doorCoord = vector3(-1179.4014892578, -929.31829833984, 6.9940838813782),
        garageDoorCoord = vector3(-1184.4610595703, -930.45672607422, 2.7781841754913),
        garageDoorCoordH = 207.21,
        garage = "2cargarage",
        interior = "GetHLApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Kanalları No.11",
        price = 285000,
        star = 2,
        doorCoord = vector3(-1111.453125, -902.01000976563, 3.9863555431366),
        garageDoorCoord = vector3(-1095.7231445313, -885.84075927734, 3.586984872818),
        garageDoorCoordH = 208.21,
        garage = "2cargarage",
        interior = "GetHLApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Kanalları No.12",
        price = 295000,
        star = 2,
        doorCoord = vector3(-1090.5025634766, -926.67376708984, 3.104542016983),
        garageDoorCoord = vector3(-1098.6895751953, -942.81726074219, 2.5081112384796),
        garageDoorCoordH = 76.21,
        garage = "2cargarage",
        interior = "GetHLApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Kanalları No.13",
        price = 325000,
        star = 3,
        doorCoord = vector3(-1061.5311279297, -942.58740234375, 2.2148194313049),
        garageDoorCoord = vector3(-1081.9616699219, -920.54315185547, 3.4801104068756),
        garageDoorCoordH = 62.21,
        garage = "2cargarage",
        interior = "GetHLApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Kanalları No.14",
        price = 305000,
        star = 3,
        doorCoord = vector3(-1043.4837646484, -923.75830078125, 3.1543469429016),
        garageDoorCoord = vector3(-1053.9479980469, -904.71411132813, 4.4264345169067),
        garageDoorCoordH = 336.21,
        garage = "2cargarage",
        interior = "GetHLApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Kanalları No.15",
        price = 95000,
        star = 1,
        doorCoord = vector3(-1004.4493408203, -897.08209228516, 2.5452969074249),
        garage = false,
        interior = "GetHLApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Kanalları No.16",
        price = 290000,
        star = 2,
        doorCoord = vector3(-951.40734863281, -906.03491210938, 2.7453818321228),
        garageDoorCoord = vector3(-950.17791748047, -899.51727294922, 2.1630659103394),
        garageDoorCoordH = 245.21,
        garage = "2cargarage",
        interior = "GetHLApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Kanalları No.17",
        price = 285000,
        star = 2,
        doorCoord = vector3(-948.08953857422, -910.68927001953, 2.7456238269806),
        garageDoorCoord = vector3(-942.07092285156, -912.18963623047, 2.16330909729),
        garageDoorCoordH = 240.21,
        garage = "2cargarage",
        interior = "GetHLApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Kanalları No.18",
        price = 287000,
        star = 2,
        doorCoord = vector3(-927.57507324219, -949.37329101563, 2.7467205524445),
        garageDoorCoord = vector3(-921.23962402344, -950.7822265625, 2.1629378795624),
        garageDoorCoordH = 242.21,
        garage = "2cargarage",
        interior = "GetHLApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Kanalları No.19",
        price = 287000,
        star = 2,
        doorCoord = vector3(-922.77374267578, -983.42504882813, 2.1503274440765),
        garageDoorCoord = vector3(-908.60290527344, -966.87194824219, 2.1637592315674),
        garageDoorCoordH = 225.21,
        garage = "2cargarage",
        interior = "GetHLApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Kanalları No.20",
        price = 293000,
        star = 3,
        doorCoord = vector3(-900.68029785156, -982.46472167969, 2.2429313659668),
        garageDoorCoord = vector3(-896.69415283203, -985.615234375, 2.1630313396454),
        garageDoorCoordH = 217.21,
        garage = "2cargarage",
        interior = "GetHLApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Kanalları No.21",
        price = 283000,
        star = 2,
        doorCoord = vector3(-884.24609375, -1072.5771484375, 2.5314319133759),
        garageDoorCoord = vector3(-874.74652099609, -1073.3079833984, 2.1578786373138),
        garageDoorCoordH = 27.21,
        garage = "2cargarage",
        interior = "GetHLApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Kanalları No.22",
        price = 287000,
        star = 2,
        doorCoord = vector3(-869.52648925781, -1103.4135742188, 6.4455718994141),
        garageDoorCoord = vector3(-863.70025634766, -1089.7642822266, 2.1628777980804),
        garageDoorCoordH = 298.21,
        garage = "2cargarage",
        interior = "GetHLApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Kanalları No.23",
        price = 267000,
        star = 2,
        doorCoord = vector3(-1035.2542724609, -1227.8256835938, 6.346387386322),
        garageDoorCoord = vector3(-1038.3948974609, -1232.5590820313, 5.8506512641907),
        garageDoorCoordH = 212.21,
        garage = "2cargarage",
        interior = "GetHLApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Kanalları No.24",
        price = 277000,
        star = 2,
        doorCoord = vector3(-986.59552001953, -1199.5373535156, 6.0484170913696),
        garageDoorCoord = vector3(-978.76861572266, -1200.5139160156, 4.669846534729),
        garageDoorCoordH = 255.21,
        garage = "2cargarage",
        interior = "GetHLApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Kanalları No.25",
        price = 287000,
        star = 2,
        doorCoord = vector3(-1064.5947265625, -1187.5174560547, 2.1586556434631),
        garageDoorCoord = vector3(-1073.9197998047, -1162.7874755859, 2.1361036300659),
        garageDoorCoordH = 298.21,
        garage = "2cargarage",
        interior = "GetHLApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Kanalları No.26",
        price = 290000,
        star = 3,
        doorCoord = vector3(-1082.6872558594, -1139.3178710938, 2.158599615097),
        garageDoorCoord = vector3(-1075.2789306641, -1159.2722167969, 2.1415569782257),
        garageDoorCoordH = 295.21,
        garage = "2cargarage",
        interior = "GetHLApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Kanalları No.27",
        price = 290000,
        star = 3,
        doorCoord = vector3(-1063.4246826172, -1160.2615966797, 2.7513802051544),
        garageDoorCoord = vector3(-1062.4711914063, -1155.0374755859, 2.0854606628418),
        garageDoorCoordH = 297.21,
        garage = "2cargarage",
        interior = "GetHLApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Kanalları No.28",
        price = 290000,
        star = 3,
        doorCoord = vector3(-1048.0395507813, -1123.3537597656, 2.1585981845856),
        garageDoorCoord = vector3(-1044.6280517578, -1140.7869873047, 2.153947353363),
        garageDoorCoordH = 297.21,
        garage = "2cargarage",
        interior = "GetHLApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Kanalları No.29",
        price = 290000,
        star = 3,
        doorCoord = vector3(-1024.4490966797, -1139.8375244141, 2.7449221611023),
        garageDoorCoord = vector3(-1022.910949707, -1134.8646240234, 2.1585931777954),
        garageDoorCoordH = 302.21,
        garage = "2cargarage",
        interior = "GetHLApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Kanalları No.30",
        price = 305000,
        star = 3,
        doorCoord = vector3(-985.84613037109, -1121.7344970703, 4.5455751419067),
        garageDoorCoord = vector3(-987.14532470703, -1112.9317626953, 2.1503121852875),
        garageDoorCoordH = 295.21,
        garage = "2cargarage",
        interior = "GetHLApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Kanalları No.31",
        price = 305000,
        star = 3,
        doorCoord = vector3(-978.10406494141, -1108.244140625, 2.1503129005432),
        garageDoorCoord = vector3(-975.54779052734, -1105.083984375, 2.1503112316132),
        garageDoorCoordH = 295.21,
        garage = "2cargarage",
        interior = "GetHLApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Kanalları No.32",
        price = 295000,
        star = 3,
        doorCoord = vector3(-952.44842529297, -1077.5632324219, 2.6723687648773),
        garageDoorCoord = vector3(-953.55078125, -1083.3780517578, 2.1503124237061),
        garageDoorCoordH = 289.21,
        garage = "2cargarage",
        interior = "GetHLApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Kanalları No.33",
        price = 300000,
        star = 3,
        doorCoord = vector3(-930.07672119141, -1101.341796875, 2.1718456745148),
        garageDoorCoord = vector3(-936.27905273438, -1081.0958251953, 2.1232047080994),
        garageDoorCoordH = 299.21,
        garage = "2cargarage",
        interior = "GetHLApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Kanalları No.34",
        price = 310000,
        star = 3,
        doorCoord = vector3(-1127.8975830078, -1080.9798583984, 4.2226886749268),
        garageDoorCoord = vector3(-1129.2454833984, -1070.9372558594, 2.0831363201141),
        garageDoorCoordH = 301.21,
        garage = "2cargarage",
        interior = "GetHLApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Kanalları No.35",
        price = 305000,
        star = 3,
        doorCoord = vector3(-1104.0708007813, -1060.0031738281, 2.7335851192474),
        garageDoorCoord = vector3(-1103.4895019531, -1055.3150634766, 2.1192457675934),
        garageDoorCoordH = 298.21,
        garage = "2cargarage",
        interior = "GetHLApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Kanalları No.36",
        price = 305000,
        star = 3,
        doorCoord = vector3(-1076.2559814453, -1026.9068603516, 4.5449352264404),
        garageDoorCoord = vector3(-1075.1590576172, -1036.3834228516, 2.1353983879089),
        garageDoorCoordH = 298.21,
        garage = "2cargarage",
        interior = "GetHLApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Kanalları No.37",
        price = 295000,
        star = 3,
        doorCoord = vector3(-1055.1429443359, -998.14892578125, 6.4104900360107),
        garageDoorCoord = vector3(-1043.8114013672, -1009.1606445313, 2.1501944065094),
        garageDoorCoordH = 210.21,
        garage = "2cargarage",
        interior = "GetHLApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Kanalları No.38",
        price = 305000,
        star = 3,
        doorCoord = vector3(-1041.7098388672, -1025.8404541016, 2.7481257915497),
        garageDoorCoord = vector3(-1040.4705810547, -1020.9072875977, 2.1503567695618),
        garageDoorCoordH = 300.21,
        garage = "2cargarage",
        interior = "GetHLApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Kanalları No.39",
        price = 280000,
        star = 2,
        doorCoord = vector3(-1022.2701416016, -1023.0243530273, 2.1503601074219),
        garageDoorCoord = vector3(-1023.6842651367, -1015.6875, 2.1503582000732),
        garageDoorCoordH = 317.21,
        garage = "2cargarage",
        interior = "GetHLApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Kanalları No.40",
        price = 285000,
        star = 2,
        doorCoord = vector3(-1002.1329956055, -960.2958984375, 2.7463216781616),
        garageDoorCoord = vector3(-989.8564453125, -986.01605224609, 2.0960640907288),
        garageDoorCoordH = 298.21,
        garage = "2cargarage",
        interior = "GetHLApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Vespucci Kanalları No.41",
        price = 295000,
        star = 3,
        doorCoord = vector3(-978.72998046875, -990.68737792969, 4.5453195571899),
        garageDoorCoord = vector3(-989.8564453125, -986.01605224609, 2.0960640907288),
        garageDoorCoordH = 298.21,
        garage = "2cargarage",
        interior = "GetHLApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Rockford No.1",
        price = 700000,
        star = 4,
        doorCoord = vector3(-1974.6799316406, 631.03918457031, 122.6870880127),
        garageDoorCoord = vector3(-1972.6572265625, 622.90161132813, 122.26597595215),
        garageDoorCoordH = 244.21,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Rockford No.2",
        price = 750000,
        star = 4,
        doorCoord = vector3(-1996.29296875, 591.26446533203, 118.10186004639),
        garageDoorCoord = vector3(-1986.0034179688, 603.68023681641, 118.09275817871),
        garageDoorCoordH = 241.21,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Rockford No.3",
        price = 600000,
        star = 4,
        doorCoord = vector3(-2014.9300537109, 499.73901367188, 107.17179107666),
        garageDoorCoord = vector3(-2012.2583007813, 484.50631713867, 107.02326202393),
        garageDoorCoordH = 256.21,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Rockford No.4",
        price = 800000,
        star = 4,
        doorCoord = vector3(-2011.1689453125, 445.12991333008, 103.01589202881),
        garageDoorCoord = vector3(-2008.8447265625, 454.52081298828, 102.64827728271),
        garageDoorCoordH = 270.21,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Rockford No.5",
        price = 720000,
        star = 4,
        doorCoord = vector3(-2009.150390625, 367.51904296875, 94.814292907715),
        garageDoorCoord = vector3(-2001.8569335938, 368.57287597656, 94.483573913574),
        garageDoorCoordH = 179.13,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Rockford No.6",
        price = 760000,
        star = 4,
        doorCoord = vector3(-1995.4255371094, 301.01910400391, 91.964645385742),
        garageDoorCoord = vector3(-1996.4580078125, 294.40740966797, 91.764793395996),
        garageDoorCoordH = 221.13,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Rockford No.7",
        price = 630000,
        star = 4,
        doorCoord = vector3(-1970.5101318359, 245.87149047852, 87.812126159668),
        garageDoorCoord = vector3(-1978.0209960938, 260.14544677734, 87.218002319336),
        garageDoorCoordH = 285.13,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Rockford No.8",
        price = 630000,
        star = 4,
        doorCoord = vector3(-1961.2198486328, 211.90089416504, 86.803634643555),
        garageDoorCoord = vector3(-1949.0633544922, 201.97094726563, 86.084625244141),
        garageDoorCoordH = 290.13,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Rockford No.9",
        price = 685000,
        star = 4,
        doorCoord = vector3(-1931.9315185547, 162.50706481934, 84.652702331543),
        garageDoorCoord = vector3(-1936.1109619141, 182.89741516113, 84.617149353027),
        garageDoorCoordH = 305.13,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Rockford No.10",
        price = 685000,
        star = 4,
        doorCoord = vector3(-1899.1481933594, 132.4525604248, 81.984603881836),
        garageDoorCoord = vector3(-1888.0947265625, 123.15710449219, 81.694511413574),
        garageDoorCoordH = 6.87,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Rockford No.11",
        price = 950000,
        star = 4,
        doorCoord = vector3(-1873.5593261719, 201.82559204102, 84.294425964355),
        garageDoorCoord = vector3(-1878.0477294922, 188.28062438965, 84.027236938477),
        garageDoorCoordH = 125.13,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Rockford No.12",
        price = 700000,
        star = 4,
        doorCoord = vector3(-1905.5837402344, 252.88975524902, 86.452743530273),
        garageDoorCoord = vector3(-1903.9396972656, 240.9162902832, 86.25106048584),
        garageDoorCoordH = 28.67,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Rockford No.13",
        price = 750000,
        star = 4,
        doorCoord = vector3(-1922.4034423828, 298.42230224609, 89.287063598633),
        garageDoorCoord = vector3(-1922.2622070313, 282.52777099609, 89.073310852051),
        garageDoorCoordH = 150.67,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Rockford No.14",
        price = 770000,
        star = 4,
        doorCoord = vector3(-1931.2453613281, 362.46411132813, 93.976127624512),
        garageDoorCoord = vector3(-1937.5246582031, 359.87710571289, 93.595275878906),
        garageDoorCoordH = 138.08,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Rockford No.15",
        price = 875000,
        star = 4,
        doorCoord = vector3(-1931.6940917969, 398.59545898438, 96.507041931152),
        garageDoorCoord = vector3(-1908.3277587891, 406.76257324219, 96.296119689941),
        garageDoorCoordH = 95.08,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Rockford No.16",
        price = 725000,
        star = 4,
        doorCoord = vector3(-1942.7055664063, 449.55783081055, 102.92833709717),
        garageDoorCoord = vector3(-1942.998046875, 461.14361572266, 102.11656951904),
        garageDoorCoordH = 92.08,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Rockford No.17",
        price = 525000,
        star = 4,
        doorCoord = vector3(-1937.4906005859, 551.130859375, 115.0230255127),
        garageDoorCoord = vector3(-1938.3114013672, 524.86022949219, 109.69692230225),
        garageDoorCoordH = 216.08,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Rockford No.18",
        price = 580000,
        star = 4,
        doorCoord = vector3(-1928.9548339844, 595.44494628906, 122.28590393066),
        garageDoorCoord = vector3(-1939.6245117188, 581.40600585938, 119.10924530029),
        garageDoorCoordH = 74.08,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Rockford No.19",
        price = 950000,
        star = 4,
        doorCoord = vector3(-1861.2072753906, 310.44149780273, 89.114036560059),
        garageDoorCoord = vector3(-1858.0471191406, 326.76507568359, 88.67455291748),
        garageDoorCoordH = 352.08,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Rockford No.20",
        price = 800000,
        star = 4,
        doorCoord = vector3(-1807.9847412109, 333.2809753418, 89.57453918457),
        garageDoorCoord = vector3(-1792.7225341797, 348.80340576172, 88.556861877441),
        garageDoorCoordH = 70.7,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Rockford No.21",
        price = 1200000,
        star = 5,
        doorCoord = vector3(-1741.7131347656, 365.15423583984, 88.728172302246),
        garageDoorCoord = vector3(-1748.8259277344, 366.76773071289, 89.72526550293),
        garageDoorCoordH = 115.7,
        garage = "10cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Rockford No.22",
        price = 780000,
        star = 4,
        doorCoord = vector3(-1673.1458740234, 385.60144042969, 89.348304748535),
        garageDoorCoord = vector3(-1664.3809814453, 390.0732421875, 89.281440734863),
        garageDoorCoordH = 29.7,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Ace Jones Dr. No.1",
        price = 610000,
        star = 4,
        doorCoord = vector3(-1540.4060058594, 420.53198242188, 110.01399993896),
        garageDoorCoord = vector3(-1551.6494140625, 427.11437988281, 109.41557312012),
        garageDoorCoordH = 277.7,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Ace Jones Dr. No.2",
        price = 630000,
        star = 4,
        doorCoord = vector3(-1495.8735351563, 436.99188232422, 112.4979019165),
        garageDoorCoord = vector3(-1496.0792236328, 418.4753112793, 111.10781860352),
        garageDoorCoordH = 45.22,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Ace Jones Dr. No.3",
        price = 470000,
        star = 3,
        doorCoord = vector3(-1500.6037597656, 523.14154052734, 118.27211761475),
        garageDoorCoord = vector3(-1486.5860595703, 528.40594482422, 118.27211761475),
        garageDoorCoordH = 241.22,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Ace Jones Dr. No.4",
        price = 550000,
        star = 4,
        doorCoord = vector3(-1453.8843994141, 512.27288818359, 117.79643249512),
        garageDoorCoord = vector3(-1471.7943115234, 512.24481201172, 117.77272796631),
        garageDoorCoordH = 20.48,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Ace Jones Dr. No.5",
        price = 480000,
        star = 3,
        doorCoord = vector3(-1452.9395751953, 545.60864257813, 120.99817657471),
        garageDoorCoord = vector3(-1453.5935058594, 534.33905029297, 119.2459487915),
        garageDoorCoordH = 228.48,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Sheldon Ave. No.1",
        price = 420000,
        star = 3,
        doorCoord = vector3(-824.04724121094, 805.96173095703, 202.78321838379),
        garageDoorCoord = vector3(-811.47869873047, 807.31213378906, 202.13871765137),
        garageDoorCoordH = 20.55,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Sheldon Ave. No.2",
        price = 440000,
        star = 3,
        doorCoord = vector3(-867.32855224609, 784.65747070313, 191.93359375),
        garageDoorCoord = vector3(-851.248046875, 792.67651367188, 191.88455200195),
        garageDoorCoordH = 3.95,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Sheldon Ave. No.3",
        price = 380000,
        star = 3,
        doorCoord = vector3(-912.21008300781, 777.17144775391, 187.0076751709),
        garageDoorCoord = vector3(-905.32073974609, 782.25946044922, 186.16990661621),
        garageDoorCoordH = 3.95,
        garage = "2cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Sheldon Ave. No.4",
        price = 460000,
        star = 3,
        doorCoord = vector3(-921.2138671875, 814.00201416016, 184.33615112305),
        garageDoorCoord = vector3(-918.66528320313, 806.29925537109, 184.33781433105),
        garageDoorCoordH = 186.42,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Sheldon Ave. No.5",
        price = 420000,
        star = 3,
        doorCoord = vector3(-962.83013916016, 814.26171875, 177.75915527344),
        garageDoorCoord = vector3(-955.20281982422, 800.17156982422, 177.99479675293),
        garageDoorCoordH = 111.42,
        garage = "2cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Sheldon Ave. No.6",
        price = 450000,
        star = 3,
        doorCoord = vector3(-999.68829345703, 816.85485839844, 173.04986572266),
        garageDoorCoord = vector3(-1021.8765869141, 812.34375, 172.11898803711),
        garageDoorCoordH = 199.42,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Sheldon Ave. No.7",
        price = 550000,
        star = 4,
        doorCoord = vector3(-998.61877441406, 768.70373535156, 171.58232116699),
        garageDoorCoord = vector3(-1000.6384887695, 785.64300537109, 171.61624145508),
        garageDoorCoordH = 292.42,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Sheldon Ave. No.8",
        price = 620000,
        star = 4,
        doorCoord = vector3(-1100.6264648438, 797.40777587891, 167.25950622559),
        garageDoorCoord = vector3(-1107.7492675781, 795.46722412109, 165.25880432129),
        garageDoorCoordH = 183.42,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Sheldon Ave. No.9",
        price = 520000,
        star = 4,
        doorCoord = vector3(-1117.7620849609, 761.48266601563, 164.28861999512),
        garageDoorCoord = vector3(-1116.1169433594, 771.34539794922, 163.10014343262),
        garageDoorCoordH = 22.42,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Sheldon Ave. No.10",
        price = 540000,
        star = 4,
        doorCoord = vector3(-1165.6474609375, 726.84802246094, 155.60673522949),
        garageDoorCoord = vector3(-1159.3874511719, 741.21160888672, 155.44863891602),
        garageDoorCoordH = 358.42,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Sheldon Ave. No.11",
        price = 540000,
        star = 4,
        doorCoord = vector3(-1241.2376708984, 674.48376464844, 142.81187438965),
        garageDoorCoord = vector3(-1250.5023193359, 665.27301025391, 142.80743408203),
        garageDoorCoordH = 230.42,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Sheldon Ave. No.12",
        price = 500000,
        star = 4,
        doorCoord = vector3(-1248.6285400391, 642.69146728516, 142.71875),
        garageDoorCoord = vector3(-1235.6733398438, 654.34582519531, 142.35206604004),
        garageDoorCoordH = 106.42,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Sheldon Ave. No.13",
        price = 510000,
        star = 4,
        doorCoord = vector3(-1291.8209228516, 650.42626953125, 141.50137329102),
        garageDoorCoord = vector3(-1284.7677001953, 649.73553466797, 139.87503051758),
        garageDoorCoordH = 195.42,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Sheldon Ave. No.14",
        price = 615000,
        star = 4,
        doorCoord = vector3(-1277.4851074219, 630.04699707031, 143.25746154785),
        garageDoorCoord = vector3(-1288.4097900391, 625.53778076172, 138.78810119629),
        garageDoorCoordH = 64.39,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Sheldon Ave. No.15",
        price = 525000,
        star = 4,
        doorCoord = vector3(-1337.0364990234, 606.20764160156, 134.37997436523),
        garageDoorCoord = vector3(-1346.9210205078, 610.95281982422, 133.88032531738),
        garageDoorCoordH = 99.39,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Sheldon Ave. No.16",
        price = 545000,
        star = 4,
        doorCoord = vector3(-1346.3076171875, 560.81396484375, 130.53155517578),
        garageDoorCoord = vector3(-1359.544921875, 552.86486816406, 129.85443115234),
        garageDoorCoordH = 62.39,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Sheldon Ave. No.17",
        price = 475000,
        star = 3,
        doorCoord = vector3(-1364.3898925781, 570.05432128906, 134.97309875488),
        garageDoorCoord = vector3(-1357.4929199219, 578.94482421875, 131.44761657715),
        garageDoorCoordH = 252.39,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Sheldon Ave. No.18",
        price = 555000,
        star = 4,
        doorCoord = vector3(-1405.4497070313, 526.84210205078, 123.83126068115),
        garageDoorCoord = vector3(-1410.5583496094, 538.32818603516, 122.7866973877),
        garageDoorCoordH = 104.39,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Sheldon Ave. No.19",
        price = 455000,
        star = 3,
        doorCoord = vector3(-1413.5329589844, 462.13088989258, 109.20855712891),
        garageDoorCoord = vector3(-1419.0792236328, 467.98324584961, 109.27203369141),
        garageDoorCoordH = 327.39,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Sheldon Ave. No.20",
        price = 455000,
        star = 3,
        doorCoord = vector3(-1371.5040283203, 444.04776000977, 105.85708618164),
        garageDoorCoord = vector3(-1375.4020996094, 452.42886352539, 104.9320602417),
        garageDoorCoordH = 85.39,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Sheldon Ave. No.21",
        price = 425000,
        star = 3,
        doorCoord = vector3(-1308.0153808594, 448.90167236328, 100.96977996826),
        garageDoorCoord = vector3(-1323.4615478516, 449.44027709961, 99.75382232666),
        garageDoorCoordH = 357.39,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Sheldon Ave. No.22",
        price = 535000,
        star = 4,
        doorCoord = vector3(-1277.8957519531, 497.09524536133, 97.890365600586),
        garageDoorCoord = vector3(-1270.1358642578, 501.75183105469, 97.182472229004),
        garageDoorCoordH = 181.39,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Sheldon Ave. No.23",
        price = 535000,
        star = 4,
        doorCoord = vector3(-1222.6175537109, 506.03915405273, 95.667114257813),
        garageDoorCoord = vector3(-1234.4012451172, 489.49642944336, 93.255767822266),
        garageDoorCoordH = 95.39,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Sheldon Ave. No.24",
        price = 435000,
        star = 3,
        doorCoord = vector3(-1193.0830078125, 564.02923583984, 100.3394241333),
        garageDoorCoord = vector3(-1208.5354003906, 556.20068359375, 98.929954528809),
        garageDoorCoordH = 184.39,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Sheldon Ave. No.25",
        price = 525000,
        star = 4,
        doorCoord = vector3(-1090.1650390625, 548.49853515625, 103.63336181641),
        garageDoorCoord = vector3(-1106.4547119141, 551.38409423828, 102.59100341797),
        garageDoorCoordH = 45.39,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Sheldon Ave. No.26",
        price = 565000,
        star = 4,
        doorCoord = vector3(-1107.8201904297, 594.50286865234, 104.45461273193),
        garageDoorCoord = vector3(-1094.8375244141, 599.22778320313, 103.06464385986),
        garageDoorCoordH = 212.39,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Sheldon Ave. No.27",
        price = 645000,
        star = 4,
        doorCoord = vector3(-958.06262207031, 606.98455810547, 106.29919433594),
        garageDoorCoord = vector3(-941.93072509766, 593.20721435547, 101.00485992432),
        garageDoorCoordH = 163.39,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Sheldon Ave. No.28",
        price = 445000,
        star = 3,
        doorCoord = vector3(-904.40203857422, 588.02447509766, 101.19004058838),
        garageDoorCoord = vector3(-912.83978271484, 586.19396972656, 100.8452911377),
        garageDoorCoordH = 144.39,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Sheldon Ave. No.29",
        price = 405000,
        star = 3,
        doorCoord = vector3(-907.60302734375, 544.94842529297, 100.38571166992),
        garageDoorCoord = vector3(-909.25531005859, 556.10992431641, 96.724609375),
        garageDoorCoordH = 293.39,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Sheldon Ave. No.30",
        price = 535000,
        star = 4,
        doorCoord = vector3(-873.30834960938, 562.7666015625, 96.619430541992),
        garageDoorCoord = vector3(-872.81359863281, 539.61077880859, 91.985954284668),
        garageDoorCoordH = 180.39,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Sheldon Ave. No.31",
        price = 495000,
        star = 4,
        doorCoord = vector3(-884.50885009766, 517.79406738281, 92.442840576172),
        garageDoorCoord = vector3(-872.08355712891, 499.88632202148, 90.166000366211),
        garageDoorCoordH = 283.39,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Sheldon Ave. No.32",
        price = 535000,
        star = 4,
        doorCoord = vector3(-866.61145019531, 457.70520019531, 88.281036376953),
        garageDoorCoord = vector3(-860.51202392578, 464.37307739258, 87.619682312012),
        garageDoorCoordH = 224.39,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Sheldon Ave. No.33",
        price = 595000,
        star = 4,
        doorCoord = vector3(-968.74591064453, 436.8818359375, 80.76530456543),
        garageDoorCoord = vector3(-966.55499267578, 449.09182739258, 79.809036254883),
        garageDoorCoordH = 195.39,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Sheldon Ave. No.34",
        price = 575000,
        star = 4,
        doorCoord = vector3(-987.19982910156, 487.15209960938, 82.458679199219),
        garageDoorCoord = vector3(-993.70483398438, 492.07153320313, 82.195816040039),
        garageDoorCoordH = 357.39,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Sheldon Ave. No.35",
        price = 525000,
        star = 4,
        doorCoord = vector3(-1009.3759155273, 479.3415222168, 79.415367126465),
        garageDoorCoord = vector3(-1013.3886108398, 487.7575378418, 79.252792358398),
        garageDoorCoordH = 3.01,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Sheldon Ave. No.36",
        price = 565000,
        star = 4,
        doorCoord = vector3(-1041.4455566406, 506.87716674805, 84.381217956543),
        garageDoorCoord = vector3(-1044.0070800781, 500.17263793945, 84.112129211426),
        garageDoorCoordH = 236.65,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Sheldon Ave. No.37",
        price = 865000,
        star = 4,
        doorCoord = vector3(-1062.5949707031, 475.75289916992, 81.320732116699),
        garageDoorCoord = vector3(-1076.3781738281, 465.26495361328, 77.68359375),
        garageDoorCoordH = 143.65,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Sheldon Ave. No.38",
        price = 465000,
        star = 3,
        doorCoord = vector3(-1122.560546875, 486.15399169922, 82.356025695801),
        garageDoorCoord = vector3(-1108.9117431641, 489.1575012207, 82.194076538086),
        garageDoorCoordH = 169.65,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "North Sheldon Ave. No.39",
        price = 565000,
        star = 4,
        doorCoord = vector3(-1174.4434814453, 440.1950378418, 86.849624633789),
        garageDoorCoord = vector3(-1179.1123046875, 455.96908569336, 86.675445556641),
        garageDoorCoordH = 64.65,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Picture Perfect Dr. No.1",
        price = 465000,
        star = 3,
        doorCoord = vector3(-824.96441650391, 422.29330444336, 92.125396728516),
        garageDoorCoord = vector3(-807.56518554688, 426.42147827148, 91.569221496582),
        garageDoorCoordH = 318.65,
        garage = "6cargarage",
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Picture Perfect Dr. No.2",
        price = 495000,
        star = 4,
        doorCoord = vector3(-784.64385986328, 459.47424316406, 100.38925933838),
        garageDoorCoord = vector3(-765.67596435547, 465.61050415039, 100.4962310791),
        garageDoorCoordH = 223.65,
        garage = "6cargarage",
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Picture Perfect Dr. No.3",
        price = 555000,
        star = 4,
        doorCoord = vector3(-717.76336669922, 448.69833374023, 106.90911102295),
        garageDoorCoord = vector3(-737.15887451172, 443.56930541992, 106.87228393555),
        garageDoorCoordH = 337.65,
        garage = "6cargarage",
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Picture Perfect Dr. No.4",
        price = 525000,
        star = 4,
        doorCoord = vector3(-722.25463867188, 489.71731567383, 109.38495635986),
        garageDoorCoord = vector3(-715.70471191406, 496.40454101563, 109.27911376953),
        garageDoorCoordH = 200.65,
        garage = "6cargarage",
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Picture Perfect Dr. No.5",
        price = 595000,
        star = 4,
        doorCoord = vector3(-678.94451904297, 511.7102355957, 113.5259475708),
        garageDoorCoord = vector3(-687.06268310547, 501.43698120117, 110.05478668213),
        garageDoorCoordH = 198.65,
        garage = "6cargarage",
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Picture Perfect Dr. No.6",
        price = 535000,
        star = 4,
        doorCoord = vector3(-622.82690429688, 488.87100219727, 108.87716674805),
        garageDoorCoord = vector3(-615.37493896484, 494.6171875, 107.72273254395),
        garageDoorCoordH = 322.65,
        garage = "6cargarage",
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Picture Perfect Dr. No.7",
        price = 635000,
        star = 4,
        doorCoord = vector3(-595.41534423828, 530.30950927734, 107.75461578369),
        garageDoorCoord = vector3(-586.02740478516, 528.30743408203, 107.74109649658),
        garageDoorCoordH = 207.65,
        garage = "6cargarage",
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Picture Perfect Dr. No.8",
        price = 695000,
        star = 4,
        doorCoord = vector3(-520.66375732422, 594.21398925781, 120.8364944458),
        garageDoorCoord = vector3(-520.00262451172, 574.93920898438, 120.99495697021),
        garageDoorCoordH = 287.65,
        garage = "6cargarage",
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Picture Perfect Dr. No.9",
        price = 550000,
        star = 4,
        doorCoord = vector3(-474.60260009766, 585.80871582031, 128.68328857422),
        garageDoorCoord = vector3(-480.47674560547, 598.24615478516, 127.30307006836),
        garageDoorCoordH = 93.65,
        garage = "6cargarage",
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Picture Perfect Dr. No.10",
        price = 560000,
        star = 4,
        doorCoord = vector3(-459.05459594727, 537.00921630859, 121.46049499512),
        garageDoorCoord = vector3(-469.90148925781, 541.68817138672, 120.95398712158),
        garageDoorCoordH = 346.65,
        garage = "6cargarage",
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Picture Perfect Dr. No.11",
        price = 510000,
        star = 4,
        doorCoord = vector3(-406.3283996582, 567.52001953125, 124.60427093506),
        garageDoorCoord = vector3(-418.0485534668, 569.03527832031, 125.06005096436),
        garageDoorCoordH = 346.65,
        garage = "6cargarage",
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Picture Perfect Dr. No.12",
        price = 610000,
        star = 4,
        doorCoord = vector3(-386.76458740234, 504.13668823242, 120.41285705566),
        garageDoorCoord = vector3(-398.98211669922, 518.37689208984, 120.35734558105),
        garageDoorCoordH = 359.65,
        garage = "6cargarage",
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Picture Perfect Dr. No.13",
        price = 570000,
        star = 4,
        doorCoord = vector3(-349.21868896484, 514.95007324219, 120.645652771),
        garageDoorCoord = vector3(-360.66943359375, 514.54748535156, 119.64290618896),
        garageDoorCoordH = 133.65,
        garage = "6cargarage",
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Normandy Dr. No.1",
        price = 670000,
        star = 4,
        doorCoord = vector3(-747.26245117188, 808.19226074219, 215.02862548828),
        garageDoorCoord = vector3(-747.88714599609, 819.25103759766, 213.31893920898),
        garageDoorCoordH = 7.65,
        garage = "6cargarage",
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Normandy Dr. No.2",
        price = 610000,
        star = 4,
        doorCoord = vector3(-596.01373291016, 780.50439453125, 189.29800415039),
        garageDoorCoord = vector3(-593.59588623047, 753.70562744141, 183.71615600586),
        garageDoorCoordH = 255.65,
        garage = "6cargarage",
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Normandy Dr. No.3",
        price = 565000,
        star = 4,
        doorCoord = vector3(-664.33874511719, 742.26263427734, 174.2837677002),
        garageDoorCoord = vector3(-670.92272949219, 752.54095458984, 174.05284118652),
        garageDoorCoordH = 2.93,
        garage = "6cargarage",
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Normandy Dr. No.4",
        price = 515000,
        star = 4,
        doorCoord = vector3(-661.74371337891, 678.91729736328, 153.91055297852),
        garageDoorCoord = vector3(-668.63464355469, 670.05053710938, 150.42864990234),
        garageDoorCoordH = 69.93,
        garage = "6cargarage",
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Normandy Dr. No.5",
        price = 565000,
        star = 4,
        doorCoord = vector3(-606.23065185547, 672.24914550781, 151.59687805176),
        garageDoorCoord = vector3(-614.84851074219, 678.14404296875, 149.76875305176),
        garageDoorCoordH = 0.93,
        garage = "6cargarage",
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Normandy Dr. No.6",
        price = 965000,
        star = 5,
        doorCoord = vector3(-700.83709716797, 647.05810546875, 155.37516784668),
        garageDoorCoord = vector3(-710.03759765625, 642.35864257813, 155.1753692627),
        garageDoorCoordH = 350.93,
        garage = "10cargarage",
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Normandy Dr. No.7",
        price = 565000,
        star = 4,
        doorCoord = vector3(-819.42803955078, 696.69000244141, 148.10986328125),
        garageDoorCoord = vector3(-808.89166259766, 704.68029785156, 147.06295776367),
        garageDoorCoordH = 52.93,
        garage = "6cargarage",
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Normandy Dr. No.8",
        price = 625000,
        star = 4,
        doorCoord = vector3(-1064.9837646484, 726.88732910156, 165.47468566895),
        garageDoorCoord = vector3(-1058.9149169922, 733.60223388672, 165.44998168945),
        garageDoorCoordH = 323.93,
        garage = "6cargarage",
        interior = "GetGTAOApartmentHi1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "4 Integry Way",
        price = 140000,
        star = 2,
        apartments = {
            "4 Integry Way No. 1",
            "4 Integry Way No. 2",
            "4 Integry Way No. 3",
            "4 Integry Way No. 4",
            "4 Integry Way No. 5",
            "4 Integry Way No. 6",
            "4 Integry Way No. 7",
            "4 Integry Way No. 8",
            "4 Integry Way No. 9",
            "4 Integry Way No. 10",
            "4 Integry Way No. 11",
            "4 Integry Way No. 12",
            "4 Integry Way No. 13",
            "4 Integry Way No. 14",
            "4 Integry Way No. 15",
            "4 Integry Way No. 16",
        },
        doorCoord = vector3(-47.828269958496, -585.81268310547, 37.952972412109),
        garageDoorCoord = vector3(-23.303695678711, -568.41290283203, 37.745113372803),
        garageDoorCoordH = 272.8,
        garage = "2cargarage",
        interior = "GetExecApartment2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }
    },
    {
        name = "Tinsel Tower",
        price = 150000,
        star = 2,
        apartments = {
            "Tinsel Tower No. 1",
            "Tinsel Tower No. 2",
            "Tinsel Tower No. 3",
            "Tinsel Tower No. 4",
            "Tinsel Tower No. 5",
            "Tinsel Tower No. 6",
            "Tinsel Tower No. 7",
            "Tinsel Tower No. 8",
            "Tinsel Tower No. 9",
            "Tinsel Tower No. 10",
            "Tinsel Tower No. 11",
            "Tinsel Tower No. 12",
            "Tinsel Tower No. 13",
            "Tinsel Tower No. 14",
            "Tinsel Tower No. 15",
            "Tinsel Tower No. 16",
        },
        doorCoord = vector3(-596.96270751953, 37.045700073242, 43.607707977295),
        garageDoorCoord = vector3(-566.994140625, 55.20703125, 49.271266937256),
        garageDoorCoordH = 264.8,
        garage = "2cargarage",
        interior = "GetExecApartment2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }
    },
    {
        name = "Pegasus Tower",
        price = 150000,
        star = 3,
        apartments = {
            "Pegasus No. 1",
            "Pegasus No. 2",
            "Pegasus No. 3",
            "Pegasus No. 4",
            "Pegasus No. 5",
            "Pegasus No. 6",
            "Pegasus No. 7",
            "Pegasus No. 8",
            "Pegasus No. 9",
            "Pegasus No. 10",
            "Pegasus No. 11",
            "Pegasus No. 12",
            "Pegasus No. 13",
            "Pegasus No. 14",
            "Pegasus No. 15",
            "Pegasus No. 16",
        },
        doorCoord = vector3(-310.16528320313, 221.63256835938, 87.928489685059),
        garageDoorCoord = vector3(-310.19616699219, 228.54125976563, 87.887763977051),
        garageDoorCoordH = 282.8,
        garage = "2cargarage",
        interior = "GetHLApartment1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }
    },
    {
        name = "Maze Bank Tower",
        price = 350000,
        star = 5,
        apartments = {
            "Maze Bank Tower No. 1",
            "Maze Bank Tower No. 2",
            "Maze Bank Tower No. 3",
            "Maze Bank Tower No. 4",
            "Maze Bank Tower No. 5",
            "Maze Bank Tower No. 6",
            "Maze Bank Tower No. 7",
            "Maze Bank Tower No. 8",
            "Maze Bank Tower No. 9",
            "Maze Bank Tower No. 10",
            "Maze Bank Tower No. 11",
            "Maze Bank Tower No. 12",
            "Maze Bank Tower No. 13",
            "Maze Bank Tower No. 14",
            "Maze Bank Tower No. 15",
            "Maze Bank Tower No. 16",
        },
        doorCoord = vector3(-66.689262390137, -802.17779541016, 44.22730255127),
        garageDoorCoord = vector3(-92.243690490723, -810.89141845703, 36.250114440918),
        garageDoorCoordH = 300.8,
        garage = "10cargarage",
        interior = "GetExecApartment2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }
    },
    {
        name = "Crastenburg Tower",
        price = 245000,
        star = 4,
        apartments = {
            "Crastenburg Tower No. 1",
            "Crastenburg Tower No. 2",
            "Crastenburg Tower No. 3",
            "Crastenburg Tower No. 4",
            "Crastenburg Tower No. 5",
            "Crastenburg Tower No. 6",
            "Crastenburg Tower No. 7",
            "Crastenburg Tower No. 8",
            "Crastenburg Tower No. 9",
            "Crastenburg Tower No. 10",
            "Crastenburg Tower No. 11",
            "Crastenburg Tower No. 12",
            "Crastenburg Tower No. 13",
            "Crastenburg Tower No. 14",
            "Crastenburg Tower No. 15",
            "Crastenburg Tower No. 16",
        },
        doorCoord = vector3(435.68139648438, 214.80709838867, 103.1662902832),
        garageDoorCoord = vector3(439.10189819336, 224.37944030762, 103.16539001465),
        garageDoorCoordH = 247.8,
        garage = "6cargarage",
        interior = "GetExecApartment2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }
    },
    {
        name = "Callisto Apartment",
        price = 250000,
        star = 4,
        apartments = {
            "Callisto Apartment No. 1",
            "Callisto Apartment No. 2",
            "Callisto Apartment No. 3",
            "Callisto Apartment No. 4",
            "Callisto Apartment No. 5",
            "Callisto Apartment No. 6",
            "Callisto Apartment No. 7",
            "Callisto Apartment No. 8",
            "Callisto Apartment No. 9",
            "Callisto Apartment No. 10",
            "Callisto Apartment No. 11",
            "Callisto Apartment No. 12",
            "Callisto Apartment No. 13",
            "Callisto Apartment No. 14",
            "Callisto Apartment No. 15",
            "Callisto Apartment No. 16",
        },
        doorCoord = vector3(391.33666992188, 3.2899730205536, 91.718147277832),
        garageDoorCoord = vector3(449.62899780273, -12.898768424988, 81.798782348633),
        garageDoorCoordH = 164.45,
        garage = "6cargarage",
        interior = "GetExecApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }
    },
    {
        name = "Crastenburg A Blok",
        price = 150000,
        star = 2,
        apartments = {
            "Crastenburg A Blok No. 1",
            "Crastenburg A Blok No. 2",
            "Crastenburg A Blok No. 3",
            "Crastenburg A Blok No. 4",
            "Crastenburg A Blok No. 5",
            "Crastenburg A Blok No. 6",
            "Crastenburg A Blok No. 7",
            "Crastenburg A Blok No. 8",
            "Crastenburg A Blok No. 9",
            "Crastenburg A Blok No. 10",
            "Crastenburg A Blok No. 11",
            "Crastenburg A Blok No. 12",
            "Crastenburg A Blok No. 13",
            "Crastenburg A Blok No. 14",
            "Crastenburg A Blok No. 15",
            "Crastenburg A Blok No. 16",
        },
        doorCoord = vector3(-667.12432861328, -1105.2801513672, 14.633683204651),
        garageDoorCoord = vector3(-651.21148681641, -1070.5703125, 15.292504310608),
        garageDoorCoordH = 38.45,
        garage = "2cargarage",
        interior = "GetExecApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }
    },
    {
        name = "Crastenburg B Blok",
        price = 150000,
        star = 2,
        apartments = {
            "Crastenburg B Blok No. 1",
            "Crastenburg B Blok No. 2",
            "Crastenburg B Blok No. 3",
            "Crastenburg B Blok No. 4",
            "Crastenburg B Blok No. 5",
            "Crastenburg B Blok No. 6",
            "Crastenburg B Blok No. 7",
            "Crastenburg B Blok No. 8",
            "Crastenburg B Blok No. 9",
            "Crastenburg B Blok No. 10",
            "Crastenburg B Blok No. 11",
            "Crastenburg B Blok No. 12",
            "Crastenburg B Blok No. 13",
            "Crastenburg B Blok No. 14",
            "Crastenburg B Blok No. 15",
            "Crastenburg B Blok No. 16",
        },
        doorCoord = vector3(-674.91656494141, -1118.6608886719, 11.987266540527),
        garageDoorCoord = vector3(-643.30511474609, -1133.5473632813, 11.987279891968),
        garageDoorCoordH = 325.45,
        garage = "2cargarage",
        interior = "GetExecApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }
    },
    {
        name = "Little Seoul Apartment",
        price = 250000,
        star = 4,
        apartments = {
            "Little Seoul Apartment No. 1",
            "Little Seoul Apartment No. 2",
            "Little Seoul Apartment No. 3",
            "Little Seoul Apartment No. 4",
            "Little Seoul Apartment No. 5",
            "Little Seoul Apartment No. 6",
            "Little Seoul Apartment No. 7",
            "Little Seoul Apartment No. 8",
            "Little Seoul Apartment No. 9",
            "Little Seoul Apartment No. 10",
            "Little Seoul Apartment No. 11",
            "Little Seoul Apartment No. 12",
            "Little Seoul Apartment No. 13",
            "Little Seoul Apartment No. 14",
            "Little Seoul Apartment No. 15",
            "Little Seoul Apartment No. 16",
        },
        doorCoord = vector3(-589.46429443359, -707.72509765625, 36.27942276001),
        garageDoorCoord = vector3(-622.90631103516, -736.17700195313, 27.546808242798),
        garageDoorCoordH = 137.8,
        garage = "6cargarage",
        interior = "GetHLApartment5Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }
    },
    {
        name = "Elgin House",
        price = 160000,
        star = 1,
        apartments = {
            "Elgin House No. 1",
            "Elgin House No. 2",
            "Elgin House No. 3",
            "Elgin House No. 4",
            "Elgin House No. 5",
            "Elgin House No. 6",
            "Elgin House No. 7",
            "Elgin House No. 8",
            "Elgin House No. 9",
            "Elgin House No. 10",
            "Elgin House No. 11",
            "Elgin House No. 12",
            "Elgin House No. 13",
            "Elgin House No. 14",
            "Elgin House No. 15",
            "Elgin House No. 16",
        },
        doorCoord = vector3(-70.801055908203, 142.07829284668, 81.818901062012),
        garageDoorCoord = vector3(-60.309761047363, 158.77922058105, 81.351570129395),
        garageDoorCoordH = 130.8,
        garage = "2cargarage",
        interior = "GetHLApartment4Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }
    },
    {
        name = "Eclipse Tower",
        price = 240000,
        star = 3,
        apartments = {
            "Eclipse Tower No. 1",
            "Eclipse Tower No. 2",
            "Eclipse Tower No. 3",
            "Eclipse Tower No. 4",
            "Eclipse Tower No. 5",
            "Eclipse Tower No. 6",
            "Eclipse Tower No. 7",
            "Eclipse Tower No. 8",
            "Eclipse Tower No. 9",
            "Eclipse Tower No. 10",
            "Eclipse Tower No. 11",
            "Eclipse Tower No. 12",
            "Eclipse Tower No. 13",
            "Eclipse Tower No. 14",
            "Eclipse Tower No. 15",
            "Eclipse Tower No. 16",
        },
        doorCoord = vector3(-773.95819091797, 312.18869018555, 85.698097229004),
        garageDoorCoord = vector3(-796.18231201172, 323.86898803711, 85.70051574707),
        garageDoorCoordH = 179.8,
        garage = "6cargarage",
        interior = "GetHLApartment4Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }
    },
    {
        name = "1 Integry Way",
        price = 150000,
        star = 2,
        apartments = {
            "1 Integry Way No. 1",
            "1 Integry Way No. 2",
            "1 Integry Way No. 3",
            "1 Integry Way No. 4",
            "1 Integry Way No. 5",
            "1 Integry Way No. 6",
            "1 Integry Way No. 7",
            "1 Integry Way No. 8",
            "1 Integry Way No. 9",
            "1 Integry Way No. 10",
            "1 Integry Way No. 11",
            "1 Integry Way No. 12",
            "1 Integry Way No. 13",
            "1 Integry Way No. 11",
            "1 Integry Way No. 15",
            "1 Integry Way No. 16",
        },
        doorCoord = vector3(269.3720703125, -640.66851806641, 42.019748687744),
        garageDoorCoord = vector3(334.83807373047, -623.70764160156, 29.298559188843),
        garageDoorCoordH = 250.8,
        garage = "2cargarage",
        interior = "GetGTAOHouseHi4Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }
    },
    {
        name = "2 Integry Way",
        price = 150000,
        star = 2,
        apartments = {
            "2 Integry Way No. 1",
            "2 Integry Way No. 2",
            "2 Integry Way No. 3",
            "2 Integry Way No. 1",
            "2 Integry Way No. 5",
            "2 Integry Way No. 6",
            "2 Integry Way No. 7",
            "2 Integry Way No. 8",
            "2 Integry Way No. 9",
            "2 Integry Way No. 10",
            "2 Integry Way No. 11",
            "2 Integry Way No. 12",
            "2 Integry Way No. 13",
            "2 Integry Way No. 11",
            "2 Integry Way No. 15",
            "2 Integry Way No. 16",
        },
        doorCoord = vector3(-267.23431396484, -959.67517089844, 31.223125457764),
        garageDoorCoord = vector3(-288.78527832031, -993.13604736328, 24.137035369873),
        garageDoorCoordH = 247.8,
        garage = "2cargarage",
        interior = "GetGTAOHouseHi4Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }
    },
    {
        name = "Sevgi Apartment",
        price = 130000,
        star = 1,
        apartments = {
            "Sevgi Apartment No. 1",
            "Sevgi Apartment No. 2",
            "Sevgi Apartment No. 3",
            "Sevgi Apartment No. 1",
            "Sevgi Apartment No. 5",
            "Sevgi Apartment No. 6",
        },
        doorCoord = vector3(-1563.9616699219, -406.80694580078, 42.383735656738),
        garageDoorCoord = vector3(-1551.4244384766, -404.6985168457, 41.987689971924),
        garageDoorCoordH = 227.8,
        garage = "2cargarage",
        interior = "GetExecApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }
    },
    {
        name = "Heritage Apartment",
        price = 160000,
        star = 2,
        apartments = {
            "Heritage Apartment No. 1",
            "Heritage Apartment No. 2",
            "Heritage Apartment No. 3",
            "Heritage Apartment No. 4",
            "Heritage Apartment No. 5",
            "Heritage Apartment No. 6",
            "Heritage Apartment No. 7",
            "Heritage Apartment No. 8",
            "Heritage Apartment No. 9",
            "Heritage Apartment No. 10",
            "Heritage Apartment No. 11",
            "Heritage Apartment No. 12",
            "Heritage Apartment No. 13",
            "Heritage Apartment No. 14",
            "Heritage Apartment No. 15",
            "Heritage Apartment No. 16",
        },
        doorCoord = vector3(-883.67199707031, -433.87573242188, 39.599822998047),
        garageDoorCoord = vector3(-828.34381103516, -394.75076293945, 31.325248718262),
        garageDoorCoordH = 205.8,
        garage = "6cargarage",
        interior = "GetExecApartment3Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }
    },
    --[[
    {
        name = "Test House 1",
        price = 10000,
        star = 1,
        doorCoord = vector3(-1382.9499511719, -1196.4892578125, 4.1949753761292),
        garageDoorCoord = vector3(-1378.0596923828, -1185.4462890625, 4.2378115653992),
        garageDoorCoordH = 273.88,
        garage = "2cargarage",
        interior = "Motel1",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Garden", exist = true},
        }        
    },
    {
        name = "Test House 2",
        price = 20000,
        star = 3,
        doorCoord = vector3(-1387.1895751953, -1205.6499023438, 4.3534154891968),
        garageDoorCoord = vector3(-1378.0596923828, -1185.4462890625, 4.2378115653992),
        garageDoorCoordH = 273.88,
        garage = "2cargarage",
        interior = "GetGTAOHouseLow1Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Test House 3",
        price = 30000,
        star = 5,
        doorCoord = vector3(-1382.3464355469, -1215.9555664063, 4.5664520263672),
        garageDoorCoord = vector3(-1378.0596923828, -1185.4462890625, 4.2378115653992),
        garageDoorCoordH = 273.88,
        garage = "6cargarage",
        interior = "GetExecApartment2Object",
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    },
    {
        name = "Test Apart 4",
        price = 60000,
        star = 4,
        doorCoord = vector3(-1375.0268554688, -1224.7769775391, 4.7129969596863),
        garageDoorCoord = vector3(-1378.0596923828, -1185.4462890625, 4.2378115653992),
        garageDoorCoordH = 273.88,
        garage = "10cargarage",
        interior = "GetGTAOApartmentHi2Object",
        apartments = {
            "Test Apart No. 1",
            "Test Apart No. 2",
            "Test Apart No. 3",
            "Test Apart No. 4",
            "Test Apart No. 5",
            "Test Apart No. 6",
            "Test Apart No. 7",
            "Test Apart No. 8",
            "Test Apart No. 9",
            "Test Apart No. 10",
            "Test Apart No. 11",
            "Test Apart No. 12",
            "Test Apart No. 13",
            "Test Apart No. 14",
            "Test Apart No. 15",
            "Test Apart No. 16",
        },
        features = {
            { label = "Cheap price", exist = false},
            { label = "Pool", exist = true},
            { label = "Sound insulation", exist = true},
            { label = "Garden", exist = true},
            { label = "Garage", exist = true}
        }        
    }, 
    ]]
}

garageSlots = {
    ["2cargarage"] = {
        {coord = vector3(171.99758911133, -1004.0054931641, -99.270095825195), h = 179.2},
        {coord = vector3(175.35864257813, -1004.2197875977, -99.270172119141), h = 179.2},
    },
    ["6cargarage"] = {
        {coord = vector3(203.51440429688, -1003.9301757813, -99.417579650879), h = 176.2},
        {coord = vector3(203.74116516113, -997.87878417969, -99.414512634277), h = 176.2},
        {coord = vector3(198.36294555664, -1003.6122436523, -99.414512634277), h = 176.2},
        {coord = vector3(198.81988525391, -997.17352294922, -99.413627624512), h = 176.2},
        {coord = vector3(193.47421264648, -1003.2808837891, -99.414512634277), h = 176.2},
        {coord = vector3(193.61109924316, -996.55456542969, -99.414512634277), h = 176.2},
    },
    ["10cargarage"] = {
        {coord = vector3(233.44883728027, -1000.6386108398, -99.563087463379), h = 90.2},
        {coord = vector3(233.3602142334, -997.18365478516, -99.563079833984), h = 90.2},
        {coord = vector3(233.2492980957, -992.80401611328, -99.56307220459), h = 90.2},
        {coord = vector3(233.33786010742, -988.88641357422, -99.563087463379), h = 90.2},
        {coord = vector3(233.36799621582, -984.63739013672, -99.563102722168), h = 90.2},
        {coord = vector3(223.49592590332, -984.54559326172, -99.563102722168), h = 273.2},
        {coord = vector3(223.61753845215, -988.46044921875, -99.563110351563), h = 273.2},
        {coord = vector3(223.76684570313, -992.30108642578, -99.563064575195), h = 273.2},
        {coord = vector3(224.03680419922, -996.47802734375, -99.563102722168), h = 273.2},
        {coord = vector3(224.28117370605, -1000.4204711914, -99.563171386719), h = 273.2},
    },
}