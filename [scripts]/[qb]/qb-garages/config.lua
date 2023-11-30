
FuelScript = 'cdn-fuel' -- change to lj-fuel if you use lj-fuel or something else if you use any other LegcyFuel compatible script
AutoRespawn = false --True == auto respawn cars that are outside into your garage on script restart, false == does not put them into your garage and players have to go to the impound
SharedGarages = false   --True == Gang and job garages are shared, false == Gang and Job garages are personal
WarpPlayerIntoVehicle = false -- True == Will Warp Player Into their vehicle after pulling it out of garage. False It will spawn on the parking lot / in front of them  (Global, can be overriden by each garage)
HouseParkingDrawText = '[F3] Garaj' -- text when driving on to the HOUSE parking lot
ParkingDistance = 2.0 -- Distance to the parking lot when trying to park the vehicle  (Global, can be overriden by each garage)
SpawnDistance = 4.5 -- The maximum distance you can be from a parking spot, to spawn a car (Global, can be overriden by each garage)
DepotPrice = 10.0 -- The price to take out a despawned vehicle from impound.
DrawTextPosition = 'left' -- location of drawtext: left, top, right

-- '/restorelostcars <destination_garage>' allows you to restore cars that have been parked in garages which no longer exist in the config (garage renamed or removed). The restored cars get sent to the destination garage or if left empty to the first garage in the list.
RestoreCommandPermissionLevel = 'god' -- sets the permission level for the above mentioned command

-- Here you can define which category contains which vehicle class. These categories can then be used in the garage config
-- All vehicle classes can be found here: https://docs.fivem.net/natives/?_0x29439776AAA00A62
VehicleCategories = {
    ['car'] = {0,1,2,3,4,5,6,7,8,9,10,11,12,17,18,13},
    ['motorcycle'] = {0,1,2,3,4,5,6,7,8,9,10,11,12,17,18,13},
    ['boat'] = {14},
    ['helis'] = {15},
    ['plane'] = {16},
    ['service'] = {0,1,2,3,4,5,6,7,8,9,10,11,12,17,18,13},
    ['emergency'] = {0,1,2,3,4,5,6,7,8,9,10,11,12,17,18,13},
    ['other'] = {0,1,2,3,4,5,6,7,8,9,10,11,12,17,18,13} -- cycles: 13 - you can move cycles to cars if you want and have anything else like military vehicles in this category
    -- you can also create new / delete or update categories, and use them below in the config. 
}

HouseGarageCategories = {'car', 'motorcycle', 'other'} -- Which categories are allowed to be parked at a house garage


VehicleHeading = 'driverside' -- only used when NO parking spots are defined in the garage config
--[[^^^^^^^^
    'forward' = will face the sameway as the ped
    'driverside' = will put the driver door closets to the ped
    'hood' = will face the hood towards ped
    'passengerside' = will put the passenger door closets to the ped
]]

SharedJobGarages = { -- define the job garages which are shared
    --'pdgarage',
}

