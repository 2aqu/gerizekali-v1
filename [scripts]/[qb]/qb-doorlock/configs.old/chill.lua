

-- chill 1 Oluşturan Wanheda
Config.DoorList['chill-chill 1'] = {
    doorLabel = 'chill 1',
    objName = 497665568,
    fixText = false,
    objYaw = 243.00003051758,
    locked = true,
    objCoords = vec3(2521.060303, 4123.835449, 39.224949),
    doorRate = 1.0,
    distance = 5,
    authorizedJobs = { ['chill'] = 0 },
    doorType = 'garage',
}


Config.DoorList['bobcatfirst'] = {
    lockpick = false,
    maxDistance = 2.5,
    slides = false,
    doors = {
        {objHash = -2023754432, objHeading = 84.999885559082, objCoords = vec3(914.558960, -2123.137695, 31.395027)},
        {objHash = -2023754432, objHeading = 264.99993896484, objCoords = vec3(914.785645, -2120.547363, 31.395027)}
    },
    audioRemote = false,
    authorizedJobs = { ['police']=0 },
    locked = true,
    --oldMethod = true,
    --audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
    --audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
    --autoLock = 1000
}

Config.DoorList['bobcatsecond'] = {
    audioRemote = false,
    objCoords = vec3(908.440430, -2121.276123, 31.380991),
    garage = false,
    fixText = false,
    lockpick = false,
    slides = false,
    authorizedJobs = { ['police']=0 },
    maxDistance = 2.0,
    objHeading = 84.92,
    objHash = -2023754432,
    locked = true,
    --oldMethod = true,
    --audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
    --audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
    --autoLock = 1000
}

Config.DoorList['bobcatthird'] = {
    lockpick = false,
    slides = false,
    authorizedJobs = { ['police']=0 },
    maxDistance = 2.5,
    doors = {
        {objHash = 1438783233, objHeading = 84.999885559082, objCoords = vec3(904.687012, -2122.276123, 31.380224)},
        {objHash = 1438783233, objHeading = 264.99996948242, objCoords = vec3(904.913635, -2119.686279, 31.380224)}
    },
    audioRemote = false,
    locked = true,
    --oldMethod = true,
    --audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
    --audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
    --autoLock = 1000
}

Config.DoorList['bobcatfourth'] = {
    audioRemote = false,
    objCoords = vec3(889.914307, -2107.780762, 30.235733),
    garage = false,
    fixText = false,
    lockpick = false,
    slides = false,
    authorizedJobs = { ['police']=0 },
    maxDistance = 4.0,
    objHeading = 174.96995544434,
    objHash = -1514454788,
    locked = true,
    --oldMethod = true,
    --audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
    --audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
    --autoLock = 1000
}

-- chill 2 Oluşturan Wanheda
Config.DoorList['chill-chill 2'] = {
    authorizedJobs = { ['chill'] = 0 },
    locked = true,
    doorLabel = 'chill 2',
    doorType = 'doublesliding',
    doors = {
        {objName = -626684119, objYaw = 334.00003051758, objCoords = vec3(2518.711670, 4107.846191, 38.731796)},
        {objName = -626684119, objYaw = 153.99998474121, objCoords = vec3(2521.031250, 4106.671387, 38.731926)}
    },
    doorRate = 1.0,
    distance = 2,
}


Config.DoorList['jewelery-citymain'] = {
    doorType = 'double',
    locked = true,
    cantUnlock = true,
    doorLabel = 'main',
    distance = 2,
    doors = {
        {objName = 9467943, objYaw = 306.00003051758, objCoords = vec3(-630.426514, -238.437546, 38.206532)},
        {objName = 1425919976, objYaw = 306.00003051758, objCoords = vec3(-631.955383, -236.333267, 38.206532)}
    },
    doorRate = 1.0,
}

Config.DoorList['jewelery-citysec'] = {
    objYaw = 36.000022888184,
    doorRate = 1.0,
    locked = true,
    fixText = false,
    pickable = true,
    authorizedJobs = { ['police'] = 0 },
    needsAllItems = false,
    objCoords = vec3(-629.133850, -230.151703, 38.206585),
    distance = 1.5,
    doorType = 'door',
    objName = 1335309163,
}

