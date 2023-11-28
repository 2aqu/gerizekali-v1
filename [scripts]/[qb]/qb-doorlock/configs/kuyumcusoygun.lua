Config.DoorList['jewelery-citymain'] = {
    doorType = 'double',
    locked = true,
    cantUnlock = true,
    doorLabel = 'main',
    distance = 2,
    authorizedJobs = { ['police'] = 0 },
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