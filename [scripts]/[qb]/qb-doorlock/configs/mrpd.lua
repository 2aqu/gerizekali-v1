-- ## GABZ - MISSION ROW POLICE DEPARTMENT (MRPD)
-- ## COORDINATES: 427.120, -979.559, 30.716

-- North doors
table.insert(Config.DoorList, {
	maxDistance = 2,
	locked = true,
	doors = {
		{
			objHash = -1547307588, -- gabz_mrpd_reception_entrancedoor
			objHeading = 180,
			objCoords = vector3(458.2087, -972.2543, 30.8153),
		},
		{
			objHash = -1547307588, -- gabz_mrpd_reception_entrancedoor
			objHeading = 0,
			objCoords = vector3(455.8862, -972.2543, 30.8153),
		},
	},
	authorizedJobs = { ['police'] = 0, ['fbi'] = 0, ['state'] = 0, ['sheriff'] = 0, ['ranger'] = 0, ['davison'] = 0 },
})

-- South doors
table.insert(Config.DoorList, {
	maxDistance = 2,
	locked = true,
	doors = {
		{
			objHash = -1547307588, -- gabz_mrpd_reception_entrancedoor
			objHeading = 0,
			objCoords = vector3(440.7392, -998.7462, 30.8153),
		},
		{
			objHash = -1547307588, -- gabz_mrpd_reception_entrancedoor
			objHeading = 180,
			objCoords = vector3(443.0618, -998.7462, 30.8153),
		},
	},
    authorizedJobs = { ['police'] = 0, ['fbi'] = 0, ['state'] = 0, ['sheriff'] = 0, ['ranger'] = 0, ['davison'] = 0 },
})

-- Lobby left
table.insert(Config.DoorList, {
	fixText = true,
	objHash = -1406685646, -- gabz_mrpd_door_04
	objCoords = vector3(441.13, -977.93, 30.82319),
	locked = true,
	objHeading = 0,
	maxDistance = 2,
    authorizedJobs = { ['police'] = 0, ['fbi'] = 0, ['state'] = 0, ['sheriff'] = 0, ['ranger'] = 0, ['davison'] = 0 },
})

-- Lobby right
table.insert(Config.DoorList, {
	objHash = -96679321, -- gabz_mrpd_door_05
	objCoords = vector3(440.5201, -986.2335, 30.82319),
	locked = true,
	objHeading = 180,
	maxDistance = 2,
    authorizedJobs = { ['police'] = 0, ['fbi'] = 0, ['state'] = 0, ['sheriff'] = 0, ['ranger'] = 0, ['davison'] = 0 },
})

-- Garage entrance 1
table.insert(Config.DoorList, {
	fixText = true,
	objHash = 1830360419, -- gabz_mrpd_garage_singledoorframe
	objCoords = vector3(464.1591, -974.6656, 26.3707),
	locked = true,
	objHeading = 269.78,
	maxDistance = 2,
    authorizedJobs = { ['police'] = 0, ['fbi'] = 0, ['state'] = 0, ['sheriff'] = 0, ['ranger'] = 0, ['davison'] = 0 },
})

-- Garage entrance 2
table.insert(Config.DoorList, {
	fixText = true,
	objHash = 1830360419, -- gabz_mrpd_garage_singledoorframe
	objCoords = vector3(464.1566, -997.5093, 26.3707),
	locked = true,
	objHeading = 89.87,
	maxDistance = 2,
    authorizedJobs = { ['police'] = 0, ['fbi'] = 0, ['state'] = 0, ['sheriff'] = 0, ['ranger'] = 0, ['davison'] = 0 },
})

-- Garage roller door 1
table.insert(Config.DoorList, {
	objCoords = vector3(431.4119, -1000.772, 26.69661),
	objHeading = 0,
	slides = true,
	garage = true,
	objHash = 2130672747, -- gabz_mrpd_garage_door
	locked = true,
	audioRemote = true,
	maxDistance = 6,
    authorizedJobs = { ['police'] = 0, ['fbi'] = 0, ['state'] = 0, ['sheriff'] = 0, ['ranger'] = 0, ['davison'] = 0 },
})

-- Garage roller door 2
table.insert(Config.DoorList, {
	objCoords = vector3(452.3005, -1000.772, 26.69661),
	objHeading = 0,
	slides = true,
	garage = true,
	objHash = 2130672747, -- gabz_mrpd_garage_door
	locked = true,
	audioRemote = true,
	maxDistance = 6,
    authorizedJobs = { ['police'] = 0, ['fbi'] = 0, ['state'] = 0, ['sheriff'] = 0, ['ranger'] = 0, ['davison'] = 0 },
})

