QBShared = QBShared or {}
QBShared.Weapons = {
	-- // WEAPONS
	-- Melee
	[`weapon_unarmed`] 				 = {['name'] = 'weapon_unarmed', 		['label'] = 'Fists', 				['weapontype'] = 'Melee',	['ammotype'] = nil, ['damagereason'] = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered'},
	[`weapon_dagger`] 				 = {['name'] = 'weapon_dagger', 		['label'] = 'Dagger', 				['weapontype'] = 'Melee',	['ammotype'] = nil,	['damagereason'] = 'Knifed / Stabbed / Eviscerated'},
	[`weapon_bat`] 					 = {['name'] = 'weapon_bat', 			['label'] = 'Bat', 					['weapontype'] = 'Melee',	['ammotype'] = nil,	['damagereason'] = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered'},
	[`weapon_bottle`] 				 = {['name'] = 'weapon_bottle', 		['label'] = 'Broken Bottle', 		['weapontype'] = 'Melee',	['ammotype'] = nil,	['damagereason'] = 'Knifed / Stabbed / Eviscerated'},
	[`weapon_crowbar`] 				 = {['name'] = 'weapon_crowbar', 		['label'] = 'Crowbar', 				['weapontype'] = 'Melee',	['ammotype'] = nil,	['damagereason'] = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered'},
	[`weapon_flashlight`] 			 = {['name'] = 'weapon_flashlight', 	['label'] = 'Flashlight', 			['weapontype'] = 'Melee',	['ammotype'] = nil,	['damagereason'] = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered'},
	--[`weapon_golfclub`] 			 = {['name'] = 'weapon_golfclub', 		['label'] = 'Golfclub', 			['weapontype'] = 'Melee',	['ammotype'] = nil,	['damagereason'] = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered'},
	--[`weapon_hammer`] 				 = {['name'] = 'weapon_hammer', 		['label'] = 'Hammer', 				['weapontype'] = 'Melee',	['ammotype'] = nil,	['damagereason'] = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered'},
	--[`weapon_hatchet`] 				 = {['name'] = 'weapon_hatchet', 		['label'] = 'Hatchet', 				['weapontype'] = 'Melee',	['ammotype'] = nil,	['damagereason'] = 'Knifed / Stabbed / Eviscerated'},
	--[`weapon_knuckle`] 				 = {['name'] = 'weapon_knuckle', 		['label'] = 'Knuckle', 				['weapontype'] = 'Melee',	['ammotype'] = nil,	['damagereason'] = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered'},
	[`weapon_knife`] 				 = {['name'] = 'weapon_knife', 			['label'] = 'Knife', 				['weapontype'] = 'Melee',	['ammotype'] = nil,	['damagereason'] = 'Knifed / Stabbed / Eviscerated'},
	[`weapon_machete`] 				 = {['name'] = 'weapon_machete', 		['label'] = 'Machete', 				['weapontype'] = 'Melee',	['ammotype'] = nil,	['damagereason'] = 'Knifed / Stabbed / Eviscerated'},
	[`weapon_switchblade`] 			 = {['name'] = 'weapon_switchblade', 	['label'] = 'Switchblade', 			['weapontype'] = 'Melee',	['ammotype'] = nil,	['damagereason'] = 'Knifed / Stabbed / Eviscerated'},
	[`weapon_nightstick`] 			 = {['name'] = 'weapon_nightstick', 	['label'] = 'Nightstick', 			['weapontype'] = 'Melee',	['ammotype'] = nil,	['damagereason'] = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered'},
	[`weapon_wrench`] 				 = {['name'] = 'weapon_wrench', 		['label'] = 'Wrench', 				['weapontype'] = 'Melee',	['ammotype'] = nil,	['damagereason'] = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered'},
	--[`weapon_battleaxe`] 			 = {['name'] = 'weapon_battleaxe', 		['label'] = 'Battle Axe', 			['weapontype'] = 'Melee',	['ammotype'] = nil,	['damagereason'] = 'Knifed / Stabbed / Eviscerated'},
	--[`weapon_poolcue`] 				 = {['name'] = 'weapon_poolcue', 		['label'] = 'Poolcue', 				['weapontype'] = 'Melee',	['ammotype'] = nil,	['damagereason'] = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered'},
	--[`weapon_briefcase`] 			 = {['name'] = 'weapon_briefcase', 		['label'] = 'Briefcase', 			['weapontype'] = 'Melee',	['ammotype'] = nil,	['damagereason'] = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered'},
	--[`weapon_briefcase_02`] 		 = {['name'] = 'weapon_briefcase_02', 	['label'] = 'Briefcase', 			['weapontype'] = 'Melee',	['ammotype'] = nil,	['damagereason'] = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered'},
	--[`weapon_garbagebag`] 			 = {['name'] = 'weapon_garbagebag', 	['label'] = 'Garbage Bag', 			['weapontype'] = 'Melee',	['ammotype'] = nil,	['damagereason'] = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered'},
	--[`weapon_handcuffs`] 			 = {['name'] = 'weapon_handcuffs', 		['label'] = 'Handcuffs', 			['weapontype'] = 'Melee',	['ammotype'] = nil,	['damagereason'] = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered'},
	--[`weapon_bread`] 				 = {['name'] = 'weapon_bread', 			['label'] = 'Baquette', 			['weapontype'] = 'Melee',	['ammotype'] = nil,	['damagereason'] = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered'},
	--[`weapon_stone_hatchet`] 		 = {['name'] = 'weapon_stone_hatchet', 	['label'] = 'Stone Hatchet',        ['weapontype'] = 'Melee',	['ammotype'] = nil,	['damagereason'] = 'Knifed / Stabbed / Eviscerated'},

	[`weapon_stungun`] 				 = {['name'] = 'weapon_stungun', 		['label'] = 'Taser', 				['weapontype'] = 'Pistol',	['ammotype'] = 'AMMO_STUNGUN',	['damagereason'] = 'Died'},
	[`weapon_ufkltl`] 				 = {['name'] = 'weapon_ufkltl', 		['label'] = 'BeamBang', 			['weapontype'] = 'Pistol',	['ammotype'] = 'AMMO_SHOTGUN',	['damagereason'] = 'Pistoled / Blasted / Plugged / Bust a cap in'},
	[`weapon_musket`] 				 = {['name'] = 'weapon_musket', 		['label'] = 'Av Tüfeği', 			['weapontype'] = 'Shotgun',	['ammotype'] = 'AMMO_SHOTGUN',	['damagereason'] = 'Pistoled / Blasted / Plugged / Bust a cap in'},
	[`weapon_beanbagshotgun`]					= {['name'] = 'weapon_beanbagshotgun',				['label'] = 'BeanBag',						['ammotype'] = 'AMMO_SHOTGUN',						['damagereason'] = 'Hit by a bean bag'},
  

    -- GGC Custom Weapons -- Melees
	[`weapon_katana`] 			 	= {['name'] = 'weapon_katana', 				['label'] = 'Katana', 					['weapontype'] = 'Melee',			['ammotype'] = nil,						['damagereason'] = 'Knifed / Stabbed / Eviscerated'},
   --[`weapon_shiv`] 			 	= {['name'] = 'weapon_shiv', 				['label'] = 'Çakı', 					['weapontype'] = 'Melee',			['ammotype'] = nil,						['damagereason'] = 'Knifed / Stabbed / Eviscerated'},
    [`weapon_sledgehammer`] 		= {['name'] = 'weapon_sledgehammer', 		['label'] = 'Sledge Hammer', 			['weapontype'] = 'Melee',			['ammotype'] = nil,						['damagereason'] = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered'},
    [`weapon_karambit`] 			= {['name'] = 'weapon_karambit', 			['label'] = 'Karambit', 				['weapontype'] = 'Melee',			['ammotype'] = nil,						['damagereason'] = 'Knifed / Stabbed / Eviscerated'},
    [`weapon_keyboard`] 			= {['name'] = 'weapon_keyboard', 			['label'] = 'Keyboard', 				['weapontype'] = 'Melee',			['ammotype'] = nil,						['damagereason'] = 'Melee killed / Whacked / Executed / Beat down / Murdered / Battered'},
	-- GGC Custom Weapons -- Hand Guns
	[`weapon_glock17`] 		 		= {['name'] = 'weapon_glock17', 			['label'] = 'Glock-17',		    		['weapontype'] = 'Pistol',			['ammotype'] = 'AMMO_PISTOL',			['damagereason'] = 'Pistoled / Blasted / Plugged / Bust a cap in'},
	[`weapon_glock18c`] 		 	= {['name'] = 'weapon_glock18c', 			['label'] = 'PD Glock-18C',		    ['weapontype'] = 'Pistol',			['ammotype'] = 'AMMO_PISTOL',			['damagereason'] = 'Pistoled / Blasted / Plugged / Bust a cap in'},
	[`weapon_deagle`] 		 		= {['name'] = 'weapon_deagle', 				['label'] = 'Desert Eagle',		    	['weapontype'] = 'Pistol',			['ammotype'] = 'AMMO_PISTOL',			['damagereason'] = 'Pistoled / Blasted / Plugged / Bust a cap in'},
	[`weapon_fnx45`] 		 		= {['name'] = 'weapon_fnx45', 				['label'] = 'FN FNX-45',		    	['weapontype'] = 'Pistol',			['ammotype'] = 'AMMO_PISTOL',			['damagereason'] = 'Pistoled / Blasted / Plugged / Bust a cap in'},
	[`weapon_m1911`] 		 		= {['name'] = 'weapon_m1911', 				['label'] = 'M1911',		    		['weapontype'] = 'Pistol',			['ammotype'] = 'AMMO_PISTOL',			['damagereason'] = 'Pistoled / Blasted / Plugged / Bust a cap in'},
    [`weapon_glock19gen4`] 		 	= {['name'] = 'weapon_glock19gen4', 		['label'] = 'PD Glock-19',		    ['weapontype'] = 'Pistol',			['ammotype'] = 'AMMO_PISTOL',			['damagereason'] = 'Pistoled / Blasted / Plugged / Bust a cap in'},
	[`weapon_p320b`] 		 	= {['name'] = 'weapon_p320b', 		['label'] = 'PD P320',		    ['weapontype'] = 'Pistol',			['ammotype'] = 'AMMO_PISTOL',			['damagereason'] = 'Pistoled / Blasted / Plugged / Bust a cap in'},
    -- GGC Custom Weapons -- SMGs
    [`weapon_pmxfm`] 			 	= {['name'] = 'weapon_pmxfm', 				['label'] = 'Beretta PMX', 				['weapontype'] = 'Submachine Gun',	['ammotype'] = 'AMMO_SMG',				['damagereason'] = 'Riddled / Drilled / Finished / Submachine Gunned'},
    [`weapon_mac10`] 			 	= {['name'] = 'weapon_mac10', 				['label'] = 'MAC-10', 					['weapontype'] = 'Submachine Gun',	['ammotype'] = 'AMMO_SMG',				['damagereason'] = 'Riddled / Drilled / Finished / Submachine Gunned'},
    -- GGC Custom Weapons -- Rifles
    [`weapon_scarsc`] 		 			= {['name'] = 'weapon_scarsc', 	 				['label'] = 'PD SCAR SC', 			['weapontype'] = 'Assault Rifle',	['ammotype'] = 'AMMO_RIFLE',			['damagereason'] = 'Ended / Rifled / Shot down / Floored'},
    [`weapon_ak47`] 		 		= {['name'] = 'weapon_ak47', 	 			['label'] = 'AK-47', 					['weapontype'] = 'Assault Rifle',	['ammotype'] = 'AMMO_RIFLE',			['damagereason'] = 'Ended / Rifled / Shot down / Floored'},
    [`weapon_m6ic`] 		 		= {['name'] = 'weapon_m6ic', 	 			['label'] = 'PD LWRC M6IC', 				['weapontype'] = 'Assault Rifle',	['ammotype'] = 'AMMO_RIFLE',			['damagereason'] = 'Ended / Rifled / Shot down / Floored'},
    [`weapon_mpx`] 		 		= {['name'] = 'weapon_mpx', 	 			['label'] = 'PD MPX', 				['weapontype'] = 'SMG',	['ammotype'] = 'AMMO_SMG',			['damagereason'] = 'MPXLENDI'},
	[`weapon_aks74`] 		 		= {['name'] = 'weapon_aks74', 	 			['label'] = 'AKS-74', 					['weapontype'] = 'Assault Rifle',	['ammotype'] = 'AMMO_RIFLE',			['damagereason'] = 'Ended / Rifled / Shot down / Floored'},
	[`weapon_compactrifle`] 		 		= {['name'] = 'weapon_compactrifle', 	 			['label'] = 'Draco', 					['weapontype'] = 'Assault Rifle',	['ammotype'] = 'AMMO_RIFLE',			['damagereason'] = 'Ended / Rifled / Shot down / Floored'},

    -- Throwables
	--[[`weapon_grenade`] 		        = {['name'] = 'weapon_grenade', 		['label'] = 'Grenade', 			['weapontype'] = 'Throwable',	['ammotype'] = nil,				['damagereason'] = 'Bombed / Exploded / Detonated / Blew up'},
	[`weapon_bzgas`] 		        = {['name'] = 'weapon_bzgas', 			['label'] = 'BZ Gas', 			['weapontype'] = 'Throwable',	['ammotype'] = nil,				['damagereason'] = 'Died'},
	[`weapon_molotov`] 		        = {['name'] = 'weapon_molotov', 		['label'] = 'Molotov', 			['weapontype'] = 'Throwable',	['ammotype'] = nil,				['damagereason'] = 'Torched / Flambeed / Barbecued'},
	[`weapon_stickybomb`] 	        = {['name'] = 'weapon_stickybomb', 	    ['label'] = 'C4', 				['weapontype'] = 'Throwable',	['ammotype'] = nil,				['damagereason'] = 'Bombed / Exploded / Detonated / Blew up'},
	[`weapon_proxmine`] 	        = {['name'] = 'weapon_proxmine', 		['label'] = 'Proxmine Grenade', ['weapontype'] = 'Throwable',	['ammotype'] = nil,				['damagereason'] = 'Bombed / Exploded / Detonated / Blew up'},
	[`weapon_snowball`] 	        = {['name'] = 'weapon_snowball', 		['label'] = 'Snowball', 		['weapontype'] = 'Throwable',	['ammotype'] = nil,				['damagereason'] = 'Died'},
	[`weapon_pipebomb`] 	        = {['name'] = 'weapon_pipebomb', 		['label'] = 'Pipe Bomb', 		['weapontype'] = 'Throwable',	['ammotype'] = nil,				['damagereason'] = 'Bombed / Exploded / Detonated / Blew up'},
	[`weapon_ball`] 		        = {['name'] = 'weapon_ball', 			['label'] = 'Ball', 			['weapontype'] = 'Throwable',	['ammotype'] = 'AMMO_BALL',		['damagereason'] = 'Died'},
	[`weapon_smokegrenade`]         = {['name'] = 'weapon_smokegrenade', 	['label'] = 'Smoke Grenade', 	['weapontype'] = 'Throwable',	['ammotype'] = nil,				['damagereason'] = 'Died'},
	[`weapon_flare`] 		        = {['name'] = 'weapon_flare', 			['label'] = 'Flare pistol', 	['weapontype'] = 'Throwable',	['ammotype'] = 'AMMO_FLARE',	['damagereason'] = 'Died'},]]

    -- Miscellaneous
	--[[`weapon_petrolcan`] 			= {['name'] = 'weapon_petrolcan', 		 	['label'] = 'Petrol Can', 				['weapontype'] = 'Miscellaneous',	['ammotype'] = 'AMMO_PETROLCAN',		['damagereason'] = 'Died'},
	[`gadget_parachute`] 			= {['name'] = 'gadget_parachute', 		 	['label'] = 'Parachute', 				['weapontype'] = 'Miscellaneous',	['ammotype'] = nil,						['damagereason'] = 'Died'},
	[`weapon_fireextinguisher`] 	= {['name'] = 'weapon_fireextinguisher',	['label'] = 'Fire Extinguisher',		['weapontype'] = 'Miscellaneous',	['ammotype'] = nil,						['damagereason'] = 'Died'},
	[`weapon_hazardcan`]			= {['name'] = 'weapon_hazardcan',			['label'] = 'Hazardcan',			    ['weapontype'] = 'Miscellaneous',	['ammotype'] = 'AMMO_PETROLCAN',		['damagereason'] = 'Died'},
    [`weapon_fertilizercan`]		= {['name'] = 'weapon_fertilizercan',		['label'] = 'Fertilizer Can',			['weapontype'] = 'Miscellaneous',	['ammotype'] = 'AMMO_FERTILIZERCAN',	['damagereason'] = 'Died'},
	[`weapon_barbed_wire`]			= {['name'] = 'weapon_barbed_wire',			['label'] = 'Barbed Wire',				['weapontype'] = 'Miscellaneous',	['ammotype'] = nil,						['damagereason'] = 'Prodded'},
	[`weapon_drowning`]				= {['name'] = 'weapon_drowning',			['label'] = 'Drowning',					['weapontype'] = 'Miscellaneous',	['ammotype'] = nil,						['damagereason'] = 'Died'},
	[`weapon_drowning_in_vehicle`]	= {['name'] = 'weapon_drowning_in_vehicle',	['label'] = 'Drowning in a Vehicle',	['weapontype'] = 'Miscellaneous',	['ammotype'] = nil,						['damagereason'] = 'Died'},
	[`weapon_bleeding`]				= {['name'] = 'weapon_bleeding',			['label'] = 'Bleeding',					['weapontype'] = 'Miscellaneous',	['ammotype'] = nil,						['damagereason'] = 'Bled out'},
	[`weapon_electric_fence`]		= {['name'] = 'weapon_electric_fence',		['label'] = 'Electric Fence',			['weapontype'] = 'Miscellaneous',	['ammotype'] = nil,						['damagereason'] = 'Fried'},
	[`weapon_explosion`]			= {['name'] = 'weapon_explosion',			['label'] = 'Explosion',				['weapontype'] = 'Miscellaneous',	['ammotype'] = nil,						['damagereason'] = 'Killed / Exploded / Obliterated / Destroyed / Erased / Annihilated'},
	[`weapon_fall`]					= {['name'] = 'weapon_fall',				['label'] = 'Fall',						['weapontype'] = 'Miscellaneous',	['ammotype'] = nil,						['damagereason'] = 'Committed suicide'},
	[`weapon_exhaustion`]			= {['name'] = 'weapon_exhaustion',			['label'] = 'Exhaustion',				['weapontype'] = 'Miscellaneous',	['ammotype'] = nil,						['damagereason'] = 'Died'},
	[`weapon_hit_by_water_cannon`]	= {['name'] = 'weapon_hit_by_water_cannon',	['label'] = 'Water Cannon',				['weapontype'] = 'Miscellaneous',	['ammotype'] = nil,						['damagereason'] = 'Died'},
	[`weapon_rammed_by_car`]		= {['name'] = 'weapon_rammed_by_car',		['label'] = 'Rammed - Vehicle',			['weapontype'] = 'Miscellaneous',	['ammotype'] = nil,						['damagereason'] = 'Flattened / Ran over / Ran down'},
	[`weapon_run_over_by_car`]		= {['name'] = 'weapon_run_over_by_car',		['label'] = 'Run Over - Vehicle',		['weapontype'] = 'Miscellaneous',	['ammotype'] = nil,						['damagereason'] = 'Flattened / Ran over / Ran down'},
	[`weapon_heli_crash`]			= {['name'] = 'weapon_heli_crash',			['label'] = 'Heli Crash',				['weapontype'] = 'Miscellaneous',	['ammotype'] = nil,						['damagereason'] = 'Helicopter Crash'},
	[`weapon_fire`]					= {['name'] = 'weapon_fire',				['label'] = 'Fire',						['weapontype'] = 'Miscellaneous',	['ammotype'] = nil,						['damagereason'] = 'Torched / Flambeed / Barbecued'},]]

	-- Animals
    --[`weapon_animal`]               = {['name'] = 'weapon_animal',	['label'] = 'Animal',	['weapontype'] = 'Animals',	['ammotype'] = nil,	['damagereason'] = 'Mauled'},
    --[`weapon_cougar`]               = {['name'] = 'weapon_cougar',	['label'] = 'Cougar',	['weapontype'] = 'Animals',	['ammotype'] = nil,	['damagereason'] = 'Mauled'},
}