Garages = {

    ['pillboxlowergarage'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(352.34439086914, -620.59851074219),
                vector2(344.32354736328, -636.03747558594),
                vector2(325.94189453125, -628.93359375),
                vector2(331.88412475586, -613.10968017578)
            },
            ['minZ'] = 28.2,  -- min height of the parking zone
            ['maxZ'] = 31.30,  -- max height of the parking zone
        },
        label = 'Pillbox Lower Parking',
        showBlip = true,
        blipcoords = vector3(341.7, -623.33, 29.29),
        blipName = 'Garaj',
        blipNumber = 357,
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',
        debug = false,
      -- ['ParkingSpots'] = {
      --     vector4(342.07, -632.51, 28.87, 340.17),
      --     vector4(338.89, -631.43, 28.87, 341.89),
      --     vector4(335.77, -630.04, 28.87, 340.85),
      --     vector4(332.61, -628.68, 28.87, 342.74),
      --     vector4(329.16, -627.36, 28.87, 341.84),
      --     vector4(346.44, -620.82, 28.87, 157.15),
      --     vector4(343.13, -619.38, 28.87, 157.56),
      --     vector4(339.76, -619.01, 28.87, 157.43),
      --     vector4(336.5, -617.88, 28.87, 162.09),
      --     vector4(333.34, -616.15, 28.87, 160.22),
      --     vector4(269.97, -322.62, 44.5, 248.07),
      -- }
    },

    ['eastcustomsgarage'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(847.31390380859, -2096.2248535156),
                vector2(846.34027099609, -2107.3581542969),
                vector2(852.73004150391, -2107.9169921875),
                vector2(854.02264404297, -2097.0288085938)
            },
            ['minZ'] = 27.2,  -- min height of the parking zone
            ['maxZ'] = 32.30,  -- max height of the parking zone
        },
        label = 'Gang Garaji',
        showBlip = true,
        blipcoords = vector3(852.51, -2101.76, 30.5),
        blipName = 'Garaj',
        blipNumber = 357,
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',
        debug = false,
    },

    ['pdmgarage2'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(157.02444458008, -120.47184753418),
                vector2(148.44407653809, -117.3542175293),
                vector2(147.65748596191, -118.86954498291),
                vector2(144.28753662109, -117.90305328369),
                vector2(143.23867797852, -120.31707763672),
                vector2(154.28117370605, -124.91548919678)
            },
            ['minZ'] = 52.2,  -- min height of the parking zone
            ['maxZ'] = 57.30,  -- max height of the parking zone
        },
        label = 'Garaj',
        showBlip = false,
        blipcoords = vector3(852.51, -2101.76, 30.5),
        blipName = 'Garaj',
        blipNumber = 357,
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',
        debug = false,
    },

    ['cockatoos'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(-422.36834716797, -45.199298858643),
                vector2(-422.36834716797, -45.199298858643),
                vector2(-422.3811340332, -42.50435256958),
                vector2(-418.01498413086, -42.557811737061),
                vector2(-418.16793823242, -39.873737335205),
                vector2(-429.95977783203, -39.022163391113),
                vector2(-429.56280517578, -44.935245513916)
            },
            ['minZ'] = 44.2,  -- min height of the parking zone
            ['maxZ'] = 49.30,  -- max height of the parking zone
        },
        label = 'Garaj',
        showBlip = true,
        blipcoords = vector3(-426.1, -43.29, 46.23),
        blipName = 'Garaj',
        blipNumber = 357,
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',
        debug = false,
    },

    ['wutanggarag'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(13.875377655029, -1835.7635498047),
                vector2(7.8818602561951, -1842.7453613281),
                vector2(2.852534532547, -1838.3762207031),
                vector2(8.7904090881348, -1831.3481445312)
            },
            ['minZ'] = 22.2,  -- min height of the parking zone
            ['maxZ'] = 27.30,  -- max height of the parking zone
        },
        label = 'Wutang Garaj',
        showBlip = false,
        blipcoords = vector3(852.51, -2101.76, 30.5),
        blipName = 'Garaj',
        blipNumber = 357,
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',
        debug = false,
    },


    ['wutangimpodun'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                vector2(13.956372261047, -1814.3887939453),
                vector2(20.398448944092, -1820.80859375),
                vector2(16.192142486572, -1825.4455566406),
                vector2(9.0277538299561, -1819.7592773438)
            },
            ['minZ'] = 22.00,  -- min height of the parking zone
            ['maxZ'] = 27.00,  -- max height of the parking zone
            debug = false,
        },
        label = "Wutang Çekilmiş",
        showBlip = false,
        blipcoords = vector3(1705.43, 3749.38, 34.0),
        blipName = "Çekilmiş Araçlar",
        blipNumber = 68,
        blipColor = 1, 
        type = 'depot',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Çekilmiş Araçlar',                 --car, air, sea
        debug = false,
    },

    ['cortezgarage'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(-580.67199707031, -1771.7603759766),
                vector2(-585.32562255859, -1778.2373046875),
                vector2(-573.62603759766, -1789.1240234375),
                vector2(-568.46185302734, -1780.2752685547)
            },
            ['minZ'] = 20.2,  -- min height of the parking zone
            ['maxZ'] = 26.30,  -- max height of the parking zone
        },
        label = 'Cortez Garaj',
        showBlip = false,
        blipcoords = vector3(852.51, -2101.76, 30.5),
        blipName = 'Garaj',
        blipNumber = 357,
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',
        debug = false,
    },


    ['customcafegarag'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(309.48486328125, -902.51776123047),
                vector2(309.22680664063, -911.54644775391),
                vector2(301.09783935547, -907.970703125),
                vector2(294.41583251953, -905.60906982422),
                vector2(295.96795654297, -897.68524169922)
            },
            ['minZ'] = 27.2,  -- min height of the parking zone
            ['maxZ'] = 32.30,  -- max height of the parking zone
        },
        label = 'Gang Garaji',
        showBlip = true,
        blipcoords = vector3(301.2, -905.02, 29.29),
        blipName = 'Garaj',
        blipNumber = 357,
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',
        debug = false,
    },

    ['brofxmani'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(-1538.1394042969, 83.803916931152),
                 vector2(-1532.3369140625, 78.41813659668),
                 vector2(-1523.4373779297, 79.693008422852),
                 vector2(-1522.4396972656, 85.435241699219),
                 vector2(-1529.1148681641, 92.352935791016)
            },
            ['minZ'] = 54.2,  -- min height of the parking zone
            ['maxZ'] = 58.30,  -- max height of the parking zone
        },
        label = 'Malikane Garaj',
        showBlip = false,
        blipcoords = vector3(301.2, -905.02, 29.29),
        blipName = 'Garaj',
        blipNumber = 357,
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',
        debug = false,
    },


    ['richcafe'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(-852.19567871094, -222.06840515137),
                vector2(-855.85125732422, -215.70355224609),
                vector2(-845.96630859375, -208.61686706543),
                vector2(-842.06689453125, -215.90284729004)
            },
            ['minZ'] = 35.2,  -- min height of the parking zone
            ['maxZ'] = 41.30,  -- max height of the parking zone
        },
        label = 'Garaj',
        showBlip = false,
        blipcoords = vector3(301.2, -905.02, 29.29),
        blipName = 'Garaj',
        blipNumber = 357,
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',
        debug = false,
    },

    ['dasdsada2wda'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(570.24420166016, -1802.3953857422),
                vector2(546.41009521484, -1799.0416259766),
                vector2(539.38616943359, -1793.9284667969),
                vector2(541.19342041016, -1777.0201416016),
                vector2(563.33001708984, -1787.2525634766),
                vector2(571.62145996094, -1791.1572265625)
            },
            ['minZ'] = 27.2,  -- min height of the parking zone
            ['maxZ'] = 30.30,  -- max height of the parking zone
        },
        label = 'Gang Garaji',
        showBlip = true,
        blipcoords = vector3(559.0, -1793.4, 29.2),
        blipName = 'Garaj',
        blipNumber = 357,
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',
        debug = false,
    },

    ['newhotel'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(-3023.1572265625, 89.086311340332),
                vector2(-3018.4938964844, 93.598579406738),
                vector2(-3048.0500488281, 117.84776306152),
                vector2(-3052.4060058594, 112.75294494629)
            },
            ['minZ'] = 9.2,  -- min height of the parking zone
            ['maxZ'] = 13.30,  -- max height of the parking zone
        },
        label = 'Motel Garaj',
        showBlip = true,
        blipcoords = vector3(-3031.54, 98.56, 11.6),
        blipName = 'Garaj',
        blipNumber = 357,
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',
        debug = false,
    },

    ['pdustugarage'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(946.98449707031, -951.60070800781),
                vector2(941.95452880859, -952.87329101562),
                vector2(941.63232421875, -943.79705810547),
                vector2(946.89147949219, -944.14910888672)
            },
            ['minZ'] = 38.2,  -- min height of the parking zone
            ['maxZ'] = 40.30,  -- max height of the parking zone
        },
        label = 'Mekanik Garaji',
        showBlip = false,
        blipcoords = vector3(559.0, -1793.4, 29.2),
        blipName = 'Garaj',
        blipNumber = 357,
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',
        debug = false,
    },



    ['pondcafe'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(1144.15, -642.98),
                vector2(1144.53, -647.75),
                vector2(1137.96, -645.52),
                vector2(1137.96, -645.51),
            },
            ['minZ'] = 38.2,  -- min height of the parking zone
            ['maxZ'] = 40.30,  -- max height of the parking zone
        },
        label = 'Pond Cafe',
        showBlip = false,
        blipcoords = vector3(1137.38, -645.4, 56.74),
        blipName = 'Garaj',
        blipNumber = 357,
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',
        debug = false,
    },

    ['gunshop'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(30.67, -1112.44),
                vector2(24.63, -1111.83),
                vector2(36.83, -1089.37),
                vector2(41.62, -1089.33),
            },
            ['minZ'] = 27.2,  -- min height of the parking zone
            ['maxZ'] = 30.30,  -- max height of the parking zone
        },
        label = 'Gunshop',
        showBlip = false,
        blipcoords = vector3(34.44, -1098.63, 28.91),
        blipName = 'Garaj',
        blipNumber = 357,
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',
        debug = false,
    },

    ['hotdogggg'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(30.13, -1017.4),
                vector2(40.52, -1021.42),
                vector2(44.91, -1010.35),
                vector2(33.55, -1007.31),
            },
            ['minZ'] = 27.2,  -- min height of the parking zone
            ['maxZ'] = 30.30,  -- max height of the parking zone
        },
        label = 'Garaj',
        showBlip = true,
        blipcoords = vector3(38.23, -1017.34, 29.48),
        blipName = 'Garaj',
        blipNumber = 357,
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',
        debug = false,
    },

    ['japonyani'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(1118.576171875, -771.96673583984),
                vector2(1118.5985107422, -791.31939697266),
                vector2(1123.6802978516, -789.04260253906),
                vector2(1124.3913574219, -772.3095703125)
            },
            ['minZ'] = 55.2,  -- min height of the parking zone
            ['maxZ'] = 59.30,  -- max height of the parking zone
        },
        label = 'Mekanik Garaji',
        showBlip = false,
        blipcoords = vector3(559.0, -1793.4, 29.2),
        blipName = 'Garaj',
        blipNumber = 357,
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',
        debug = false,
    },

    ['taxigarage'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(925.47088623047, -160.31768798828),
                vector2(915.18041992188, -175.93597412109),
                vector2(911.89184570312, -173.74072265625),
                vector2(922.00720214844, -157.90730285645)
            },
            ['minZ'] = 70.2,  -- min height of the parking zone
            ['maxZ'] = 79.30,  -- max height of the parking zone
        },
        label = 'Mekanik Garaji',
        showBlip = false,
        blipcoords = vector3(559.0, -1793.4, 29.2),
        blipName = 'Garaj',
        blipNumber = 357,
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',
        debug = false,
    },

    ['xwxwxwstate'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(847.53, -1331.51),
                vector2(823.56, -1331.5),
                vector2(824.01, -1353.61),
                vector2(846.85, -1354.79)
            },
            ['minZ'] = 22.0,  -- min height of the parking zone
            ['maxZ'] = 30.5,  -- max height of the parking zone
        },
        label = 'State',
        showBlip = false,
        blipcoords = vector3(827.5, -1342.84, 26.09),
        blipName = 'Garaj',
        blipNumber = 357,
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',
        debug = false,
      -- ['ParkingSpots'] = {
      --     vector4(342.07, -632.51, 28.87, 340.17),
      --     vector4(338.89, -631.43, 28.87, 341.89),
      --     vector4(335.77, -630.04, 28.87, 340.85),
      --     vector4(332.61, -628.68, 28.87, 342.74),
      --     vector4(329.16, -627.36, 28.87, 341.84),
      --     vector4(346.44, -620.82, 28.87, 157.15),
      --     vector4(343.13, -619.38, 28.87, 157.56),
      --     vector4(339.76, -619.01, 28.87, 157.43),
      --     vector4(336.5, -617.88, 28.87, 162.09),
      --     vector4(333.34, -616.15, 28.87, 160.22),
      --     vector4(269.97, -322.62, 44.5, 248.07),
      -- }
    },

    ['sheriffsandy'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(1862.0582275391, 3705.1594238281),
                vector2(1839.2471923828, 3690.1577148438),
                vector2(1844.6326904297, 3677.9226074219),
                vector2(1869.2333984375, 3692.2756347656)
            },
            ['minZ'] = 30.0,  -- min height of the parking zone
            ['maxZ'] = 35.5,  -- max height of the parking zone
        },
        label = 'SD',
        showBlip = false,
        blipcoords = vector3(1854.07, 3693.22, 33.97),
        blipName = 'Garaj',
        blipNumber = 357,
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',
        debug = false,
      -- ['ParkingSpots'] = {
      --     vector4(342.07, -632.51, 28.87, 340.17),
      --     vector4(338.89, -631.43, 28.87, 341.89),
      --     vector4(335.77, -630.04, 28.87, 340.85),
      --     vector4(332.61, -628.68, 28.87, 342.74),
      --     vector4(329.16, -627.36, 28.87, 341.84),
      --     vector4(346.44, -620.82, 28.87, 157.15),
      --     vector4(343.13, -619.38, 28.87, 157.56),
      --     vector4(339.76, -619.01, 28.87, 157.43),
      --     vector4(336.5, -617.88, 28.87, 162.09),
      --     vector4(333.34, -616.15, 28.87, 160.22),
      --     vector4(269.97, -322.62, 44.5, 248.07),
      -- }
    },

    ['iskeleuwu'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(-1807.9305419922, -1177.6232910156),
                vector2(-1820.4211425781, -1190.2166748047),
                vector2(-1842.0010986328, -1172.3913574219),
                vector2(-1832.0563964844, -1157.9788818359)
            },
            ['minZ'] = 11,  -- min height of the parking zone
            ['maxZ'] = 15,  -- max height of the parking zone
        },
        label = 'iskeleuwu',
        showBlip = true,
        blipcoords = vector3(-1822.26, -1180.17, 13.01),
        blipName = 'Uwu İskele Garaj',
        blipNumber = 357,
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',
        debug = false,
      -- ['ParkingSpots'] = {
      --     vector4(342.07, -632.51, 28.87, 340.17),
      --     vector4(338.89, -631.43, 28.87, 341.89),
      --     vector4(335.77, -630.04, 28.87, 340.85),
      --     vector4(332.61, -628.68, 28.87, 342.74),
      --     vector4(329.16, -627.36, 28.87, 341.84),
      --     vector4(346.44, -620.82, 28.87, 157.15),
      --     vector4(343.13, -619.38, 28.87, 157.56),
      --     vector4(339.76, -619.01, 28.87, 157.43),
      --     vector4(336.5, -617.88, 28.87, 162.09),
      --     vector4(333.34, -616.15, 28.87, 160.22),
      --     vector4(269.97, -322.62, 44.5, 248.07),
      -- }
    },

    ['unicornn'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(151.94, -1284.72),
                vector2(144.78, -1289.06),
                vector2(136.36, -1275.17),
                vector2(141.0, -1273.31)
            },
            ['minZ'] = 28,  -- min height of the parking zone
            ['maxZ'] = 31,  -- max height of the parking zone
        },
        label = 'unicornn',
        showBlip = true,
        blipcoords = vector3(146.55, -1280.27, 29.05),
        blipName = 'Unicorn Garaj',
        blipNumber = 357,
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',
        debug = false,
      -- ['ParkingSpots'] = {
      --     vector4(342.07, -632.51, 28.87, 340.17),
      --     vector4(338.89, -631.43, 28.87, 341.89),
      --     vector4(335.77, -630.04, 28.87, 340.85),
      --     vector4(332.61, -628.68, 28.87, 342.74),
      --     vector4(329.16, -627.36, 28.87, 341.84),
      --     vector4(346.44, -620.82, 28.87, 157.15),
      --     vector4(343.13, -619.38, 28.87, 157.56),
      --     vector4(339.76, -619.01, 28.87, 157.43),
      --     vector4(336.5, -617.88, 28.87, 162.09),
      --     vector4(333.34, -616.15, 28.87, 160.22),
      --     vector4(269.97, -322.62, 44.5, 248.07),
      -- }
    },

    ['dovizzzz'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(-832.44, -426.45),
                vector2(-827.34, -424.19),
                vector2(-824.15, -430.88),
                vector2(-828.62, -433.16)
            },
            ['minZ'] = 35,  -- min height of the parking zone
            ['maxZ'] = 37,  -- max height of the parking zone
        },
        label = 'dovizzzz',
        showBlip = true,
        blipcoords = vector3(-827.72, -428.76, 36.64),
        blipName = 'Garaj',
        blipNumber = 357,
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',
        debug = false,
      -- ['ParkingSpots'] = {
      --     vector4(342.07, -632.51, 28.87, 340.17),
      --     vector4(338.89, -631.43, 28.87, 341.89),
      --     vector4(335.77, -630.04, 28.87, 340.85),
      --     vector4(332.61, -628.68, 28.87, 342.74),
      --     vector4(329.16, -627.36, 28.87, 341.84),
      --     vector4(346.44, -620.82, 28.87, 157.15),
      --     vector4(343.13, -619.38, 28.87, 157.56),
      --     vector4(339.76, -619.01, 28.87, 157.43),
      --     vector4(336.5, -617.88, 28.87, 162.09),
      --     vector4(333.34, -616.15, 28.87, 160.22),
      --     vector4(269.97, -322.62, 44.5, 248.07),
      -- }
    },

    -- ['unicornn2'] = {
    --     ['Zone'] = {
    --         ['Shape'] = {
    --             vector2(142.6, -1307.57),
    --             vector2(152.82, -1315.0),
    --             vector2(159.49, -1303.79),
    --             vector2(154.51, -1296.91)
    --         },
    --         ['minZ'] = 28,  -- min height of the parking zone
    --         ['maxZ'] = 31,  -- max height of the parking zone
    --     },
    --     label = 'unicornn2',
    --     showBlip = false,
    --     blipcoords = vector3(143.09, -1307.11, 29.16),
    --     blipName = 'Unicorn Garaj',
    --     blipNumber = 357,
    --     type = 'public',
    --     vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
    --     drawText = '[F3] Garaj',
    --     debug = false,
    --   -- ['ParkingSpots'] = {
    --   --     vector4(342.07, -632.51, 28.87, 340.17),
    --   --     vector4(338.89, -631.43, 28.87, 341.89),
    --   --     vector4(335.77, -630.04, 28.87, 340.85),
    --   --     vector4(332.61, -628.68, 28.87, 342.74),
    --   --     vector4(329.16, -627.36, 28.87, 341.84),
    --   --     vector4(346.44, -620.82, 28.87, 157.15),
    --   --     vector4(343.13, -619.38, 28.87, 157.56),
    --   --     vector4(339.76, -619.01, 28.87, 157.43),
    --   --     vector4(336.5, -617.88, 28.87, 162.09),
    --   --     vector4(333.34, -616.15, 28.87, 160.22),
    --   --     vector4(269.97, -322.62, 44.5, 248.07),
    --   -- }
    -- },

    ['iskelegaraj'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(-1805.1, -1205.46),
                vector2(-1795.78, -1213.35),
                vector2(-1810.99, -1230.99),
                vector2(-1819.11, -1225.31)
            },
            ['minZ'] = 11,  -- min height of the parking zone
            ['maxZ'] = 15,  -- max height of the parking zone
        },
        label = 'iskelegaraj',
        showBlip = true,
        blipcoords = vector3(-1803.8, -1218.37, 13.02),
        blipName = 'İskele Garaj',
        blipNumber = 357,
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',
        debug = false,
      -- ['ParkingSpots'] = {
      --     vector4(342.07, -632.51, 28.87, 340.17),
      --     vector4(338.89, -631.43, 28.87, 341.89),
      --     vector4(335.77, -630.04, 28.87, 340.85),
      --     vector4(332.61, -628.68, 28.87, 342.74),
      --     vector4(329.16, -627.36, 28.87, 341.84),
      --     vector4(346.44, -620.82, 28.87, 157.15),
      --     vector4(343.13, -619.38, 28.87, 157.56),
      --     vector4(339.76, -619.01, 28.87, 157.43),
      --     vector4(336.5, -617.88, 28.87, 162.09),
      --     vector4(333.34, -616.15, 28.87, 160.22),
      --     vector4(269.97, -322.62, 44.5, 248.07),
      -- }
    },

    ['golbar1garaj'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(-460.61, 4333.84),
                vector2(-465.91, 4327.81),
                vector2(-496.13, 4344.71),
                vector2(-487.89, 4353.36)
            },
            ['minZ'] = 60,  -- min height of the parking zone
            ['maxZ'] = 68,  -- max height of the parking zone
        },
        label = 'golbar1garaj',
        showBlip = true,
        blipcoords = vector3(-477.82, 4340.63, 62.88),
        blipName = 'Golbar Garaj',
        blipNumber = 357,
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',
        debug = false,
      -- ['ParkingSpots'] = {
      --     vector4(342.07, -632.51, 28.87, 340.17),
      --     vector4(338.89, -631.43, 28.87, 341.89),
      --     vector4(335.77, -630.04, 28.87, 340.85),
      --     vector4(332.61, -628.68, 28.87, 342.74),
      --     vector4(329.16, -627.36, 28.87, 341.84),
      --     vector4(346.44, -620.82, 28.87, 157.15),
      --     vector4(343.13, -619.38, 28.87, 157.56),
      --     vector4(339.76, -619.01, 28.87, 157.43),
      --     vector4(336.5, -617.88, 28.87, 162.09),
      --     vector4(333.34, -616.15, 28.87, 160.22),
      --     vector4(269.97, -322.62, 44.5, 248.07),
      -- }
    },

    ['clubgaraj'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(933.14, -1794.31),
                vector2(942.41, -1794.31),
                vector2(941.16, -1807.31),
                vector2(932.23, -1806.32)
            },
            ['minZ'] = 29,  -- min height of the parking zone
            ['maxZ'] = 32,  -- max height of the parking zone
        },
        label = 'garage',
        showBlip = false,
        blipcoords = vector3(932.23, -1806.32, 30.71),
        blipName = 'garage',
        blipNumber = 357,
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',
        debug = false,
      -- ['ParkingSpots'] = {
      --     vector4(342.07, -632.51, 28.87, 340.17),
      --     vector4(338.89, -631.43, 28.87, 341.89),
      --     vector4(335.77, -630.04, 28.87, 340.85),
      --     vector4(332.61, -628.68, 28.87, 342.74),
      --     vector4(329.16, -627.36, 28.87, 341.84),
      --     vector4(346.44, -620.82, 28.87, 157.15),
      --     vector4(343.13, -619.38, 28.87, 157.56),
      --     vector4(339.76, -619.01, 28.87, 157.43),
      --     vector4(336.5, -617.88, 28.87, 162.09),
      --     vector4(333.34, -616.15, 28.87, 160.22),
      --     vector4(269.97, -322.62, 44.5, 248.07),
      -- }
    },

    ['bahamamasssss'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(-1379.74, -579.0),
                vector2(-1373.8, -573.51),
                vector2(-1363.19, -589.7),
                vector2(-1367.29, -593.88)
            },
            ['minZ'] = 28,  -- min height of the parking zone
            ['maxZ'] = 33,  -- max height of the parking zone
        },
        label = 'bahamamasssssgaraj',
        showBlip = true,
        blipcoords = vector3(-1374.67, -579.97, 30.0),
        blipName = 'Garaj',
        blipNumber = 357,
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',
        debug = false,
      -- ['ParkingSpots'] = {
      --     vector4(342.07, -632.51, 28.87, 340.17),
      --     vector4(338.89, -631.43, 28.87, 341.89),
      --     vector4(335.77, -630.04, 28.87, 340.85),
      --     vector4(332.61, -628.68, 28.87, 342.74),
      --     vector4(329.16, -627.36, 28.87, 341.84),
      --     vector4(346.44, -620.82, 28.87, 157.15),
      --     vector4(343.13, -619.38, 28.87, 157.56),
      --     vector4(339.76, -619.01, 28.87, 157.43),
      --     vector4(336.5, -617.88, 28.87, 162.09),
      --     vector4(333.34, -616.15, 28.87, 160.22),
      --     vector4(269.97, -322.62, 44.5, 248.07),
      -- }
    },

    ['cafecorretto'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(-1165.24, -1395.34),
                vector2(-1177.74, -1404.22),
                vector2(-1187.87, -1391.48),
                vector2(-1174.68, -1381.99)
            },
            ['minZ'] = 3,  -- min height of the parking zone
            ['maxZ'] = 6,  -- max height of the parking zone
        },
        label = 'Cafe Coretto',
        showBlip = true,
        blipcoords = vector3(-1176.69, -1393.18, 4.75),
        blipName = 'Garaj',
        blipNumber = 357,
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',
        debug = false,
      -- ['ParkingSpots'] = {
      --     vector4(342.07, -632.51, 28.87, 340.17),
      --     vector4(338.89, -631.43, 28.87, 341.89),
      --     vector4(335.77, -630.04, 28.87, 340.85),
      --     vector4(332.61, -628.68, 28.87, 342.74),
      --     vector4(329.16, -627.36, 28.87, 341.84),
      --     vector4(346.44, -620.82, 28.87, 157.15),
      --     vector4(343.13, -619.38, 28.87, 157.56),
      --     vector4(339.76, -619.01, 28.87, 157.43),
      --     vector4(336.5, -617.88, 28.87, 162.09),
      --     vector4(333.34, -616.15, 28.87, 160.22),
      --     vector4(269.97, -322.62, 44.5, 248.07),
      -- }
    },

    ['aracgalerisi'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(-63.65, -1112.67),
                vector2(-63.28, -1119.42),
                vector2(-42.98, -1118.35),
                vector2(-42.89, -1113.6)
            },
            ['minZ'] = 24,  -- min height of the parking zone
            ['maxZ'] = 28,  -- max height of the parking zone
        },
        label = 'Araç Galerisi',
        showBlip = true,
        blipcoords = vector3(-52.11, -1116.45, 26.43),
        blipName = 'Garaj',
        blipNumber = 357,
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',
        debug = false,
      -- ['ParkingSpots'] = {
      --     vector4(342.07, -632.51, 28.87, 340.17),
      --     vector4(338.89, -631.43, 28.87, 341.89),
      --     vector4(335.77, -630.04, 28.87, 340.85),
      --     vector4(332.61, -628.68, 28.87, 342.74),
      --     vector4(329.16, -627.36, 28.87, 341.84),
      --     vector4(346.44, -620.82, 28.87, 157.15),
      --     vector4(343.13, -619.38, 28.87, 157.56),
      --     vector4(339.76, -619.01, 28.87, 157.43),
      --     vector4(336.5, -617.88, 28.87, 162.09),
      --     vector4(333.34, -616.15, 28.87, 160.22),
      --     vector4(269.97, -322.62, 44.5, 248.07),
      -- }
    },

    ['nopmedia'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(-1096.42, -252.27),
                vector2(-1105.45, -260.33),
                vector2(-1096.72, -265.63),
                vector2(-1092.92, -257.74)
            },
            ['minZ'] = 36,  -- min height of the parking zone
            ['maxZ'] = 39,  -- max height of the parking zone
        },
        label = 'nopmediagaraj',
        showBlip = true,
        blipcoords = vector3(-1097.1, -255.27, 37.69),
        blipName = 'Garaj',
        blipNumber = 357,
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',
        debug = false,
      -- ['ParkingSpots'] = {
      --     vector4(342.07, -632.51, 28.87, 340.17),
      --     vector4(338.89, -631.43, 28.87, 341.89),
      --     vector4(335.77, -630.04, 28.87, 340.85),
      --     vector4(332.61, -628.68, 28.87, 342.74),
      --     vector4(329.16, -627.36, 28.87, 341.84),
      --     vector4(346.44, -620.82, 28.87, 157.15),
      --     vector4(343.13, -619.38, 28.87, 157.56),
      --     vector4(339.76, -619.01, 28.87, 157.43),
      --     vector4(336.5, -617.88, 28.87, 162.09),
      --     vector4(333.34, -616.15, 28.87, 160.22),
      --     vector4(269.97, -322.62, 44.5, 248.07),
      -- }
    },


    ['tequila'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(-566.09, 296.99),
                vector2(-565.16, 306.44),
                vector2(-556.9, 311.9),
                vector2(-548.58, 311.17),
                vector2(-548.89, 297.34)
            },
            ['minZ'] = 80,  -- min height of the parking zone
            ['maxZ'] = 85,  -- max height of the parking zone
        },
        label = 'tequila garaj',
        showBlip = true,
        blipcoords = vector3(-555.25, 302.81, 83.23),
        blipName = 'tequila garaj',
        blipNumber = 357,
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',
        debug = false,
      -- ['ParkingSpots'] = {
      --     vector4(342.07, -632.51, 28.87, 340.17),
      --     vector4(338.89, -631.43, 28.87, 341.89),
      --     vector4(335.77, -630.04, 28.87, 340.85),
      --     vector4(332.61, -628.68, 28.87, 342.74),
      --     vector4(329.16, -627.36, 28.87, 341.84),
      --     vector4(346.44, -620.82, 28.87, 157.15),
      --     vector4(343.13, -619.38, 28.87, 157.56),
      --     vector4(339.76, -619.01, 28.87, 157.43),
      --     vector4(336.5, -617.88, 28.87, 162.09),
      --     vector4(333.34, -616.15, 28.87, 160.22),
      --     vector4(269.97, -322.62, 44.5, 248.07),
      -- }
    },

    ['bahamagaraj'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(-1420.65, -652.21),
                vector2(-1425.89, -644.31),
                vector2(-1408.59, -632.62),
                vector2(-1404.17, -639.02)
            },
            ['minZ'] = 26,  -- min height of the parking zone
            ['maxZ'] = 31,  -- max height of the parking zone
        },
        label = 'bahama garaj',
        showBlip = false,
        blipcoords = vector3(-1416.63, -648.31, 28.67),
        blipName = 'bahama garaj',
        blipNumber = 357,
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',
        debug = false,
      -- ['ParkingSpots'] = {
      --     vector4(342.07, -632.51, 28.87, 340.17),
      --     vector4(338.89, -631.43, 28.87, 341.89),
      --     vector4(335.77, -630.04, 28.87, 340.85),
      --     vector4(332.61, -628.68, 28.87, 342.74),
      --     vector4(329.16, -627.36, 28.87, 341.84),
      --     vector4(346.44, -620.82, 28.87, 157.15),
      --     vector4(343.13, -619.38, 28.87, 157.56),
      --     vector4(339.76, -619.01, 28.87, 157.43),
      --     vector4(336.5, -617.88, 28.87, 162.09),
      --     vector4(333.34, -616.15, 28.87, 160.22),
      --     vector4(269.97, -322.62, 44.5, 248.07),
      -- }
    },

    ['gmekanikgaraj'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(-1425.4, -465.78),
                vector2(-1421.4, -471.54),
                vector2(-1411.68, -465.07),
                vector2(-1415.33, -459.73)
            },
            ['minZ'] = 33,  -- min height of the parking zone
            ['maxZ'] = 36,  -- max height of the parking zone
        },
        label = 'Garaj',
        showBlip = false,
        blipcoords = vector3(-1418.97, -466.64, 34.42),
        blipName = 'Garaj',
        blipNumber = 357,
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',
        debug = false,
      -- ['ParkingSpots'] = {
      --     vector4(342.07, -632.51, 28.87, 340.17),
      --     vector4(338.89, -631.43, 28.87, 341.89),
      --     vector4(335.77, -630.04, 28.87, 340.85),
      --     vector4(332.61, -628.68, 28.87, 342.74),
      --     vector4(329.16, -627.36, 28.87, 341.84),
      --     vector4(346.44, -620.82, 28.87, 157.15),
      --     vector4(343.13, -619.38, 28.87, 157.56),
      --     vector4(339.76, -619.01, 28.87, 157.43),
      --     vector4(336.5, -617.88, 28.87, 162.09),
      --     vector4(333.34, -616.15, 28.87, 160.22),
      --     vector4(269.97, -322.62, 44.5, 248.07),
      -- }
    },

    ['oftivamekanik'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(159.72, -3010.9),
                vector2(169.93, -3011.16),
                vector2(169.96, -2989.19),
                vector2(159.52, -2988.58)
            },
            ['minZ'] = 4,  -- min height of the parking zone
            ['maxZ'] = 8,  -- max height of the parking zone
        },
        label = 'Socar Mekanik',
        showBlip = true,
        blipcoords = vector3(162.83, -3000.45, 5.94),
        blipName = 'Garaj',
        blipNumber = 357,
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',
        debug = false,
      -- ['ParkingSpots'] = {
      --     vector4(342.07, -632.51, 28.87, 340.17),
      --     vector4(338.89, -631.43, 28.87, 341.89),
      --     vector4(335.77, -630.04, 28.87, 340.85),
      --     vector4(332.61, -628.68, 28.87, 342.74),
      --     vector4(329.16, -627.36, 28.87, 341.84),
      --     vector4(346.44, -620.82, 28.87, 157.15),
      --     vector4(343.13, -619.38, 28.87, 157.56),
      --     vector4(339.76, -619.01, 28.87, 157.43),
      --     vector4(336.5, -617.88, 28.87, 162.09),
      --     vector4(333.34, -616.15, 28.87, 160.22),
      --     vector4(269.97, -322.62, 44.5, 248.07),
      -- }
    },


    ['pondgarajjj'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(1173.36, -651.14),
                vector2(1178.27, -649.69),
                vector2(1183.07, -674.57),
                vector2(1178.1, -675.81)
            },
            ['minZ'] = 60,  -- min height of the parking zone
            ['maxZ'] = 63,  -- max height of the parking zone
        },
        label = 'Garaj',
        showBlip = true,
        blipcoords = vector3(1176.71, -659.45, 61.74),
        blipName = 'Garaj',
        blipNumber = 357,
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',
        debug = false,
      -- ['ParkingSpots'] = {
      --     vector4(342.07, -632.51, 28.87, 340.17),
      --     vector4(338.89, -631.43, 28.87, 341.89),
      --     vector4(335.77, -630.04, 28.87, 340.85),
      --     vector4(332.61, -628.68, 28.87, 342.74),
      --     vector4(329.16, -627.36, 28.87, 341.84),
      --     vector4(346.44, -620.82, 28.87, 157.15),
      --     vector4(343.13, -619.38, 28.87, 157.56),
      --     vector4(339.76, -619.01, 28.87, 157.43),
      --     vector4(336.5, -617.88, 28.87, 162.09),
      --     vector4(333.34, -616.15, 28.87, 160.22),
      --     vector4(269.97, -322.62, 44.5, 248.07),
      -- }
    },

    ['henhouse'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(-319.14, 6262.72),
                vector2(-325.18, 6268.46),
                vector2(-314.88, 6278.22),
                vector2(-309.22, 6272.49)
            },
            ['minZ'] = 30,  -- min height of the parking zone
            ['maxZ'] = 33,  -- max height of the parking zone
        },
        label = 'Garaj',
        showBlip = true,
        blipcoords = vector3(-315.66, 6273.04, 31.49),
        blipName = 'Garaj',
        blipNumber = 357,
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',
        debug = false,
      -- ['ParkingSpots'] = {
      --     vector4(342.07, -632.51, 28.87, 340.17),
      --     vector4(338.89, -631.43, 28.87, 341.89),
      --     vector4(335.77, -630.04, 28.87, 340.85),
      --     vector4(332.61, -628.68, 28.87, 342.74),
      --     vector4(329.16, -627.36, 28.87, 341.84),
      --     vector4(346.44, -620.82, 28.87, 157.15),
      --     vector4(343.13, -619.38, 28.87, 157.56),
      --     vector4(339.76, -619.01, 28.87, 157.43),
      --     vector4(336.5, -617.88, 28.87, 162.09),
      --     vector4(333.34, -616.15, 28.87, 160.22),
      --     vector4(269.97, -322.62, 44.5, 248.07),
      -- }
    },

    ['sheriffssssss'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(-480.87, 6020.25),
                vector2(-485.93, 6025.17),
                vector2(-469.99, 6041.54),
                vector2(-464.68, 6038.01)
            },
            ['minZ'] = 30,  -- min height of the parking zone
            ['maxZ'] = 33,  -- max height of the parking zone
        },
        label = 'Garaj',
        showBlip = true,
        blipcoords = vector3(-475.97, 6030.38, 31.34),
        blipName = 'Garaj',
        blipNumber = 357,
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',
        debug = false,
      -- ['ParkingSpots'] = {
      --     vector4(342.07, -632.51, 28.87, 340.17),
      --     vector4(338.89, -631.43, 28.87, 341.89),
      --     vector4(335.77, -630.04, 28.87, 340.85),
      --     vector4(332.61, -628.68, 28.87, 342.74),
      --     vector4(329.16, -627.36, 28.87, 341.84),
      --     vector4(346.44, -620.82, 28.87, 157.15),
      --     vector4(343.13, -619.38, 28.87, 157.56),
      --     vector4(339.76, -619.01, 28.87, 157.43),
      --     vector4(336.5, -617.88, 28.87, 162.09),
      --     vector4(333.34, -616.15, 28.87, 160.22),
      --     vector4(269.97, -322.62, 44.5, 248.07),
      -- }
    },

    ['prisongaraj'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(1879.79, 2586.49),
                vector2(1867.1, 2586.57),
                vector2(1866.8, 2562.74),
                vector2(1879.88, 2562.17)
            },
            ['minZ'] = 44,  -- min height of the parking zone
            ['maxZ'] = 47,  -- max height of the parking zone
        },
        label = 'Garaj',
        showBlip = true,
        blipcoords = vector3(1872.91, 2569.06, 45.67),
        blipName = 'Garaj',
        blipNumber = 357,
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',
        debug = false,
      -- ['ParkingSpots'] = {
      --     vector4(342.07, -632.51, 28.87, 340.17),
      --     vector4(338.89, -631.43, 28.87, 341.89),
      --     vector4(335.77, -630.04, 28.87, 340.85),
      --     vector4(332.61, -628.68, 28.87, 342.74),
      --     vector4(329.16, -627.36, 28.87, 341.84),
      --     vector4(346.44, -620.82, 28.87, 157.15),
      --     vector4(343.13, -619.38, 28.87, 157.56),
      --     vector4(339.76, -619.01, 28.87, 157.43),
      --     vector4(336.5, -617.88, 28.87, 162.09),
      --     vector4(333.34, -616.15, 28.87, 160.22),
      --     vector4(269.97, -322.62, 44.5, 248.07),
      -- }
    },

    ['lostmccc'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(956.5478515625, -128.26473999023),
                vector2(964.529296875, -123.00640869141),
                vector2(972.44323730469, -129.02687072754),
                vector2(967.60333251953, -137.71792602539)
            },
            ['minZ'] = 73,  -- min height of the parking zone
            ['maxZ'] = 76,  -- max height of the parking zone
        },
        label = 'lostmccc',
        showBlip = true,
        blipcoords = vector3(965.25, -131.21, 74.35),
        blipName = 'Lost MC Garaj',
        blipNumber = 357,
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',
        debug = false,
      -- ['ParkingSpots'] = {
      --     vector4(342.07, -632.51, 28.87, 340.17),
      --     vector4(338.89, -631.43, 28.87, 341.89),
      --     vector4(335.77, -630.04, 28.87, 340.85),
      --     vector4(332.61, -628.68, 28.87, 342.74),
      --     vector4(329.16, -627.36, 28.87, 341.84),
      --     vector4(346.44, -620.82, 28.87, 157.15),
      --     vector4(343.13, -619.38, 28.87, 157.56),
      --     vector4(339.76, -619.01, 28.87, 157.43),
      --     vector4(336.5, -617.88, 28.87, 162.09),
      --     vector4(333.34, -616.15, 28.87, 160.22),
      --     vector4(269.97, -322.62, 44.5, 248.07),
      -- }
    },



    ['hastaness'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(297.75918579102, -613.91290283203),
                vector2(301.8786315918, -602.45550537109),
                vector2(293.21499633789, -599.18792724609),
                vector2(288.50466918945, -609.64385986328)
            },
            ['minZ'] = 42.0,  -- min height of the parking zone
            ['maxZ'] = 44.5,  -- max height of the parking zone
        },
        label = 'Hastane',
        showBlip = true,
        blipcoords = vector3(292.9, -608.65, 43.23),
        blipName = 'Garaj',
        blipNumber = 357,
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',
        debug = false,
      -- ['ParkingSpots'] = {
      --     vector4(342.07, -632.51, 28.87, 340.17),
      --     vector4(338.89, -631.43, 28.87, 341.89),
      --     vector4(335.77, -630.04, 28.87, 340.85),
      --     vector4(332.61, -628.68, 28.87, 342.74),
      --     vector4(329.16, -627.36, 28.87, 341.84),
      --     vector4(346.44, -620.82, 28.87, 157.15),
      --     vector4(343.13, -619.38, 28.87, 157.56),
      --     vector4(339.76, -619.01, 28.87, 157.43),
      --     vector4(336.5, -617.88, 28.87, 162.09),
      --     vector4(333.34, -616.15, 28.87, 160.22),
      --     vector4(269.97, -322.62, 44.5, 248.07),
      -- }
    },

    ['garagesnewss'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(916.32263183594, -2347.8303222656),
                vector2(907.66223144531, -2347.0825195313),
                vector2(906.96844482422, -2358.0139160156),
                vector2(915.10650634766, -2359.1264648438)
            },
            ['minZ'] = 18.0,  -- min height of the parking zone
            ['maxZ'] = 25.5,  -- max height of the parking zone
        },
        label = 'Garaj',
        showBlip = true,
        blipcoords = vector3(914.66, -2354.6, 21.21),
        blipName = 'Garaj',
        blipNumber = 357,
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',
        debug = false,
      -- ['ParkingSpots'] = {
      --     vector4(342.07, -632.51, 28.87, 340.17),
      --     vector4(338.89, -631.43, 28.87, 341.89),
      --     vector4(335.77, -630.04, 28.87, 340.85),
      --     vector4(332.61, -628.68, 28.87, 342.74),
      --     vector4(329.16, -627.36, 28.87, 341.84),
      --     vector4(346.44, -620.82, 28.87, 157.15),
      --     vector4(343.13, -619.38, 28.87, 157.56),
      --     vector4(339.76, -619.01, 28.87, 157.43),
      --     vector4(336.5, -617.88, 28.87, 162.09),
      --     vector4(333.34, -616.15, 28.87, 160.22),
      --     vector4(269.97, -322.62, 44.5, 248.07),
      -- }
    },
    

    ['mirrorpark'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(1043.447265625, -767.26947021484),
                vector2(1049.4702148438, -769.44775390625),
                vector2(1049.4797363281, -794.31622314453),
                vector2(1048.9655761719, -794.32214355469),
                vector2(1049.03125, -793.87451171875),
                vector2(1043.466796875, -793.80151367188),
                vector2(1043.3436279297, -794.52691650391),
                vector2(1031.5026855469, -794.34808349609),
                vector2(1007.7255859375, -764.88061523438),
                vector2(1022.2494506836, -752.11022949219),
                vector2(1025.6563720703, -755.25653076172),
                vector2(1030.9210205078, -758.50311279297),
                vector2(1031.2462158203, -758.19201660156),
                vector2(1035.1042480469, -760.79956054688),
                vector2(1030.6268310547, -767.16302490234),
                vector2(1025.9473876953, -763.81085205078),
                vector2(1024.8063964844, -765.39245605469),
                vector2(1033.9915771484, -772.05816650391),
                vector2(1036.6497802734, -781.24871826172),
                vector2(1038.708984375, -780.87786865234),
                vector2(1035.7690429688, -770.72528076172),
                vector2(1032.0593261719, -768.04278564453),
                vector2(1034.0390625, -764.51586914062),
                vector2(1036.8060302734, -766.30773925781),
                vector2(1038.0424804688, -763.41851806641),
                vector2(1043.5157470703, -766.21325683594)
            },
            ['minZ'] = 56.50,
            ['maxZ'] = 59.20
        },
        label = 'Mirror Park Parking',
        showBlip = true,
        blipcoords = vector3(1037.65, -771.62, 58.01),
        blipName = 'Garaj',
        blipNumber = 357,
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',
        debug = false,
     -- ['ParkingSpots'] = {
     --     vector4(1023.5, -756.15, 57.48, 225.44),
     --     vector4(1020.64, -758.19, 57.49, 225.22),
     --     vector4(1017.57, -760.75, 57.47, 222.83),
     --     vector4(1014.9, -763.11, 57.4, 223.82),
     --     vector4(1016.1, -770.57, 57.41, 311.2),
     --     vector4(1018.8, -773.42, 57.43, 308.15),
     --     vector4(1020.68, -776.34, 57.39, 311.86),
     --     vector4(1023.75, -779.38, 57.41, 309.66),
     --     vector4(1025.72, -782.07, 57.4, 308.8),
     --     vector4(1028.49, -784.92, 57.41, 307.36),
     --     vector4(1030.06, -787.96, 57.38, 310.65),
     --     vector4(1038.12, -791.16, 57.47, 1.48),
     --     vector4(1046.49, -785.56, 57.5, 89.6),
     --     vector4(1046.38, -782.01, 57.51, 92.17),
     --     vector4(1046.22, -778.03, 57.52, 89.04),
     --     vector4(1046.27, -774.45, 57.52, 90.5),
     --     vector4(1030.96, -773.4, 57.57, 144.89),
     --     vector4(1028.05, -771.42, 57.55, 146.44),
     --     vector4(1029.35, -763.6, 57.49, 56.05),
     --     vector4(1041.6, -791.45, 57.5, 0.97),
     -- }
    },
    ['casinop'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(915.48345947266, -14.229139328003),
                vector2(912.52160644531, -19.256662368774),
                vector2(914.41729736328, -20.468030929565),
                vector2(928.14013671875, -29.422761917114),
                vector2(931.68640136719, -24.097787857056),
                vector2(943.31915283203, -31.373510360718),
                vector2(940.18115234375, -36.682193756104),
                vector2(940.63336181641, -37.222324371338),
                vector2(941.06457519531, -38.056762695312),
                vector2(940.69250488281, -39.514526367188),
                vector2(945.86834716797, -42.898574829102),
                vector2(936.578125, -58.041912078857),
                vector2(935.71746826172, -59.93187713623),
                vector2(935.32781982422, -63.596141815186),
                vector2(935.49609375, -65.299346923828),
                vector2(936.2734375, -67.329566955566),
                vector2(938.08367919922, -69.736022949219),
                vector2(939.06182861328, -70.789291381836),
                vector2(942.05615234375, -73.50260925293),
                vector2(944.24096679688, -76.701873779297),
                vector2(945.71282958984, -80.333465576172),
                vector2(945.46759033203, -86.331184387207),
                vector2(944.24163818359, -90.072593688965),
                vector2(942.83435058594, -92.46647644043),
                vector2(928.69256591797, -105.37116241455),
                vector2(926.07592773438, -107.04386138916),
                vector2(922.68194580078, -107.79019927979),
                vector2(918.29956054688, -107.78350067139),
                vector2(914.76385498047, -106.68801879883),
                vector2(891.66986083984, -92.136535644531),
                vector2(894.90283203125, -86.966018676758),
                vector2(877.28314208984, -75.933624267578),
                vector2(873.83764648438, -81.048561096191),
                vector2(849.61877441406, -65.853485107422),
                vector2(842.07305908203, -59.212493896484),
                vector2(832.29779052734, -48.991901397705),
                vector2(836.66088867188, -44.546573638916),
                vector2(834.18530273438, -42.00004196167),
                vector2(832.93865966797, -39.975162506104),
                vector2(832.380859375, -35.275825500488),
                vector2(833.16229248047, -31.17188835144),
                vector2(839.43792724609, -22.388980865479),
                vector2(849.22601318359, -10.30827331543),
                vector2(871.66424560547, 12.689045906067),
                vector2(872.94342041016, 12.611633300781),
                vector2(881.33111572266, 7.0416121482849),
                vector2(880.61773681641, 5.6222538948059),
                vector2(880.45855712891, 1.066015958786),
                vector2(889.86468505859, -5.0284695625305),
                vector2(894.46960449219, -2.9582657814026),
                vector2(895.51623535156, -1.5529407262802)
            },
            ['minZ'] = 77.50,
            ['maxZ'] = 80.00
        },
        label = 'Casino Parking',
        showBlip = true,
        blipcoords = vector3(888.47, -37.44, 78.76),
        blipName = 'Garaj',
        blipNumber = 357,
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',
        debug = false,
      -- ['ParkingSpots'] = {
      --     vector4(874.36, -77.52, 78.34, 326.7),
      --     vector4(868.22, -74.12, 78.34, 327.6),
      --     vector4(865.89, -71.32, 78.34, 327.2),
      --     vector4(862.79, -70.26, 78.34, 327.35),
      --     vector4(859.57, -67.92, 78.34, 326.45),
      --     vector4(856.54, -66.59, 78.34, 326.94),
      --     vector4(853.6, -64.76, 78.34, 329.96),
      --     vector4(850.98, -62.23, 78.34, 315.33);
      --     vector4(848.28, -60.42, 78.34, 316.25),
      --     vector4(845.29, -58.06, 78.34, 316.99),
      --     vector4(843.2, -55.19, 78.34, 315.68),
      --     vector4(841.22, -52.13, 78.34, 315.19),
      --     vector4(838.31, -49.98, 78.34, 309.63),
      --     vector4(836.03, -47.87, 78.34, 310.48),
      --     vector4(871.34, -75.41, 78.34, 327.5),
      --     vector4(934.99, -72.5, 78.27, 132.69),
      --     vector4(937.69, -74.87, 78.27, 135.96),
      --     vector4(940.12, -77.9, 78.27, 124.93),
      --     vector4(874.36, -77.52, 78.34, 326.7),
      --     vector4(871.34, -75.41, 78.34, 327.5),
      --     vector4(894.66, -90.02, 78.34, 329.43),
      --     vector4(897.75, -92.07, 78.34, 328.5),
      --     vector4(900.96, -93.67, 78.34, 326.42),
      --     vector4(903.67, -95.7, 78.34, 328.69),
      --     vector4(906.77, -97.42, 78.34, 326.69),
      --     vector4(909.56, -98.98, 78.27, 329.54),
      --     vector4(912.88, -100.65, 78.27, 327.47),
      --     vector4(915.52, -102.44, 78.27, 328.46),
      --     vector4(919.92, -104.15, 78.27, 355.56),
      --     vector4(924.34, -102.86, 78.27, 23.29),
      --     vector4(928.29, -100.03, 78.27, 41.76),
      --     vector4(931.14, -98.26, 78.27, 42.82),
      --     vector4(933.29, -95.84, 78.27, 43.98),
      --     vector4(935.95, -93.66, 78.27, 43.12),
      --     vector4(938.28, -91.0, 78.27, 43.96),
      --     vector4(941.5, -86.74, 78.27, 71.64),
      --     vector4(942.22, -82.22, 78.27, 96.61),
      --     vector4(932.29, -67.33, 78.27, 108.81),
      --     vector4(931.48, -62.49, 78.27, 87.5),
      --     vector4(933.04, -58.41, 78.27, 74.44),
      --     vector4(934.81, -53.94, 78.27, 56.79),
      --     vector4(936.58, -51.51, 78.27, 59.07),
      --     vector4(938.49, -48.34, 78.27, 57.96),
      --     vector4(939.46, -45.37, 78.27, 57.51),
      --     vector4(941.87, -42.09, 78.27, 57.26),
      --     vector4(939.92, -33.37, 78.27, 147.28),
      --     vector4(937.11, -31.58, 78.27, 146.31),
      --     vector4(934.46, -29.74, 78.27, 147.43),
      --     vector4(931.24, -28.27, 78.27, 148.17),
      --     vector4(911.98, -15.91, 78.27, 148.59),
      --     vector4(908.33, -14.25, 78.27, 151.66),
      --     vector4(905.28, -11.85, 78.27, 146.75),
      --     vector4(901.6, -10.25, 78.27, 151.03),
      --     vector4(898.56, -7.47, 78.27, 150.42),
      --     vector4(894.74, -5.36, 78.27, 147.31),
      --     vector4(878.41, 5.09, 78.27, 148.03),
      --     vector4(874.81, 6.34, 78.27, 145.35),
      --     vector4(872.04, 8.2, 78.27, 147.69),
      --     vector4(857.52, -16.84, 78.27, 61.37),
      --     vector4(855.4, -18.91, 78.27, 56.95),
      --     vector4(853.22, -21.71, 78.27, 58.03),
      --     vector4(851.4, -24.62, 78.27, 56.48),
      --     vector4(849.71, -27.73, 78.27, 56.12),
      --     vector4(848.46, -30.95, 78.27, 58.58),
      --     vector4(846.43, -33.78, 78.27, 58.11),
      --     vector4(844.31, -36.58, 78.27, 58.6),
      --     vector4(851.99, -41.32, 78.27, 237.04),
      --     vector4(854.14, -38.45, 78.27, 237.84),
      --     vector4(855.52, -35.12, 78.27, 239.77),
      --     vector4(857.58, -32.6, 78.27, 237.61),
      --     vector4(859.49, -29.77, 78.27, 238.44),
      --     vector4(860.76, -26.41, 78.27, 239.23),
      --     vector4(862.82, -23.64, 78.27, 238.93),
      --     vector4(864.37, -20.41, 78.27, 237.61),
      --     vector4(867.05, -18.08, 78.27, 237.15),
      --     vector4(868.52, -15.1, 78.27, 236.79),
      --     vector4(870.25, -12.23, 78.27, 236.92),
      --     vector4(871.96, -9.18, 78.27, 236.79),
      --     vector4(860.59, -50.52, 78.27, 56.19),
      --     vector4(862.21, -47.59, 78.27, 57.87),
      --     vector4(864.07, -44.72, 78.27, 57.35),
      --     vector4(866.09, -41.98, 78.27, 59.81),
      --     vector4(868.02, -39.09, 78.27, 58.16),
      --     vector4(869.38, -35.99, 78.27, 59.41),
      --     vector4(871.76, -33.27, 78.27, 57.79),
      --     vector4(873.26, -30.41, 78.27, 58.11),
      --     vector4(875.5, -27.57, 78.27, 59.75),
      --     vector4(876.7, -24.3, 78.27, 55.59),
      --     vector4(878.68, -21.55, 78.27, 55.73),
      --     vector4(880.83, -18.82, 78.27, 58.7),
      --     vector4(882.29, -15.94, 78.27, 59.44),
      --     vector4(868.59, -55.55, 78.27, 239.79),
      --     vector4(870.31, -52.52, 78.27, 237.16),
      --     vector4(872.25, -49.62, 78.27, 238.25),
      --     vector4(873.82, -46.81, 78.27, 237.55),
      --     vector4(875.38, -43.64, 78.27, 240.61),
      --     vector4(877.57, -40.99, 78.27, 238.89),
      --     vector4(879.2, -37.86, 78.27, 239.24),
      --     vector4(881.32, -35.29, 78.27, 239.98),
      --     vector4(882.71, -32.06, 78.27, 239.47),
      --     vector4(884.88, -29.13, 78.27, 238.24),
      --     vector4(886.69, -26.11, 78.27, 238.21),
      --     vector4(888.29, -23.61, 78.27, 236.97),
      --     vector4(890.23, -20.25, 78.27, 237.91),
      --     vector4(879.01, -62.07, 78.27, 57.16),
      --     vector4(880.87, -59.46, 78.27, 56.4),
      --     vector4(882.31, -55.9, 78.27, 56.01),
      --     vector4(884.39, -53.05, 78.27, 55.15),
      --     vector4(886.74, -50.98, 78.27, 57.74),
      --     vector4(887.88, -47.3, 78.27, 56.18),
      --     vector4(889.9, -44.62, 78.27, 57.31),
      --     vector4(891.22, -41.1, 78.27, 56.82),
      --     vector4(893.37, -38.44, 78.27, 57.27),
      --     vector4(894.9, -35.5, 78.27, 57.88),
      --     vector4(896.66, -32.62, 78.27, 56.27),
      --     vector4(898.89, -29.89, 78.27, 59.62),
      --     vector4(900.59, -27.03, 78.27, 57.96),
      --     vector4(918.92, -38.5, 78.27, 57.96),
      --     vector4(917.27, -41.62, 78.27, 57.19),
      --     vector4(915.72, -44.57, 78.27, 58.35),
      --     vector4(913.25, -46.72, 78.27, 59.34),
      --     vector4(911.8, -50.19, 78.27, 58.27),
      --     vector4(909.86, -52.95, 78.27, 56.01),
      --     vector4(907.82, -56.09, 78.27, 58.75),
      --     vector4(906.64, -59.22, 78.27, 59.0),
      --     vector4(904.82, -62.24, 78.27, 58.09),
      --     vector4(902.76, -64.94, 78.27, 57.42),
      --     vector4(900.32, -67.77, 78.27, 60.95),
      --     vector4(898.92, -70.71, 78.27, 59.52),
      --     vector4(897.37, -73.94, 78.27, 60.01),
      --     vector4(905.41, -78.55, 78.27, 237.47),
      --     vector4(906.51, -75.4, 78.27, 239.08),
      --     vector4(908.51, -72.21, 78.27, 240.06),
      --     vector4(910.57, -69.75, 78.27, 239.33),
      --     vector4(912.5, -66.76, 78.27, 236.77),
      --     vector4(914.61, -63.85, 78.27, 236.27),
      --     vector4(916.47, -61.02, 78.27, 239.26),
      --     vector4(918.2, -57.97, 78.27, 239.18),
      --     vector4(919.83, -55.26, 78.27, 239.26),
      --     vector4(921.38, -52.13, 78.27, 239.95),
      --     vector4(923.46, -49.15, 78.27, 240.09),
      --     vector4(925.59, -46.6, 78.27, 238.16),
      --     vector4(925.88, -42.81, 78.27, 239.65),
      --     vector4(915.9, -84.07, 78.27, 56.96),
      --     vector4(917.48, -81.16, 78.27, 58.09),
      --     vector4(920.09, -78.3, 78.27, 55.86),
      --     vector4(927.69, -83.29, 78.27, 238.3),
      --     vector4(926.1, -86.14, 78.27, 236.23),
      --     vector4(924.0, -89.35, 78.27, 237.62),
      -- }
    },
    ['leigonsquarealley'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(69.414520263672, -849.34320068359),
                vector2(59.563220977783, -876.13598632812),
                vector2(53.812015533447, -873.94421386719),
                vector2(52.552845001221, -876.92974853516),
                vector2(58.53719329834, -879.25579833984),
                vector2(49.19457244873, -904.89520263672),
                vector2(12.526390075684, -891.47192382812),
                vector2(32.711112976074, -835.94616699219),
                vector2(43.370277404785, -840.03533935547),
                vector2(41.773113250732, -844.49047851562),
                vector2(44.550273895264, -845.6552734375),
                vector2(46.358081817627, -841.06768798828)
            },
            ['minZ'] = 29.0,
            ['maxZ'] = 31.10
        },
        label = 'Leigon Square Parking',
        showBlip = true,
        blipcoords = vector3(52.41, -874.53, 30.42),
        blipName = 'Garaj',
        blipNumber = 357,
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',
        debug = false,
      --  ['ParkingSpots'] = {
      --      vector4(19.23, -880.71, 29.8, 341.54),
      --      vector4(22.45, -882.16, 29.79, 340.09),
      --      vector4(25.93, -883.46, 29.79, 343.72),
      --      vector4(37.8, -887.64, 29.77, 160.81),
      --      vector4(40.91, -889.25, 29.75, 160.21),
      --      vector4(44.33, -890.22, 29.75, 159.58),
      --      vector4(48.14, -890.77, 29.75, 161.49),
      --      vector4(51.0, -892.1, 29.74, 158.87),
      --      vector4(52.71, -887.68, 29.81, 158.88),
      --      vector4(49.66, -885.99, 29.83, 161.45),
      --      vector4(45.81, -885.22, 29.83, 161.8),
      --      vector4(42.78, -884.27, 29.83, 161.42),
      --      vector4(39.63, -883.03, 29.84, 159.02),
      --      vector4(27.5, -878.27, 29.87, 160.31),
      --      vector4(24.28, -877.02, 29.88, 158.81),
      --      vector4(20.96, -876.17, 29.88, 157.99),
      --      vector4(25.15, -864.12, 30.08, 161.27),
      --      vector4(28.23, -865.24, 30.07, 158.11),
      --      vector4(32.0, -866.64, 30.06, 158.96),
      --      vector4(44.22, -870.05, 30.05, 159.97),
      --      vector4(47.29, -872.04, 30.03, 160.4),
      --      vector4(50.56, -873.75, 30.01, 158.52),
      --      vector4(60.1, -866.79, 30.13, 159.36),
      --      vector4(56.83, -865.6, 30.14, 161.35),
      --      vector4(53.77, -864.08, 30.16, 158.58),
      --      vector4(50.79, -863.1, 30.16, 159.63),
      --      vector4(47.46, -861.17, 30.18, 160.06),
      --      vector4(35.2, -857.05, 30.21, 160.46),
      --      vector4(31.39, -855.98, 30.22, 163.34),
      --      vector4(28.65, -854.67, 30.24, 156.84),
      --      vector4(34.44, -839.08, 30.49, 161.56),
      --      vector4(37.43, -840.18, 30.48, 159.6),
      --      vector4(41.04, -841.14, 30.47, 157.63),
      --      vector4(53.89, -846.47, 30.42, 159.93),
      --      vector4(56.93, -847.64, 30.41, 162.76),
      --      vector4(60.37, -848.47, 30.41, 161.79),
      --      vector4(63.44, -850.18, 30.39, 157.81),
      --      vector4(236.68, -795.08, 30.08, 66.13),
      --      vector4(233.41, -774.07, 30.31, 248.68)
      --  }
    },
    ['motelgarage'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                vector2(266.04238891602, -348.67025756836),
                vector2(285.89639282227, -356.23840332031),
                vector2(287.69180297852, -351.80249023438),
                vector2(294.92953491211, -354.30316162109),
                vector2(304.30255126953, -329.3703918457),
                vector2(268.12475585938, -316.15463256836),
                vector2(261.09896850586, -334.95642089844),
                vector2(268.07708740234, -337.50454711914),
                vector2(266.080078125, -343.24353027344),
                vector2(267.49453735352, -344.12811279297)
            },
            ['minZ'] = 43.5,  -- min height of the parking zone
            ['maxZ'] = 47.15,  -- max height of the parking zone
        },
        label = "Motel Parking",
        showBlip = true,
        blipcoords = vector3(273.43, -343.99, 44.91),
        blipName = "Garaj",
        blipNumber = 357,
        type = 'public',                -- public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},                --car, air, sea
        drawText = '[F3] Garaj',
        debug = false,
      -- ['ParkingSpots'] = {
      --     vector4(277.62, -340.01, 44.5, 70.08),
      --     vector4(284.0, -342.32, 44.5, 70.09),
      --     vector4(278.33, -336.51, 44.49, 70.34),
      --     vector4(284.94, -338.87, 44.5, 70.28),
      --     vector4(285.3, -335.65, 44.5, 70.49),
      --     vector4(286.94, -332.56, 44.5, 67.79),
      --     vector4(288.56, -329.41, 44.5, 69.87),
      --     vector4(289.54, -325.98, 44.5, 70.81),
      --     vector4(300.23, -330.3, 44.5, 69.25),
      --     vector4(298.52, -333.09, 44.5, 69.25),
      --     vector4(298.66, -337.07, 44.5, 67.98),
      --     vector4(297.0, -340.11, 44.49, 69.9),
      --     vector4(296.05, -342.85, 44.49, 68.75),
      --     vector4(294.61, -346.22, 44.5, 67.07),
      --     vector4(292.54, -349.49, 44.52, 68.4),
      --     vector4(268.42, -325.58, 44.5, 249.47),
      --     vector4(267.58, -329.12, 44.49, 247.62),
      --     vector4(266.03, -332.22, 44.5, 247.32),
      --     vector4(271.12, -319.16, 44.5, 67.31),
      --     vector4(283.0, -323.71, 44.5, 73.83),
      --     vector4(281.99, -326.86, 44.5, 69.26),
      --     vector4(281.1, -330.43, 44.49, 71.55),
      --     vector4(279.59, -333.68, 44.5, 71.98),
      --     vector4(269.97, -322.62, 44.5, 248.07),
      -- }
    },
    ['sapcounsel'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                vector2(-362.48254394531, -793.2802734375),
                vector2(-362.46408081055, -730.71594238281),
                vector2(-360.078125, -727.29187011719),
                vector2(-359.91299438477, -726.02014160156),
                vector2(-355.41589355469, -725.94165039062),
                vector2(-347.00802612305, -729.64282226562),
                vector2(-312.21273803711, -742.18682861328),
                vector2(-310.43478393555, -737.13165283203),
                vector2(-266.06091308594, -753.01647949219),
                vector2(-275.53680419922, -777.63562011719),
                vector2(-284.21676635742, -774.40985107422),
                vector2(-285.57073974609, -778.85809326172),
                vector2(-287.20227050781, -778.1279296875),
                vector2(-289.10836791992, -783.76214599609),
                vector2(-319.63018798828, -772.48706054688),
                vector2(-335.69149780273, -786.58020019531),
                vector2(-345.55349731445, -791.60711669922)
            },
            ['minZ'] = 33.00,  -- min height of the parking zone
            ['maxZ'] = 37.60,  -- max height of the parking zone
        },
        label = "San Andreas Parking",
        showBlip = true,
        blipcoords = vector3(-330.01, -780.33, 33.96),
        blipName = "Garaj",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',
        debug = false,                 --car, air, sea
     --  ['ParkingSpots'] = {
     --      vector4(-356.89, -749.29, 33.54, 270.15),
     --      vector4(-356.83, -753.66, 33.54, 269.64),
     --      vector4(-357.22, -756.74, 33.54, 269.93),
     --      vector4(-357.17, -760.01, 33.54, 269.71),
     --      vector4(-357.4, -764.54, 33.54, 268.82),
     --      vector4(-357.14, -767.51, 33.54, 269.67),
     --      vector4(-357.09, -770.59, 33.54, 271.03),
     --      vector4(-357.09, -776.02, 33.54, 267.95),
     --      vector4(-292.62, -763.17, 33.54, 160.52),
     --      vector4(-357.37, -746.23, 33.54, 269.64),
     --      vector4(-292.62, -763.17, 33.54, 160.52),
     --      vector4(-289.82, -764.25, 33.54, 160.83),
     --      vector4(-292.62, -763.17, 33.54, 160.52),
     --      vector4(-295.59, -762.4, 33.54, 160.93),
     --      vector4(-298.43, -761.45, 33.54, 159.95),
     --      vector4(-302.41, -760.02, 33.54, 161.24),
     --      vector4(-305.16, -758.37, 33.54, 158.98),
     --      vector4(-308.23, -757.98, 33.54, 160.64),
     --      vector4(-311.14, -757.03, 33.54, 158.78),
     --      vector4(-315.09, -755.34, 33.54, 157.34),
     --      vector4(-317.51, -753.39, 33.54, 160.53),
     --      vector4(-320.45, -752.5, 33.55, 161.44),
     --      vector4(-323.24, -751.76, 33.54, 158.57),
     --      vector4(-329.02, -750.3, 33.54, 179.15),
     --      vector4(-331.75, -750.26, 33.54, 179.53),
     --      vector4(-334.52, -750.73, 33.54, 181.13),
     --      vector4(-337.46, -751.25, 33.54, 183.02),
     --      vector4(-342.14, -749.82, 33.55, 272.39),
     --      vector4(-341.94, -753.53, 33.55, 94.28),
     --      vector4(-341.97, -756.82, 33.55, 90.65),
     --      vector4(-342.23, -760.49, 33.55, 88.42),
     --      vector4(-341.84, -764.1, 33.55, 89.13),
     --      vector4(-341.93, -767.36, 33.55, 91.18),
     --      vector4(-357.3, -732.9, 33.54, 270.41),
     --      vector4(-357.24, -737.63, 33.55, 269.9),
     --      vector4(-357.33, -743.24, 33.54, 270.89),
     --      vector4(-295.82, -778.26, 33.54, 342.22),
     --      vector4(-299.37, -776.74, 33.54, 342.64),
     --      vector4(-307.47, -773.5, 33.54, 340.32),
     --      vector4(-303.19, -775.79, 33.54, 339.27),
     --      vector4(-310.37, -772.78, 33.54, 339.1),
     --      vector4(-313.07, -771.64, 33.54, 338.38),
     --      vector4(-315.73, -770.26, 33.54, 339.87),
     --      vector4(-273.07, -761.54, 33.54, 69.58),
     --      vector4(-273.81, -765.05, 33.54, 71.99),
     --      vector4(-276.05, -771.7, 33.54, 68.27),
     --      vector4(-277.3, -775.37, 33.54, 70.28),
     --      vector4(-277.07, -751.83, 33.54, 160.8),
     --      vector4(-279.97, -750.75, 33.54, 160.08),
     --      vector4(-284.28, -748.9, 33.54, 159.2),
     --      vector4(-287.28, -748.29, 33.54, 160.63),
     --      vector4(-290.22, -747.64, 33.54, 159.94),
     --      vector4(-292.89, -746.25, 33.54, 160.17),
     --      vector4(-297.03, -744.69, 33.54, 159.37),
     --      vector4(-299.71, -743.7, 33.54, 159.26),
     --      vector4(-302.62, -742.8, 33.54, 159.48),
     --      vector4(-275.18, -768.22, 33.54, 71.26),
     --  }
    },
    ['spanishave'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                vector2(-1135.1311035156, -778.41644287109),
                vector2(-1114.7188720703, -761.08288574219),
                vector2(-1142.3354492188, -729.19293212891),
                vector2(-1161.1352539062, -745.50402832031)
            },
            ['minZ'] = 17.69,  -- min height of the parking zone
            ['maxZ'] = 20.61,  -- max height of the parking zone
        },
        label = "Spanish Ave Parking",
        showBlip = true,
        blipcoords = vector3(-1160.86, -741.41, 19.63),
        blipName = "Garaj",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',                 --car, air, sea
        debug = false
    },

    -- ['shadow'] = {
    --     ['Zone'] = {
    --         ['Shape'] = { --polygon that surrounds the parking area
    --         vector2(2494.73, 4124.07),
    --         vector2(2484.17, 4129.02),
    --         vector2(2477.31, 4111.53),
    --         vector2(2486.86, 4106.92)
    --         },
    --         ['minZ'] = 37.69,  -- min height of the parking zone
    --         ['maxZ'] = 40.61,  -- max height of the parking zone
    --     },
    --     label = "Shadow Rider Garaj",
    --     showBlip = true,
    --     blipcoords = vector3(2485.37, 4119.59, 38.06),
    --     blipName = "Garaj",
    --     blipNumber = 357,
    --     type = 'public',                --public, job, gang, depot
    --     vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
    --     drawText = '[F3] Garaj',                 --car, air, sea
    --     debug = false
    -- },

    ['lyn'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            vector2(707.31, -1102.05),
            vector2(697.92, -1098.37),
            vector2(693.11, -1113.59),
            vector2(700.8, -1117.53)
            },
            ['minZ'] = 20.69,  -- min height of the parking zone
            ['maxZ'] = 25.61,  -- max height of the parking zone
        },
        label = "Lyn Garaj",
        showBlip = true,
        blipcoords = vector3(700.56, -1106.91, 22.47),
        blipName = "Garaj",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',                 --car, air, sea
        debug = false
    },

    ['unigaragessss'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            vector2(141.07, -1308.73),
            vector2(153.68, -1317.74),
            vector2(159.87, -1303.42),
            vector2(153.29, -1297.08)
            },
            ['minZ'] = 27.69,  -- min height of the parking zone
            ['maxZ'] = 31.61,  -- max height of the parking zone
        },
        label = "Garaj",
        showBlip = false,
        blipcoords = vector3(149.89, -1308.64, 29.2),
        blipName = "Garaj",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',                 --car, air, sea
        debug = false
    },

    ['taverngaraj'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            vector2(1216.61, -422.56),
            vector2(1213.21, -440.66),
            vector2(1237.28, -447.41),
            vector2(1243.61, -431.5)
            },
            ['minZ'] = 66.69,  -- min height of the parking zone
            ['maxZ'] = 69.61,  -- max height of the parking zone
        },
        label = "Garaj",
        showBlip = true,
        blipcoords = vector3(1224.78, -434.18, 67.55),
        blipName = "Garaj",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',                 --car, air, sea
        debug = false
    },

    ['shadowridergaraj'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            vector2(2494.56, 4124.25),
            vector2(2488.38, 4109.0),
            vector2(2473.5, 4114.56),
            vector2(2480.98, 4131.33)
            },
            ['minZ'] = 36.69,  -- min height of the parking zone
            ['maxZ'] = 39.61,  -- max height of the parking zone
        },
        label = "Garaj",
        showBlip = true,
        blipcoords = vector3(2485.27, 4118.19, 38.06),
        blipName = "Garaj",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',                 --car, air, sea
        debug = false
    },

    ['camber'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                 vector2(480.23, -1390.68),
                 vector2(487.77, -1390.87),
                 vector2(487.61, -1406.26),
                 vector2(478.73, -1405.71),
            },
            ['minZ'] = 28.01,  -- min height of the parking zone
            ['maxZ'] = 35.15,  -- max height of the parking zone
        },
            label = "camber",
            showBlip = true,
            blipcoords = vector3(482.68, -1398.84, 29.27),
            blipName = "Garaj",
            blipNumber = 357,
            type = 'public',                --public, job, gang, depot
            vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
            drawText = '[F3] Garaj',                 --car, air, sea
            debug = false,
            --['ParkingSpots'] = {
            --    vector4(481.6, -1403.54, 28.86, 88.02),
            --    vector4(483.19, -1398.89, 28.87, 86.28),
            -- 
            --}
        },      
      ['home'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                 vector2(26.02, 544.82),
                 vector2(23.64, 540.48),
                 vector2(17.06, 544.26),
                 vector2(20.09, 548.62),
            },
            ['minZ'] = 170.01,  -- min height of the parking zone
            ['maxZ'] = 185.15,  -- max height of the parking zone
        },
            label = "home",
            showBlip = false,
            blipcoords = vector3(482.68, -1398.84, 29.27),
            blipName = "Garaj",
            blipNumber = 357,
            type = 'public',                --public, job, gang, depot
            vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
            drawText = '[F3] Garaj',                 --car, air, sea
            debug = false,
           --['ParkingSpots'] = {
           --    vector4(21.77, 544.59, 176.03, 190.25),
           --}
        },
        ['adaletgarage'] = {
            ['Zone'] = {
                ['Shape'] = { --polygon that surrounds the parking area
                vector2(-524.89935302734, -255.22933959961),
                vector2(-511.05419921875, -246.77319335938),
                vector2(-506.47302246094, -254.6180267334),
                vector2(-521.59295654297, -260.75228881836)
                },
                ['minZ'] = 33.01,  -- min height of the parking zone
                ['maxZ'] = 37.15,  -- max height of the parking zone
            },
                label = "ADALETBAKANLIGI",
                showBlip = false,
                blipcoords = vector3(-517.14, -256.39, 35.62),
                blipName = "Garaj",
                blipNumber = 357,
                type = 'public',                --public, job, gang, depot
                vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
                drawText = '[F3] Garaj',                 --car, air, sea
                debug = false,
               --['ParkingSpots'] = {
               --    vector4(21.77, 544.59, 176.03, 190.25),
               --}
            },
        ['Drivers'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                 vector2(-1173.8, -1491.25),
                 vector2(-1180.61, -1480.86),
                 vector2(-1192.41, -1488.27),
                 vector2(-1184.28, -1498.55),
            },
            ['minZ'] = 3.00,  -- min height of the parking zone
            ['maxZ'] = 6.00,  -- max height of the parking zone
        },
        label = "Drivers",
        showBlip = true,
        blipcoords = vector3(-1182.93, -1489.63, 4.38),
        blipName = "Garaj",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',                 --car, air, sea
        debug = false,
      -- ['ParkingSpots'] = {
      --     vector4(-1182.92, -1495.62, 3.95, 305.72),
      --     vector4(-1184.88, -1493.11, 3.95, 304.19),
      --     vector4(-1186.69, -1490.6, 3.95, 305.79),
      --     vector4(-1188.28, -1488.04, 3.95, 304.75),
       -- }
    },

    ['lagunapi'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                vector2(358.69207763672, 302.30017089844),
                vector2(351.44546508789, 277.92486572266),
                vector2(355.01831054688, 277.03842163086),
                vector2(353.3766784668, 270.50997924805),
                vector2(387.72875976562, 257.78961181641),
                vector2(399.73132324219, 290.71780395508),
                vector2(364.49926757812, 300.54202270508),
                vector2(362.70568847656, 295.12139892578),
                vector2(359.67681884766, 296.56146240234),
                vector2(361.49871826172, 301.58950805664)
            },
            ['minZ'] = 102.00,  -- min height of the parking zone
            ['maxZ'] = 105.89,  -- max height of the parking zone
        },
        label = "Laguna Parking",
        showBlip = true,
        blipcoords = vector3(364.37, 297.83, 103.49),
        blipName = "Garaj",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',                 --car, air, sea
        debug = false,
     --  ['ParkingSpots'] = {
     --      vector4(359.53, 270.99, 102.65, 341.37),
     --      vector4(363.59, 269.88, 102.64, 341.77),
     --      vector4(368.05, 267.75, 102.62, 337.77),
     --      vector4(371.2, 266.77, 102.6, 340.94),
     --      vector4(375.32, 265.38, 102.59, 339.29),
     --      vector4(379.12, 264.74, 102.59, 337.98),
     --      vector4(388.53, 269.67, 102.58, 68.7),
     --      vector4(389.17, 272.93, 102.58, 72.26),
     --      vector4(391.11, 276.63, 102.57, 69.67),
     --      vector4(392.57, 280.58, 102.57, 70.77),
     --      vector4(393.81, 283.91, 102.55, 71.82),
     --      vector4(390.92, 290.55, 102.58, 163.29),
     --      vector4(386.89, 291.62, 102.63, 162.58),
     --      vector4(383.07, 292.87, 102.69, 164.08),
     --      vector4(379.23, 293.87, 102.77, 162.43),
     --      vector4(374.93, 294.49, 102.85, 162.54),
     --      vector4(375.86, 274.26, 102.65, 157.86),
     --      vector4(371.94, 275.54, 102.71, 158.54),
     --      vector4(368.03, 277.26, 102.77, 156.9),
     --      vector4(378.84, 281.93, 102.68, 336.98),
     --      vector4(375.05, 283.0, 102.75, 339.72),
     --      vector4(370.91, 284.66, 102.83, 337.04),
     --      vector4(361.12, 293.52, 103.08, 251.69),
     --      vector4(359.6, 290.0, 103.08, 249.21),
     --      vector4(357.99, 286.45, 103.1, 248.69),
     --      vector4(356.98, 283.01, 103.0, 248.05),
     --  }
    },

    ['liqourparking'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                vector2(934.54669189453, 3604.5546875),
                vector2(954.29815673828, 3604.1672363281),
                vector2(954.35180664062, 3626.7893066406),
                vector2(934.75305175781, 3626.3806152344)
            },
            ['minZ'] = 31.5,  -- min height of the parking zone
            ['maxZ'] = 35.99,  -- max height of the parking zone
        },
        label = "Liqour Parking",
        showBlip = true,
        blipcoords = vector3(934.95, 3606.59, 32.81),
        blipName = "Garaj",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',                 --car, air, sea
        debug = false,
     -- ['ParkingSpots'] = {
     --     vector4(950.93, 3622.69, 32.0, 271.07),
     --     vector4(950.82, 3619.16, 32.13, 271.62),
     --     vector4(951.4, 3615.47, 32.19, 270.07),
     -- }
    },
    ['haanparking'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                vector2(67.230964660645, 6414.7719726562),
                vector2(53.828144073486, 6401.8227539062),
                vector2(59.075645446777, 6396.736328125),
                vector2(57.678955078125, 6394.4799804688),
                vector2(55.321895599365, 6393.0532226562),
                vector2(49.954971313477, 6398.6840820312),
                vector2(32.203670501709, 6380.2915039062),
                vector2(36.029750823975, 6376.328125),
                vector2(33.88489151001, 6373.9545898438),
                vector2(31.614000320435, 6372.1850585938),
                vector2(27.5251121521, 6376.2802734375),
                vector2(3.0867385864258, 6350.3901367188),
                vector2(7.4540538787842, 6345.6538085938),
                vector2(6.2227344512939, 6343.2216796875),
                vector2(3.7218370437622, 6341.9638671875),
                vector2(-0.76969349384308, 6346.2749023438),
                vector2(-22.776170730591, 6325.3828125),
                vector2(-24.351142883301, 6322.0849609375),
                vector2(-23.452659606934, 6319.2861328125),
                vector2(-12.439478874207, 6304.8647460938),
                vector2(-10.365778923035, 6304.6127929688),
                vector2(5.0310492515564, 6313.4970703125),
                vector2(5.2357106208801, 6314.859375),
                vector2(41.809215545654, 6335.396484375),
                vector2(42.73751449585, 6334.2446289062),
                vector2(71.22339630127, 6349.8232421875),
                vector2(68.208351135254, 6355.2939453125),
                vector2(117.06902313232, 6378.890625)
            },
            ['minZ'] = 30.00,  -- min height of the parking zone
            ['maxZ'] = 33.38,  -- max height of the parking zone
        },
        label = "Bell Farms Parking",
        showBlip = true,
        blipcoords = vector3(78.34, 6418.74, 31.28),
        blipName = "Garaj",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',                 --car, air, sea
        debug = false
    },
    ['legionsquare'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                vector2(239.88751220703, -820.52038574219),
                vector2(252.71513366699, -784.91027832031),
                vector2(258.39483642578, -786.82489013672),
                vector2(264.27755737305, -769.99841308594),
                vector2(218.69738769531, -754.69787597656),
                vector2(200.07238769531, -805.74285888672)
            },
            ['minZ'] = 29.07,  -- min height of the parking zone
            ['maxZ'] = 40.0,  -- max height of the parking zone
        },
        label = "Legion Square Parking",
        showBlip = true,
        blipcoords = vector3(215.9499, -809.698, 30.731),
        blipName = "Garaj",
        blipNumber = 357,
        type = 'public',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',                 --car, air, sea
        debug = false,
      -- ['ParkingSpots'] = {
      --     vector4(219.38, -765.95, 30.41, 247.04),
      --     vector4(218.07, -768.47, 30.41, 248.86),
      --     vector4(216.93, -770.89, 30.42, 249.93),
      --     vector4(216.35, -773.48, 30.43, 249.43),
      --     vector4(215.02, -775.62, 30.44, 252.59),
      --     vector4(214.22, -778.6, 30.45, 247.99),
      --     vector4(213.67, -780.92, 30.45, 248.98),
      --     vector4(212.9, -783.52, 30.46, 249.01),
      --     vector4(210.97, -785.75, 30.5, 250.38),
      --     vector4(210.35, -788.41, 30.51, 249.85),
      --     vector4(209.74, -790.91, 30.51, 248.14),
      --     vector4(209.21, -793.47, 30.52, 249.87),
      --     vector4(207.96, -795.82, 30.55, 248.81),
      --     vector4(206.91, -798.68, 30.57, 248.97),
      --     vector4(205.45, -800.74, 30.6, 249.38),
      --     vector4(234.07, -771.23, 30.33, 249.64),
      --     vector4(232.09, -776.31, 30.3, 248.31),
      --     vector4(230.94, -778.87, 30.29, 248.97),
      --     vector4(230.7, -781.41, 30.28, 250.6),
      --     vector4(229.02, -783.81, 30.28, 250.06),
      --     vector4(227.64, -789.2, 30.26, 247.99),
      --     vector4(226.28, -791.42, 30.26, 248.95),
      --     vector4(225.72, -794.21, 30.24, 249.28),
      --     vector4(224.66, -796.59, 30.24, 247.01),
      --     vector4(223.2, -798.92, 30.25, 248.79),
      --     vector4(222.61, -801.4, 30.25, 248.1),
      --     vector4(221.77, -804.1, 30.26, 245.92),
      --     vector4(221.6, -806.74, 30.25, 247.77),
      --     vector4(219.83, -808.89, 30.26, 251.3),
      --     vector4(228.63, -768.88, 30.36, 69.31),
      --     vector4(227.76, -771.74, 30.35, 71.5),
      --     vector4(226.39, -773.88, 30.35, 68.62),
      --     vector4(225.43, -776.69, 30.35, 69.02),
      --     vector4(224.35, -778.81, 30.34, 64.93),
      --     vector4(224.25, -781.78, 30.33, 70.11),
      --     vector4(222.81, -784.16, 30.34, 72.1),
      --     vector4(221.16, -786.48, 30.35, 68.66),
      --     vector4(221.04, -789.3, 30.34, 68.07),
      --     vector4(219.76, -791.48, 30.34, 70.29),
      --     vector4(218.97, -794.38, 30.34, 68.04),
      --     vector4(218.34, -796.97, 30.34, 66.59),
      --     vector4(217.56, -799.45, 30.35, 69.51),
      --     vector4(216.23, -801.69, 30.37, 70.17),
      --     vector4(215.69, -804.56, 30.38, 68.56),
      --     vector4(228.66, -786.48, 30.27, 248.6),
      --     vector4(233.41, -774.07, 30.31, 248.68),
      --     vector4(236.32, -812.55, 29.88, 248.26),
      --     vector4(237.41, -809.93, 29.89, 244.26),
      --     vector4(238.45, -807.4, 29.9, 244.04),
      --     vector4(238.94, -804.82, 29.93, 248.53),
      --     vector4(240.36, -802.39, 29.94, 246.63),
      --     vector4(241.52, -799.87, 29.96, 245.68),
      --     vector4(242.03, -797.37, 29.98, 246.08),
      --     vector4(243.06, -794.79, 30.01, 249.35),
      --     vector4(244.27, -792.42, 30.03, 247.07),
      --     vector4(245.14, -789.87, 30.06, 247.13),
      --     vector4(246.18, -787.38, 30.08, 248.58),
      --     vector4(246.61, -784.52, 30.12, 248.32),
      --     vector4(248.17, -782.46, 30.14, 248.95),
      --     vector4(249.12, -779.63, 30.18, 249.01),
      --     vector4(249.32, -776.78, 30.22, 247.42),
      --     vector4(250.19, -774.3, 30.26, 248.86),
      --     vector4(244.75, -772.24, 30.29, 69.17),
      --     vector4(228.66, -786.48, 30.27, 248.6),
      --     vector4(233.41, -774.07, 30.31, 248.68),
      --     vector4(231.42, -810.44, 30.01, 70.18),
      --     vector4(231.62, -807.79, 30.03, 68.27),
      --     vector4(232.96, -805.51, 30.02, 66.62),
      --     vector4(234.88, -803.0, 30.02, 69.62),
      --     vector4(235.38, -800.43, 30.04, 68.23),
      --     vector4(236.58, -797.83, 30.05, 69.89),
      --     vector4(236.68, -795.08, 30.08, 66.13),
      --     vector4(237.88, -792.75, 30.08, 66.76),
      --     vector4(238.84, -790.11, 30.11, 68.34),
      --     vector4(240.15, -787.59, 30.13, 67.55),
      --     vector4(241.01, -785.27, 30.15, 69.84),
      --     vector4(244.51, -775.07, 30.26, 70.7),
      --     vector4(243.65, -777.69, 30.22, 67.25),
      --     vector4(242.44, -779.84, 30.2, 68.04),
      --     vector4(241.32, -782.41, 30.18, 69.19),
      -- }
    },
    ['impoundlot'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            -- vector2(-128.76565551758, -1186.7231445312),
            -- vector2(-128.95680236816, -1158.9990234375),
            -- vector2(-155.75888061524, -1158.6616210938),
            -- vector2(-155.84657287598, -1186.7335205078)
            vector2(95.976676940918, -1078.017578125),
            vector2(110.19873809814, -1046.7847900391),
            vector2(138.46229553223, -1057.8288574219),
            vector2(136.57861328125, -1084.8502197266),
            vector2(114.81044006348, -1085.1091308594)
            },
            ['minZ'] = 28.168418884277,  -- min height of the parking zone
            ['maxZ'] = 29.684627914429,  -- max height of the parking zone
            debug = false,
        },
        label = "Çekilmiş Araçlar",
        showBlip = true,
        blipcoords = vector3(111.36, -1066.26, 29.19),
        blipName = "Çekilmiş Araçlar",
        blipNumber = 68,
        blipColor = 1, 
        type = 'depot',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Çekilmiş Araçlar',                 --car, air, sea
        debug = false,
    },

    ['impoveharob'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                vector2(102.28202819824, -1080.3629150391),
                vector2(113.80647277832, -1052.3145751953),
                vector2(143.29554748535, -1062.5831298828),
                vector2(144.03605651855, -1085.5323486328)
            },
            ['minZ'] = 27.168418884277,  -- min height of the parking zone
            ['maxZ'] = 33.684627914429,  -- max height of the parking zone
            debug = false,
        },
        label = "Çekilmiş Araçlar",
        showBlip = true,
        blipcoords = vector3(124.06, -1071.4, 29.19),
        blipName = "Çekilmiş Araçlar",
        blipNumber = 68,
        blipColor = 1, 
        type = 'depot',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Çekilmiş Araçlar',                 --car, air, sea
        debug = false,
    },

    ['impoundlot'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                vector2(-3019.484375, 121.54983520508),
                vector2(-3033.6828613281, 144.75009155273),
                vector2(-3037.9445800781, 142.42739868164),
                vector2(-3023.9631347656, 118.64588165283)
            },
            ['minZ'] = 9.168418884277,  -- min height of the parking zone
            ['maxZ'] = 13.684627914429,  -- max height of the parking zone
            debug = false,
        },
        label = "Çekilmiş Araçlar",
        showBlip = true,
        blipcoords = vector3(-3026.97, 125.69, 11.61),
        blipName = "Çekilmiş Araçlar",
        blipNumber = 68,
        blipColor = 1, 
        type = 'depot',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Çekilmiş Araçlar',                 --car, air, sea
        debug = false,
    },

    ['vpdimpodun'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                vector2(591.95874023438, -22.331996917725),
                vector2(593.40954589844, -15.585858345032),
                vector2(589.68524169922, -15.111362457275),
                vector2(562.12371826172, -10.493481636047),
                vector2(561.51599121094, -16.614521026611)
            },
            ['minZ'] = 68.168418884277,  -- min height of the parking zone
            ['maxZ'] = 73.684627914429,  -- max height of the parking zone
            debug = false,
        },
        label = "Çekilmiş Araçlar",
        showBlip = false,
        blipcoords = vector3(-3026.97, 125.69, 11.61),
        blipName = "Çekilmiş Araçlar",
        blipNumber = 68,
        blipColor = 1, 
        type = 'depot',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Çekilmiş Araçlar',                 --car, air, sea
        debug = false,
    },

    ['mpdimpound'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                vector2(2536.2888183594, -392.66464233398),
                vector2(2557.0864257813, -392.7946472168),
                vector2(2557.2739257813, -388.38555908203),
                vector2(2535.2756347656, -387.80688476563)
            },
            ['minZ'] = 90.168418884277,  -- min height of the parking zone
            ['maxZ'] = 95.684627914429,  -- max height of the parking zone
            debug = false,
        },
        label = "Çekilmiş Araçlar",
        showBlip = false,
        blipcoords = vector3(-3026.97, 125.69, 11.61),
        blipName = "Çekilmiş Araçlar",
        blipNumber = 68,
        blipColor = 1, 
        type = 'depot',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Çekilmiş Araçlar',                 --car, air, sea
        debug = false,
    },

    ['impoundlotsheriff'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            vector2(-468.44702148438, 5967.5395507812),
            vector2(-496.25073242188, 5995.51953125),
            vector2(-500.68698120117, 5991.81640625),
            vector2(-472.01934814453, 5963.2016601562)
            },
            ['minZ'] = 29.168418884277,  -- min height of the parking zone
            ['maxZ'] = 33.684627914429,  -- max height of the parking zone
            debug = false,
        },
        label = "Çekilmiş Araçlar SD",
        showBlip = true,
        blipcoords = vector3(-480.85, 5975.91, 31.3),
        blipName = "Çekilmiş Araçlar SD",
        blipNumber = 68,
        blipColor = 1, 
        type = 'depot',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Çekilmiş Araçlar',                 --car, air, sea
        debug = false,
  --['ParkingSpots'] = {
  --    vector4(104.3, -1077.64, 28.84, 341.23),
  --    vector4(107.8, -1079.2, 28.84, 340.74),
  --    vector4(111.64, -1080.47, 28.84, 338.19),
  --    vector4(106.17, -1063.28, 28.86, 248.0),
  --    vector4(107.88, -1059.7, 28.85, 246.58),
  --    vector4(109.52, -1056.35, 28.84, 246.62),
  --    vector4(111.41, -1053.23, 28.85, 247.02),
  --    vector4(112.39, -1049.72, 28.86, 245.92),
  --    vector4(117.59, -1081.21, 28.85, 181.99),
  --    vector4(121.12, -1081.16, 28.85, 3.35),
  --    vector4(124.85, -1081.44, 28.84, 2.63),
  --    vector4(118.87, -1070.0, 28.84, 179.56),

  --}
    },

    ['impoundlotprison'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            -- vector2(-128.76565551758, -1186.7231445312),
            -- vector2(-128.95680236816, -1158.9990234375),
            -- vector2(-155.75888061524, -1158.6616210938),
            -- vector2(-155.84657287598, -1186.7335205078)
            vector2(1866.72, 2641.07),
            vector2(1879.29, 2641.38),
            vector2(1879.38, 2668.62),
            vector2(1867.3, 2669.3)
            },
            ['minZ'] = 44.168418884277,  -- min height of the parking zone
            ['maxZ'] = 47.684627914429,  -- max height of the parking zone
            debug = false,
        },
        label = "Çekilmiş Araçlar",
        showBlip = true,
        blipcoords = vector3(1873.31, 2663.84, 45.67),
        blipName = "Çekilmiş Araçlar",
        blipNumber = 68,
        blipColor = 1, 
        type = 'depot',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Çekilmiş Araçlar',                 --car, air, sea
        debug = false,
  --['ParkingSpots'] = {
  --    vector4(104.3, -1077.64, 28.84, 341.23),
  --    vector4(107.8, -1079.2, 28.84, 340.74),
  --    vector4(111.64, -1080.47, 28.84, 338.19),
  --    vector4(106.17, -1063.28, 28.86, 248.0),
  --    vector4(107.88, -1059.7, 28.85, 246.58),
  --    vector4(109.52, -1056.35, 28.84, 246.62),
  --    vector4(111.41, -1053.23, 28.85, 247.02),
  --    vector4(112.39, -1049.72, 28.86, 245.92),
  --    vector4(117.59, -1081.21, 28.85, 181.99),
  --    vector4(121.12, -1081.16, 28.85, 3.35),
  --    vector4(124.85, -1081.44, 28.84, 2.63),
  --    vector4(118.87, -1070.0, 28.84, 179.56),

  --}
    },

    ['impoundlot5365'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            -- vector2(-128.76565551758, -1186.7231445312),
            -- vector2(-128.95680236816, -1158.9990234375),
            -- vector2(-155.75888061524, -1158.6616210938),
            -- vector2(-155.84657287598, -1186.7335205078)
            vector2(-1601.53, -1035.12),
            vector2(-1573.85, -1002.48),
            vector2(-1554.75, -1016.36),
            vector2(-1583.09, -1050.02)
            },
            ['minZ'] = 11.168418884277,  -- min height of the parking zone
            ['maxZ'] = 15.684627914429,  -- max height of the parking zone
            debug = false,
        },
        label = "Çekilmiş Araçlar",
        showBlip = true,
        blipcoords = vector3(-1575.39, -1024.06, 13.02),
        blipName = "Çekilmiş Araçlar",
        blipNumber = 68,
        blipColor = 1, 
        type = 'depot',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Çekilmiş Araçlar',                 --car, air, sea
        debug = false,
  --['ParkingSpots'] = {
  --    vector4(104.3, -1077.64, 28.84, 341.23),
  --    vector4(107.8, -1079.2, 28.84, 340.74),
  --    vector4(111.64, -1080.47, 28.84, 338.19),
  --    vector4(106.17, -1063.28, 28.86, 248.0),
  --    vector4(107.88, -1059.7, 28.85, 246.58),
  --    vector4(109.52, -1056.35, 28.84, 246.62),
  --    vector4(111.41, -1053.23, 28.85, 247.02),
  --    vector4(112.39, -1049.72, 28.86, 245.92),
  --    vector4(117.59, -1081.21, 28.85, 181.99),
  --    vector4(121.12, -1081.16, 28.85, 3.35),
  --    vector4(124.85, -1081.44, 28.84, 2.63),
  --    vector4(118.87, -1070.0, 28.84, 179.56),

  --}
    },
    ['impoundlot5385'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            -- vector2(-128.76565551758, -1186.7231445312),
            -- vector2(-128.95680236816, -1158.9990234375),
            -- vector2(-155.75888061524, -1158.6616210938),
            -- vector2(-155.84657287598, -1186.7335205078)
            vector2(820.51, -1374.95),
            vector2(820.13, -1365.96),
            vector2(835.35, -1364.17),
            vector2(835.59, -1375.18)
            },
            ['minZ'] = 24.168418884277,  -- min height of the parking zone
            ['maxZ'] = 28.684627914429,  -- max height of the parking zone
            debug = false,
        },
        label = "Çekilmiş Araçlar",
        showBlip = false,
        blipcoords = vector3(828.02, -1369.46, 26.14),
        blipName = "Çekilmiş Araçlar",
        blipNumber = 68,
        blipColor = 1, 
        type = 'depot',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Çekilmiş Araçlar',                 --car, air, sea
        debug = false,
  --['ParkingSpots'] = {
  --    vector4(104.3, -1077.64, 28.84, 341.23),
  --    vector4(107.8, -1079.2, 28.84, 340.74),
  --    vector4(111.64, -1080.47, 28.84, 338.19),
  --    vector4(106.17, -1063.28, 28.86, 248.0),
  --    vector4(107.88, -1059.7, 28.85, 246.58),
  --    vector4(109.52, -1056.35, 28.84, 246.62),
  --    vector4(111.41, -1053.23, 28.85, 247.02),
  --    vector4(112.39, -1049.72, 28.86, 245.92),
  --    vector4(117.59, -1081.21, 28.85, 181.99),
  --    vector4(121.12, -1081.16, 28.85, 3.35),
  --    vector4(124.85, -1081.44, 28.84, 2.63),
  --    vector4(118.87, -1070.0, 28.84, 179.56),

  --}
    },
    ['impoundlot3385'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            -- vector2(-128.76565551758, -1186.7231445312),
            -- vector2(-128.95680236816, -1158.9990234375),
            -- vector2(-155.75888061524, -1158.6616210938),
            -- vector2(-155.84657287598, -1186.7335205078)
            vector2(410.67, -1658.95),
            vector2(423.49, -1639.82),
            vector2(422.51, -1629.11),
            vector2(410.94, -1620.53),
            vector2(393.45, -1643.1)
            },
            ['minZ'] = 28.168418884277,  -- min height of the parking zone
            ['maxZ'] = 31.684627914429,  -- max height of the parking zone
            debug = false,
        },
        label = "Çekilmiş Araçlar",
        showBlip = true,
        blipcoords = vector3(408.46, -1640.95, 29.29),
        blipName = "Çekilmiş Araçlar",
        blipNumber = 68,
        blipColor = 1, 
        type = 'depot',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Çekilmiş Araçlar',                 --car, air, sea
        debug = false,
  --['ParkingSpots'] = {
  --    vector4(104.3, -1077.64, 28.84, 341.23),
  --    vector4(107.8, -1079.2, 28.84, 340.74),
  --    vector4(111.64, -1080.47, 28.84, 338.19),
  --    vector4(106.17, -1063.28, 28.86, 248.0),
  --    vector4(107.88, -1059.7, 28.85, 246.58),
  --    vector4(109.52, -1056.35, 28.84, 246.62),
  --    vector4(111.41, -1053.23, 28.85, 247.02),
  --    vector4(112.39, -1049.72, 28.86, 245.92),
  --    vector4(117.59, -1081.21, 28.85, 181.99),
  --    vector4(121.12, -1081.16, 28.85, 3.35),
  --    vector4(124.85, -1081.44, 28.84, 2.63),
  --    vector4(118.87, -1070.0, 28.84, 179.56),

  --}
    },
    ['impoundlot1385'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            -- vector2(-128.76565551758, -1186.7231445312),
            -- vector2(-128.95680236816, -1158.9990234375),
            -- vector2(-155.75888061524, -1158.6616210938),
            -- vector2(-155.84657287598, -1186.7335205078)
            vector2(423.15, -998.04),
            vector2(428.39, -998.18),
            vector2(428.91, -987.23),
            vector2(423.52, -987.78)
            },
            ['minZ'] = 24.168418884277,  -- min height of the parking zone
            ['maxZ'] = 27.684627914429,  -- max height of the parking zone
            debug = false,
        },
        label = "Çekilmiş Araçlar",
        showBlip = false,
        blipcoords = vector3(426.24, -993.01, 25.7),
        blipName = "Çekilmiş Araçlar",
        blipNumber = 68,
        blipColor = 1, 
        type = 'depot',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Çekilmiş Araçlar',                 --car, air, sea
        debug = false,
  --['ParkingSpots'] = {
  --    vector4(104.3, -1077.64, 28.84, 341.23),
  --    vector4(107.8, -1079.2, 28.84, 340.74),
  --    vector4(111.64, -1080.47, 28.84, 338.19),
  --    vector4(106.17, -1063.28, 28.86, 248.0),
  --    vector4(107.88, -1059.7, 28.85, 246.58),
  --    vector4(109.52, -1056.35, 28.84, 246.62),
  --    vector4(111.41, -1053.23, 28.85, 247.02),
  --    vector4(112.39, -1049.72, 28.86, 245.92),
  --    vector4(117.59, -1081.21, 28.85, 181.99),
  --    vector4(121.12, -1081.16, 28.85, 3.35),
  --    vector4(124.85, -1081.44, 28.84, 2.63),
  --    vector4(118.87, -1070.0, 28.84, 179.56),

  --}
    },
    ['impoundlot2'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            -- vector2(-128.76565551758, -1186.7231445312),
            -- vector2(-128.95680236816, -1158.9990234375),
            -- vector2(-155.75888061524, -1158.6616210938),
            -- vector2(-155.84657287598, -1186.7335205078)
            vector2(1698.39, 3746.79), 
            vector2(1702.02, 3742.31), 
            vector2(1712.76, 3752.49),
            vector2(1707.63, 3756.84)
            },
            ['minZ'] = 32.00,  -- min height of the parking zone
            ['maxZ'] = 39.00,  -- max height of the parking zone
            debug = false,
        },
        label = "Çekilmiş Araçlar",
        showBlip = true,
        blipcoords = vector3(1705.43, 3749.38, 34.0),
        blipName = "Çekilmiş Araçlar",
        blipNumber = 68,
        blipColor = 1, 
        type = 'depot',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Çekilmiş Araçlar',                 --car, air, sea
        debug = false,
   -- ['ParkingSpots'] = {
   --     vector4(1701.96, 3746.65, 33.53, 48.84),
   --     vector4(1704.83, 3749.93, 33.61, 48.04),
   --     vector4(1707.54, 3752.72, 33.66, 48.57),
   -- }
    },
    ['impoundlot3'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            -- vector2(-128.76565551758, -1186.7231445312),
            -- vector2(-128.95680236816, -1158.9990234375),
            -- vector2(-155.75888061524, -1158.6616210938),
            -- vector2(-155.84657287598, -1186.7335205078)
            vector2(147.85, 6449.61), 
            vector2(155.54, 6441.35), 
            vector2(165.34, 6450.65),
            vector2(159.92, 6458.64)
            },
            ['minZ'] = 30.00,  -- min height of the parking zone
            ['maxZ'] = 36.00,  -- max height of the parking zone
            debug = false,
        },
        label = "Çekilmiş Araçlar",
        showBlip = true,
        blipcoords = vector3(157.48, 6451.31, 31.29),
        blipName = "Çekilmiş Araçlar",
        blipNumber = 68,
        blipColor = 1, 
        type = 'depot',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Çekilmiş Araçlar',                 --car, air, sea
        debug = false,
   -- ['ParkingSpots'] = {
   --     vector4(156.35, 6448.81, 30.88, 34.94),
   --     vector4(158.53, 6452.1, 30.87, 31.25),
   -- }
    },
    ['impoundlot4'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            -- vector2(-128.76565551758, -1186.7231445312),
            -- vector2(-128.95680236816, -1158.9990234375),
            -- vector2(-155.75888061524, -1158.6616210938),
            -- vector2(-155.84657287598, -1186.7335205078)
            vector2(355.68029785156, 275.53784179688),
            vector2(365.65582275391, 297.35391235352),
            vector2(394.63522338867, 289.2751159668),
            vector2(384.42901611328, 260.60403442383)
            },
            ['minZ'] = 102.9,  -- min height of the parking zone
            ['maxZ'] = 103.4,  -- max height of the parking zone
            debug = false,
        },
        label = "Çekilmiş Araçlar",
        showBlip = true,
        blipcoords = vector3(382.72, 269.99, 103.01),
        blipName = "Çekilmiş Araçlar",
        blipNumber = 68,
        blipColor = 1, 
        type = 'depot',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Çekilmiş Araçlar',                 --car, air, sea
        debug = false,
   -- ['ParkingSpots'] = {
   --     vector4(156.35, 6448.81, 30.88, 34.94),
   --     vector4(158.53, 6452.1, 30.87, 31.25),
   -- }
    },
    ['mpd'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                vector2(2557.7685546875, -375.58145141602),
                vector2(2559.1818847656, -370.28009033203),
                vector2(2536.8952636719, -369.85775756836),
                vector2(2535.9958496094, -375.82382202148)
            },
            ['minZ'] = 90.10,  -- min height of the parking zone
            ['maxZ'] = 95.97,  -- max height of the parking zone
        },
        label = "Metropolitan",
        showBlip = false,
        blipName = "Police",
        blipNumber = 357,
        type = 'job',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',              --car, air, sea
        job = 'ranger',
        debug = false,
    },
    ['vpd'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                vector2(597.14337158203, 6.2814536094666),
                vector2(561.92907714844, 12.492720603943),
                vector2(560.34808349609, 5.8837637901306),
                vector2(595.92858886719, -0.63106346130371)
            },
            ['minZ'] = 69.10,  -- min height of the parking zone
            ['maxZ'] = 73.97,  -- max height of the parking zone
        },
        label = "Metropolitan",
        showBlip = false,
        blipName = "Police",
        blipNumber = 357,
        type = 'job',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',              --car, air, sea
        job = 'vpd',
        debug = false,
    },
    
    ['dppd'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            vector2(-1617.8116455078, -1011.778137207),
            vector2(-1625.7816162109, -1020.8004150391),
            vector2(-1634.53125, -1013.3220214844),
            vector2(-1626.9334716797, -1004.5266723633)
            },
            ['minZ'] = 0.10,  -- min height of the parking zone
            ['maxZ'] = 30.97,  -- max height of the parking zone
        },
        label = "Del Pierro PD",
        showBlip = false,
        blipName = "Police",
        blipNumber = 357,
        type = 'job',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',              --car, air, sea
        job = 'dppd',
        debug = false,
    },
    ['police'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                vector2(427.85052490234, -1017.9293212891),
                vector2(428.14498901367, -1030.7161865234),
                vector2(459.05325317383, -1026.896484375),
                vector2(459.12948608398, -1012.3634033203),
                vector2(449.7737121582, -1012.4426879883),
                vector2(449.38006591797, -1011.4791870117),
                vector2(434.09115600586, -1011.4317016602),
                vector2(434.05737304688, -1013.9020996094),
                vector2(427.95745849609, -1013.9678344727)
            },
            ['minZ'] = 28.10,  -- min height of the parking zone
            ['maxZ'] = 30.97,  -- max height of the parking zone
        },
        label = "Police",
        showBlip = false,
        blipName = "Police",
        blipNumber = 357,
        type = 'job',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',              --car, air, sea
        job = 'police',
        debug = false,
   -- ['ParkingSpots'] = {
   --     vector4(449.57, -1024.85, 28.06, 5.95),
   --     vector4(446.04, -1025.62, 28.14, 5.18),
   --     vector4(442.53, -1025.66, 28.2, 6.39),
   --     vector4(438.8, -1025.99, 28.27, 7.28),
   --     vector4(435.41, -1026.74, 28.35, 3.84),
   -- }
    },
    ['police2'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            vector2(88.47, -721.88),
            vector2(96.05, -723.86),
            vector2(101.6, -707.88),
            vector2(94.55, -705.3)
            },
            ['minZ'] = 27.10,  -- min height of the parking zone
            ['maxZ'] = 36.97,  -- max height of the parking zone
        },
        label = "Police",
        showBlip = false,
        blipName = "Police2",
        blipNumber = 357,
        type = 'job',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',              --car, air, sea
        job = 'police',
        debug = false,
