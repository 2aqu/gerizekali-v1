Config = {}
Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)

-- To make this simple. Everything you need is in the config, except for discord, weapon drops, vehicle classes for cruise, hands up disabled keys, and recoil


Config.Binoculars = {
    fov_max = 70.0,
    fov_min = 5.0, -- max zoom level (smaller fov is more zoom)
    zoomspeed = 10.0, -- camera zoom speed
    speed_lr = 8.0, -- speed by which the camera pans left-right
    speed_ud = 8.0, -- speed by which the camera pans up-down
    storeBinoclarKey = 177
}

-- Whether to enable or disable dispatch services
Config.DispatchServices = {
    [1] = false, -- Police Vehicles
    [2] = false, -- Police Helicopters
    [3] = false, -- Fire Department Vehicles
    [4] = false, -- Swat Vehicles
    [5] = false, -- Ambulance Vehicles
    [6] = false, -- Police Motorcycles
    [7] = false, -- Police Backup
    [8] = false, -- Police Roadblocks
    [9] = false, -- PoliceAutomobileWaitPulledOver
    [10] = false, -- PoliceAutomobileWaitCruising
    [11] = false, -- Gang Members
    [12] = false, -- Swat Helicopters
    [13] = false, -- Police Boats
    [14] = false, -- Army Vehicles
    [15] = false, -- Biker Backup
}

-- Enable or disable the wanted level
Config.EnableWantedLevel = false

-- To Set This Up visit https://forum.cfx.re/t/how-to-updated-discord-rich-presence-custom-image/157686
Config.Density = {
    ['parked'] = 0.0,
    ['vehicle'] = 0.0,
    ['multiplier'] = 0.0,
    ['peds'] = 0.00,
    ['scenario'] = 0.0,
}

-- Config.Density = {
--     ['parked'] = 0.2,
--     ['vehicle'] = 0.2,
--     ['multiplier'] = 0.3,
--     ['peds'] = 0.7,
--     ['scenario'] = 0.2,
-- }

Config.Stun = {
    active = false,
    min = 4000,
    max = 7000
}

Config.RemovePistolWhipping = true  -- Removes Pistol Whipping

Config.Cruise = 'km/h'
Config.IdleCamera = true
Config.disableHandsupControls = {24, 25, 47, 58, 59, 63, 64, 71, 72, 75, 140, 141, 142, 143, 257, 263, 264}
Config.DisableAmbience = true -- Disabled distance sirens, distance car alarms, etc
Config.HarnessUses = 20
Config.DamageNeeded = 100.0 -- vehiclepush 0-1000
Config.EnableProne = false -- prone isnt recomended at this time
Config.MapText = "CoastV" -- This is the name / text shown above the map

Config.Disable = {
    disableHudComponents = {1, 2, 3, 4, 7, 9, 13, 14, 19, 20, 21, 22}, -- Hud Components: https://docs.fivem.net/natives/?_0x6806C51AD12B83B8
    disableControls = {37}, -- Controls: https://docs.fivem.net/docs/game-references/controls/
    displayAmmo = true -- false disables ammo display
}

Config.ConsumablesEat = {

    ["sandwich"] = math.random(35, 54),
    ["tosti"] = math.random(40, 50),
    ["twerks_candy"] = math.random(35, 54),
    ["snikkel_candy"] = math.random(40, 50),
    ["chocolate"] = math.random(10, 15),
    --Burger Shot Eat

["burgershot_bigking"] = math.random(40, 50),
["burgershot_bleeder"] = math.random(20, 30),
["burgershot_goatwrap"] = math.random(50, 60),
["burgershot_macaroon"] = math.random(10, 15),
["burgershot_patatob"] = math.random(15, 20),
["burgershot_patatos"] = math.random(5, 10),
["burgershot_shotnuggets"] = math.random(10, 15),
["burgershot_shotrings"] = math.random(10, 15),
["burgershot_thesmurfsicecream"] = math.random(1, 3),
["burgershot_smurfetteicecream"] = math.random(1, 3),
["burgershot_matchaicecream"] = math.random(1, 3),
["burgershot_ubeicecream"] = math.random(1, 3),
["burgershot_unicornicecream"] = math.random(1, 3),
["burgershot_vanillaicecream"] = math.random(1, 3),
["burgershot_chocolateicecream"] = math.random(1, 3),
["burgershot_strawberryicecream"] = math.random(1, 3),
["tq_banana_nut"] = math.random(20, 40),
	["tq_chocolatecup"] = math.random(20, 40),
	["tq_strawberrycup"] = math.random(20, 40),
    ["irishpub_banana_nut"] = math.random(20, 40),
	["irishpub_chocolatecup"] = math.random(20, 40),
	["irishpub_strawberrycup"] = math.random(20, 40),
}

