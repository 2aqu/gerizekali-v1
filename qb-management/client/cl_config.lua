-- Zones for Menues
Config = Config or {}

Config.UseTarget = GetConvar('UseTarget', 'false') == 'false' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)

Config.BossMenus = {
    ['police'] = {
        vector3(460.73, -985.55, 30.73),
    },
    ['fbi'] = {
        vector3(931.31, -1462.27, 30.4),
    },
    ['state'] = {
        vector3(856.72, -1299.87, 28.26),
    },
    ['sheriff'] = {
        vector3(-432.79, 6005.95, 37.0),
    },
    ['ranger'] = {
        vector3(386.87, 798.64, 190.49),
    },
    ['davison'] = {
        vector3(358.58, -1591.13, 31.05),
        vector3(-432.8, 6005.78, 37.0),
    },
    ['sandyshoresheriff'] = {
        vector3(1824.75, 3673.85, 38.86),
    },
    ['ambulance'] = {
        vector3(309.36, -599.21, 43.28),
    },
    ['realestate'] = {
        vector3(-80.79, -802.21, 243.4),
    },
    ['taxi'] = {
        vector3(907.24, -150.19, 74.17),
    },
    ['cardealer'] = {
        vector3(-31.0, -1106.6, 26.42),
    },
    ['uwu'] = {
        vector3(-577.57, -1067.57, 26.61),
    },
    ['iskele'] = {
        vector3(-1817.83, -1252.15, 13.04),
    },
    ['mechanicmc'] = {
        vector3(2518.52, 4098.07, 35.59),
    },
    ['mechanic1'] = {
        vector3(-348.21, -131.1, 42.04),
    },
    ['mechanic2'] = {
        vector3(542.72, -201.53, 54.49),
    },
    ['mechanic3'] = {
        vector3(-36.83, -1036.65, 28.6),
    },
    ['mechanic4'] = {
        vector3(-196.58, -1315.42, 31.09),
    },
    -- ['mechanic5'] = {
    --     vector3(-1428.0, -458.38, 35.91),
    -- },
    ['mechanic6'] = {
        vector3(472.39, -1310.31, 29.22),
    },
    ['mechanic7'] = {
        vector3(99.33, 6620.34, 32.44),
    },
    ['mechanic8'] = {
        vector3(1187.26, 2637.14, 38.4),
    },
    ['mechanic9'] = {
        vector3(726.74, -1066.85, 28.31),
    },
    ['mechanic10'] = {
        vector3(124.66, -3013.89, 7.04),
    },
    ['gmg'] = {
        vector3(951.31, -968.64, 39.51),
    },
    ['pdm2'] = {
        vector3(-1260.78, -361.36, 36.91)
    },
    ['mechanic12'] = {
        vector3(-1602.17, -837.45, 10.27),
    },
    ['mechanic13'] = {
        vector3(-1428.0, -458.38, 35.91),
    },
    ['mechanic15'] = {
        vector3(-605.93, -1762.32, 27.35),
    },
    ['sr'] = {
        vector3(2517.49, 4106.27, 35.59),
    },
    ['burgershot'] = {
        vector3(-1198.04, -897.98, 13.8),
    },
    ['yellowjack'] = {
        vector3(1981.69, 3051.01, 47.2),
    },
    ['bahama'] = {
        vector3(-1370.41, -626.92, 30.36),
    },
    ['vpd'] = {
        vector3(633.44, 8.83, 82.63),
    },
    ['dppd'] = {
        vector3(-1632.09, -1024.63, 13.16),
    },
    ['doj'] = {
        vector3(-542.5, -197.15, 38.24),
    },
    ['koi'] = {
        vector3(-1054.34, -1440.89, -1.38),
    },
    ['tuner'] = {
        vector3(-29.71, -1412.93, 29.51),
    },
    ['mayans'] = {
        vector3(3309.91, 5188.61, 23.01),
    },
    ['records'] = {
        vector3(-816.46, -698.78, 32.14),
    },
    ['mechanic13'] = {
        vector3(-1427.73, -458.31, 35.91),
    },
    ['wutang'] = {
        vector3(-10.58, -1806.9, 20.7),
    },
    ['pizzeria'] = {
        vector3(797.26, -750.7, 31.27),
    },
    ['pearls'] = {
        vector3(-1840.1716, -1182.7858, 14.3092),
    },
    ['japanese'] = {
        vector3(685.2, -735.22, 29.07),
    },
    ['luxery'] = {
        vector3(-865.54, -229.04, 61.02),
    },
    ['unicorn'] = {
        vector3(94.97, -1292.79, 29.26),
    },
    ['reporter'] = {
        vector3(-581.0, -936.61, 23.88),
    },
    ['tequila'] = {
        vector3(-562.34, 286.79, 82.18),
    },
    ['ldv'] = {
        vector3(-2878.04, -2.74, 8.06),
    },
    ['tpc'] = {
        vector3(300.54, -928.74, 58.37),
    },
    ['redline'] = {
        vector3(-591.91, -914.85, 28.14),
    },
    ['realestate2'] = {
        vector3(-1556.1, -574.7, 108.53),
    },
    ['galaxy'] = {
        vector3(389.75, 272.83, 94.99),
    },
    ['serendipity'] = {
        vector3(-2978.05, 36.96, 8.08),
    },
    ['rod'] = {
        vector3(140.15, 339.83, 116.62),
    },
    ['lost'] = {
        vector3(975.73, -100.68, 74.87),
    },
    ['bong'] = {
        vector3(-188.73, -1713.28, 33.0),
    },
}