-- ['ParkingSpots'] = {
--     vector4(97.19, -708.7, 32.71, 71.92),
--     vector4(96.2, -712.6, 32.71, 70.44),
--     vector4(94.39, -716.44, 32.71, 72.48),
--     vector4(93.17, -720.38, 32.71, 71.14),
-- }
    },
    ['police3'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            vector2(1835.75, 3695.7),
            vector2(1833.42, 3699.95),
            vector2(1823.77, 3694.34),
            vector2(1826.04, 3690.21)
            },
            ['minZ'] = 27.10,  -- min height of the parking zone
            ['maxZ'] = 38.97,  -- max height of the parking zone
        },
        label = "Police",
        showBlip = false,
        blipName = "Police3",
        blipNumber = 357,
        type = 'job',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',              --car, air, sea
        job = 'police',
        debug = false,
    --  ['ParkingSpots'] = {
    --      vector4(1829.78, 3695.54, 33.79, 296.54),
    --  }
    },
--     ['csheriff'] = {
--         ['Zone'] = {
--             ['Shape'] = { --polygon that surrounds the parking area
--             vector2(394.27, -1632.32),
--             vector2(388.37, -1628.03),
--             vector2(401.02, -1613.11),
--             vector2(407.39, -1617.09)
--             },
--             ['minZ'] = 25.10,  -- min height of the parking zone
--             ['maxZ'] = 34.97,  -- max height of the parking zone
--         },
--         label = "cSheriff",
--         showBlip = false,
--         blipName = "Police",
--         blipNumber = 357,
--         type = 'job',                --public, job, gang, depot
--         vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
--         drawText = '[F3] Garaj',              --car, air, sea
--         job = 'police',
--         debug = false,
--   -- ['ParkingSpots'] = {
--   --     vector4(393.28, -1628.78, 28.58, 230.11),
--   --     vector4(395.21, -1626.23, 28.58, 230.14),
--   --     vector4(397.24, -1623.9, 28.58, 229.55),
--   --     vector4(399.06, -1621.35, 28.58, 229.38),
--   --     vector4(401.1, -1618.95, 28.58, 229.69),
--   --     vector4(402.89, -1616.81, 28.58, 229.6)
--   -- }
--     },
    ['sheriff'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            vector2(-488.24, 6024.65),
            vector2(-482.73, 6018.85),
            vector2(-462.4, 6038.07),
            vector2(-468.5, 6043.89)
            },
            ['minZ'] = 28.10,  -- min height of the parking zone
            ['maxZ'] = 35.97,  -- max height of the parking zone
        },
        label = "Sheriff",
        showBlip = false,
        blipName = "Police",
        blipNumber = 357,
        type = 'job',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',              --car, air, sea
        job = 'sheriff',
        debug = false,
   -- ['ParkingSpots'] = {
   --     vector4(-468.84, 6038.55, 30.92, 43.73),
   --     vector4(-472.16, 6035.09, 30.92, 42.92),
   --     vector4(-475.5, 6031.21, 30.92, 45.74),
   --     vector4(-478.95, 6028.17, 30.92, 46.38),
   --     vector4(-482.4, 6024.72, 30.92, 45.62)
   -- }
    },
    ['highway'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            vector2(842.06, -1332.05),
            vector2(842.07, -1344.02),
            vector2(842.03, -1355.76),
            vector2(860.15, -1356.86),
            vector2(860.88, -1347.66),
            vector2(860.45, -1333.87)
            },
            ['minZ'] = 25.10,  -- min height of the parking zone
            ['maxZ'] = 26.97,  -- max height of the parking zone
        },
        label = "Police",
        showBlip = false,
        blipName = "Police",
        blipNumber = 357,
        type = 'job',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',              --car, air, sea
        job = 'police',
        debug = false,
   -- ['ParkingSpots'] = {
   --     vector4(844.91, -1346.39, 26.08, 254.49),
   --     vector4(845.33, -1341.41, 26.08, 259.76),
   --     vector4(844.85, -1334.42, 26.11, 155.5),
   --     vector4(843.84, -1352.71, 26.08, 252.79),
   --     vector4(859.43, -1358.25, 26.1, 100.78),
   --     vector4(860.28, -1342.49, 26.03, 75.61)
   -- }
    },

    ['dddaws'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            vector2(387.18167114258, -1640.2414550781),
            vector2(372.51135253906, -1628.5355224609),
            vector2(393.09182739258, -1603.4533691406),
            vector2(408.1028137207, -1616.1381835938)
            },
            ['minZ'] = 25.10,  -- min height of the parking zone
            ['maxZ'] = 35.97,  -- max height of the parking zone
        },
        label = "Sheriff",
        showBlip = false,
        blipName = "Sheriff",
        blipcoords = vector3(396.79, -1621.73, 29.29),
        blipNumber = 357,
        type = 'job',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',              --car, air, sea
        job = 'sheriff',
        debug = false,