-- Back gate
table.insert(Config.DoorList, {
	objCoords = vector3(488.8948, -1017.212, 27.14935),
	objHeading = 90,
	slides = true,
	objHash = -1603817716, -- hei_prop_station_gate
	locked = true,
	audioRemote = true,
	maxDistance = 6,
    authorizedJobs = { ['police'] = 0, ['fbi'] = 0, ['state'] = 0, ['sheriff'] = 0, ['ranger'] = 0, ['davison'] = 0 },
})

-- Back doors
table.insert(Config.DoorList, {
	maxDistance = 2,
	locked = true,
	doors = {
		{
			objHash = -692649124, -- gabz_mrpd_door_03
			objHeading = 0,
			objCoords = vector3(467.3686, -1014.406, 26.48382),
		},
		{
			objHash = -692649124, -- gabz_mrpd_door_03
			objHeading = 180,
			objCoords = vector3(469.7743, -1014.406, 26.48382),
		},
	},
    authorizedJobs = { ['police'] = 0, ['fbi'] = 0, ['state'] = 0, ['sheriff'] = 0, ['ranger'] = 0, ['davison'] = 0 },
})

-- Mugshot
table.insert(Config.DoorList, {
	objHash = -1406685646, -- gabz_mrpd_door_04
	objCoords = vector3(475.9539, -1010.819, 26.40639),
	locked = true,
	fixText = true,
	objHeading = 180,
	maxDistance = 2,
    authorizedJobs = { ['police'] = 0, ['fbi'] = 0, ['state'] = 0, ['sheriff'] = 0, ['ranger'] = 0, ['davison'] = 0 },
})

-- Cell entrance 1
table.insert(Config.DoorList, {
	objCoords = vector3(476.6157, -1008.875, 26.48005),
	objHeading = 270,
	objHash = -53345114, -- gabz_mrpd_cells_door
	maxDistance = 2,
	locked = true,
	audioLock = {
		['file'] = 'metal-locker.ogg',
		['volume'] = '0.35',
	},
	audioUnlock = {
		['file'] = 'metallic-creak.ogg',
		['volume'] = '0.7',
	},
    authorizedJobs = { ['police'] = 0, ['fbi'] = 0, ['state'] = 0, ['sheriff'] = 0, ['ranger'] = 0, ['davison'] = 0 },
})

-- Cell entrance 2
table.insert(Config.DoorList, {
	objCoords = vector3(481.0084, -1004.118, 26.48005),
	objHeading = 180,
	objHash = -53345114, -- gabz_mrpd_cells_door
	maxDistance = 2,
	locked = true,
	audioLock = {
		['file'] = 'metal-locker.ogg',
		['volume'] = '0.35',
	},
	audioUnlock = {
		['file'] = 'metallic-creak.ogg',
		['volume'] = '0.7',
	},
    authorizedJobs = { ['police'] = 0, ['fbi'] = 0, ['state'] = 0, ['sheriff'] = 0, ['ranger'] = 0, ['davison'] = 0 },
})

-- Cell 1
table.insert(Config.DoorList, {
	objCoords = vector3(477.9126, -1012.189, 26.48005),
	objHeading = 0,
	objHash = -53345114, -- gabz_mrpd_cells_door
	maxDistance = 2,
	locked = true,
	audioLock = {
		['file'] = 'metal-locker.ogg',
		['volume'] = '0.35',
	},
	audioUnlock = {
		['file'] = 'metallic-creak.ogg',
		['volume'] = '0.7',
	},
    authorizedJobs = { ['police'] = 0, ['fbi'] = 0, ['state'] = 0, ['sheriff'] = 0, ['ranger'] = 0, ['davison'] = 0 },
})

-- Cell 2
table.insert(Config.DoorList, {
	objCoords = vector3(480.9128, -1012.189, 26.48005),
	objHeading = 0,
	objHash = -53345114, -- gabz_mrpd_cells_door
	maxDistance = 2,
	locked = true,
	audioLock = {
		['file'] = 'metal-locker.ogg',
		['volume'] = '0.35',
	},
	audioUnlock = {
		['file'] = 'metallic-creak.ogg',
		['volume'] = '0.7',
	},
    authorizedJobs = { ['police'] = 0, ['fbi'] = 0, ['state'] = 0, ['sheriff'] = 0, ['ranger'] = 0, ['davison'] = 0 },
})