Config.BossMenuZones = {
    ['police'] = {
        vector3(460.73, -985.55, 30.73),
    },
    ['fbi'] = {
        vector3(931.31, -1462.27, 30.4),
    },
    ['state'] = {
        vector3(856.72, -1299.87, 28.26),
    },
    ['sheriff'] = {
        vector3(-432.79, 6005.95, 37.0),
    },
    ['ranger'] = {
        vector3(386.87, 798.64, 190.49),
    },
    ['davison'] = {
        vector3(358.58, -1591.13, 31.05),
        vector3(-432.8, 6005.78, 37.0),
    },
    ['sandyshoresheriff'] = {
        vector3(1824.75, 3673.85, 38.86),
    },
    ['ambulance'] = {
        vector3(309.36, -599.21, 43.28),
    },
    ['taxi'] = {
        vector3(907.24, -150.19, 74.17),
    },
    ['cardealer'] = {
        vector3(-31.0, -1106.6, 26.42),
    },
    ['uwu'] = {
        vector3(-577.57, -1067.57, 26.61),
    },
    ['iskele'] = {
        vector3(-1817.83, -1252.15, 13.04),
    },
    ['mechanicmc'] = {
        vector3(2518.52, 4098.07, 35.59),
    },
    ['mechanic1'] = {
        vector3(-348.21, -131.1, 42.04),
    },
    ['mechanic2'] = {
        vector3(542.72, -201.53, 54.49),
    },
    ['mechanic3'] = {
        vector3(-36.83, -1036.65, 28.6),
    },
    ['mechanic4'] = {
        vector3(-196.58, -1315.42, 31.09),
    },
    ['mechanic5'] = {
        vector3(-1428.0, -458.38, 35.91),
    },
    ['mechanic6'] = {
        vector3(472.39, -1310.31, 29.22),
    },
    ['mechanic7'] = {
        vector3(99.33, 6620.34, 32.44),
    },
    ['mechanic8'] = {
        vector3(1187.26, 2637.14, 38.4),
    },
    ['mechanic9'] = {
        vector3(726.74, -1066.85, 28.31),
    },
    ['mechanic10'] = {
        vector3(124.66, -3013.89, 7.04),
    },
    ['gmg'] = {
        vector3(951.31, -968.64, 39.51),
    },
    ['mechanic12'] = {
        vector3(76.28, 6516.9, 36.06),
    },
    ['sr'] = {
        vector3(2517.49, 4106.27, 35.59),
    },
    ['burgershot'] = {
        vector3(-1198.04, -897.98, 13.8),
    },
    ['yellowjack'] = {
        vector3(1981.69, 3051.01, 47.2),
    },
    ['bahama'] = {
        vector3(-1370.41, -626.92, 30.36),
    },
    ['vpd'] = {
        vector3(633.44, 8.83, 82.63),
    },
    ['dppd'] = {
        vector3(-1632.09, -1024.63, 13.16),
    },
    ['doj'] = {
        vector3(-542.5, -197.15, 38.24),
    },
    ['koi'] = {
        vector3(-1054.34, -1440.89, -1.38),
    },
    ['mayans'] = {
        vector3(3309.91, 5188.61, 23.01),
    },
    ['records'] = {
        vector3(-816.46, -698.78, 32.14),
    },
    ['irishpub'] = {
        vector3(830.72, -117.91, 80.43),
        vector3(-1428.0, -458.38, 35.91),
    },
    ['wutang'] = {
        vector3(-10.58, -1806.9, 20.7),
    },
    ['pizzeria'] = {
        vector3(797.26, -750.7, 31.27),
    },
    ['pearls'] = {
        vector3(-1840.1716, -1182.7858, 14.3092),
    },
    ['japanese'] = {
        vector3(685.2, -735.22, 29.07),
    },
    ['luxery'] = {
        vector3(-865.54, -229.04, 61.02),
    },
    ['unicorn'] = {
        vector3(94.97, -1292.79, 29.26),
    },
    ['reporter'] = {
        vector3(-581.0, -936.61, 23.88),
    },
    ['tequila'] = {
        vector3(-562.34, 286.79, 82.18),
    },
    ['ldv'] = {
        vector3(-2878.04, -2.74, 8.06),
    },
    ['tpc'] = {
        vector3(300.54, -928.74, 58.37),
    },
    ['redline'] = {
        vector3(-591.91, -914.85, 28.14),
    },
    ['realestate2'] = {
        vector3(-1556.1, -574.7, 108.53),
    },
    ['galaxy'] = {
        vector3(389.75, 272.83, 94.99),
    },
    ['serendipity'] = {
        vector3(-2977.05, 36.5, 8.08),
    },
    ['rod'] = {
        vector3(140.15, 339.83, 116.62),
    },
    ['lost'] = {
        vector3(975.73, -100.68, 74.87),
    },
    ['bong'] = {
        vector3(-188.73, -1713.28, 33.0),
    },
}

Config.GangMenus = {
    ['lostmc'] = {
        vector3(0, 0, 0),
    },
    ['ballas'] = {
        vector3(0, 0, 0),
    },
    ['vagos'] = {
        vector3(0, 0, 0),
    },
    ['cartel'] = {
        vector3(0, 0, 0),
    },
    ['families'] = {
        vector3(0, 0, 0),
    },
}

Config.GangMenuZones = {
    --[[
    ['gangname'] = {
        { coords = vector3(0.0, 0.0, 0.0), length = 0.0, width = 0.0, heading = 0.0, minZ = 0.0, maxZ = 0.0 },
    },
    ]]
}