--    ['ParkingSpots'] = {
--        vector4(844.91, -1346.39, 26.08, 254.49),
--        vector4(845.33, -1341.41, 26.08, 259.76),
--        vector4(844.85, -1334.42, 26.11, 155.5),
--        vector4(843.84, -1352.71, 26.08, 252.79),
--        vector4(859.43, -1358.25, 26.1, 100.78),
--        vector4(860.28, -1342.49, 26.03, 75.61)
   -- }
    },

    ['mechanic2'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            vector2(-186.34, -1257.93),
            vector2(-186.6, -1281.09),
            vector2(-179.54, -1280.79),
            vector2(-179.41, -1272.75),
            vector2(-179.5, -1269.28),
            vector2(-179.48, -1257.68),
            },
            ['minZ'] = 30.3,  -- min height of the parking zone
            ['maxZ'] = 32.0,  -- max height of the parking zone
        },
        label = 'Bennys Mekanik 2',
        type = 'public',
        showBlip = true,
        blipcoords = vector3(-182.01, -1277.38, 31.3),
        blipName = "Garaj",
        blipNumber = 357,
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',
     -- ["ParkingSpots"] = {
     --     vector4(-182.01, -1277.38, 31.3, 89.88), 
     --     vector4(-182.3, -1274.05, 31.3, 90.3),
     --     vector4(-181.94, -1267.1, 31.3, 92.73),
     --     vector4(-181.96, -1263.85, 31.3, 90.37),
     --     vector4(-182.13, -1260.44, 31.3, 91.22),
     -- },
        debug = false
    },

    ['motelgaragess'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            vector2(-969.21221923828, -1480.9794921875),
            vector2(-975.31549072266, -1484.4232177734),
            vector2(-982.6849975586, -1472.4576416016),
            vector2(-973.18585205078, -1466.170288086)
            },
            ['minZ'] = 4.3,  -- min height of the parking zone
            ['maxZ'] = 6.0,  -- max height of the parking zone
        },
        label = 'Garaj',
        type = 'public',
        showBlip = true,
        blipcoords = vector3(-975.5, -1476.16, 5.02),
        blipName = "Garaj",
        blipNumber = 357,
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',
     -- ["ParkingSpots"] = {
     --     vector4(-182.01, -1277.38, 31.3, 89.88), 
     --     vector4(-182.3, -1274.05, 31.3, 90.3),
     --     vector4(-181.94, -1267.1, 31.3, 92.73),
     --     vector4(-181.96, -1263.85, 31.3, 90.37),
     --     vector4(-182.13, -1260.44, 31.3, 91.22),
     -- },
        debug = false
    },

    ['mechaniclscustom'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            vector2(-391.72, -116.63),
            vector2(-385.24, -128.8),
            vector2(-374.61, -146.86),
            vector2(-378.82, -148.99),
            vector2(-389.55, -129.27),
            vector2(-395.78, -118.59),

            },
            ['minZ'] = 37.0,  -- min height of the parking zone
            ['maxZ'] = 40.0,  -- max height of the parking zone
        },
        label = 'mechaniclscustom',
        type = 'public',
        showBlip = true,
        blipcoords = vector3(-373.82, -147.65, 38.68),
        blipName = "Garaj",
        blipNumber = 357,
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
     -- ["ParkingSpots"] = {
     --     vector4(-392.78, -119.28, 38.55, 290.49),
     --     vector4(-391.49, -122.38, 38.68, 297.4),
     --     vector4(-389.79, -125.5, 38.68, 291.76),
     --     vector4(-388.41, -128.74, 38.68, 295.98),
     --     vector4(-386.2, -131.54, 38.68, 299.24),
     --     vector4(-384.71, -134.64, 38.69, 297.47),
     --     vector4(-382.99, -137.89, 38.69, 296.19),
     --     vector4(-380.87, -140.82, 38.69, 292.94),
     --     vector4(-379.52, -143.92, 38.68, 289.31),
     --     vector4(-377.43, -146.73, 38.68, 292.8),
     -- },
        debug = false
    },
        
    ['uwucafe'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            vector2(-585.12, -1098.53 ),
            vector2(-579.08, -1098.44 ),
            vector2(-584.73, -1136.82 ),
            vector2(-579.18, -1136.72 ),
            vector2(-579.18, -1136.72 ),
            vector2(-570.24, -1137.18 ),
            vector2(-569.96, -1098.18 ),
            vector2(-575.84, -1098.13 ),
            },
            ['minZ'] = 21.0,  -- min height of the parking zone
            ['maxZ'] = 24.0,  -- max height of the parking zone
        },
        label = 'uwucafe',
        type = 'public',
        showBlip = true,
        blipcoords = vector3(-585.12, -1098.53, 22.18),
        blipName = "Garaj",
        blipNumber = 357,
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
       -- ["ParkingSpots"] = {
       --     vector4(-582.15, -1100.83, 22.18, 85.31),
       --     vector4(-582.23, -1104.35, 22.18, 88.55),
       --     vector4(-582.57, -1108.26, 22.18, 85.36),
       --     vector4(-582.39, -1111.74, 22.18, 88.68),
       --     vector4(-582.42, -1115.54, 22.18, 88.02),
       --     vector4(-582.5, -1119.2, 22.18, 88.1),
       --     vector4(-582.43, -1122.84, 22.18, 89.2),
       --     vector4(-582.25, -1126.67, 22.18, 84.43),
       --     vector4(-582.31, -1130.29, 22.18, 87.76),
       --     vector4(-582.39, -1133.92, 22.18, 92.82),
       --     vector4(-573.88, -1133.99, 22.18, 269.98),
       --     vector4(-573.31, -1130.4, 22.18, 265.28),
       --     vector4(-573.14, -1126.97, 22.18, 267.53),
       --     vector4(-573.04, -1122.92, 22.18, 264.13),
       --     vector4(-572.55, -1119.27, 22.18, 265.62),
       --     vector4(-573.19, -1115.62, 22.18, 261.49),
       --     vector4(-573.48, -1111.8, 22.18, 266.47),
       --     vector4(-573.41, -1105.0, 22.18, 273.29),
       --     vector4(-573.66, -1101.01, 22.18, 265.53),
       -- },
        debug = false
    },

    ['lssd'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            vector2(-462.2, 6013.59),
            vector2(-467.81, 6008.06),
            vector2(-448.59, 5987.91),
            vector2(-442.58, 5994.03),
            },
            ['minZ'] = 25.0,  -- min height of the parking zone
            ['maxZ'] = 50.0,  -- max height of the parking zone
            
        },
        label = 'LSSSD',
        type = 'job',
        job = 'police',
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',
     -- ["ParkingSpots"] = {
     --     vector4(-463.16, 6009.34, 31.34, 77.65),
     --     vector4(-459.0, 6005.57, 31.34, 79.57),
     --     vector4(-454.91, 6001.92, 31.34, 92.82),
     --     vector4(-451.97, 5998.32, 31.34, 79.72),
     --     vector4(-448.26, 5994.54, 31.34, 84.97),
     -- },
        debug = false
    },


    ['pdgarage'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            vector2(423.15768432618, -1000.2858886718),
            vector2(423.15740966796, -973.041015625),
            vector2(459.71978759766, -973.04022216796),
            vector2(461.55606079102, -998.62860107422),
            },
            ['minZ'] = 24.0,  -- min height of the parking zone
            ['maxZ'] = 27.0,  -- max height of the parking zone
        },
        label = 'MRPD Garage',
        type = 'job',
        job = 'police',
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',
      -- ["ParkingSpots"] = {
      --     vector4(445.67, -997.0, 24.81, 269.98),
      --     vector4(445.83, -994.31, 25.21, 267.42),
      --     vector4(445.53, -991.53, 25.21, 269.55),
      --     vector4(445.51, -988.84, 25.21, 269.43),
      --     vector4(445.55, -986.12, 25.21, 270.71),
      --     vector4(437.35, -986.1, 25.21, 89.31),
      --     vector4(437.27, -988.86, 25.21, 90.05),
      --     vector4(437.32, -991.57, 25.21, 90.47),
      --     vector4(437.3, -994.26, 25.21, 90.38),
      --     vector4(437.31, -996.97, 25.21, 90.1),
      --     vector4(425.76, -997.07, 25.21, 270.57),
      --     vector4(425.72, -994.41, 25.21, 269.31),
      --     vector4(425.72, -991.68, 25.21, 269.53),
      --     vector4(425.69, -989.03, 25.21, 270.22),
      --     vector4(425.69, -984.26, 25.21, 269.65),
      --     vector4(425.67, -981.55, 25.21, 269.33),
      --     vector4(425.68, -978.88, 25.21, 269.76),
      --     vector4(425.68, -976.24, 25.21, 270.49),
      --     vector4(442.0, -981.58, 25.21, 90.19),
      -- },
        debug = false
    },

    ['shoreheli'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            vector2(-725.86614990234, -1432.5064697266),
            vector2(-738.12713623047, -1446.1788330078),
            vector2(-724.88360595703, -1456.1593017578),
            vector2(-712.61077880859, -1443.0250244141)
            },
            ['minZ'] = 3.0,  -- min height of the parking zone
            ['maxZ'] = 8.0,  -- max height of the parking zone
        },
        label = 'Helikopter Garajı',
        type = 'public',
        vehicleCategories = {'helis'},
        drawText = 'Helikopter Garajı',
        showBlip = true, 
        blipName = 'Helipad',
        blipNumber = 64,
        blipColor = 50, 
        blipcoords = vector3(-725.49, -1444.92, 5.66),
        ['ParkingSpots'] = {
            vector4(-725.49, -1444.92, 5.66, 322.93),
        },
        ParkingDistance = 100.0,
        debug = false
    },

    ['borfxheli'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                vector2(-1584.1981201172, 92.093322753906),
                vector2(-1573.7023925781, 84.169242858887),
                vector2(-1565.08984375, 93.503555297852),
                vector2(-1574.6967773438, 102.68989562988)
            },
            ['minZ'] = 56.0,  -- min height of the parking zone
            ['maxZ'] = 62.0,  -- max height of the parking zone
        },
        label = 'Helikopter Garajı',
        type = 'public',
        vehicleCategories = {'helis'},
        drawText = 'Helikopter Garajı',
        showBlip = false, 
        blipName = 'Helipad',
        blipNumber = 64,
        blipColor = 50, 
        blipcoords = vector3(1769.62, 3240.14, 42.01),
        ['ParkingSpots'] = {
            vector4(-1574.5, 92.62, 58.64, 318.21),
        },
        ParkingDistance = 100.0,
        debug = false
    },
    -- ['airdepot'] = {
    --     ['Zone'] = {
    --         ['Shape'] = { --polygon that surrounds the parking area
    --             vector2(-1235.3253173828, -3378.4008789062),
    --             vector2(-1284.2642822266, -3350.1474609375),
    --             vector2(-1284.5589599609, -3350.7241210938),
    --             vector2(-1289.5042724609, -3348.0512695312),
    --             vector2(-1308.7587890625, -3382.4091796875),
    --             vector2(-1307.0877685547, -3383.8776855469),
    --             vector2(-1307.6185302734, -3385.4577636719),
    --             vector2(-1306.0087890625, -3386.4213867188),
    --             vector2(-1308.2755126953, -3391.1662597656),
    --             vector2(-1306.2180175781, -3392.1394042969),
    --             vector2(-1264.1188964844, -3420.0451660156),
    --             vector2(-1258.6077880859, -3412.1069335938),
    --             vector2(-1258.1317138672, -3412.4846191406),
    --             vector2(-1237.5152587891, -3387.8581542969),
    --             vector2(-1236.4268798828, -3387.1162109375),
    --             vector2(-1233.0942382812, -3380.8115234375),
    --             vector2(-1233.4357910156, -3380.13671875),
    --             vector2(-1235.1755371094, -3379.1962890625)
    --         },
    --         ['minZ'] = 12.00,  -- min height of the parking zone
    --         ['maxZ'] = 20.0,  -- max height of the parking zone
    --     },
    --     label = 'Air Depot',
    --     type = 'depot',
    --     vehicleCategories = {'helicopter', 'plane'},
    --     drawText = 'AIR DEPOT',
    --     showBlip = true, 
    --     blipName = 'Air Depot',
    --     blipNumber = 569,
    --     blipColor = 33, 
    --     blipcoords = vector3(-1274.34, -3385.97, 13.94),
    --     ParkingDistance = 100.0,
    --     debug = false,
    --     ['ParkingSpots'] = {
    --         vector4(-1286.09, -3363.24, 14.54, 275.59),
    --         vector4(-1292.65, -3383.11, 14.54, 280.17),
    --         vector4(-1252.97, -3385.7, 14.54, 11.75),
    --         vector4(-1268.63, -3402.56, 14.54, 14.72),
    --         vector4(-1280.83, -3395.7, 14.54, 330.47),

    --     },
    -- },
    -- ['boathouse1'] = {
    --     ['Zone'] = {
    --         ['Shape'] = { 
    --             vector2(-778.9291381836, -1513.3040771484),
    --             vector2(-803.83276367188, -1521.1665039062),
    --             vector2(-816.67852783204, -1493.2373046875),
    --             vector2(-791.34436035156, -1481.7546386718)
    --         },
    --         ['minZ'] = 0.00,
    --         ['maxZ'] = 5.00
    --     },
    --     label = 'Boat House',
    --     type = 'public',
    --     vehicleCategories = {'boat'},
    --     drawText = 'BOAT HOUSE',
    --     showBlip = true, 
    --     blipName = 'Boat House',
    --     blipNumber = 427,
    --     blipColor = 15,
    --     blipcoords = vector3(-784.84, -1498.33, 0.2),
    --     ParkingDistance = 20.0,
    --     SpawnDistance = 10.0,
    --     debug = false,
    --     ['ParkingSpots'] = {
    --         vector4(-798.39, -1499.15, 0.37, 109.87),
    --         vector4(-797.47, -1506.73, 0.3, 114.49),
    --     },
    --     ExitWarpLocations = {
    --         vector3(-807.15, -1496.86, 1.6),
    --         vector3(-800.17, -1494.87, 1.6),
    --         vector3(-792.92, -1492.18, 1.6),
    --         vector3(-787.58, -1508.59, 1.6),
    --         vector3(-794.89, -1511.16, 1.6),
    --         vector3(-800.21, -1513.05, 1.6),
    --     },
    -- },
    -- ['intairport'] = {
    --     ['Zone'] = {
    --         ['Shape'] = { --polygon that surrounds the parking area
    --             vector2(-992.59680175781, -2949.84375),
    --             vector2(-1030.8975830078, -3016.2927246094),
    --             vector2(-1030.3382568359, -3016.5925292969),
    --             vector2(-1029.6291503906, -3017.0434570312),
    --             vector2(-1028.7434082031, -3018.0705566406),
    --             vector2(-1022.2585449219, -3021.5798339844),
    --             vector2(-1021.3436279297, -3020.5522460938),
    --             vector2(-1016.1632080078, -3023.6635742188),
    --             vector2(-1016.3262329102, -3024.7385253906),
    --             vector2(-966.09301757812, -3052.3435058594),
    --             vector2(-965.42352294922, -3051.1135253906),
    --             vector2(-961.01477050781, -3052.7600097656),
    --             vector2(-923.76300048828, -2978.2124023438)
    --         },
    --         ['minZ'] = 12.00,  -- min height of the parking zone
    --         ['maxZ'] = 20.0,  -- max height of the parking zone
    --     },
    --     label = 'Airport Hangar', 
    --     type = 'public',
    --     vehicleCategories = {'helicopter', 'plane'},
    --     drawText = 'Airport Hangar',
    --     showBlip = true, 
    --     blipName = 'Hangar',
    --     blipNumber = 359,
    --     blipColor = 50, 
    --     blipcoords = vector3(-930.23, -2995.38, 19.85),
    --     ParkingDistance = 100.0,
    --     SpawnDistance = 100.0,
    --     debug = false,
    --     ['ParkingSpots'] = {
    --         vector4(-985.04, -2965.05, 14.55, 128.92),
    --         vector4(-964.84, -2974.78, 14.55, 125.92),
    --         vector4(-945.49, -2985.63, 14.55, 117.77),
    --         vector4(-967.17, -3034.71, 14.55, 14.16),
    --         vector4(-990.13, -3022.86, 14.55, 15.42),
    --         vector4(-1010.91, -3012.56, 14.55, 2.31),
    --         vector4(-968.09, -3004.59, 14.55, 62.25)

    --     },
    -- },


    ------------- Gang Garages --------------

    ['vagos'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
                    vector2(302.94, -2024.15),
                    vector2(306.41, -2019.57),
                    vector2(334.89, -2043.13),
                    vector2(331.32, -2047.73),
            },
            ['minZ'] = 19.10,  -- min height of the parking zone
            ['maxZ'] = 21.97,  -- max height of the parking zone
        },
        label = "Vagos",
        type = 'gang',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',              --car, air, sea
        gang = "vagos",
        debug = false,
     --  ['ParkingSpots'] = {
     --      vector4(331.98, -2044.65, 20.81, 320.47),
     --      vector4(329.14, -2042.56, 20.79, 322.21),
     --      vector4(327.26, -2040.42, 20.77, 318.28),
     --      vector4(324.97, -2038.67, 20.7, 319.84),
     --      vector4(322.59, -2036.45, 20.65, 323.37),
     --      vector4(320.57, -2034.62, 20.64, 339.95),
     --      vector4(316.84, -2031.62, 20.59, 324.64),
     --      vector4(313.58, -2029.01, 20.54, 317.86),
     --      vector4(311.07, -2027.08, 20.5, 323.2),
     --      vector4(308.62, -2025.12, 20.41, 322.780),
     --      vector4(306.63, -2023.09, 20.34, 323.13),
     --  }
    },
    ['families'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            vector2(-216.43, -1491.71),
            vector2(-219.74, -1495.67),
            vector2(-243.5, -1475.66),
            vector2(-240.22, -1472.37),
            },
            ['minZ'] = 30.10,  -- min height of the parking zone
            ['maxZ'] = 32.57,  -- max height of the parking zone
        },
        label = "Families",
        type = 'gang',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',              --car, air, sea
        gang = "families",
        debug = false,
      --['ParkingSpots'] = {
      --    vector4(-240.2, -1475.51, 31.46, 319.14),
      --    vector4(-237.51, -1477.53, 31.42, 321.71),
      --    vector4(-234.78, -1479.61, 31.39, 319.73),
      --    vector4(-232.37, -1481.52, 31.37, 320.43),
      --    vector4(-229.68, -1483.37, 31.35, 321.49),
      --    vector4(-227.1, -1485.85, 31.32, 312.46),
      --    vector4(-224.56, -1487.76, 31.3, 322.49),
      --    vector4(-222.36, -1489.98, 31.29, 322.0),
      --    vector4(-219.49, -1492.02, 31.26, 319.25),
      --}
    },
    ['ballas'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            vector2(92.71, -1942.28),
            vector2(96.27, -1938.54),
            vector2(104.36, -1928.19),
            vector2(115.59, -1934.39),
            vector2(112.97, -1943.27),
            vector2(109.12, -1951.51),
            vector2(98.18, -1950.51),
            },
            ['minZ'] = 19.10,  -- min height of the parking zone
            ['maxZ'] = 22.57,  -- max height of the parking zone
        },
        label = "Families",
        type = 'gang',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',              --car, air, sea
        gang = "ballas",
        debug = false,
    --  ['ParkingSpots'] = {
    --      vector4(108.45, -1948.13, 20.76, 55.13),
    --      vector4(109.65, -1945.96, 20.79, 21.93),
    --      vector4(110.9, -1943.6, 20.8, 57.66),
    --      vector4(112.47, -1940.34, 20.78, 34.05),
    --      vector4(112.91, -1937.16, 20.76, 23.46),
    --      vector4(108.92, -1937.06, 20.8, 83.4),
    --      vector4(105.98, -1938.59, 20.8, 137.09),
    --      vector4(104.19, -1941.5, 20.8, 152.82),
    --      vector4(101.86, -1946.86, 20.79, 156.91),
    --  }
    },
    ['crips'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            vector2(435.24, -1509.82),
            vector2(439.98, -1513.69),
            vector2(451.76, -1523.23),
            vector2(447.42, -1526.5),
            vector2(439.72, -1520.57),
            vector2(430.79, -1512.27),
            },
            ['minZ'] = 28.20,  -- min height of the parking zone
            ['maxZ'] = 30.07,  -- max height of the parking zone
        },
        label = "Families",
        type = 'gang',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',              --car, air, sea
        gang = "crips",
        debug = false,
    -- ['ParkingSpots'] = {
    --     vector4(446.3, -1523.81, 29.27, 136.91),
    --     vector4(443.83, -1521.9, 29.27, 138.52),
    --     vector4(441.59, -1520.08, 29.27, 144.72),
    --     vector4(439.18, -1517.89, 29.28, 141.15),
    --     vector4(436.84, -1515.88, 29.28, 139.01),
    --     vector4(434.66, -1513.58, 29.29, 148.44),
    -- }
    },
    ['bloods'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            vector2(511.06, -1767.13),
            vector2(520.88, -1768.11),
            vector2(533.1, -1769.63),
            vector2(532.22, -1764.69),
            vector2(522.86, -1763.96),
            vector2(511.21, -1762.66),

            },
            ['minZ'] = 27.50,  -- min height of the parking zone
            ['maxZ'] = 30.07,  -- max height of the parking zone
        },
        label = "Families",
        type = 'gang',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',              --car, air, sea
        gang = "bloods",
        debug = false,
     --  ['ParkingSpots'] = {
     --      vector4(512.39, -1764.51, 28.6, 9.46),
     --      vector4(515.17, -1764.2, 28.64, 341.29),
     --      vector4(518.81, -1764.92, 28.7, 16.78),
     --      vector4(522.45, -1765.28, 28.7, 47.83),
     --      vector4(526.34, -1765.74, 28.69, 0.02),
     --      vector4(529.79, -1766.04, 28.69, 10.05),
     --  }
    },

    ['lostmc'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            vector2(964.04, -122.37),
            vector2(969.91, -125.73),
            vector2(977.92, -130.34),
            vector2(981.85, -122.68),
            vector2(974.81, -114.61),

            },
            ['minZ'] = 73.50,  -- min height of the parking zone
            ['maxZ'] = 76.07,  -- max height of the parking zone
        },
        label = "LostMC",
        type = 'gang',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'emergency', 'service', 'other'},
        drawText = '[F3] Garaj',              --car, air, sea
        gang = "lostmc",
        debug = false,
     --  ['ParkingSpots'] = {
     --      vector4(971.48, -124.07, 74.35, 275.77),
     --      vector4(974.47, -124.75, 74.24, 264.7),
     --      vector4(976.7, -122.26, 74.12, 340.94),
     --      vector4(975.94, -116.99, 74.34, 47.12),
     --      vector4(969.77, -121.32, 74.35, 133.61),
     --      vector4(973.56, -121.32, 74.33, 137.14),
     --      vector4(972.95, -118.9, 74.35, 330.19)
     --  }
    },
    ['evgarajs'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            vector2(-945.52093505859, -889.80603027344),
            vector2(-935.81921386719, -906.52911376953),
            vector2(-942.12554931641, -909.8369140625),
            vector2(-951.30041503906, -893.45172119141),

            },
            ['minZ'] = 73.50,  -- min height of the parking zone
            ['maxZ'] = 76.07,  -- max height of the parking zone
        },
        label = "Ev",
        type = 'public',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle'},
        drawText = '[F3] Garaj',              --car, air, sea
        debug = false,
     -- ['ParkingSpots'] = {
     --     vector4(-944.0, -894.93, 1.44, 118.23),
     --     vector4(-945.98, -892.5, 1.44, 211.28),
     --     vector4(-948.54, -894.02, 1.44, 211.37),
     --     vector4(-940.89, -902.01, 1.44, 208.06),
     --     vector4(-943.72, -902.27, 1.44, 211.52),
     --     vector4(-937.29, -907.45, 1.44, 210.01),
     --     vector4(-941.23, -906.98, 1.44, 210.67)
     -- }
    },

}

HouseGarages = {} -- DO NOT TOUCH!