-- Cell 3
table.insert(Config.DoorList, {
	objCoords = vector3(483.9127, -1012.189, 26.48005),
	objHeading = 0,
	objHash = -53345114, -- gabz_mrpd_cells_door
	maxDistance = 2,
	locked = true,
	audioLock = {
		['file'] = 'metal-locker.ogg',
		['volume'] = '0.35',
	},
	audioUnlock = {
		['file'] = 'metallic-creak.ogg',
		['volume'] = '0.7',
	},
    authorizedJobs = { ['police'] = 0, ['fbi'] = 0, ['state'] = 0, ['sheriff'] = 0, ['ranger'] = 0, ['davison'] = 0 },
})

-- Cell 4
table.insert(Config.DoorList, {
	objCoords = vector3(486.9131, -1012.189, 26.48005),
	objHeading = 0,
	objHash = -53345114, -- gabz_mrpd_cells_door
	maxDistance = 2,
	locked = true,
	audioLock = {
		['file'] = 'metal-locker.ogg',
		['volume'] = '0.35',
	},
	audioUnlock = {
		['file'] = 'metallic-creak.ogg',
		['volume'] = '0.7',
	},
    authorizedJobs = { ['police'] = 0, ['fbi'] = 0, ['state'] = 0, ['sheriff'] = 0, ['ranger'] = 0, ['davison'] = 0 },
})

-- Cell 5
table.insert(Config.DoorList, {
	objCoords = vector3(484.1764, -1007.734, 26.48005),
	objHeading = 180,
	objHash = -53345114, -- gabz_mrpd_cells_door
	maxDistance = 2,
	locked = true,
	audioLock = {
		['file'] = 'metal-locker.ogg',
		['volume'] = '0.35',
	},
	audioUnlock = {
		['file'] = 'metallic-creak.ogg',
		['volume'] = '0.7',
	},
    authorizedJobs = { ['police'] = 0, ['fbi'] = 0, ['state'] = 0, ['sheriff'] = 0, ['ranger'] = 0, ['davison'] = 0 },
})

-- Lineup
table.insert(Config.DoorList, {
	fixText = true,
	objHash = -288803980, -- gabz_mrpd_door_01
	objCoords = vector3(479.06, -1003.173, 26.4065),
	locked = true,
	objHeading = 90,
	maxDistance = 2,
    authorizedJobs = { ['police'] = 0, ['fbi'] = 0, ['state'] = 0, ['sheriff'] = 0, ['ranger'] = 0, ['davison'] = 0 },
})

-- Observation i
table.insert(Config.DoorList, {
	fixText = true,
	objHash = -1406685646, -- gabz_mrpd_door_04
	objCoords = vector3(482.6694, -983.9868, 26.40548),
	locked = true,
	objHeading = 270,
	maxDistance = 2,
    authorizedJobs = { ['police'] = 0, ['fbi'] = 0, ['state'] = 0, ['sheriff'] = 0, ['ranger'] = 0, ['davison'] = 0 },
})

-- Interrogation i
table.insert(Config.DoorList, {
	fixText = true,
	objHash = -1406685646, -- gabz_mrpd_door_04
	objCoords = vector3(482.6701, -987.5792, 26.40548),
	locked = true,
	objHeading = 270,
	maxDistance = 2,
    authorizedJobs = { ['police'] = 0, ['fbi'] = 0, ['state'] = 0, ['sheriff'] = 0, ['ranger'] = 0, ['davison'] = 0 },
})

-- Observation ii
table.insert(Config.DoorList, {
	fixText = true,
	objHash = -1406685646, -- gabz_mrpd_door_04
	objCoords = vector3(482.6699, -992.2991, 26.40548),
	locked = true,
	objHeading = 270,
	maxDistance = 2,
    authorizedJobs = { ['police'] = 0, ['fbi'] = 0, ['state'] = 0, ['sheriff'] = 0, ['ranger'] = 0, ['davison'] = 0 },
})

-- Interrogation ii
table.insert(Config.DoorList, {
	fixText = true,
	objHash = -1406685646, -- gabz_mrpd_door_04
	objCoords = vector3(482.6703, -995.7285, 26.40548),
	locked = true,
	objHeading = 270,
	maxDistance = 2,
    authorizedJobs = { ['police'] = 0, ['fbi'] = 0, ['state'] = 0, ['sheriff'] = 0, ['ranger'] = 0, ['davison'] = 0 },
})

