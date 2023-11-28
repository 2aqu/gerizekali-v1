

Config.DoorList['dpd-giyinme'] = {
    doorRate = 1.0,
    locked = true,
    doorType = 'door',
    authorizedJobs = {
        ['dppd'] = 0
    },
    objCoords = vec3(-1623.14, -1023.38, 13.31),
    objYaw = -41.06,
    fixText = false,
    objName = -2023754432,
    distance = 1.5
}

Config.DoorList['dpd-nezaret-1'] = {
    doorRate = 1.0,
    locked = true,
    doorType = 'door',
    authorizedJobs = {
        ['dppd'] = 0
    },
    objCoords = vec3(-1622.96, -1030.55, 13.31),
    objYaw = -130.0,
    fixText = false,
    objName = 631614199,
    distance = 1.5
}
Config.DoorList['dpd-nezaret-2'] = {
    doorRate = 1.0,
    locked = true,
    doorType = 'door',
    authorizedJobs = {
        ['dppd'] = 0
    },
    objCoords = vec3(-1625.3, -1033.34, 13.31),
    objYaw = -130.0,
    fixText = false,
    objName = 631614199,
    distance = 1.5
}


Config.DoorList['dpd-giris'] = {
    doorRate = 1.0,
    locked = true,
    doorType = 'door',
    authorizedJobs = {
        ['dppd'] = 0
    },
    objCoords = vec3(-1633.17, -1015.32, 13.37),
    objYaw = -40.163873291016,
    fixText = false,
    objName = -8900635,
    distance = 2
}

Config.DoorList['dpd-turnike'] = { -- The index of the table, this is used as the doorID, can be a number or a string
    doors = { -- Table of doors which holds both doors' data
    {
        objName = -458248282, -- Door object name can be a string or a number. Alias: objHash = 'v_ilev_rc_door2',
        objYaw = -130.0, -- Heading of the door. Alias: objHeading = 135.0,
        objCoords = vec3(-1629.52, -1020.95, 12.24) -- Object coords
    }, {
        objName = -458248282, -- Door object name can be a string or a number. Alias: objHash = 'v_ilev_rc_door2',
        objYaw = 50.0, -- Heading of the door. Alias: objHeading = -45.0,
        objCoords = vec3(-1630.14, -1021.68, 12.24) -- Object coords
    }},
    doorRate = 1.0,
    locked = true,
    doorType = 'sliding',
    authorizedJobs = {
        ['dppd'] = 0
    },
    fixText = false,
    distance = 2,
    autoLock = 1000
}

