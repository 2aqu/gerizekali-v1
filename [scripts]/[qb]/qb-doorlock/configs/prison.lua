-- ## GABZ - BOLINGBROKE PENITENTIARY
-- ## COORDINATES: 1855.556 2586.384 45.673


-- ## RECEPTION - COORDINATES: 1855.556 2586.384 45.673
-- entrance (big gates)
table.insert(Config.DoorList, {
	objHash = 741314661, -- prop_gate_prison_01
	objCoords = vector3(1844.9, 2604.8, 44.6),
	textCoords = vector3(1845.28, 2608.5, 48.0),
	authorizedJobs = { ['police'] = 0, ['fbi'] = 0, ['state'] = 0, ['sheriff'] = 0, ['ranger'] = 0, ['davison'] = 0, ['vpd'] = 0, ['doj'] = 0, ["dppd"] = 0 },
	locked = true,
	maxDistance = 12,
	fixText = true,
	size = 2,
	slides = true,
	lockpick = true, 
})

table.insert(Config.DoorList, {
	objHash = 741314661, -- prop_gate_prison_01
	objCoords = vector3(1818.5, 2604.8, 44.6),
	textCoords = vector3(1818.5, 2608.4, 48.0),
	authorizedJobs = { ['police'] = 0, ['fbi'] = 0, ['state'] = 0, ['sheriff'] = 0, ['ranger'] = 0, ['davison'] = 0, ['vpd'] = 0, ['doj'] = 0, ["dppd"] = 0 },
	locked = true,
	maxDistance = 12,
	fixText = true,
	size = 2,
	slides = true,
	lockpick = true,
})