Config.ConsumablesDrink = {
    ["water_bottle"] = math.random(35, 54),
    ["kurkakola"] = math.random(35, 54),
    ["coffee"] = math.random(40, 50),
    ["tq_berry_hydrating"] = math.random(20, 40),
    ["tq_green_dream"] = math.random(20, 40),
    ["tq_island_breeze"] = math.random(20, 40),
    ["tq_just_peachy"] = math.random(20, 40),
    ["tq_watermelon_dream"] = math.random(20, 40),
    ["tq_ban_straw_juice"] = math.random(20, 40),
    ["tq_banana_juice"] = math.random(20, 40),
    ["tq_kiwi_juice"] = math.random(20, 40),
    ["tq_strawberry_juice"] = math.random(20, 40),
    ["tq_orange_juice"] = math.random(20, 40),
	["tq_strawberrycup"] = math.random(20, 40),
	["tq-chocolatecup"] = math.random(20, 40),
	["tq_banana_nut"] = math.random(20, 40),
    ["peyote_tea"] = math.random(35, 54),
    ["redbull"] = math.random(10, 15),
    ["fanta"] = math.random(10, 15),
    --Burger Shot Drink

["burgershot_colas"] = math.random(20, 30),
["burgershot_coffee"] = math.random(10, 20),
}

Config.ConsumablesAlcohol = {
    ["whiskey"] = math.random(20, 30),
    ["beer"] = math.random(30, 40),
    ["vodka"] = math.random(20, 40),
    ["tq_cocktail"] = math.random(20, 30),
    ["tq_coconut_drink"] = math.random(30, 40),
    ["tq_island_fantasy"] = math.random(20, 40),
    ["tq_kamikaze"] = math.random(20, 40),
    ["tq_redhot_daquiri"] = math.random(20, 40),
}

-- Custom Consumables hand bones
-- 18905 left hand
-- 57005 right hand
Config.ConsumablesCustom = {
    -- ['newitem'] = {
    --     ['progress'] = {
    --         label = 'Using Item...',
    --         time = 5000
    --     },
    --     ['animation'] = {
    --         animDict = "amb@prop_human_bbq@male@base",
    --         anim = "base",
    --         flags = 8,
    --     },
    --     ['prop'] = {
    --         model = false,
    --         bone = false,
    --         coords = false, -- vector 3 format
    --         rotation = false, -- vector 3 format
    --     },
    --     ['replenish'] = {
    --         type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
    --         replenish = math.random(20, 40),
    --         isAlcohol = false, -- if you want it to add alcohol count
    --         event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
    --         server = false -- if the event above is a server event
    --     }
    -- }
}

ConsumablesFireworks = {
    "firework1",
    "firework2",
    "firework3",
    "firework4"
}

Config.FireworkTime = 5 -- seconds before it goes off

Config.BlacklistedScenarios = {
    ['TYPES'] = {
        "WORLD_VEHICLE_MILITARY_PLANES_SMALL",
        "WORLD_VEHICLE_MILITARY_PLANES_BIG",
        "WORLD_VEHICLE_AMBULANCE",
        "WORLD_VEHICLE_POLICE_NEXT_TO_CAR",
        "WORLD_VEHICLE_POLICE_CAR",
        "WORLD_VEHICLE_POLICE_BIKE",
    },
    ['GROUPS'] = {
        2017590552,
        2141866469,
        1409640232,
        `ng_planes`,
    }
}