Config.DoorList['jewelery-grapemain'] = {
    doorType = 'double',
    locked = true,
    cantUnlock = true,
    doorLabel = 'main',
    distance = 2,
    doors = {
        {objName = 9467943, objYaw = 98.17839050293, objCoords = vec3(1653.285522, 4884.148438, 42.309845)},
        {objName = 1425919976, objYaw = 98.17839050293, objCoords = vec3(1653.655518, 4881.573730, 42.309845)}
    },
    doorRate = 1.0,
}

Config.DoorList['jewelery-grapesec'] = {
    pickable = true,
    objCoords = vec3(1648.274902, 4877.423340, 42.309898),
    objName = 1335309163,
    doorRate = 1.0,
    distance = 1,
    authorizedJobs = { ['police'] = 0 },
    doorType = 'door',
    objYaw = 188.17839050293,
    fixText = false,
    doorLabel = 'sec',
    locked = true,
}

Config.DoorList['jewelery-palmain'] = {
    doorType = 'double',
    locked = true,
    cantUnlock = true,
    doorLabel = 'main',
    distance = 2,
    doors = {
        {objName = 1425919976, objYaw = 314.90930175781, objCoords = vec3(-383.837921, 6044.059082, 31.658920)},
        {objName = 9467943, objYaw = 314.90930175781, objCoords = vec3(-382.001617, 6042.216797, 31.658920)}
    },
    doorRate = 1.0,
}

Config.DoorList['jewelery-palsec'] = {
    doorType = 'door',
    locked = true,
    doorRate = 1.0,
    pickable = true,
    distance = 1.5,
    objYaw = 44.909275054932,
    fixText = false,
    authorizedJobs = { ['police'] = 0 },
    objCoords = vec3(-382.007721, 6050.603027, 31.658974),
    objName = 1335309163,
}


-- chill Oluşturan Wanheda
Config.DoorList['chill-chill'] = {
    fixText = false,
    doorRate = 1.0,
    doorLabel = 'chill 3',
    objName = -626684119,
    locked = true,
    distance = 2,
    objCoords = vec3(2512.061035, 4105.021484, 38.733444),
    objYaw = 333.0,
    authorizedJobs = { ['chill'] = 0 },
    doorType = 'door',
}

-- chill 4 Oluşturan Wanheda
Config.DoorList['chill-chill 4'] = {
    objName = -626684119,
    doorLabel = 'chill 4',
    objYaw = 333.31448364258,
    distance = 2,
    fixText = false,
    objCoords = vec3(2507.886475, 4096.377930, 35.732712),
    locked = true,
    authorizedJobs = { ['chill'] = 0 },
    doorRate = 1.0,
    doorType = 'door',
}

-- chill 5 Oluşturan Wanheda
Config.DoorList['chill-chill 5'] = {
    objName = -626684119,
    doorLabel = 'chill 5',
    objYaw = 62.712463378906,
    distance = 2,
    fixText = false,
    objCoords = vec3(2510.876709, 4095.868652, 35.733574),
    locked = true,
    authorizedJobs = { ['chill'] = 0 },
    doorRate = 1.0,
    doorType = 'door',
}

-- chill 6 Oluşturan Wanheda
Config.DoorList['chill-chill 6'] = {
    objName = 1847025247,
    doorLabel = 'chill 6',
    objYaw = 333.20056152344,
    distance = 2,
    fixText = false,
    objCoords = vec3(2517.512939, 4102.635254, 35.735825),
    locked = true,
    authorizedJobs = { ['chill'] = 0 },
    doorRate = 1.0,
    doorType = 'door',
}

-- chill 7 Oluşturan Wanheda
Config.DoorList['chill-chill 7'] = {
    objName = 782767342,
    doorLabel = 'chill 7',
    objYaw = 243.99996948242,
    distance = 2,
    fixText = false,
    objCoords = vec3(2507.755615, 4097.620605, 38.846283),
    locked = true,
    authorizedJobs = { ['chill'] = 0 },
    doorRate = 1.0,
    doorType = 'door',
}