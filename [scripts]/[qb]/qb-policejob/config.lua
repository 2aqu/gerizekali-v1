Config = {}

Config.Objects = {
    ["cone"] = {model = `prop_roadcone02a`, freeze = false},
    ["barrier"] = {model = `prop_barrier_work06a`, freeze = true},
    ["roadsign"] = {model = `prop_snow_sign_road_06g`, freeze = true},
    ["tent"] = {model = `prop_gazebo_03`, freeze = true},
    ["light"] = {model = `prop_worklight_03b`, freeze = true},
}

Config.MaxSpikes = 5

Config.HandCuffItem = 'handcuffs'
Config.CuffKeyItem = "cuffkeys"
Config.TieItem = 'ziptie'
Config.CutTieItem = 'flush_cutter'
Config.CutCuffItem = 'bolt_cutter'
Config.BrokenCuffItem = 'broken_handcuffs'
Config.BreakOutCuffing = {active = true, duration = math.random(2500,5000), pos = math.random(10, 30), width = math.random(10, 20)}
Config.BreakoutMinigame = 'ps-ui' -- Choose the cuff breakout minigame : qb-skillbar / ps-ui (circle)
Config.PSUICOnfig = {numcircle = 2, ms = 5} -- If minigame is ps-ui then choose number of circles and ms 
Config.TargetSystem = 'qb-target' -- Target system you want to use : qb-target / qtarget / ox_target
Config.ContextSystem = 'ox_lib' -- Menu system you want to use : qb-menu / ox_lib
Config.Debug = false -- Enable / Disable debugpoly 

-- itemname = name of the item
-- propname = the prop used for cuffing
-- needkey = does the cuff needs a key to uncuff ? It will give a key when true
-- keyitem = what is the item used to uncuff
-- cufftype = the animation type. 19 - ped is freezed / 49 - ped can move with cuffs
Config.CuffItems = { 
    ['handcuffs'] = {itemname = "handcuffs", propname = "p_cs_cuffs_02_s", needkey = true, keyitem = "cuffkeys", cufftype = 49 },
    ['ziptie'] = {itemname = "ziptie", propname = "ba_prop_battle_cuffs", needkey = false, keyitem = "flush_cutter", cufftype = 49}
}

Config.BlipColors = {
    ['police'] = 29, -- Dark Blue
    ['sheriff'] = 47, -- Orange
    ['ranger'] = 2,
    ['vpd'] = 3, 
    ['dppd'] = 28, 
    ['davison'] = 31,  
    ['state'] = 12, -- Green
    ['ambulance'] = 1, -- Red
    ['dppd'] = 22 -- Red 
}

