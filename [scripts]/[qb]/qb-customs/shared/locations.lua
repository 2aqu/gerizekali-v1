--[[
    ['Innocence'] = {
    settings = {
        label = 'Bennys Motorworks', -- Text label for anything that wants it
        welcomeLabel = "Welcome to Benny's Motorworks!", -- Welcome label in the UI
        enabled = true, -- If the location can be used at all
    },
    blip = {
        label = 'Bennys Motorworks',
        coords = vector3(-205.6992, -1312.7377, 31.1588),
        sprite = 72,
        scale = 0.65,
        color = 0,
        display = 4,
        enabled = true,
    },
    categories = { -- Only include the categories you want. A category not listed defaults to FALSE.
        mods = true, -- Performance Mods
        repair = true,
        armor = true,
        respray = true,
        liveries = true,
        wheels = true,
        tint = true,
        plate = true,
        extras = true,
        neons = true,
        xenons = true,
        horn = true,
        turbo = true,
        cosmetics = true, -- Cosmetic Mods
    },
    drawtextui = {
        text = "Bennys Motorworks",
    },
    restrictions = { -- A person must pass ALL the restriction checks. Remove an item below to automatically pass that check.
        job = "any", -- Allowed job. Can be an array of strings for multiple jobs. Any for all jobs
        gang = "any", -- Allowed gang. Can be an array of strings for multiple gangs. Any for all gangs
        allowedClasses = {}, -- Array of allowed classes. Empty will allow any but denied classes.
        deniedClasses = {}, -- Array of denied classes.
    },
    zones = {
        { coords = vector3(-212.55, -1320.56, 31.0), length = 6.0, width = 4.0, heading = 270.0, minZ = 29.88, maxZ = 33.48 },
        { coords = vector3(-222.47, -1329.73, 31.0), length = 6.0, width = 4.4, heading = 270.0, minZ = 29.88, maxZ = 33.48 },
    }
},

Vehicle Classes:
0: Compacts     1: Sedans       2: SUVs         3: Coupes       4: Muscle       5: Sports Classics
6: Sports       7: Super        8: Motorcycles  9: Off-road     10: Industrial  11: Utility
12: Vans        13: Cycles      14: Boats       15: Helicopters 16: Planes      17: Service
18: Emergency   19: Military    20: Commercial  21: Trains
 ]]

Config = Config or {}