-- Evidence
table.insert(Config.DoorList, {
	fixText = true,
	objHash = -692649124, -- gabz_mrpd_door_03
	objCoords = vector3(475.8323, -990.4839, 26.40548),
	locked = true,
	objHeading = 134.7,
	maxDistance = 2,
    authorizedJobs = { ['police'] = 0, ['fbi'] = 0, ['state'] = 0, ['sheriff'] = 0, ['ranger'] = 0, ['davison'] = 0 },
})

-- Armoury 1
table.insert(Config.DoorList, {
	fixText = true,
	objHash = -692649124, -- gabz_mrpd_door_03
	objCoords = vector3(479.7507, -999.629, 30.78927),
	locked = true,
	objHeading = 90,
	maxDistance = 2,
    authorizedJobs = { ['police'] = 0, ['fbi'] = 0, ['state'] = 0, ['sheriff'] = 0, ['ranger'] = 0, ['davison'] = 0 },
})

-- Armoury 2
table.insert(Config.DoorList, {
	fixText = true,
	objHash = -692649124, -- gabz_mrpd_door_03
	objCoords = vector3(487.4378, -1000.189, 30.78697),
	locked = true,
	objHeading = 181.28,
	maxDistance = 2,
    authorizedJobs = { ['police'] = 0, ['fbi'] = 0, ['state'] = 0, ['sheriff'] = 0, ['ranger'] = 0, ['davison'] = 0 },
})

-- Shooting range
table.insert(Config.DoorList, {
	maxDistance = 2,
	locked = true,
	doors = {
		{
			objHash = -692649124, -- gabz_mrpd_door_03
			objHeading = 0,
			objCoords = vector3(485.6133, -1002.902, 30.78697),
		},
		{
			objHash = -692649124, -- gabz_mrpd_door_03
			objHeading = 180,
			objCoords = vector3(488.0184, -1002.902, 30.78697),
		},
	},
    authorizedJobs = { ['police'] = 0, ['fbi'] = 0, ['state'] = 0, ['sheriff'] = 0, ['ranger'] = 0, ['davison'] = 0 },
})

-- Rooftop
table.insert(Config.DoorList, {
	objCoords = vector3(464.3086, -984.5284, 43.77124),
	objHeading = 90.000465393066,
	slides = false,
	garage = false,
	maxDistance = 2,
	fixText = true,
	objHash = -692649124, -- gabz_mrpd_door_03
	locked = true,
	lockpick = false,
	audioRemote = false,
    authorizedJobs = { ['police'] = 0, ['fbi'] = 0, ['state'] = 0, ['sheriff'] = 0, ['ranger'] = 0, ['davison'] = 0 },
})


-- mrpd-500 Oluşturan Emre
Config.DoorList['mrpd-mrpd-500'] = {
    doorLabel = 'mrpd-500',
    objCoords = vec3(440.520081, -986.167419, 30.823193),
    authorizedJobs = { ['police'] = 0, ['fbi'] = 0, ['state'] = 0, ['sheriff'] = 0, ['ranger'] = 0, ['davison'] = 0 },
    doorType = 'door',
    fixText = false,
    objYaw = 0.0,
    locked = true,
    distance = 3,
    doorRate = 1.0,
    objName = -1406685646,
}

-- mrpd-501 Oluşturan Emre
Config.DoorList['mrpd-mrpd-501'] = {
    doorType = 'double',
    doorLabel = 'mrpd-501',
    doors = {
        {objName = -288803980, objYaw = 270.00003051758, objCoords = vec3(438.197083, -993.911255, 30.823193)},
        {objName = -288803980, objYaw = 89.999977111816, objCoords = vec3(438.197083, -996.316650, 30.823193)}
    },
    distance = 3,
    locked = true,
    doorRate = 1.0,
    authorizedJobs = { ['police'] = 0, ['fbi'] = 0, ['state'] = 0, ['sheriff'] = 0, ['ranger'] = 0, ['davison'] = 0 },
}

