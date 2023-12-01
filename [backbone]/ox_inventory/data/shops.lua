---wip types

---@class OxShop
---@field name string
---@field label? string
---@field blip? { id: number, colour: number, scale: number }
---@field inventory { name: string, price: number, count?: number, currency?: string }
---@field locations? vector3[]
---@field targets? { loc: vector3, length: number, width: number, heading: number, minZ: number, maxZ: number, distance: number, debug?: boolean, drawSprite?: boolean }[]
---@field groups? string | string[] | table<string, number> }
---@field model? number[]

return {
	-- YouTool = {
	-- 	name = 'Nalbur',
	-- 	blip = {
	-- 		id = 402, colour = 69, scale = 0.7
	-- 	}, inventory = {
	-- 		{ name = 'lockpick', price = 70 },
	-- 		{ name = 'bag', price = 1500 },
	-- 		{ name = 'drill', price = 100 },
	-- 		{ name = 'cleaningkit', price = 150 },
	-- 		{ name = 'gasmask', price = 200 },
	-- 		{ name = 'chair1', price = 50 },
	-- 		{ name = 'chair2', price = 50 },
	-- 		{ name = 'chair3', price = 50 },
	-- 		{ name = 'chair4', price = 50 },
	-- 		{ name = 'chair5', price = 50 },
	-- 		{ name = 'chair6', price = 50 },
	-- 		{ name = 'chair7', price = 50 },
	-- 		{ name = 'chair8', price = 50 },
	-- 		{ name = 'eskitelefon', price = 400 },
	-- 		{ name = 'lithium', price = 75 },
	-- 		{ name = 'methlab', price = 75 },
	-- 		-- { name = 'towingrope', price = 1000 },
	-- 		{ name = 'weed_ak47_seed', price = 30 },
	-- 		{ name = 'thermite', price = 15000 },
	-- 		{ name = 'thermitec', price = 20000 }
	-- 	}, locations = {
	-- 		vector3(29.4, -1770.37, 29.61)
	-- 	}, targets = {
	-- 		{ loc = vector3(29.4, -1770.37, 29.61), length = 0.6, width = 3.0, heading = 65.0, minZ = 29.0, maxZ = 31.0, distance = 3.0, pedaq = true },
	-- 		{ loc = vector3(-163.92, 6334.4, 31.58), length = 0.6, width = 3.0, heading = 315.0, minZ = 31.0, maxZ = 33.0, distance = 3.0, pedaq = true }
	-- 	}
	-- },

	-- Manav = {
	-- 	name = 'Manav',
	-- 	blip = {
	-- 		id = 59, colour = 0, scale = 0.7
	-- 	}, inventory = {
	-- 		{ name = 'seker', 				price = 5},
	-- 		{ name = 'yumurta', 			price = 5},
	-- 		{ name = 'kremsanti', 			price = 5},
	-- 		{ name = 'sut', 				price = 5},
	-- 		{ name = 'buz', 				price = 5},
	-- 		{ name = 'etilalkol', 			price = 5},
	-- 		{ name = 'kahvea', 				price = 5},
	-- 		{ name = 'sogan2', 				price = 5},
	-- 		{ name = 'limon', 				price = 5},
	-- 		{ name = 'patates2', 			price = 5},
	-- 		{ name = 'marul2', 				price = 5},
	-- 		{ name = 'ketcap', 				price = 5},
	-- 		{ name = 'havuc', 				price = 5},
	-- 		{ name = 'tuz', 				price = 5},
	-- 		{ name = 'dana_eti', 			price = 5},
	-- 		{ name = 'packaged_chicken', 	price = 5},
	-- 		{ name = 'misir', 				price = 5},
	-- 		{ name = 'yosun', 				price = 5},
	-- 		{ name = 'baliketi', 			price = 5},
	-- 		{ name = 'domates2', 			price = 5},
	-- 		{ name = 'kiyma', 				price = 5},
	-- 		{ name = 'domates', 			price = 5},
	-- 		{ name = 'redbull', 			price = 5},
	-- 		{ name = 'sosis', 				price = 5},
	-- 		{ name = 'slaughtered_chicken', price = 5},
	-- 		{ name = 'hamur', 				price = 5},
	-- 		{ name = 'water_bottle', 		price = 5}
	-- 	}, locations = {
	-- 		vector3(386.36, -324.86, 46.87)
	-- 	}, targets = {
	-- 		{ loc = vector3(386.36, -324.86, 46.87), length = 0.6, width = 3.0, heading = 65.0, minZ = 46.0, maxZ = 47.50, distance = 3.0, pedaq = true }
	-- 	}
	-- },

	PoliceArmoury = {
		name = 'Mühimmat Deposu',
		groups = shared.police,
		blip = {
			id = 110, colour = 84, scale = 0.5
		}, inventory = {
			{ name = 'weapon_glock19gen4', price = 0, metadata = { registered = true, serial = 'POL' } },
			{ name = 'weapon_glock18c', price = 0, metadata = { registered = true, serial = 'POL' }, grade = 9 },
			{ name = 'weapon_beanbagshotgun', price = 0, },
			{ name = 'weapon_stungun', price = 0, },
			{ name = 'weapon_nightstick', price = 0, },
			{ name = 'pkelepce', price = 0, },
			{ name = 'pkelepceanahtar', price = 0, },
			{ name = 'weapon_flashlight', price = 0, },
			{ name = 'police_stormram', price = 0, },
			{ name = 'armor', price = 0, },
			{ name = 'heavyarmor', price = 0, },
			{ name = 'radio', price = 0, },
			{ name = 'gps', price = 0 },
			{ name = 'bandage', price = 0 },
			{ name = 'ifaks', price = 0 },
			{ name = 'drone_flyer_7', price = 0 },
			{ name = 'megaphone', price = 0 },
			{ name = 'empty_evidence_bag', price = 0 },
			{ name = 'flush_cutter', price = 0 },
			{ name = 'clip', price = 0 },
			{ name = 'flashlight', price = 0 },
			{ name = 'susturucu', price = 0 },
			{ name = 'grip', price = 0 },
			{ name = 'scope', price = 0 },
			{ name = 'ammo-9', price = 0 },
			{ name = 'ammo-smg', price = 0 },
			{ name = 'ammo-rifle', price = 0 },
			{ name = 'ammo-shotgun', price = 0 },
			{ name = 'firstaid', price = 0 },
		}, locations = {
			vec3(451.51, -979.44, 30.68)
		}, targets = {
			{ loc = vec3(485.37, -995.29, 30.69), length = 1.0, width = 4.0, heading = 161.0, minZ = 29.5, maxZ = 31.0, distance = 1.5 },
			{ loc = vec3(835.24, -1300.89, 24.07), length = 1.0, width = 1.0, heading = 161.0, minZ = 23.5, maxZ = 25.0, distance = 1.5 },
			{ loc = vec3(387.2, 799.81, 187.46), length = 1.0, width = 1.0, heading = 161.0, minZ = 186.5, maxZ = 188.0, distance = 1.5 },
			{ loc = vec3(364.64, -1604.06, 25.45), length = 1.0, width = 1.0, heading = 161.0, minZ = 24.5, maxZ = 27.0, distance = 1.5 },
			{ loc = vec3(1837.84, 3688.13, 34.19), length = 1.0, width = 1.0, heading = 161.0, minZ = 33.5, maxZ = 35.0, distance = 1.5 },
			{ loc = vec3(-1106.92, -826.05, 14.28), length = 1.0, width = 1.0, heading = 161.0, minZ = 13.5, maxZ = 15.0, distance = 1.5 },
			{ loc = vector3(618.26, 16.09, 82.59), length = 1.0, width = 1.0, heading = 161.0, minZ = 80.5, maxZ = 84.0, distance = 1.5 },
			{ loc = vector3(-449.63, 6015.55, 36.95), length = 1.0, width = 1.0, heading = 161.0, minZ = 34.5, maxZ = 38.0, distance = 1.5 },
			{ loc = vector3(2528.8, -340.58, 101.85), length = 1.0, width = 1.0, heading = 161.0, minZ = 99.5, maxZ = 103.0, distance = 1.5 }, --muh
			{ loc = vector3(-1617.54, -1030.85, 13.18), length = 1.0, width = 1.0, heading = 161.0, minZ = 12.5, maxZ = 14.0, distance = 1.5 }, --dppd
		}
	},

	metrotec = {
		name = 'Ağır Silah Deposu',
		groups = {
			['ranger'] = 0
		}, inventory = {
			{ name = 'weapon_mpx', price = 0, metadata = { registered = true, serial = 'POL' }, grade = 9  },
			{ name = 'weapon_scarsc', price = 0, metadata = { registered = true, serial = 'POL' }, grade = 9  },
			{ name = 'weapon_m6ic', price = 0, metadata = { registered = true, serial = 'POL' }, grade = 9  },
		}, locations = {
			vector3(2528.33, -340.26, 101.89)
		}, targets = {
			{ loc = vector3(2528.33, -340.26, 101.89), length = 2.0, width = 4.0, heading = 161.0, minZ = 99.5, maxZ = 103.0, distance = 1.5 }
		}
	},


	Medicine = {
		name = 'EMS Marketi',
		groups = {
			['ambulance'] = 0
		}, inventory = {
			{ name = 'radio', price = 0 },
			{ name = 'bandage', price = 0 },
			{ name = 'painkillers', price = 0 },
			{ name = 'firstaid', price = 0 },
			{ name = 'weapon_flashlight', price = 0 },
			{ name = 'gps', price = 0 },
			{ name = 'weapon_stungun', price = 0 },
		}, locations = {
			vec3(306.3687, -601.5139, 43.28406)
		}, targets = {
			{ loc = vec3(306.71, -602.05, 43.25), length = 2.0, width = 4.0, heading = 161.0, minZ = 42.5, maxZ = 45.0, distance = 1.5 }
		}
	},

	News = {
		name = 'News Market',
		groups = {
			['reporter'] = 0
		}, inventory = {
			{ name = 'newscam', price = 1 },
			{ name = 'newsmic', price = 1 },
			{ name = 'newsbmic', price = 1 },
		}, locations = {
			vec3(-1052.9253, -230.7156, 44.9161)
		}, targets = {
			{ loc = vec3(-1052.9253, -230.7156, 43.9161), length = 2.0, width = 4.0, heading = 161.0, minZ = 43.5, maxZ = 45.0, distance = 1.5 }
		}
	},

	
	jail = {
		name = 'Hapishane Marketi',
		inventory = {
			{ name = 'sandwich', price = 5 },
			{ name = 'water_bottle', price = 5 },
		}, locations = {
			vec3(1780.49, 2560.77, 44.67)
		}, targets = {
			{ loc = vec3(1780.49, 2560.77, 44.67), length = 2.0, width = 4.0, heading = 161.0, minZ = 42.5, maxZ = 46.0, distance = 1.5 }
		}
	},

	Ammunation = {
		name = 'Ammunation Marketi',
		groups = {
			['ammunation1'] = 0
		}, inventory = {
			{ name = 'ammo-9', price = 100 },
			{ name = 'ammo-smg', price = 1000 },
			{ name = 'armor', price = 350 },
			{ name = 'weapon_bats', price = 350 },
			{ name = 'weapon_knife', price = 500 },
			{ name = 'clip', price = 250 },
			{ name = 'flashlight', price = 250 },
			-- { name = 'blueprint_smg', price = 15000 },
			{ name = 'weapon_p226', price = 5000 },
			{ name = 'weapon_pistol', price = 5000 },
			{ name = 'weapon_dp9', price = 7500 },
			{ name = 'weapon_combatpistol', price = 7500 },
			{ name = 'weapon_heavypistol', price = 16000 },
			{ name = 'weapon_browning', price = 16000 },
			{ name = 'weapon_minismg2', price = 30000 },
			{ name = 'weapon_appistol', price = 30000 },
			{ name = 'weapon_advancedrifle', price = 50000 },
			{ name = 'weapon_switchblade', price = 1700 },
			{ name = 'susturucu', price = 1000 },
		}, locations = {
			vec3(22.48, -1104.74, 29.8)
		}, targets = {
			{ loc = vec3(22.48, -1104.74, 29.8), length = 2.0, width = 4.0, heading = 161.0, minZ = 28.5, maxZ = 31.0, distance = 1.5 }
		}
	},

	teqbar = {
		name = 'Bar',
		groups = {
			['tequila'] = 0
		}, inventory = {
			{ name = 'beer', price = 100 },
			{ name = 'tekila', price = 100 },
			{ name = 'sexon', price = 100 },
			{ name = 'vodka', price = 100 },
			{ name = 'whiskey', price = 100 },
			{ name = 'bespresso', price = 100 },
			{ name = 'bhotchoc', price = 100 },
			{ name = 'bcoldbrewlatte', price = 100 },
			{ name = 'kizartma', price = 100 },
			{ name = 'cikolatapasta', price = 100 },
			{ name = 'bberrymuffin', price = 100 },
			{ name = 'donut', price = 100 },

			
		}, locations = {
			vector3(-562.85, 288.69, 82.19)
		}, targets = {
			{ loc = vector3(-562.85, 288.69, 82.19), length = 2.0, width = 4.0, heading = 161.0, minZ = 80.5, maxZ = 84.0, distance = 1.5 }
		}
	},

	
	customcafe = {
		name = 'Bar',
		groups = {
			['custom'] = 0
		}, inventory = {
			{ name = 'beer', price = 0 },
			{ name = 'tekila', price = 0 },
			{ name = 'sexon', price = 0 },
			{ name = 'vodka', price = 0 },
			{ name = 'whiskey', price = 0 },
			{ name = 'bespresso', price = 0 },
			{ name = 'bhotchoc', price = 0 },
			{ name = 'bcoldbrewlatte', price = 0 },
			{ name = 'kizartma', price = 0 },
			{ name = 'cikolatapasta', price = 0 },
			{ name = 'bberrymuffin', price = 0 },
			{ name = 'bdonut', price = 0 },
			{ name = 'mojito', price = 0 },
			{ name = 'grape', price = 0 },
			{ name = 'wine', price = 0 },
			{ name = 'grapejuice', price = 0 },
			{ name = 'tekila', price = 0 },
			{ name = 'snikkel_candy', price = 0 },
			{ name = 'bapple', price = 0 },
			{ name = 'bmuffin', price = 0 },
			{ name = 'bchocolatemuffin', price = 0 },
			{ name = 'sandwich', price = 0 }
			
		}, locations = {
			vector3(-562.85, 288.69, 82.19)
		}, targets = {
			{ loc = vector3(300.95, -923.48, 58.31), length = 2.0, width = 4.0, heading = 161.0, minZ = 57.5, maxZ = 60.0, distance = 1.5 },
			{ loc = vector3(329.96, -891.49, 60.15), length = 2.0, width = 4.0, heading = 161.0, minZ = 59.5, maxZ = 62.0, distance = 1.5 }
		}
	},

	terascafenew = {
		name = 'Bar',
		groups = {
			['custom2'] = 0
		}, inventory = {
			{ name = 'beer', price = 0 },
			{ name = 'tekila', price = 0 },
			{ name = 'sexon', price = 0 },
			{ name = 'vodka', price = 0 },
			{ name = 'whiskey', price = 0 },
			{ name = 'bespresso', price = 0 },
			{ name = 'bhotchoc', price = 0 },
			{ name = 'bcoldbrewlatte', price = 0 },
			{ name = 'kizartma', price = 0 },
			{ name = 'cikolatapasta', price = 0 },
			{ name = 'bberrymuffin', price = 0 },
			{ name = 'bdonut', price = 0 },
			{ name = 'mojito', price = 0 },
			{ name = 'grape', price = 0 },
			{ name = 'wine', price = 0 },
			{ name = 'grapejuice', price = 0 },
			{ name = 'tekila', price = 0 },
			{ name = 'snikkel_candy', price = 0 },
			{ name = 'bapple', price = 0 },
			{ name = 'bmuffin', price = 0 },
			{ name = 'bchocolatemuffin', price = 0 },
			{ name = 'sandwich', price = 0 }
			
		}, locations = {
			vector3(-747.89, -215.61, 48.5)
		}, targets = {
			{ loc = vector3(-747.89, -215.61, 48.5), length = 2.0, width = 4.0, heading = 161.0, minZ = 46.5, maxZ = 52.0, distance = 1.5 },
		}
	},

	rivercafe = {
		name = 'Bar',
		groups = {
			['rivercafe'] = 0
		}, inventory = {
			{ name = 'beer', price = 0 },
			{ name = 'tekila', price = 0 },
			{ name = 'sexon', price = 0 },
			{ name = 'vodka', price = 0 },
			{ name = 'whiskey', price = 0 },
			{ name = 'bespresso', price = 0 },
			{ name = 'bhotchoc', price = 0 },
			{ name = 'bcoldbrewlatte', price = 0 },
			{ name = 'kizartma', price = 0 },
			{ name = 'cikolatapasta', price = 0 },
			{ name = 'bberrymuffin', price = 0 },
			{ name = 'bdonut', price = 0 },
			{ name = 'mojito', price = 0 },
			{ name = 'grape', price = 0 },
			{ name = 'wine', price = 0 },
			{ name = 'grapejuice', price = 0 },
			{ name = 'tekila', price = 0 },
			{ name = 'snikkel_candy', price = 0 },
			{ name = 'bapple', price = 0 },
			{ name = 'bmuffin', price = 0 },
			{ name = 'bchocolatemuffin', price = 0 },
			{ name = 'sandwich', price = 0 }
			
		}, locations = {
			vector3(680.0, -1648.15, 12.69)
		}, targets = {
			{ loc = vector3(680.0, -1648.15, 12.69), length = 2.0, width = 4.0, heading = 161.0, minZ = 10.5, maxZ = 16.0, distance = 1.5 },
		}
	},

	luxery = {
		name = 'Bar',
		groups = {
			['luxery'] = 0
		}, inventory = {
			{ name = 'beer', price = 0 },
			{ name = 'tekila', price = 0 },
			{ name = 'sexon', price = 0 },
			{ name = 'vodka', price = 0 },
			{ name = 'whiskey', price = 0 },
			{ name = 'bespresso', price = 0 },
			{ name = 'bhotchoc', price = 0 },
			{ name = 'bcoldbrewlatte', price = 0 },
			{ name = 'kizartma', price = 0 },
			{ name = 'cikolatapasta', price = 0 },
			{ name = 'bberrymuffin', price = 0 },
			{ name = 'bdonut', price = 0 },
			{ name = 'mojito', price = 0 },
			{ name = 'grape', price = 0 },
			{ name = 'wine', price = 0 },
			{ name = 'grapejuice', price = 0 },
			{ name = 'tekila', price = 0 },
			{ name = 'snikkel_candy', price = 0 },
			{ name = 'bapple', price = 0 },
			{ name = 'bmuffin', price = 0 },
			{ name = 'bchocolatemuffin', price = 0 },
			{ name = 'sandwich', price = 0 }
			
		}, locations = {
			vector3(-862.56, -233.42, 61.01)
		}, targets = {
			{ loc = vector3(-862.56, -233.42, 61.01), length = 2.0, width = 4.0, heading = 161.0, minZ = 59.5, maxZ = 63.0, distance = 1.5 }
		}
	},

	unicorn = {
		name = 'Bar',
		groups = {
			['unicorn'] = 0
		}, inventory = {
			{ name = 'beer', price = 100 },
			{ name = 'tekila', price = 100 },
			{ name = 'sexon', price = 100 },
			{ name = 'vodka', price = 100 },
			{ name = 'whiskey', price = 100 },
			{ name = 'bespresso', price = 100 },
			{ name = 'bhotchoc', price = 100 },
			{ name = 'bcoldbrewlatte', price = 100 },
			{ name = 'kizartma', price = 100 },
			{ name = 'cikolatapasta', price = 100 },
			{ name = 'bberrymuffin', price = 100 },
			{ name = 'donut', price = 100 },

			
		}, locations = {
			vector3(128.88, -1284.37, 29.28)
		}, targets = {
			{ loc = vector3(128.88, -1284.37, 29.28), length = 2.0, width = 4.0, heading = 161.0, minZ = 28.5, maxZ = 31.0, distance = 1.5 }
		}
	},


	bahama = {
		name = 'Bar',
		groups = {
			['bahama'] = 0
		}, inventory = {
			{ name = 'beer', price = 0 },
			{ name = 'tekila', price = 0 },
			{ name = 'sexon', price = 0 },
			{ name = 'vodka', price = 0 },
			{ name = 'whiskey', price = 0 },
			{ name = 'bespresso', price = 0 },
			{ name = 'bhotchoc', price = 0 },
			{ name = 'bcoldbrewlatte', price = 0 },
			{ name = 'kizartma', price = 0 },
			{ name = 'cikolatapasta', price = 0 },
			{ name = 'bberrymuffin', price = 0 },
			{ name = 'donut', price = 0 },

			
		}, locations = {
			vector3(-1400.07, -597.88, 30.33)
		}, targets = {
			{ loc = vector3(-1400.07, -597.88, 30.33), length = 2.0, width = 4.0, heading = 161.0, minZ = 28.5, maxZ = 32.0, distance = 1.5 }
		}
	},

	casino = {
		name = 'Bar',
		groups = {
			['mechanic13'] = 0
		}, inventory = {
			{ name = 'beer', price = 100 },
			{ name = 'tekila', price = 100 },
			{ name = 'sexon', price = 100 },
			{ name = 'vodka', price = 100 },
			{ name = 'whiskey', price = 100 },
			{ name = 'bespresso', price = 100 },
			{ name = 'bhotchoc', price = 100 },
			{ name = 'bcoldbrewlatte', price = 100 },
			{ name = 'kizartma', price = 100 },
			{ name = 'cikolatapasta', price = 100 },
			{ name = 'bberrymuffin', price = 100 },
			{ name = 'donut', price = 100 },

			
		}, locations = {
			vector3(979.49, 24.69, 71.47)
		}, targets = {
			{ loc = vector3(979.49, 24.69, 71.47), length = 2.0, width = 4.0, heading = 161.0, minZ = 69.5, maxZ = 73.0, distance = 1.5 }
		}
	},
	
	yellowjack = {
		name = 'Bar',
		groups = {
			['yellowjack'] = 0
		}, inventory = {
			{ name = 'beer', price = 100 },
			{ name = 'tekila', price = 100 },
			{ name = 'sexon', price = 100 },
			{ name = 'vodka', price = 100 },
			{ name = 'whiskey', price = 100 },
			{ name = 'bespresso', price = 100 },
			{ name = 'bhotchoc', price = 100 },
			{ name = 'bcoldbrewlatte', price = 100 },
			{ name = 'kizartma', price = 100 },
			{ name = 'cikolatapasta', price = 100 },
			{ name = 'bberrymuffin', price = 100 },
			{ name = 'donut', price = 100 },

			
		}, locations = {
			vector3(1981.7, 3053.37, 47.21)
		}, targets = {
			{ loc = vector3(1981.7, 3053.37, 47.21), length = 2.0, width = 4.0, heading = 161.0, minZ = 46.5, maxZ = 49.0, distance = 1.5 }
		}
	},

	yellowjack = {
		name = 'Bar',
		groups = {
			['yellowjack'] = 0
		}, inventory = {
			{ name = 'pvegpizza', price = 100 },
			{ name = 'pmushroomspizza', price = 100 },
			{ name = 'pnapollitano', price = 100 },
			{ name = 'pmargharita', price = 100 },
			{ name = 'sprite', price = 100 },
			{ name = 'bcocacola', price = 100 },
			{ name = 'bchocolatemuffin', price = 100 },
		}, locations = {
			vector3(813.96, -752.95, 26.78)
		}, targets = {
			{ loc = vector3(813.96, -752.95, 26.78), length = 2.0, width = 4.0, heading = 161.0, minZ = 46.5, maxZ = 49.0, distance = 1.5 }
		}
	},


	-- Ammunation2 = {
	-- 	name = 'Ammunation Marketi',
	-- 	groups = {
	-- 		['ammunation2'] = 0
	-- 	}, inventory = {
	-- 		{ name = 'ammo-9', price = 100 },
	-- 		{ name = 'armor', price = 350 },
	-- 		{ name = 'weapon_bats', price = 350 },
	-- 		{ name = 'weapon_knife', price = 500 },
	-- 		-- { name = 'susturucu', price = 1000 },
	-- 		{ name = 'clip', price = 250 },
	-- 		{ name = 'flashlight', price = 250 },
	-- 		-- { name = 'ammo-smg', price = 500 },
	-- 		-- { name = 'blueprint_smg', price = 15000 },
	-- 	}, locations = {
	-- 		vec3(-662.8706, -932.8813, 21.8292)
	-- 	}, targets = {
	-- 		{ loc = vec3(-662.8706, -932.8813, 21.8292), length = 2.0, width = 4.0, heading = 358.7994, minZ = 20.5, maxZ = 24.5, distance = 1.5 }
	-- 	}
	-- },

	Ammunation3 = {
		name = 'Ammunation Marketi',
		groups = {
			['ammunation3'] = 0
		}, inventory = {
			{ name = 'ammo-9', price = 100 },
			{ name = 'ammo-smg', price = 1000 },
			{ name = 'armor', price = 350 },
			{ name = 'weapon_bats', price = 350 },
			{ name = 'weapon_knife', price = 500 },
			{ name = 'clip', price = 250 },
			{ name = 'flashlight', price = 250 },
		}, locations = {
			vec3(-1303.48, -394.7, 36.7)
		}, targets = {
			{ loc = vec3(-1303.48, -394.7, 36.7), length = 2.0, width = 4.0, heading = 161.0, minZ = 36.5, maxZ = 38.5, distance = 1.5 }
		}
	},

	uwushop = {
		name = 'Market',
		groups = {
			['uwu'] = 0
		}, inventory = {
			{ name = 'graos-cafe', price = 0 },
			{ name = 'sugar-cubes', price = 0 },
			{ name = 'pacote-leite', price = 0 },
			{ name = 'barra-chocolate', price = 0 },
			{ name = 'pacote-natas', price = 0 },
			{ name = 'butter', price = 0 },
		}, locations = {
			vector3(-597.12, -1065.37, 22.35)
		}, targets = {
			{ loc = vector3(-597.12, -1065.37, 22.35), length = 2.0, width = 4.0, heading = 161.0, minZ = 20.5, maxZ = 24.5, distance = 1.5 }
		}
	},

	
	serenshop = {
		name = 'Buzdolabı',
		groups = {
			['serendipity'] = 0
		}, inventory = {
			{ name = 'burgershot_curly', price = 0 },
			{ name = 'burgershot_bread', price = 0 },
			{ name = 'burgershot_meat', price = 0 },
			{ name = 'raw-chicken', price = 0 },
			{ name = 'butter', price = 0 },
			{ name = 'sugar-cubes', price = 0 },
			{ name = 'carbonated-water', price = 0 },
			{ name = 'mojito', price = 0 },
			{ name = 'beer', price = 0 },
			{ name = 'whiskey', price = 0 },
			{ name = 'vodka', price = 0 },
			{ name = 'tekila', price = 0 },
			{ name = 'snikkel_candy', price = 0 },
			{ name = 'coffee', price = 0 },
			{ name = 'bchocolatemuffin', price = 0 },
			{ name = 'bberrymuffin', price = 0 },
			{ name = 'sandwich', price = 0 }
		}, locations = {
			vector3(-2974.42, 36.64, 8.08)
		}, targets = {
			{ loc = vector3(-2974.42, 36.64, 8.08), length = 2.0, width = 4.0, heading = 161.0, minZ = 7.5, maxZ = 10.5, distance = 1.5 }
		}
	},

	Ammunation4 = {
		name = 'Ammunation Marketi',
		groups = {
			['ammunation4'] = 0
		}, inventory = {
			{ name = 'ammo-9', price = 100 },
			{ name = 'ammo-smg', price = 1000 },
			{ name = 'armor', price = 350 },
			{ name = 'weapon_bats', price = 350 },
			{ name = 'weapon_knife', price = 500 },
			{ name = 'clip', price = 250 },
			{ name = 'flashlight', price = 250 },
			-- { name = 'ammo-smg', price = 500 },
			-- { name = 'blueprint_smg', price = 15000 },
		}, locations = {
			vec3(842.8345, -1035.9866, 28.1948)
		}, targets = {
			{ loc = vec3(842.8345, -1035.9866, 28.1948), length = 2.0, width = 2.0, heading = 161.0, minZ = 27.5, maxZ = 30.5, distance = 1.0 }
		}
	},

	Gunshop1 = {
		name = 'Gunshop Marketi',
		groups = {
			['gunshop1'] = 0
		}, inventory = {
			{ name = 'weapon_p226', price = 7500 },
			{ name = 'weapon_pistol', price = 7500 },
			{ name = 'weapon_dp9', price = 11000 },
			{ name = 'weapon_combatpistol', price = 11000 },
			{ name = 'weapon_heavypistol', price = 16000 },
			{ name = 'weapon_browning', price = 16000 },
			{ name = 'weapon_minismg2', price = 30000 },
			{ name = 'weapon_appistol', price = 30000 },
			{ name = 'weapon_advancedrifle', price = 50000 },
			{ name = 'weapon_switchblade', price = 1700 },
			{ name = 'susturucu', price = 1000 },
		}, locations = {
			vec3(810.5917, -2159.7024, 29.6190)
		}, targets = {
			{ loc = vec3(810.5917, -2159.7024, 29.6190), length = 1.5, width = 1.5, heading = 161.0, minZ = 28.5, maxZ = 31.0, distance = 1.0 }
		}
	},

	Gunshop2 = {
		name = 'Gunshop Marketi',
		groups = {
			['gunshop2'] = 0
		}, inventory = {
		{ name = 'weapon_p226', price = 7500 },
		{ name = 'weapon_pistol', price = 7500 },
		{ name = 'weapon_dp9', price = 11000 },
		{ name = 'weapon_combatpistol', price = 11000 },
		{ name = 'weapon_heavypistol', price = 16000 },
		{ name = 'weapon_browning', price = 16000 },
		{ name = 'weapon_minismg2', price = 30000 },
		{ name = 'weapon_appistol', price = 30000 },
		{ name = 'weapon_advancedrifle', price = 50000 },
		{ name = 'weapon_switchblade', price = 1700 },
		{ name = 'susturucu', price = 1000 },
		}, locations = {
			vec3(254.5406, -50.3107, 69.9410)
		}, targets = {
			{ loc = vec3(254.5406, -50.3107, 69.9410), length = 1.5, width = 1.5, heading = 161.0, minZ = 67.5, maxZ = 71.0, distance = 1.0 }
		}
	},

	Gunshop3 = {
		name = 'Gunshop Marketi',
		groups = {
			['gunshop3'] = 0
		}, inventory = {
			{ name = 'ammo-9', price = 100 },
			{ name = 'ammo-smg', price = 1000 },
			{ name = 'armor', price = 350 },
			{ name = 'weapon_bats', price = 350 },
			{ name = 'weapon_knife', price = 500 },
			{ name = 'clip', price = 250 },
			{ name = 'flashlight', price = 250 },
			-- { name = 'ammo-smg', price = 500 },
			-- { name = 'blueprint_smg', price = 15000 },
			{ name = 'weapon_p226', price = 7500 },
			{ name = 'weapon_pistol', price = 7500 },
			{ name = 'weapon_dp9', price = 11000 },
			{ name = 'weapon_combatpistol', price = 11000 },
			{ name = 'weapon_heavypistol', price = 16000 },
			{ name = 'weapon_browning', price = 16000 },
			{ name = 'weapon_minismg2', price = 30000 },
			{ name = 'weapon_appistol', price = 30000 },
			{ name = 'weapon_advancedrifle', price = 50000 },
			{ name = 'weapon_switchblade', price = 1700 },
			{ name = 'susturucu', price = 1000 },
		}, locations = {
			vec3(495.6947, -1527.8888, 29.2874)
		}, targets = {
			{ loc = vec3(495.6947, -1527.8888, 29.2874), length = 1.5, width = 1.5, heading = 161.0, minZ = 28.5, maxZ = 31.0, distance = 1.0 }
		}
	},

	Gunshop4 = {
		name = 'Gunshop Marketi',
		groups = {
			['gunshop4'] = 0
		}, inventory = {
			{ name = 'ammo-9', price = 100 },
			{ name = 'ammo-smg', price = 1000 },
			{ name = 'armor', price = 350 },
			{ name = 'weapon_bats', price = 350 },
			{ name = 'weapon_knife', price = 500 },
			{ name = 'clip', price = 250 },
			{ name = 'flashlight', price = 250 },
			-- { name = 'ammo-smg', price = 500 },
			-- { name = 'blueprint_smg', price = 15000 },
			{ name = 'weapon_p226', price = 7500 },
			{ name = 'weapon_pistol', price = 7500 },
			{ name = 'weapon_dp9', price = 11000 },
			{ name = 'weapon_combatpistol', price = 11000 },
			{ name = 'weapon_heavypistol', price = 16000 },
			{ name = 'weapon_browning', price = 16000 },
			{ name = 'weapon_minismg2', price = 30000 },
			{ name = 'weapon_appistol', price = 30000 },
			{ name = 'weapon_advancedrifle', price = 50000 },
			{ name = 'weapon_switchblade', price = 1700 },
			{ name = 'susturucu', price = 1000 },
		}, locations = {
			vec3(-662.8706, -932.8813, 21.8292)
		}, targets = {
			{ loc = vec3(-662.8706, -932.8813, 21.8292), length = 2.0, width = 4.0, heading = 358.7994, minZ = 20.5, maxZ = 24.5, distance = 1.5 }
		}
	},

    -- MadenShop = {
    --     name = 'Maden Marketi',
    --     inventory = {
    --         { name = 'goldpan', price = 100 },
    --         { name = 'mininglaser', price = 1000 },
    --     }, locations = {
    --         vec3(2960.92, 2754.2, 43.71)
    --     }, targets = {
    --         { loc = vec3(2960.92, 2754.2, 43.71), length = 2.0, width = 4.0, heading = 161.0, minZ = 130.5, maxZ = 133.0, distance = 1.5 },
    --     }
    -- },
}