Config.BlacklistedVehs = {
    [`SHAMAL`] = true,
    [`LUXOR`] = false,
    [`LUXOR2`] = false,
    [`JET`] = true,
    [`LAZER`] = true,
    [`BUZZARD`] = true,
    [`BUZZARD2`] = true,
    [`ANNIHILATOR`] = true,
    [`SAVAGE`] = true,
    [`TITAN`] = true,
    [`RHINO`] = true,
    [`FIRETRUK`] = false,
    [`MULE`] = true,
    [`MAVERICK`] = true,
    [`BLIMP`] = true,
    [`AIRTUG`] = true,
    [`CAMPER`] = true,
    [`HYDRA`] = true,
    [`OPPRESSOR`] = true,
    [`technical3`] = true,
    [`insurgent3`] = true,
    [`apc`] = true,
    [`tampa3`] = true,
    [`trailersmall2`] = true,
    [`halftrack`] = true,
    [`hunter`] = true,
    [`vigilante`] = true,
    [`akula`] = true,
    [`barrage`] = true,
    [`khanjali`] = true,
    [`caracara`] = true,
    [`blimp3`] = true,
    [`menacer`] = true,
    [`oppressor2`] = true,
    [`scramjet`] = true,
    [`strikeforce`] = true,
    [`cerberus`] = true,
    [`cerberus2`] = true,
    [`cerberus3`] = true,
    [`scarab`] = true,
    [`scarab2`] = true,
    [`scarab3`] = true,
    [`rrocket`] = true,
    [`ruiner2`] = true,
    [`deluxo`] = true,
    [`cargoplane2`] = true,
    [`voltic2`] = true,
    [`policeb`] = true,
    [`frogger`] = true,
}

Config.BlacklistedWeapons = {
    [`WEAPON_RAILGUN`] = true,
}

Config.BlacklistedPeds = {
    [`s_m_y_ranger_01`] = true,
    [`s_m_y_sheriff_01`] = true,
    [`s_m_y_cop_01`] = true,
    [`s_f_y_sheriff_01`] = true,
    [`s_f_y_cop_01`] = true,
    [`s_m_y_hwaycop_01`] = true,
}

Config.DisableVestDrawable = false -- Set to TRUE to disable the vest equipped when using heavy armor.
Config.HolsterVariant = {130,122,3,6,8}
Config.HolsterableWeapons = {
    --'WEAPON_STUNGUN',
    'WEAPON_PISTOL',
    'WEAPON_PISTOL_MK2',
    'WEAPON_COMBATPISTOL',
    'WEAPON_APPISTOL',
    'WEAPON_PISTOL50',
    'WEAPON_REVOLVER',
    'WEAPON_SNSPISTOL',
    'WEAPON_HEAVYPISTOL',
    'WEAPON_VINTAGEPISTOL'
}

Config.Objects = { -- for object removal
    {coords = vector3(266.09,-349.35,44.74), heading = 0, length = 200, width = 200, model = "prop_sec_barier_02b"},
    {coords = vector3(285.28,-355.78,45.13), heading = 0, length = 200, width = 200, model = "prop_sec_barier_02a"},
}