-- mrpd-502 Oluşturan Emre
Config.DoorList['mrpd-mrpd-502'] = {
    doorLabel = 'mrpd-502',
    objCoords = vec3(458.089417, -995.524658, 30.823193),
    authorizedJobs = { ['police'] = 0, ['fbi'] = 0, ['state'] = 0, ['sheriff'] = 0, ['ranger'] = 0, ['davison'] = 0 },
    doorType = 'door',
    fixText = false,
    objYaw = 225.02824401855,
    locked = true,
    distance = 3,
    doorRate = 1.0,
    objName = 149284793,
}

-- mrpd-503 Oluşturan Emre
Config.DoorList['mrpd-mrpd-503'] = {
    doorLabel = 'mrpd-503',
    objCoords = vec3(458.654327, -989.445740, 30.823193),
    authorizedJobs = { ['police'] = 0, ['fbi'] = 0, ['state'] = 0, ['sheriff'] = 0, ['ranger'] = 0, ['davison'] = 0 },
    doorType = 'door',
    fixText = false,
    objYaw = 270.00003051758,
    locked = true,
    distance = 3,
    doorRate = 1.0,
    objName = -1406685646,
}

-- mrpd-504 Oluşturan Emre
Config.DoorList['mrpd-mrpd-504'] = {
    doorLabel = 'mrpd-504',
    objCoords = vec3(458.654327, -976.886414, 30.823193),
    authorizedJobs = { ['police'] = 0, ['fbi'] = 0, ['state'] = 0, ['sheriff'] = 0, ['ranger'] = 0, ['davison'] = 0 },
    doorType = 'door',
    fixText = false,
    objYaw = 270.00003051758,
    locked = true,
    distance = 3,
    doorRate = 1.0,
    objName = -1406685646,
}

-- mrpd-505 Oluşturan Emre
Config.DoorList['mrpd-mrpd-505'] = {
    doorType = 'double',
    doorLabel = 'mrpd-505',
    doors = {
        {objName = -288803980, objYaw = 89.999977111816, objCoords = vec3(469.440613, -987.437683, 30.823193)},
        {objName = -288803980, objYaw = 270.00003051758, objCoords = vec3(469.440613, -985.031311, 30.823193)}
    },
    distance = 3,
    locked = true,
    doorRate = 1.0,
    authorizedJobs = { ['police'] = 0, ['fbi'] = 0, ['state'] = 0, ['sheriff'] = 0, ['ranger'] = 0, ['davison'] = 0 },
}

-- mrpd-506 Oluşturan Emre
Config.DoorList['mrpd-mrpd-506'] = {
    doorType = 'double',
    doorLabel = 'mrpd-506',
    doors = {
        {objName = -96679321, objYaw = 180.00001525879, objCoords = vec3(472.977692, -989.824707, 30.823193)},
        {objName = -1406685646, objYaw = 180.00001525879, objCoords = vec3(475.383698, -989.824707, 30.823193)}
    },
    distance = 3,
    locked = true,
    doorRate = 1.0,
    authorizedJobs = { ['police'] = 0, ['fbi'] = 0, ['state'] = 0, ['sheriff'] = 0, ['ranger'] = 0, ['davison'] = 0 },
}

-- mrpd-507 Oluşturan Emre
Config.DoorList['mrpd-mrpd-507'] = {
    doorType = 'double',
    doorLabel = 'mrpd-507',
    doors = {
        {objName = 149284793, objYaw = 180.00001525879, objCoords = vec3(475.383698, -984.372192, 30.823193)},
        {objName = 149284793, objYaw = 0.0, objCoords = vec3(472.978088, -984.372192, 30.823193)}
    },
    distance = 3,
    locked = true,
    doorRate = 1.0,
    authorizedJobs = { ['police'] = 0, ['fbi'] = 0, ['state'] = 0, ['sheriff'] = 0, ['ranger'] = 0, ['davison'] = 0 },
}

-- mrpd-508 Oluşturan Emre
Config.DoorList['mrpd-mrpd-508'] = {
    doorType = 'double',
    doorLabel = 'mrpd-508',
    doors = {
        {objName = -96679321, objYaw = 270.00003051758, objCoords = vec3(479.753387, -988.620361, 30.823193)},
        {objName = -1406685646, objYaw = 270.00003051758, objCoords = vec3(479.753387, -986.215088, 30.823193)}
    },
    distance = 3,
    locked = true,
    doorRate = 1.0,
    authorizedJobs = { ['police'] = 0, ['fbi'] = 0, ['state'] = 0, ['sheriff'] = 0, ['ranger'] = 0, ['davison'] = 0 },
}