-- main entry
table.insert(Config.DoorList, {
	objHash = 1373390714, -- prop_gate_prison_01
	objHeading = 89.999977111816,
	maxDistance = 2.0,
	audioRemote = false,
	objCoords = vector3(1845.336, 2585.348, 46.0855),
	authorizedJobs = { ['police'] = 0, ['fbi'] = 0, ['state'] = 0, ['sheriff'] = 0, ['ranger'] = 0, ['davison'] = 0, ['vpd'] = 0, ['doj'] = 0, ["dppd"] = 0 },
	lockpick = false,
	fixText = true,
	locked = true,
	garage = false,
	slides = false,		
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- reception staff entry
table.insert(Config.DoorList, {
	objHash = 2024969025, -- sanhje_prison_recep_door01 
	slides = false,
	maxDistance = 2.0,
	objHeading = 0.0,
	lockpick = false,
	authorizedJobs = { ['police'] = 0, ['fbi'] = 0, ['state'] = 0, ['sheriff'] = 0, ['ranger'] = 0, ['davison'] = 0, ['vpd'] = 0, ['doj'] = 0, ["dppd"] = 0 },
	fixText = false,
	locked = true,
	audioRemote = false,
	objCoords = vector3(1844.404, 2576.997, 46.0356),
	garage = false,		
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})





-- photography room door
table.insert(Config.DoorList, {
	objHash = -684929024, -- sanhje_prison_recep_door02
	slides = false,
	maxDistance = 2.0,
	objHeading = 270.00003051758,
	lockpick = false,
	authorizedJobs = { ['police'] = 0, ['fbi'] = 0, ['state'] = 0, ['sheriff'] = 0, ['ranger'] = 0, ['davison'] = 0, ['vpd'] = 0, ['doj'] = 0, ["dppd"] = 0 },
	fixText = false,
	locked = true,
	audioRemote = false,
	objCoords = vector3(1838.617, 2593.705, 46.03636),
	garage = false,		
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- prisoners visits access
table.insert(Config.DoorList, {
	objHash = -684929024, -- sanhje_prison_recep_door02
	slides = false,
	maxDistance = 2.0,
	objHeading = 179.99998474121,
	lockpick = false,
	authorizedJobs = { ['police'] = 0, ['fbi'] = 0, ['state'] = 0, ['sheriff'] = 0, ['ranger'] = 0, ['davison'] = 0, ['vpd'] = 0, ['doj'] = 0, ["dppd"] = 0 },
	fixText = false,
	locked = true,
	audioRemote = false,
	objCoords = vector3(1827.981, 2592.157, 46.03718),
	garage = false,		
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- reception entry
table.insert(Config.DoorList, {
	maxDistance = 2.0,
	objCoords = vector3(1835.902, 2584.903, 45.0169),
	audioRemote = false,
	garage = false,
	authorizedJobs = { ['police'] = 0, ['fbi'] = 0, ['state'] = 0, ['sheriff'] = 0, ['ranger'] = 0, ['davison'] = 0, ['vpd'] = 0, ['doj'] = 0, ["dppd"] = 0 },
	fixText = false,
	lockpick = false,
	objHash = 673826957, -- prop_pris_door_03
	locked = true,
	objHeading = 89.999977111816,
	slides = false,		
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})



-- hallway entry
table.insert(Config.DoorList, {
	lockpick = false,
	doors = {
		{objHash = -1624297821, objHeading = 4.8494574002689e-05, objCoords = vector3(1766.325, 2574.698, 45.75301)}, -- sanhje_prison_infirmary_door1
		{objHash = -1624297821, objHeading = 180.00001525879, objCoords = vector3(1764.025, 2574.698, 45.75301)} -- sanhje_prison_infirmary_door1
 },
	slides = false,
	audioRemote = false,
	maxDistance = 2.5,
	authorizedJobs = { ['police'] = 0, ['fbi'] = 0, ['state'] = 0, ['sheriff'] = 0, ['ranger'] = 0, ['davison'] = 0, ['vpd'] = 0, ['doj'] = 0, ["dppd"] = 0 },
	locked = true,		
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- laboratory
table.insert(Config.DoorList, {
	objCoords = vector3(1767.323, 2580.832, 45.74783),
	garage = false,
	maxDistance = 2.0,
	lockpick = false,
	objHash = -1392981450, -- sanhje_prison_infirmary_door2
	fixText = false,
	objHeading = 90.000007629395,
	audioRemote = false,
	slides = false,
	authorizedJobs = { ['police'] = 0, ['fbi'] = 0, ['state'] = 0, ['sheriff'] = 0, ['ranger'] = 0, ['davison'] = 0, ['vpd'] = 0, ['doj'] = 0, ["dppd"] = 0 },
	locked = true,		
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- surgery
table.insert(Config.DoorList, {
	lockpick = false,
	doors = {
		{objHash = -1624297821, objHeading = 270.0, objCoords = vector3(1767.321, 2582.308, 45.75345)}, -- sanhje_prison_infirmary_door1
		{objHash = -1624297821, objHeading = 90.000007629395, objCoords = vector3(1767.321, 2584.607, 45.75345)} -- sanhje_prison_infirmary_door1
 },
	slides = false,
	audioRemote = false,
	maxDistance = 2.5,
	authorizedJobs = { ['police'] = 0, ['fbi'] = 0, ['state'] = 0, ['sheriff'] = 0, ['ranger'] = 0, ['davison'] = 0, ['vpd'] = 0, ['doj'] = 0, ["dppd"] = 0 },
	locked = true,		
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- intensive care
table.insert(Config.DoorList, {
	lockpick = false,
	doors = {
		{objHash = -1624297821, objHeading = 3.8476657209685e-05, objCoords = vector3(1766.325, 2589.564, 45.75309)}, -- sanhje_prison_infirmary_door1
		{objHash = -1624297821, objHeading = 180.00006103516, objCoords = vector3(1764.026, 2589.564, 45.75309)} -- sanhje_prison_infirmary_door1
 },
	slides = false,
	audioRemote = false,
	maxDistance = 2.5,
	authorizedJobs = { ['police'] = 0, ['fbi'] = 0, ['state'] = 0, ['sheriff'] = 0, ['ranger'] = 0, ['davison'] = 0, ['vpd'] = 0, ['doj'] = 0, ["dppd"] = 0 },
	locked = true,		
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})