Config.FuelScript = 'cdn-fuel'
Config.Inventory = 'ox_inventory'
Config.LicenseRank = 2
Config.BlockWallThermals = true -- true/false; lowers thermal cam intensity to stop penetration through walls or tunnels
Config.UseTarget = GetConvar('UseTarget', 'false') == 'true'
Config.GaragePedModel = "s_m_y_hwaycop_01"
Config.Locations = {
    ["duty"] = {
        [1] = vector3(441.23, -981.85, 30.69), --mdp
        [2] = vector3(938.66, -1466.05, 33.61), --fbi
        [3] = vector3(835.57, -1289.75, 28.18), --state
        [4] = vector3(-447.3, 6013.0, 32.19), --sheriff
        [5] = vector3(385.17, 794.19, 187.43), --ranger
        [6] = vector3(376.48, -1605.38, 30.05), --davis
        [7] = vector3(1833.72, 3678.35, 34.75), --sandysheriff
        [8] = vector3(-1633.8, -1023.29, 12.56) --dppd
    },
    ["vehicle"] = {
    },
    ["vehspawn"] = { -- The numbers [1] must match the numbers in [vehicle]
    },
    ["stash"] = {
        [1] = vector3(479.21, -996.81, 30.69), --mdp
        [2] = vector3(943.62, -1460.47, 33.61), -- fbi
        [3] = vector3(834.7, -1295.99, 24.12), --state
        [4] = vector3(-438.54, 6011.68, 27.58), --sheriff
        [5] = vector3(379.5, 799.58, 190.49), --ranger
        [6] = vector3(365.23, -1598.6, 25.45), --davis
        [7] = vector3(1831.02, 3680.03, 38.86), --sandysheriff
        [8] = vector3(-1102.98, -829.17, 14.28), --vespucci
        [9] = vector3(610.26, -13.16, 76.63), --vinewood
        [10] =vector3(2521.83, -337.03, 101.91), --mp
        [11] = vector3(-1621.45, -1018.97, 13.16) --dppd
    },
    ["impound"] = {
        [1] = vector3(479.08, -1022.54, 28.01),
        [2] = vector3(1822.14, 3689.16, 33.97),
    },
    ["helicopter"] = {
        [1] = vector4(463.93, -982.19, 43.69, 90.05),
        [2] = vector4(1844.61, 3709.23, 33.97, 214.69),
        [3] = vector4(-480.84, 5971.85, 31.3, 311.56),
        [4] = vector4(565.6, 6.63, 103.23, 273.49),
        [5] = vector4(832.1, -1417.79, 26.16, 1.72),
        [6] = vector4(396.3, -1632.09, 29.29, 231.67),
    },
    ["helispawn"] = { -- The numbers [1] must match the numbers in [helicopter]
        [1] = vector4(449.33, -981.26, 44.06, 90.81),    
        [2] = vector4(1853.9, 3705.36, 33.97, 208.6),
        [3] = vector4(-474.75, 5988.82, 31.34, 316.36),
        [4] = vector4(579.77, 12.67, 103.23, 1.76),
        [5] = vector4(836.62, -1406.86, 25.71, 273.77),
        [6] = vector4(406.82, -1642.25, 29.29, 330.05)
    },
    ["armory"] = {
        -- [1] = vector3(485.37, -995.29, 30.69), --mdp
        -- [2] = vector3(947.7, -1466.78, 30.4), -- fbi
        -- [3] = vector3(835.24, -1300.89, 24.07), --state
        -- [4] = vector3(-449.09, 6014.54, 37.0), --sheriff
        -- [5] = vector3(387.2, 799.81, 187.46), --ranger
        -- [6] = vector3(364.64, -1604.06, 25.45), --davis
        -- [7] = vector3(1837.84, 3688.13, 34.19), --sandysheriff 
        -- [8] = vector3(-1106.92, -826.05, 14.28), --vespucci
        --[9] = vector3(-526.78, -187.76, 43.37), --doj
        -- [9] = vector3(604.5, 3.78, 87.82), --vinewood
    },
    ["trash"] = {
        [1] = vector3(484.73, -987.95, 30.69), --mdp
        [2] = vector3(944.0, -1462.92, 30.4), --fbi
        [3] = vector3(843.1, -1287.92, 28.24), --state
        [4] = vector3(-445.8, 6001.27, 27.58), --sheriff
        [5] = vector3(380.23, 797.16, 190.49), --ranger
        [6] = vector3(366.26, -1587.03, 31.05), --davis
        [7] = vector3(1830.21, 3683.52, 34.19), --sandysheriff
        [8] = vector3(-1627.8, -1033.78, 12.15) --dppd
    },
    ["fingerprint"] = {
        [1] = vector3(487.25, -993.3, 30.69), --mdp
        [2] = vector3(947.81, -1471.52, 30.4), --fbi
        [3] = vector3(839.83, -1304.78, 28.24), --state
        [4] = vector3(-436.52, 6001.45, 37.01), --sheriff
        [5] = vector3(383.31, 794.63, 190.49), --ranger
        [6] = vector3(363.52, -1602.51, 30.06), --davis
        [7] = vector3(1818.58, 3666.5, 34.19), --sandysheriff
    },
    ["evidence"] = {
        [1] = vector3(472.94, -995.62, 26.27), --mdp
        [2] = vector3(945.07, -1460.62, 33.61), --fbi
        [3] = vector3(836.533203125,-1298.9060058594,24.331350326538), --state
        [4] = vector3(-452.76, 5999.61, 37.01), --sheriff
        [5] = vector3(386.15, 799.89, 190.49), --ranger
        [6] = vector3(381.45, -1608.84, 30.2), --davis
        [7] = vector3(1821.72, 3668.88, 34.19), --sandysheriff
        [8] = vector3(-1074.69, -823.4, 11.04), --vespucci
        [9] = vector3(615.03, -11.5, 76.63), --vpd
        [10] =vector3(2518.91, -325.56, 101.91), -- mp
        [11] =vector3(-1628.87, -1026.61, 13.16) -- dppd

    },
    ["labs"] = {
        [1] = vector3(483.49, -988.62, 31.06), -- LSPD
    },
    ["stations"] = {
        [1] = {label = "Mission Row Polis Departmanı", coords = vector4(453.63, -984.36, 30.69, 331.35), sprite= 137, scale= 0.7, colour= 29},
        [2] = {label = "Paleto Bay Sheriff Departmanı", coords = vector4(-448.26, 6007.83, 44.01, 225.93), sprite= 137, scale= 0.7, colour= 29},
        [3] = {label = "State Polis Departmanı", coords = vector4(830.52, -1290.85, 28.83, 276.31), sprite= 137, scale= 0.7, colour= 29},
        [4] = {label = "Park Ranger Departmanı", coords = vector4(382.81, 796.68, 195.16, 184.21), sprite= 137, scale= 0.7, colour= 29},
        [5] = {label = "Vinewood Polis Departmanı", coords = vector4(581.65, -6.74, 101.25, 113.39), sprite= 137, scale= 0.7, colour= 29},
        [6] = {label = "Sandy Shores Sheriff Departmanı", coords = vector4(1829.14, 3676.04, 42.86, 3.29), sprite= 137, scale= 0.7, colour= 29},
        [7] = {label = "Davis Sheriff İstasyonu", coords = vector4(365.52, -1599.55, 36.24, 46.01), sprite= 137, scale= 0.7, colour= 29},
        [8] = {label = "Metropolitan Division", coords = vector4(2523.97, -388.09, 92.99, 171.28), sprite= 137, scale= 0.7, colour= 29},
        [8] = {label = "Del Pierro PD", coords = vector4(-1627.8, -1033.78, 13.15, 133.0), sprite= 137, scale= 0.7, colour= 44},
    },
}