Config.Locations = {
    ['lostmc'] = {
        settings = {
            label = 'Mekanik',
            welcomeLabel = "Modifiye Menüsüne Hoşgeldiniz!",
            enabled = true,
        },
        blip = {
            label = 'Mekanik 1',
            coords = vector3(99.52, 3638.68, 39.47),  --99.52, 3638.68, 39.47
            sprite = 72,
            scale = 0.65,
            color = 0,
            display = 4,
            enabled = false,
        },
        categories = {
            mods = true,
            turbo = true,
            repair = true,
            respray = true,
            liveries = true,
            wheels = true,
            tint = true,
            plate = true,
            extras = true,
            neons = true,
            xenons = true,
            horn = true,
            cosmetics = true,
        },
        drawtextui = {
            text = "Mekanik"
        },
        restrictions = {
            job = "mechanicmc",
            allowedClasses = { 8 }
        },
        zones = {
            { coords = vector3(2526.87, 4120.54, 37.95), length = 6.0, width = 4.0, heading = 240.81, minZ = 36.0, maxZ = 39.0 },
            { coords = vector3(2523.04, 4113.06, 37.95), length = 6.0, width = 4.0, heading = 240.81, minZ = 36.0, maxZ = 39.0 },

        }
    },
    -- ['rod'] = {
    --     settings = {
    --         label = 'Mekanik',
    --         welcomeLabel = "Modifiye Menüsüne Hoşgeldiniz!",
    --         enabled = true,
    --     },
    --     blip = {
    --         label = 'Mekanik 1',
    --         coords = vector3(99.52, 3638.68, 39.47),--99.52, 3638.68, 39.47
    --         sprite = 72,
    --         scale = 0.65,
    --         color = 0,
    --         display = 4,
    --         enabled = false,
    --     },
    --     categories = {
    --         mods = true,
    --         turbo = true,
    --         repair = true,
    --         respray = true,
    --         liveries = true,
    --         wheels = true,
    --         tint = true,
    --         plate = true,
    --         extras = true,
    --         neons = true,
    --         xenons = true,
    --         horn = true,
    --         cosmetics = true,
    --     },
    --     drawtextui = {
    --         text = "Mekanik"
    --     },
    --     restrictions = {
    --         job = "rod",
    --         allowedClasses = { 8 }
    --     },
    --     zones = {
    --         { coords = vector3(147.37, 320.52, 111.61), length = 6.0, width = 4.0, heading = 293.26, minZ = 109.61, maxZ = 114.0 },
    --     }
    -- },
    ['lost'] = {
        settings = {
            label = 'Mekanik',
            welcomeLabel = "Modifiye Menüsüne Hoşgeldiniz!",
            enabled = true,
        },
        blip = {
            label = 'Mekanik 1',
            coords = vector3(99.52, 3638.68, 39.47),  --99.52, 3638.68, 39.47
            sprite = 72,
            scale = 0.65,
            color = 0,
            display = 4,
            enabled = false,
        },
        categories = {
            mods = true,
            turbo = true,
            repair = true,
            respray = true,
            liveries = true,
            wheels = true,
            tint = true,
            plate = true,
            extras = true,
            neons = true,
            xenons = true,
            horn = true,
            cosmetics = true,
        },
        drawtextui = {
            text = "Mekanik"
        },
        restrictions = {
            job = "lost",
            allowedClasses = { 8 }
        },
        zones = {
            { coords = vector3(964.94, -108.88, 73.83), length = 6.0, width = 4.0, heading = 41.84, minZ = 71.61, maxZ = 75.0 },
        }
    },
    ['mechanic1'] = {
        settings = {
            label = 'Mekanik',
            welcomeLabel = "Modifiye Menüsüne Hoşgeldiniz!",
            enabled = true,
        },
        blip = {
            label = '832 Custom',
            coords = vector3(-335.33, -127.25, 39.01),
            sprite = 446,
            scale = 0.65,
            color = 0,
            display = 4,
            enabled = false,
        },
        categories = {
            mods = true,
            turbo = true,
            repair = true,
            respray = true,
            liveries = true,
            wheels = true,
            tint = true,
            plate = true,
            extras = true,
            neons = true,
            xenons = true,
            horn = true,
            cosmetics = true,
        },
        drawtextui = {
            text = "Mekanik"
        },
        restrictions = {
            job = "mechanic1",
            deniedClasses = { 18 }
        },
        zones = {
            { coords = vector3(-335.97, -126.71, 38.69), length = 6.0, width = 4.0, heading = 160.0,  minZ = 37.0, maxZ = 41.0 },
            { coords = vector3(-324.02, -132.02, 38.35), length = 6.0, width = 4.0, heading = 70.0,   minZ = 37.0, maxZ = 41.0 },
            { coords = vector3(-321.62, -125.91, 38.38), length = 6.0, width = 4.0, heading = 70.0,   minZ = 37.0, maxZ = 41.0 },
            { coords = vector3(-319.75, -119.61, 38.4),  length = 6.0, width = 4.0, heading = 342.36, minZ = 37.0, maxZ = 41.0 },
            { coords = vector3(-339.6, -160.3, 38.37),   length = 6.0, width = 4.0, heading = 342.36, minZ = 37.0, maxZ = 41.0 },
            { coords = vector3(-348.05, -157.81, 38.37), length = 6.0, width = 4.0, heading = 157.23, minZ = 37.0, maxZ = 41.0 },
            { coords = vector3(-327.59, -137.88, 38.37), length = 6.0, width = 4.0, heading = 157.23, minZ = 37.0, maxZ = 41.0 },
            { coords = vector3(-333.23, -133.33, 39.01), length = 6.0, width = 4.0, heading = 149.79, minZ = 37.0, maxZ = 41.0 },
            { coords = vector3(-321.48, -156.08, 38.7),  length = 6.0, width = 4.0, heading = 249.27, minZ = 37.0, maxZ = 41.0 },
            { coords = vector3(-316.96, -145.41, 38.69), length = 6.0, width = 4.0, heading = 249.27, minZ = 37.0, maxZ = 41.0 },
            { coords = vector3(-313.36, -134.72, 38.69), length = 6.0, width = 4.0, heading = 249.27, minZ = 37.0, maxZ = 41.0 },
            { coords = vector3(-336.73, -105.61, 38.39), length = 6.0, width = 4.0, heading = 159.79, minZ = 37.0, maxZ = 41.0 },
            { coords = vector3(-345.1, -102.23, 38.39),  length = 6.0, width = 4.0, heading = 159.79, minZ = 37.0, maxZ = 41.0 },
            { coords = vector3(-353.17, -99.14, 38.39),  length = 6.0, width = 4.0, heading = 159.79, minZ = 37.0, maxZ = 41.0 },
        }
    },
    ['mechanic2'] = {
        settings = {
            label = 'Mekanik',
            welcomeLabel = "Modifiye Menüsüne Hoşgeldiniz!",
            enabled = true,
        },
        blip = {
            label = 'Mekanik',
            coords = vector3(544.72, -182.95, 54.49),
            sprite = 446,
            scale = 0.65,
            color = 0,
            display = 4,
            enabled = false,
        },
        categories = {
            mods = true,
            turbo = true,
            repair = true,
            respray = true,
            liveries = true,
            wheels = true,
            tint = true,
            plate = true,
            extras = true,
            neons = true,
            xenons = true,
            horn = true,
            cosmetics = true,
        },
        drawtextui = {
            text = "Mekanik"
        },
        restrictions = {
            job = "mechanic2",
            deniedClasses = { 18 }
        },
        zones = {
            { coords = vector3(533.99, -179.02, 53.79), length = 6.0, width = 4.0, heading = 87.0,  minZ = 52.0, maxZ = 56.0 },
            { coords = vector3(545.61, -190.05, 53.89), length = 6.0, width = 4.0, heading = 87.0,  minZ = 52.0, maxZ = 56.0 },
            { coords = vector3(544.21, -179.54, 53.89), length = 6.0, width = 4.0, heading = 87.0,  minZ = 52.0, maxZ = 56.0 },
            { coords = vector3(548.44, -199.82, 53.89), length = 6.0, width = 4.0, heading = 180.0, minZ = 52.0, maxZ = 56.0 },
        }
    },
    ['mechanic3'] = {
        settings = {
            label = 'Mekanik',
            welcomeLabel = "Modifiye Menüsüne Hoşgeldiniz!",
            enabled = true,
        },
        blip = {
            label = 'Insectre Mekanik',
            coords = vector3(-34.95, -1053.88, 28.4),
            sprite = 446,
            scale = 0.65,
            color = 0,
            display = 4,
            enabled = false,
        },
        categories = {
            mods = true,
            turbo = true,
            repair = true,
            respray = true,
            liveries = true,
            wheels = true,
            tint = true,
            plate = true,
            extras = true,
            neons = true,
            xenons = true,
            horn = true,
            cosmetics = true,
        },
        drawtextui = {
            text = "Mekanik"
        },
        restrictions = {
            job = "mechanic3",
            deniedClasses = { 18 }
        },
        zones = {
            { coords = vector3(-34.23, -1049.23, 27.79), length = 6.0, width = 4.0, heading = 68.0,  minZ = 27.0, maxZ = 31.0 },
            { coords = vector3(-31.15, -1056.95, 27.79), length = 6.0, width = 4.0, heading = 68.0,  minZ = 27.0, maxZ = 31.0 },
            { coords = vector3(-32.84, -1066.08, 27.79), length = 6.0, width = 4.0, heading = 338.0, minZ = 27.0, maxZ = 31.0 },
        }
    },
    ['mechanic4'] = {
        settings = {
            label = 'Mekanik',
            welcomeLabel = "Modifiye Menüsüne Hoşgeldiniz!",
            enabled = true,
        },
        blip = {
            label = 'BS Mekanik',
            coords = vector3(-211.65, -1323.27, 30.89),
            sprite = 446,
            scale = 0.65,
            color = 0,
            display = 4,
            enabled = false,
        },
        categories = {
            mods = true,
            turbo = true,
            repair = true,
            respray = true,
            liveries = true,
            wheels = true,
            tint = true,
            plate = true,
            extras = true,
            neons = true,
            xenons = true,
            horn = true,
            cosmetics = true,
        },
        drawtextui = {
            text = "Mekanik"
        },
        restrictions = {
            job = "mechanic4",
            deniedClasses = { 18 }
        },
        zones = {
            { coords = vector3(-211.59, -1325.08, 30.89), length = 6.0, width = 4.0, heading = 177.2, minZ = 30.0, maxZ = 34.0 },
            { coords = vector3(-224.51, -1326.42, 30.89), length = 6.0, width = 4.0, heading = 177.2, minZ = 30.0, maxZ = 34.0 },
            { coords = vector3(-236.84, -1337.31, 30.9),  length = 6.0, width = 4.0, heading = 177.2, minZ = 30.0, maxZ = 34.0 },
            { coords = vector3(-233.75, -1316.61, 30.9),  length = 6.0, width = 4.0, heading = 0.9,   minZ = 30.0, maxZ = 34.0 },

        }
    },
    ['mechanic5'] = {
        settings = {
            label = 'Mekanik',
            welcomeLabel = "Modifiye Menüsüne Hoşgeldiniz!",
            enabled = true,
        },
        blip = {
            label = 'Saints Garage',
            coords = vector3(-1418.96, -446.66, 35.91),
            sprite = 446,
            scale = 0.65,
            color = 0,
            display = 4,
            enabled = false,
        },
        categories = {
            mods = true,
            turbo = true,
            repair = true,
            respray = true,
            liveries = true,
            wheels = true,
            tint = true,
            plate = true,
            extras = true,
            neons = true,
            xenons = true,
            horn = true,
            cosmetics = true,
        },
        drawtextui = {
            text = "Mekanik"
        },
        restrictions = {
            job = "mechanic13",
            deniedClasses = { 18 }
        },
        zones = {
            { coords = vector3(-1423.59, -450.34, 35.3), length = 6.0, width = 4.0, heading = 30.0, minZ = 35.0, maxZ = 39.0 },
            { coords = vector3(-1417.24, -446.29, 35.3), length = 6.0, width = 4.0, heading = 30.0, minZ = 35.0, maxZ = 39.0 },
            { coords = vector3(-1411.25, -442.62, 35.5), length = 6.0, width = 4.0, heading = 30.0, minZ = 35.0, maxZ = 39.0 },
        }
    },
    ['mechanic6'] = {
        settings = {
            label = 'Mekanik',
            welcomeLabel = "Modifiye Menüsüne Hoşgeldiniz!",
            enabled = true,
        },
        blip = {
            label = 'Mekanik',
            coords = vector3(480.58, -1317.12, 29.2),
            sprite = 446,
            scale = 0.65,
            color = 0,
            display = 4,
            enabled = false,
        },
        categories = {
            mods = true,
            turbo = true,
            repair = true,
            respray = true,
            liveries = true,
            wheels = true,
            tint = true,
            plate = true,
            extras = true,
            neons = true,
            xenons = true,
            horn = true,
            cosmetics = true,
        },
        drawtextui = {
            text = "Mekanik"
        },
        restrictions = {
            job = "mechanic6",
            deniedClasses = { 18 }
        },
        zones = {
            { coords = vector3(478.54, -1308.6, 28.63),  length = 6.0, width = 4.0, heading = 208.0,  minZ = 28.0, maxZ = 32.0 },
            { coords = vector3(481.56, -1317.33, 28.6),  length = 6.0, width = 4.0, heading = 300.0,  minZ = 28.0, maxZ = 32.0 },
            { coords = vector3(490.08, -1312.41, 28.65), length = 6.0, width = 4.0, heading = 300.0,  minZ = 28.0, maxZ = 32.0 },
            { coords = vector3(502.44, -1343.77, 28.69), length = 6.0, width = 4.0, heading = 180.86, minZ = 28.0, maxZ = 32.0 },
            { coords = vector3(481.48, -1322.6, 28.53),  length = 6.0, width = 4.0, heading = 116.09, minZ = 28.0, maxZ = 32.0 },
        }
    },
    ['mechanic7'] = {
        settings = {
            label = 'Mekanik',
            welcomeLabel = "Modifiye Menüsüne Hoşgeldiniz!",
            enabled = true,
        },
        blip = {
            label = 'Mekanik 7',
            coords = vector3(108.55, 6625.53, 31.79),
            sprite = 446,
            scale = 0.65,
            color = 0,
            display = 4,
            enabled = false,
        },
        categories = {
            mods = true,
            turbo = true,
            repair = true,
            respray = true,
            liveries = true,
            wheels = true,
            tint = true,
            plate = true,
            extras = true,
            neons = true,
            xenons = true,
            horn = true,
            cosmetics = true,
        },
        drawtextui = {
            text = "Mekanik"
        },
        restrictions = {
            job = "mechanic7",
            deniedClasses = { 18 }
        },
        zones = {
            { coords = vector3(110.93, 6626.46, 31.18), length = 6.0, width = 4.0, heading = 222.0, minZ = 31.0, maxZ = 35.0 },
            { coords = vector3(104.74, 6621.82, 31.18), length = 6.0, width = 4.0, heading = 222.0, minZ = 31.0, maxZ = 35.0 },
        }
    },
    ['mechanic8'] = {
        settings = {
            label = 'Mekanik',
            welcomeLabel = "Modifiye Menüsüne Hoşgeldiniz!",
            enabled = true,
        },
        blip = {
            label = 'Mekanik 8',
            coords = vector3(1178.12, 2642.74, 37.79),
            sprite = 446,
            scale = 0.65,
            color = 0,
            display = 4,
            enabled = false,
        },
        categories = {
            mods = true,
            turbo = true,
            repair = true,
            respray = true,
            liveries = true,
            wheels = true,
            tint = true,
            plate = true,
            extras = true,
            neons = true,
            xenons = true,
            horn = true,
            cosmetics = true,
        },
        drawtextui = {
            text = "Mekanik"
        },
        restrictions = {
            job = "mechanic8",
            deniedClasses = { 18 }
        },
        zones = {
            { coords = vector3(1174.51, 2641.53, 37.15), length = 6.0, width = 4.0, heading = 360.0, minZ = 37.0, maxZ = 41.0 },
            { coords = vector3(1182.61, 2639.69, 37.15), length = 6.0, width = 4.0, heading = 360.0, minZ = 37.0, maxZ = 41.0 },
        }
    },
    ['mechanic9'] = {
        settings = {
            label = 'Mekanik',
            welcomeLabel = "Modifiye Menüsüne Hoşgeldiniz!",
            enabled = true,
        },
        blip = {
            label = 'Mekanik',
            coords = vector3(732.64, -1080.43, 22.17),
            sprite = 446,
            scale = 0.65,
            color = 0,
            display = 4,
            enabled = false,
        },
        categories = {
            mods = true,
            turbo = true,
            repair = true,
            respray = true,
            liveries = true,
            wheels = true,
            tint = true,
            plate = true,
            extras = true,
            neons = true,
            xenons = true,
            horn = true,
            cosmetics = true,
        },
        drawtextui = {
            text = "Mekanik"
        },
        restrictions = {
            job = "mechanic9",
            deniedClasses = { 18 }
        },
        zones = {
            { coords = vector3(732.25, -1088.87, 21.56), length = 6.0, width = 4.0, heading = 88.0,  minZ = 21.0, maxZ = 26.0 },
            { coords = vector3(732.92, -1075.63, 21.56), length = 6.0, width = 4.0, heading = 178.0, minZ = 21.0, maxZ = 26.0 },
        }
    },
    ['mechanic10'] = {
        settings = {
            label = 'Mekanik',
            welcomeLabel = "Modifiye Menüsüne Hoşgeldiniz!",
            enabled = true,
        },
        blip = {
            label = 'Mekanik 10',
            coords = vector3(135.97, -3029.83, 6.43),
            sprite = 446,
            scale = 0.65,
            color = 0,
            display = 4,
            enabled = false,
        },
        categories = {
            mods = true,
            turbo = true,
            repair = true,
            respray = true,
            liveries = true,
            wheels = true,
            tint = true,
            plate = true,
            extras = true,
            neons = true,
            xenons = true,
            horn = true,
            cosmetics = true,
        },
        drawtextui = {
            text = "Mekanik"
        },
        restrictions = {
            job = "mechanic10",
            deniedClasses = { 18 }
        },
        zones = {
            { coords = vector3(135.95, -3030.16, 6.44), length = 6.0, width = 4.0, heading = 180.0, minZ = 6.0, maxZ = 10.0 },
            { coords = vector3(144.9, -3031.07, 6.44),  length = 6.0, width = 4.0, heading = 180.0, minZ = 6.0, maxZ = 10.0 },
        }
    },
    ['gmg'] = {
        settings = {
            label = 'Mekanik',
            welcomeLabel = "Modifiye Menüsüne Hoşgeldiniz!",
            enabled = true,
        },
        blip = {
            label = 'GmG Garage',
            coords = vector3(928.24, -968.47, 39.5),
            sprite = 446,
            scale = 0.65,
            color = 0,
            display = 4,
            enabled = false,
        },
        categories = {
            mods = true,
            turbo = true,
            repair = true,
            respray = true,
            liveries = true,
            wheels = true,
            tint = true,
            plate = true,
            extras = true,
            neons = true,
            xenons = true,
            horn = true,
            cosmetics = true,
        },
        drawtextui = {
            text = "Mekanik"
        },
        restrictions = {
            job = "gmg",
            deniedClasses = { 18 }
        },
        zones = {
            { coords = vector3(938.58, -970.59, 38.94), length = 6.0, width = 4.0, heading = 90.0,   minZ = 38.49, maxZ = 42.0 },
            { coords = vector3(920.18, -979.41, 38.89), length = 6.0, width = 4.0, heading = 271.0,  minZ = 38.49, maxZ = 42.0 },
            { coords = vector3(920.18, -963.88, 38.89), length = 6.0, width = 4.0, heading = 271.0,  minZ = 38.49, maxZ = 42.0 },
            { coords = vector3(952.33, -945.82, 38.93), length = 6.0, width = 4.0, heading = 94.62,  minZ = 38.49, maxZ = 42.0 },
            { coords = vector3(912.54, -953.19, 38.93), length = 6.0, width = 4.0, heading = 182.87, minZ = 38.49, maxZ = 42.0 },

        }
    },
    ['mechanic12'] = {
        settings = {
            label = 'Mekanik',
            welcomeLabel = "Modifiye Menüsüne Hoşgeldiniz!",
            enabled = true,
        },
        blip = {
            label = 'Mekanik',
            coords = vector3(73.56, 6522.12, 31.25),
            sprite = 446,
            scale = 0.65,
            color = 0,
            display = 4,
            enabled = false,
        },
        categories = {
            mods = true,
            turbo = true,
            repair = true,
            respray = true,
            liveries = true,
            wheels = true,
            tint = true,
            plate = true,
            extras = true,
            neons = true,
            xenons = true,
            horn = true,
            cosmetics = true,
        },
        drawtextui = {
            text = "Mekanik"
        },
        restrictions = {
            job = "mechanic12",
            deniedClasses = { 18 }
        },
        zones = {
            { coords = vector3(-1618.3, -824.02, 9.68),  length = 6.0, width = 4.0, heading = 147.81, minZ = 7.49, maxZ = 11.0 },
            { coords = vector3(-1610.25, -833.09, 9.68), length = 6.0, width = 4.0, heading = 139.78, minZ = 7.49, maxZ = 11.0 },
        }
    },

    ['mechanic14'] = {
        settings = {
            label = 'Mekanik',
            welcomeLabel = "Modifiye Menüsüne Hoşgeldiniz!",
            enabled = true,
        },
        blip = {
            label = 'Mekanik',
            coords = vector3(73.56, 6522.12, 31.25),
            sprite = 446,
            scale = 0.65,
            color = 0,
            display = 4,
            enabled = false,
        },
        categories = {
            mods = true,
            turbo = true,
            repair = true,
            respray = true,
            liveries = true,
            wheels = true,
            tint = true,
            plate = true,
            extras = true,
            neons = true,
            xenons = true,
            horn = true,
            cosmetics = true,
        },
        drawtextui = {
            text = "Mekanik"
        },
        restrictions = {
            job = "mechanic14",
            deniedClasses = { 18 }
        },
        zones = {
            { coords = vector3(1141.14, -775.92, 57.19), length = 6.0, width = 4.0, heading = 0.75,   minZ = 56.49, maxZ = 58.0 },
            { coords = vector3(1150.46, -774.89, 57.19), length = 6.0, width = 4.0, heading = 357.07, minZ = 56.49, maxZ = 58.0 },
        }
    },

    ['mechanic15'] = {
        settings = {
            label = 'Cortes Underground',
            welcomeLabel = "Modifiye Menüsüne Hoşgeldiniz!",
            enabled = true,
        },
        blip = {
            label = 'Cortes Customs',
            coords = vector3(-590.16, -1765.21, 23.18),
            sprite = 446,
            scale = 0.65,
            color = 0,
            display = 4,
            enabled = false,
        },
        categories = {
            mods = true,
            turbo = true,
            repair = true,
            respray = true,
            liveries = true,
            wheels = true,
            tint = true,
            plate = true,
            extras = true,
            neons = true,
            xenons = true,
            horn = true,
            cosmetics = true,
        },
        drawtextui = {
            text = "Cortes Underground"
        },
        restrictions = {
            job = "mechanic15",
            deniedClasses = { 18 }
        },
        zones = {
            { coords = vector3(-607.64, -1764.7, 23.19), length = 6.0, width = 4.0, heading = 355.31, minZ = 20.49, maxZ = 25.0 },
            { coords = vector3(-603.35, -1757.6, 23.19), length = 6.0, width = 4.0, heading = 354.94, minZ = 20.49, maxZ = 25.0 },
            { coords = vector3(-604.01, -1743.64, 23.2), length = 6.0, width = 4.0, heading = 357.11, minZ = 20.49, maxZ = 25.0 },
            { coords = vector3(-589.51, -1747.89, 23.2), length = 6.0, width = 4.0, heading = 352.32, minZ = 20.49, maxZ = 25.0 },
        }
    },


    -- ['yellowjack'] = {
    --     settings = {
    --         label = 'Mekanik',
    --         welcomeLabel = "Modifiye Menüsüne Hoşgeldiniz!",
    --         enabled = true,
    --     },
    --     blip = {
    --         label = 'Mekanik',
    --         coords = vector3(2519.79, 4102.02, 38.58),
    --         sprite = 446,
    --         scale = 0.65,
    --         color = 0,
    --         display = 4,
    --         enabled = false,
    --     },
    --     categories = {
    --         mods = true,
    --         turbo = true,
    --         repair = true,
    --         respray = true,
    --         liveries = true,
    --         wheels = true,
    --         tint = true,
    --         plate = true,
    --         extras = true,
    --         neons = true,
    --         xenons = true,
    --         horn = true,
    --         cosmetics = true,
    --     },
    --     drawtextui = {
    --         text = "Mekanik"
    --     },
    --     restrictions = {
    --         job = "yellowjack",
    --         allowedClasses = { 8 },
    --     },
    --     zones = {
    --         { coords = vector3(1995.22, 3027.84, 47.26), length = 6.0, width = 4.0, heading = 236.2, minZ = 45.01, maxZ = 50.0 },
    --     }
    -- },

    ['police'] = {
        settings = {
            label = 'Mekanik',
            welcomeLabel = "Modifiye Menüsüne Hoşgeldiniz!",
            enabled = true,
        },
        categories = {
            mods = true,
            repair = true,
            armor = true,
            respray = true,
            liveries = true,
            wheels = true,
            tint = true,
            plate = true,
            extras = true,
            neons = true,
            xenons = true,
            horn = true,
            turbo = true,
            cosmetics = true,
        },
        drawtextui = {
            text = "PD Mekanik",
        },
        restrictions = {
            job = { 'police' },
            allowedClasses = { 18 },
        },
        zones = {
            { coords = vector3(451.02, -976.71, 25.7),   length = 9.0, width = 4.0, heading = 90.26, minZ = 24.00, maxZ = 30.5 },
            { coords = vector3(435.32, -976.09, 25.7),   length = 9.0, width = 4.0, heading = 83.26, minZ = 24.00, maxZ = 30.5 },
            { coords = vector3(-1078.07, -845.48, 4.88), length = 9.0, width = 4.0, heading = 83.26, minZ = 3.00,  maxZ = 7.5 }, --vespucci

        }
    },
    ['fbi'] = {
        settings = {
            label = 'Mekanik',
            welcomeLabel = "Modifiye Menüsüne Hoşgeldiniz!",
            enabled = true,
        },
        categories = {
            mods = true,
            repair = true,
            armor = true,
            respray = true,
            liveries = true,
            wheels = true,
            tint = true,
            plate = true,
            extras = true,
            neons = true,
            xenons = true,
            horn = true,
            turbo = true,
            cosmetics = true,
        },
        drawtextui = {
            text = "FBI Mekanik",
        },
        restrictions = {
            job = { 'fbi' },
            allowedClasses = { 18 },
        },
        zones = {
            { coords = vector3(2501.3926, -332.9951, 92.9934), length = 9.0, width = 4.0, heading = 179.28, minZ = 27.00, maxZ = 32.5 },
        }
    },
    ['state'] = {
        settings = {
            label = 'Mekanik',
            welcomeLabel = "Modifiye Menüsüne Hoşgeldiniz!",
            enabled = true,
        },
        categories = {
            mods = true,
            repair = true,
            armor = true,
            respray = true,
            liveries = true,
            wheels = true,
            tint = true,
            plate = true,
            extras = true,
            neons = true,
            xenons = true,
            horn = true,
            turbo = true,
            cosmetics = true,
        },
        drawtextui = {
            text = "State Mekanik",
        },
        restrictions = {
            job = { 'state' },
            allowedClasses = { 18 },
        },
        zones = {
            { coords = vector3(856.3509, -1393.3234, 26.1418), length = 9.0, width = 4.0, heading = 89.49, minZ = 24.5, maxZ = 28.5 },
            { coords = vector3(859.1518, -1388.4600, 26.1539), length = 9.0, width = 4.0, heading = 89.14, minZ = 24.5, maxZ = 28.5 },
        }
    },
    ['sheriff'] = {
        settings = {
            label = 'Mekanik',
            welcomeLabel = "Modifiye Menüsüne Hoşgeldiniz!",
            enabled = true,
        },
        categories = {
            mods = true,
            repair = true,
            armor = true,
            respray = true,
            liveries = true,
            wheels = true,
            tint = true,
            plate = true,
            extras = true,
            neons = true,
            xenons = true,
            horn = true,
            turbo = true,
            cosmetics = true,
        },
        drawtextui = {
            text = "Şerif Mekanik",
        },
        restrictions = {
            job = { 'sheriff' },
            allowedClasses = { 18 },
        },
        zones = {
            { coords = vector3(-456.08, 5982.88, 30.7), length = 9.0, width = 4.0, heading = 48.8, minZ = 30.5, maxZ = 32.5 },
        }
    },
    ['ranger'] = {
        settings = {
            label = 'Mekanik',
            welcomeLabel = "Modifiye Menüsüne Hoşgeldiniz!",
            enabled = true,
        },
        categories = {
            mods = true,
            repair = true,
            armor = true,
            respray = true,
            liveries = true,
            wheels = true,
            tint = true,
            plate = true,
            extras = true,
            neons = true,
            xenons = true,
            horn = true,
            turbo = true,
            cosmetics = true,
        },
        drawtextui = {
            text = "Ranger Mekanik",
        },
        restrictions = {
            job = { 'ranger' },
            allowedClasses = { 18 },
        },
        zones = {
            { coords = vector3(361.57, 795.68, 187.3),  length = 9.0, width = 4.0, heading = 163.35, minZ = 186.5, maxZ = 190.5 },
            { coords = vector3(374.34, 796.94, 186.68), length = 9.0, width = 4.0, heading = 357.17, minZ = 185.5, maxZ = 188.5 },

        }
    },
    ['mpmechanic'] = {
        settings = {
            label = 'Mekanik',
            welcomeLabel = "Modifiye Menüsüne Hoşgeldiniz!",
            enabled = true,
        },
        categories = {
            mods = true,
            repair = true,
            armor = true,
            respray = true,
            liveries = true,
            wheels = true,
            tint = true,
            plate = true,
            extras = true,
            neons = true,
            xenons = true,
            horn = true,
            turbo = true,
            cosmetics = true,
        },
        drawtextui = {
            text = "Metropolitan Mekanik",
        },
        restrictions = {
            job = { 'ranger' },
            allowedClasses = { 18 },
        },
        zones = {
            { coords = vector3(2554.98, -406.75, 92.57), length = 9.0, width = 4.0, heading = 347.48, minZ = 90.5, maxZ = 95.5 },
            { coords = vector3(2554.42, -396.83, 92.57), length = 9.0, width = 4.0, heading = 187.74, minZ = 90.5, maxZ = 95.5 },
        }
    },
    ['davison'] = {
        settings = {
            label = 'Mekanik',
            welcomeLabel = "Modifiye Menüsüne Hoşgeldiniz!",
            enabled = true,
        },
        categories = {
            mods = true,
            repair = true,
            armor = true,
            respray = true,
            liveries = true,
            wheels = true,
            tint = true,
            plate = true,
            extras = true,
            neons = true,
            xenons = true,
            horn = true,
            turbo = true,
            cosmetics = true,
        },
        drawtextui = {
            text = "Mekanik",
        },
        restrictions = {
            job = { 'police', 'fbi', 'state', 'sheriff', 'ranger', 'davison', 'doj', 'vpd', 'dppd' },
            allowedClasses = { 18 },
        },
        zones = {
            { coords = vector3(384.81, -1634.09, 28.87), length = 9.0, width = 4.0, heading = 138.29, minZ = 28.5, maxZ = 32.5 },
            { coords = vector3(544.02, 3.93, 69.63),     length = 9.0, width = 4.0, heading = 320.69, minZ = 69.5, maxZ = 72.5 },
            { coords = vector3(570.36, 5.86, 69.63),     length = 9.0, width = 4.0, heading = 66.68,  minZ = 69.3, maxZ = 72.5 },
            { coords = vector3(-482.65, 6024.8, 30.63),  length = 9.0, width = 4.0, heading = 44.16,  minZ = 27.3, maxZ = 32.5 },
            { coords = vector3(-1610.8, -1038.69, 12.72),  length = 9.0, width = 4.0, heading = 321.86,  minZ = 10.3, maxZ = 14.5 },
            { coords = vector3(-548.72, -248.16, 36.09),  length = 9.0, width = 4.0, heading = 210.1,  minZ = 30.3, maxZ = 42.5 },
        }
    },
    ['sandysheriff'] = {
        settings = {
            label = 'Mekanik',
            welcomeLabel = "Modifiye Menüsüne Hoşgeldiniz!",
            enabled = true,
        },
        categories = {
            mods = true,
            repair = true,
            armor = true,
            respray = true,
            liveries = true,
            wheels = true,
            tint = true,
            plate = true,
            extras = true,
            neons = true,
            xenons = true,
            horn = true,
            turbo = true,
            cosmetics = true,
        },
        drawtextui = {
            text = "Sandy Shore Mekanik",
        },
        restrictions = {
            job = { 'police', 'fbi', 'state', 'sheriff', 'ranger', 'davison', 'doj', 'vpd', 'dppd' },
            allowedClasses = { 18 },
        },
        zones = {
            { coords = vector3(1862.02, 3695.36, 33.45), length = 9.0, width = 4.0, heading = 120.12, minZ = 33.01, maxZ = 40.01 },
        }
    },
    ['policesheli'] = {
        settings = {
            label = 'Mekanik',
            welcomeLabel = "Modifiye Menüsüne Hoşgeldiniz!",
            enabled = true,
        },
        blip = {
            label = 'PD Heli Tuning',
            coords = vector3(-976.36, -2982.92, 14.34),
            sprite = 446,
            scale = 0.65,
            color = 0,
            display = 4,
            enabled = false,
        },
        categories = {
            mods = true,
            repair = true,
            armor = true,
            respray = true,
            liveries = true,
            wheels = true,
            tint = true,
            plate = true,
            extras = true,
            neons = true,
            xenons = true,
            horn = true,
            turbo = true,
            cosmetics = true,
        },
        drawtextui = {
            text = "Helikopter Mekanik",
        },
        restrictions = {
            job = { 'police', 'fbi', 'state', 'sheriff', 'ranger', 'davison' },
            allowedClasses = { 15 },
        },
        zones = {
            { coords = vector3(-976.36, -2982.92, 14.74), length = 15.0, width = 8.0, heading = 63.69, minZ = 13.0, maxZ = 19.5 },
        }
    },
    ['Pillbox'] = {
        settings = {
            label = 'Mekanik',
            welcomeLabel = "Modifiye Menüsüne Hoşgeldiniz!",
            enabled = true,
        },
        categories = {
            mods = true,
            repair = true,
            liveries = true,
            wheels = true,
            tint = true,
            plate = true,
            extras = true,
            neons = true,
            xenons = true,
            turbo = true,
            cosmetics = true,
        },
        drawtextui = {
            text = "Pillbox Mekanik"
        },
        restrictions = {
            job = { 'ambulance' },
            allowedClasses = { 18, 2 },
        },
        zones = {
            { coords = vector3(337.2, -579.6, 28.8),     length = 9.4, width = 4.2, heading = 340.0, minZ = 27.5, maxZ = 31.5 },
            { coords = vector3(340.38, -570.8, 28.8),    length = 8.8, width = 4.2, heading = 340.0, minZ = 27.5, maxZ = 31.5 },
            { coords = vector3(-471.57, -348.79, 23.65), length = 8.8, width = 4.2, heading = 340.0, minZ = 22.5, maxZ = 28.5 },

        }
    },
    ['doj'] = {
        settings = {
            label = 'Mekanik',
            welcomeLabel = "Modifiye Menüsüne Hoşgeldiniz!",
            enabled = true,
        },
        blip = {
            label = 'Mekanik',
            coords = vector3(59.18, -2573.71, 6.26),
            sprite = 446,
            scale = 0.65,
            color = 0,
            display = 4,
            enabled = false,
        },
        categories = {
            mods = true,
            turbo = true,
            repair = true,
            respray = true,
            liveries = true,
            wheels = true,
            tint = true,
            plate = true,
            extras = true,
            neons = true,
            xenons = true,
            horn = true,
            cosmetics = true,
        },
        drawtextui = {
            text = "Mekanik"
        },
        restrictions = {
            job = "doj",
            allowedClasses = { 18 },
        },
        zones = {
            { coords = vector3(-561.81, -173.65, 38.14), length = 6.0, width = 4.0, heading = 236.2, minZ = 35.01, maxZ = 41.0 },
        }
    },

    -- ['tuner'] = {
    --     settings = {
    --         label = 'Mekanik',
    --         welcomeLabel = "Modifiye Menüsüne Hoşgeldiniz!",
    --         enabled = true,
    --     },
    --     blip = {
    --         label = 'Tuner',
    --         coords = vector3(-34.95, -1053.88, 28.4),
    --         sprite = 446,
    --         scale = 0.65,
    --         color = 0,
    --         display = 4,
    --         enabled = false,
    --     },
    --     categories = {
    --         mods = true,
    --         turbo = true,
    --         repair = true,
    --         respray = true,
    --         liveries = true,
    --         wheels = true,
    --         tint = true,
    --         plate = true,
    --         extras = true,
    --         neons = true,
    --         xenons = true,
    --         horn = true,
    --         cosmetics = true,
    --     },
    --     drawtextui = {
    --         text = "Mekanik"
    --     },
    --     restrictions = {
    --         job = "uwu",
    --         deniedClasses = { 18 }
    --     },
    --     zones = {
    --         { coords = vector3(136.14, -3030.35, 6.37), length = 6.0, width = 4.0, heading = 179.24, minZ = 4.0, maxZ = 8.0 },
    --         { coords = vector3(144.98, -3030.28, 6.37), length = 6.0, width = 4.0, heading = 179.24, minZ = 4.0, maxZ = 8.0 },
    --         { coords = vector3(124.8, -3023.18, 6.37), length = 6.0, width = 4.0, heading = 90.48, minZ = 4.0, maxZ = 8.0 },
    --         { coords = vector3(-23.42, -1388.15, 28.93), length = 6.0, width = 4.0, heading = 180.01, minZ = 27.0, maxZ = 31.0 },
    --         { coords = vector3(-27.04, -1388.28, 28.93), length = 6.0, width = 4.0, heading = 180.01, minZ = 27.0, maxZ = 31.0 },

    --     }
    -- },

    ['japanese'] = {
        settings = {
            label = 'Mekanik',
            welcomeLabel = "Modifiye Menüsüne Hoşgeldiniz!",
            enabled = true,
        },
        blip = {
            label = 'Japanese Garage',
            coords = vector3(703.53, -751.87, 24.48),
            sprite = 446,
            scale = 0.65,
            color = 0,
            display = 4,
            enabled = false,
        },
        categories = {
            mods = true,
            turbo = true,
            repair = true,
            respray = true,
            liveries = true,
            wheels = true,
            tint = true,
            plate = true,
            extras = true,
            neons = true,
            xenons = true,
            horn = true,
            cosmetics = true,
        },
        drawtextui = {
            text = "Mekanik"
        },
        restrictions = {
            job = "japanese",
            deniedClasses = { 18 }
        },
        zones = {
            { coords = vector3(708.51, -744.4, 24.48),  length = 6.0, width = 4.0, heading = 182.04, minZ = 24.0, maxZ = 25.7 },
            { coords = vector3(703.56, -744.6, 24.48),  length = 6.0, width = 4.0, heading = 182.04, minZ = 24.0, maxZ = 25.7 },
            { coords = vector3(701.8, -752.0, 24.31),   length = 6.0, width = 4.0, heading = 294.48, minZ = 24.0, maxZ = 25.7 },
            { coords = vector3(688.53, -750.86, 24.48), length = 6.0, width = 4.0, heading = 1.8,    minZ = 24.0, maxZ = 25.7 },
            { coords = vector3(681.42, -750.74, 24.48), length = 6.0, width = 4.0, heading = 359.84, minZ = 24.0, maxZ = 25.7 },

        }
    },
    ['carwashtuner'] = {
        settings = {
            label = 'Mekanik',
            welcomeLabel = "Modifiye Menüsüne Hoşgeldiniz!",
            enabled = true,
        },
        blip = {
            label = 'Tuner Garage',
            coords = vector3(703.53, -751.87, 24.48),
            sprite = 446,
            scale = 0.65,
            color = 0,
            display = 4,
            enabled = false,
        },
        categories = {
            mods = true,
            turbo = true,
            repair = true,
            respray = true,
            liveries = true,
            wheels = true,
            tint = true,
            plate = true,
            extras = true,
            neons = true,
            xenons = true,
            horn = true,
            cosmetics = true,
        },
        drawtextui = {
            text = "Mekanik"
        },
        restrictions = {
            job = "tuner",
            deniedClasses = { 18 }
        },
        zones = {
            { coords = vector3(-24.83, -1410.17, 29.08), length = 6.0, width = 4.0, heading = 260.12, minZ = 27.0, maxZ = 32.7 },
        }
    },

    ['redline'] = {
        settings = {
            label = 'Mekanik',
            welcomeLabel = "Modifiye Menüsüne Hoşgeldiniz!",
            enabled = true,
        },
        blip = {
            label = 'Redline',
            coords = vector3(703.53, -751.87, 24.48),
            sprite = 446,
            scale = 0.65,
            color = 0,
            display = 4,
            enabled = false,
        },
        categories = {
            mods = true,
            turbo = true,
            repair = true,
            respray = true,
            liveries = true,
            wheels = true,
            tint = true,
            plate = true,
            extras = true,
            neons = true,
            xenons = true,
            horn = true,
            cosmetics = true,
        },
        drawtextui = {
            text = "Mekanik"
        },
        restrictions = {
            job = "redline",
            deniedClasses = { 18 }
        },
        zones = {
            { coords = vector3(-572.62, -936.42, 23.23), length = 6.0, width = 4.0, heading = 175.81, minZ = 21.0, maxZ = 25.7 },
            { coords = vector3(-583.17, -931.94, 23.45), length = 6.0, width = 4.0, heading = 88.98,  minZ = 21.0, maxZ = 25.7 },
            { coords = vector3(-583.13, -924.61, 23.45), length = 6.0, width = 4.0, heading = 88.98,  minZ = 21.0, maxZ = 25.7 },
            { coords = vector3(-583.07, -917.54, 23.46), length = 6.0, width = 4.0, heading = 88.98,  minZ = 21.0, maxZ = 25.7 },
            { coords = vector3(-560.08, -914.68, 23.31), length = 6.0, width = 4.0, heading = 88.98,  minZ = 21.0, maxZ = 25.7 },

        }
    },

}