-- You may add more than 2 selections and it will bring up a menu for the player to select which floor be sure to label each section though
Config.Teleports = {
    [1] = {
        [1] = {
            coords = vector4(330.1228, -601.1722, 43.2841, 70.0992),
            ["AllowVehicle"] = false,
            drawText = '[E] Asagi In'
        },
        [2] = {
            coords = vector4(342.4864, -585.5671, 28.7989, 250.8150),
            ["AllowVehicle"] = false,
            drawText = '[E] Yukari Çık'
        },

    },
    [2] = {  -- hastane çatı
        [1] = {
            coords = vector4(338.9223, -583.6093, 74.1617, 253.0336),
            ["AllowVehicle"] = false,
            drawText = '[E] Asagi In'
        },
        [2] = {
            coords = vector4(332.1175, -595.5538, 43.2841, 71.2943),
            ["AllowVehicle"] = false,
            drawText = '[E] Catiya Cik'
        },

    },
    [3] = {
        [1] = {
            coords = vector4(1066.2, -3183.38, -39.16, 89.3),
            ["AllowVehicle"] = false,
            drawText = '[E] Labdan Çık'
        },
        [2] = {
            coords = vector4(-66.95, -1312.37, 29.28, 180.95),
            ["AllowVehicle"] = false,
            drawText = '[E] Laba Gir'
        },

    },
    [4] = {
        [1] = {
            coords = vector4(565.68, 4.99, 103.23, 90.07),
            ["AllowVehicle"] = false,
            drawText = '[E] Çatıdan İn'
        },
        [2] = {
            coords = vector4(604.86, 5.81, 97.87, 163.57),
            ["AllowVehicle"] = false,
            drawText = '[E] Çatıya Çık'
        },

    },
    [5] = {
        [1] = {
            coords = vector4(-493.52, -327.48, 69.5, 163.83),
            ["AllowVehicle"] = false,
            drawText = '[E] Asagi In'
        },
        [2] = {
            coords = vector4(-436.23, -359.58, 34.84, 335.18),
            ["AllowVehicle"] = false,
            drawText = '[E] Yukari Cik'
        },

    },
    [6] = {
        [1] = {
            coords = vector4(-843.43, -236.72, 61.02, 30.17),
            ["AllowVehicle"] = false,
            drawText = '[E] Asagi In'
        },
        [2] = {
            coords = vector4(-840.48, -230.34, 37.25, 119.51),
            ["AllowVehicle"] = false,
            drawText = '[E] Yukari Cik'
        },

    },
    [7] = {
        [1] = {
            coords = vector4(-444.04, -332.27, 78.17, 198.58),
            ["AllowVehicle"] = false,
            drawText = '[E] Asagi In'
        },
        [2] = {
            coords = vector4(-452.54, -288.45, 34.95, 105.08),
            ["AllowVehicle"] = false,
            drawText = '[E] Yukari Cik'
        },

    },
    [8] = {
        [1] = {
            coords = vector4(-69.08, -802.16, 44.23, 154.95),
            ["AllowVehicle"] = false,
            drawText = '[E] Emlaga Gir'
        },
        [2] = {
            coords = vector4(-78.0, -830.19, 243.39, 333.35),
            ["AllowVehicle"] = false,
            drawText = '[E] Emlakdan Cik'
        },

    },
    [9] = {
        [1] = {
            coords = vector4(288.3, -920.15, 29.46, 72.5),
            ["AllowVehicle"] = false,
            drawText = '[E] Kafeye Gir'
        },
        [2] = {
            coords = vector4(317.84, -915.51, 58.34, 72.5),
            ["AllowVehicle"] = false,
            drawText = '[E] Kafeden Cik'
        },

    },
    [10] = {
        [1] = {
            coords = vector4(953.03, 19.72, 71.91, 146.03),
            ["AllowVehicle"] = false,
            drawText = '[E] Catiya Cik'
        },
        [2] = {
            coords = vector4(965.04, 58.46, 112.55, 232.13),
            ["AllowVehicle"] = false,
            drawText = '[E] Catidan In'
        },

    },
    [11] = {
        [1] = {
            coords = vector4(-1581.04, -558.58, 34.95, 219.43),
            ["AllowVehicle"] = false,
            drawText = '[E] Yukari Cik'
        },
        [2] = {
            coords = vector4(-1580.8, -561.69, 108.52, 214.19),
            ["AllowVehicle"] = false,
            drawText = '[E] Asagi In'
        },
    },
    [12] = {
        [1] = {
            coords = vector4(-68.84, -814.25, 285.0, 241.42),
            ["AllowVehicle"] = false,
            drawText = '[E] Disari Cik'
        },
        [2] = {
            coords = vector4(-32.89, -1098.0, 43.07, 88.53),
            ["AllowVehicle"] = false,
            drawText = ','
        },
    },
    [13] = {
        [1] = {
            coords = vector4(-1077.87, -254.7, 44.02, 201.64),
            ["AllowVehicle"] = false,
            drawText = '[E] Yukari Cik'
        },
        [2] = {
            coords = vector4(-1072.77, -246.69, 54.01, 115.46),
            ["AllowVehicle"] = false,
            drawText = '[E] Asagi In'
        },
    },

}

Config.Aracyikama = false
Config.DefaultPrice = 20 -- Default price for the carwash
Config.DirtLevel = 0.1 -- Threshold for the dirt level to be counted as dirty
Config.CarWash = { -- carwash
[1] = {
    ["label"] = "Arac Yikama",
    ["coords"] = vector3(25.29, -1391.96, 29.33),
},
[2] = {
    ["label"] = "Arac Yikama",
    ["coords"] = vector3(174.18, -1736.66, 29.35),
},
[3] = {
    ["label"] = "Arac Yikama",
    ["coords"] = vector3(-74.56, 6427.87, 31.44),
},
[4] = {
    ["label"] = "Arac Yikama",
    ["coords"] = vector3(1363.22, 3592.7, 34.92),
},
[5] = {
    ["label"] = "Arac Yikama",
    ["coords"] = vector3(-699.62, -932.7, 19.01),
}
}