Config.PoliceHelicopter = "polas350"

Config.SecurityCameras = {
    hideradar = false,
    cameras = {
        [1] = {label = "Pacific Bank CAM#1", coords = vector3(257.45, 210.07, 109.08), r = {x = -25.0, y = 0.0, z = 28.05}, canRotate = false, isOnline = true},
        [2] = {label = "Pacific Bank CAM#2", coords = vector3(232.86, 221.46, 107.83), r = {x = -25.0, y = 0.0, z = -140.91}, canRotate = false, isOnline = true},
        [3] = {label = "Pacific Bank CAM#3", coords = vector3(252.27, 225.52, 103.99), r = {x = -35.0, y = 0.0, z = -74.87}, canRotate = false, isOnline = true},
        [4] = {label = "Limited Ltd Grove St. CAM#1", coords = vector3(-53.1433, -1746.714, 31.546), r = {x = -35.0, y = 0.0, z = -168.9182}, canRotate = false, isOnline = true},
        [5] = {label = "Rob's Liqour Prosperity St. CAM#1", coords = vector3(-1482.9, -380.463, 42.363), r = {x = -35.0, y = 0.0, z = 79.53281}, canRotate = false, isOnline = true},
        [6] = {label = "Rob's Liqour San Andreas Ave. CAM#1", coords = vector3(-1224.874, -911.094, 14.401), r = {x = -35.0, y = 0.0, z = -6.778894}, canRotate = false, isOnline = true},
        [7] = {label = "Limited Ltd Ginger St. CAM#1", coords = vector3(-718.153, -909.211, 21.49), r = {x = -35.0, y = 0.0, z = -137.1431}, canRotate = false, isOnline = true},
        [8] = {label = "24/7 Supermarkt Innocence Blvd. CAM#1", coords = vector3(23.885, -1342.441, 31.672), r = {x = -35.0, y = 0.0, z = -142.9191}, canRotate = false, isOnline = true},
        [9] = {label = "Rob's Liqour El Rancho Blvd. CAM#1", coords = vector3(1133.024, -978.712, 48.515), r = {x = -35.0, y = 0.0, z = -137.302}, canRotate = false, isOnline = true},
        [10] = {label = "Limited Ltd West Mirror Drive CAM#1", coords = vector3(1151.93, -320.389, 71.33), r = {x = -35.0, y = 0.0, z = -119.4468}, canRotate = false, isOnline = true},
        [11] = {label = "24/7 Supermarkt Clinton Ave CAM#1", coords = vector3(383.402, 328.915, 105.541), r = {x = -35.0, y = 0.0, z = 118.585}, canRotate = false, isOnline = true},
        [12] = {label = "Limited Ltd Banham Canyon Dr CAM#1", coords = vector3(-1832.057, 789.389, 140.436), r = {x = -35.0, y = 0.0, z = -91.481}, canRotate = false, isOnline = true},
        [13] = {label = "Rob's Liqour Great Ocean Hwy CAM#1", coords = vector3(-2966.15, 387.067, 17.393), r = {x = -35.0, y = 0.0, z = 32.92229}, canRotate = false, isOnline = true},
        [14] = {label = "24/7 Supermarkt Ineseno Road CAM#1", coords = vector3(-3046.749, 592.491, 9.808), r = {x = -35.0, y = 0.0, z = -116.673}, canRotate = false, isOnline = true},
        [15] = {label = "24/7 Supermarkt Barbareno Rd. CAM#1", coords = vector3(-3246.489, 1010.408, 14.705), r = {x = -35.0, y = 0.0, z = -135.2151}, canRotate = false, isOnline = true},
        [16] = {label = "24/7 Supermarkt Route 68 CAM#1", coords = vector3(539.773, 2664.904, 44.056), r = {x = -35.0, y = 0.0, z = -42.947}, canRotate = false, isOnline = true},
        [17] = {label = "Rob's Liqour Route 68 CAM#1", coords = vector3(1169.855, 2711.493, 40.432), r = {x = -35.0, y = 0.0, z = 127.17}, canRotate = false, isOnline = true},
        [18] = {label = "24/7 Supermarkt Senora Fwy CAM#1", coords = vector3(2673.579, 3281.265, 57.541), r = {x = -35.0, y = 0.0, z = -80.242}, canRotate = false, isOnline = true},
        [19] = {label = "24/7 Supermarkt Alhambra Dr. CAM#1", coords = vector3(1966.24, 3749.545, 34.143), r = {x = -35.0, y = 0.0, z = 163.065}, canRotate = false, isOnline = true},
        [20] = {label = "24/7 Supermarkt Senora Fwy CAM#2", coords = vector3(1729.522, 6419.87, 37.262), r = {x = -35.0, y = 0.0, z = -160.089}, canRotate = false, isOnline = true},
        [21] = {label = "Fleeca Bank Hawick Ave CAM#1", coords = vector3(309.341, -281.439, 55.88), r = {x = -35.0, y = 0.0, z = -146.1595}, canRotate = false, isOnline = true},
        [22] = {label = "Fleeca Bank Legion Square CAM#1", coords = vector3(144.871, -1043.044, 31.017), r = {x = -35.0, y = 0.0, z = -143.9796}, canRotate = false, isOnline = true},
        [23] = {label = "Fleeca Bank Hawick Ave CAM#2", coords = vector3(-355.7643, -52.506, 50.746), r = {x = -35.0, y = 0.0, z = -143.8711}, canRotate = false, isOnline = true},
        [24] = {label = "Fleeca Bank Del Perro Blvd CAM#1", coords = vector3(-1214.226, -335.86, 39.515), r = {x = -35.0, y = 0.0, z = -97.862}, canRotate = false, isOnline = true},
        [25] = {label = "Fleeca Bank Great Ocean Hwy CAM#1", coords = vector3(-2958.885, 478.983, 17.406), r = {x = -35.0, y = 0.0, z = -34.69595}, canRotate = false, isOnline = true},
        [26] = {label = "Paleto Bank CAM#1", coords = vector3(-102.939, 6467.668, 33.424), r = {x = -35.0, y = 0.0, z = 24.66}, canRotate = false, isOnline = true},
        [27] = {label = "Del Vecchio Liquor Paleto Bay", coords = vector3(-163.75, 6323.45, 33.424), r = {x = -35.0, y = 0.0, z = 260.00}, canRotate = false, isOnline = true},
        [28] = {label = "Don's Country Store Paleto Bay CAM#1", coords = vector3(166.42, 6634.4, 33.69), r = {x = -35.0, y = 0.0, z = 32.00}, canRotate = false, isOnline = true},
        [29] = {label = "Don's Country Store Paleto Bay CAM#2", coords = vector3(163.74, 6644.34, 33.69), r = {x = -35.0, y = 0.0, z = 168.00}, canRotate = false, isOnline = true},
        [30] = {label = "Don's Country Store Paleto Bay CAM#3", coords = vector3(169.54, 6640.89, 33.69), r = {x = -35.0, y = 0.0, z = 5.78}, canRotate = false, isOnline = true},
        [31] = {label = "Vangelico Jewelery CAM#1", coords = vector3(-627.54, -239.74, 40.33), r = {x = -35.0, y = 0.0, z = 5.78}, canRotate = true, isOnline = true},
        [32] = {label = "Vangelico Jewelery CAM#2", coords = vector3(-627.51, -229.51, 40.24), r = {x = -35.0, y = 0.0, z = -95.78}, canRotate = true, isOnline = true},
        [33] = {label = "Vangelico Jewelery CAM#3", coords = vector3(-620.3, -224.31, 40.23), r = {x = -35.0, y = 0.0, z = 165.78}, canRotate = true, isOnline = true},
        [34] = {label = "Vangelico Jewelery CAM#4", coords = vector3(-622.57, -236.3, 40.31), r = {x = -35.0, y = 0.0, z = 5.78}, canRotate = true, isOnline = true},
    },
}
Config.EnableMods = true -- Enable the mods below to be applied
Config.CarMods = { -- Mods to be enabled / disabled for vehicles
    engine = true,
    brakes = true,
    gearbox = true,
    armour = false,
    turbo = true,
}
Config.EnableExtras = true
Config.CarExtras = { -- Extra options to be enabled / disabled
    ["extras"] = {
        ["1"] = true, -- on/off
        ["2"] = true,
        ["3"] = true,
        ["4"] = true,
        ["5"] = true,
        ["6"] = true,
        ["7"] = true,
        ["8"] = true,
        ["9"] = true,
        ["10"] = true,
        ["11"] = true,
        ["12"] = true,
        ["13"] = true,
    }
}
Config.AuthorizedVehicles = {
    -- Garage 1 vehicles (LSPD)
    [1] = {
        ["police"] = {label = "Police Car 1", ranks = {1,2}, livery = 1, price = 10},
        ["police2"] = {label = "Police Car 2", ranks = {1,2}, livery = 1, price = 10},
        ["police3"] = {label = "Police Car 3", ranks = {3}, livery = 1, price = 10},
        ["police4"] = {label = "Police Car 4", ranks = {3}, livery = 1, price = 10},
        ["policeb"] = {label = "Police Car 5", ranks = {3,4}, livery = 1, price = 10},
        ["policet"] = {label = "Police Car 6", ranks = {3,4}, livery = 1, price = nil},
        ["fbi"] = {label = "Unmarked FBI", ranks = {3,4}, livery = 1, price = 15},
        ["fbi2"] = {label = "Unmarked FBI2", ranks = {3,4}, livery = 1, price = nil},
    },
    -- Garage 2 vehicles (BCSO)
    [2] = {
        ["sheriff"] = {label = "Sheriff Car 1", ranks = {1,2}, livery = 1, price = 10},
        ["sheriff2"] = {label = "Sheriff Car 2", ranks = {2,3,4}, livery = 1, price = 10},
        ["fbi"] = {label = "Unmarked FBI", ranks = {3,4}, livery = 1, price = 10},
        ["fbi2"] = {label = "Unmarked FBI2", ranks = {3,4}, livery = 1, price = nil},
    },
    -- Garage 1 vehicles (Sandy)
    [3] = {
        ["sheriff"] = {label = "Sheriff Car 1", ranks = {1,2}, livery = 1, price = 10},
        ["sheriff2"] = {label = "Sheriff Car 2", ranks = {2,3,4}, livery = 1, price = 10},
        ["fbi"] = {label = "Unmarked FBI", ranks = {3,4}, livery = 1, price = 10},
        ["fbi2"] = {label = "Unmarked FBI2", ranks = {3,4}, livery = 1, price = nil},
    },
}

Config.AmmoLabels = {
    ["AMMO_PISTOL"] = "9x19mm parabellum bullet",
    ["AMMO_SMG"] = "9x19mm parabellum bullet",
    ["AMMO_RIFLE"] = "7.62x39mm bullet",
    ["AMMO_MG"] = "7.92x57mm mauser bullet",
    ["AMMO_SHOTGUN"] = "12-gauge bullet",
    ["AMMO_SNIPER"] = "Large caliber bullet",
}

Config.Radars = {
    vector4(-623.44421386719, -823.08361816406, 25.25704574585, 145.0),
    vector4(-652.44421386719, -854.08361816406, 24.55704574585, 325.0),
    vector4(1623.0114746094, 1068.9924316406, 80.903594970703, 84.0),
    vector4(-2604.8994140625, 2996.3391113281, 27.528566360474, 175.0),
    vector4(2136.65234375, -591.81469726563, 94.272926330566, 318.0),
    vector4(2117.5764160156, -558.51013183594, 95.683128356934, 158.0),
    vector4(406.89505004883, -969.06286621094, 29.436267852783, 33.0),
    vector4(657.315, -218.819, 44.06, 320.0),
    vector4(2118.287, 6040.027, 50.928, 172.0),
    vector4(-106.304, -1127.5530, 30.778, 230.0),
    vector4(-823.3688, -1146.980, 8.0, 300.0),
}

Config.CarItems = {
    [1] = {name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1,},
    [2] = {name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2,},
    [3] = {name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3,},
}

Config.Items = {
    label = "Polis Cephaneliği",
    slots = 33,
    items = {
        [1] = {
            name = "weapon_glock19gen4",
            price = 0,
            amount = 1,
            info = {},
            type = "weapon",
            slot = 1,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
        },
        [2] = {
            name = "weapon_glock18c",
            price = 0,
            amount = 1,
            info = {},
            type = "weapon",
            slot = 2,
            authorizedJobGrades = {}
        },
        [3] = {
            name = "weapon_p320b",
            price = 0,
            amount = 1,
            info = {},
            type = "weapon",
            slot = 3,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
        },
        [4] = {
            name = "weapon_mpx",
            price = 0,
            amount = 1,
            info = {},
            type = "weapon",
            slot = 4,
            authorizedJobGrades = {12, 13, 14}
        },
        [5] = {
            name = "weapon_scarsc",
            price = 0,
            amount = 1,
            info = {},
            type = "weapon",
            slot = 5,
            authorizedJobGrades = {12, 13, 14}
        },
        [6] = {
            name = "weapon_m6ic",
            price = 0,
            amount = 1,
            info = {},
            type = "weapon",
            slot = 6,
            authorizedJobGrades = {12, 13, 14}
        },
        [7] = {
            name = "weapon_beanbagshotgun",
            price = 0,
            amount = 1,
            info = {},
            type = "weapon",
            slot = 7,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
        },
        [8] = {
            name = "weapon_stungun",
            price = 0,
            amount = 1,
            info = {},
            type = "weapon",
            slot = 8,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
        },
        [9] = {
            name = "weapon_nightstick",
            price = 0,
            amount = 1,
            info = {},
            type = "weapon",
            slot = 9,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
        },
        [10] = {
            name = "carbinerifle_extendedclip",
            price = 0,
            amount = 1,
            info = {},
            type = "weapon",
            slot = 10,
            authorizedJobGrades = {12, 13, 14}
        },
        [11] = {
            name = "rifle_suppressor",
            price = 0,
            amount = 1,
            info = {},
            type = "weapon",
            slot = 11,
            authorizedJobGrades = {12, 13, 14}
        },
        [12] = {
            name = "rifle_grip",
            price = 0,
            amount = 1,
            info = {},
            type = "weapon",
            slot = 12,
            authorizedJobGrades = {12, 13, 14}
        },
        [13] = {
            name = "rifle_flashlight",
            price = 0,
            amount = 1,
            info = {},
            type = "weapon",
            slot = 13,
            authorizedJobGrades = {12, 13, 14}
        },
        [14] = {
            name = "carbinerifle_luxuryfinish",
            price = 0,
            amount = 1,
            info = {},
            type = "weapon",
            slot = 14,
            authorizedJobGrades = {12, 13, 14}
        },
        [15] = {
            name = "carbinerifle_scope",
            price = 0,
            amount = 1,
            info = {},
            type = "weapon",
            slot = 15,
            authorizedJobGrades = {12, 13, 14}
        },
        [16] = {
            name = "pistol_ammo",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 16,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
        },
        [17] = {
            name = "smg_ammo",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 17,
            authorizedJobGrades = {12, 13, 14}
        },
        [18] = {
            name = "shotgun_ammo",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 18,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
        },
        [19] = {
            name = "rifle_ammo",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 19,
            authorizedJobGrades = {12, 13, 14}
        },
        [20] = {
            name = "handcuffs",
            price = 0,
            amount = 10,
            info = {},
            type = "item",
            slot = 20,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
        },
        [21] = {
            name = "ziptie",
            price = 0,
            amount = 10,
            info = {},
            type = "item",
            slot = 21,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
        },
        [22] = {
            name = "weapon_flashlight",
            price = 0,
            amount = 1,
            info = {},
            type = "weapon",
            slot = 22,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
        },
        [23] = {
            name = "police_stormram",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 23,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
        },
        [24] = {
            name = "armor",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 24,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
        },
        [25] = {
            name = "heavyarmor",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 25,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
        },
        [26] = {
            name = "radio",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 26,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
        },
        [27] = {
            name = "gps",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 27,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
        },
        [28] = {
            name = "bandage",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 28,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
        },
        [29] = {
            name = "ifaks",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 29,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
        },
        [30] = {
            name = "drone_flyer_7",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 30,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
            
        },
        [31] = {
            name = "megaphone",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 31,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
            
        },
        [32] = {
            name = "empty_evidence_bag",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 32,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
            
        },
        [33] = {
            name = "policegunrack",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 33,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
            
        },
        [34] = {
            name = "flush_cutter",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 34,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
            
        },
    }
}
