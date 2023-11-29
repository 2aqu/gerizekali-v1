print("^2Jim^7-^2Consumables ^7v^41^7.^43^7.^42 ^7- ^2Consumables Script by ^1Jimathy^7")

Config = {
	Debug = false,
	Notify = "qb",
	UseProgbar = true,

	Consumables = {
		["vodka"] = { 			emote = "vodkab", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "alcohol", stats = { effect = "stress", time = 5000, amount = 2, thirst = math.random(10,20), canOD = true }},
		["beer"] = { 			emote = "beer", 		canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), canOD = true }},
		["wine"] = { 			emote = "wine", 		canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), canOD = true }},
		["whiskey"] = { 		emote = "whiskey",  	canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), canOD = true }},
		["tekila"] = { 		emote = "champagne",  	canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), canOD = true }},
		["sexon"] = { 		emote = "champagne",  	canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), canOD = true }},
		["beer_05"] = { 			emote = "cup", 		canRun = true, 	time = math.random(10000, 16000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), canOD = true }},
		["beer_03"] = { 			emote = "cup", 		canRun = true, 	time = math.random(10000, 16000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), canOD = true }},


		["sandwich"] = { 		emote = "sandwich", 	canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,20), }},
		["twerks_candy"] = { 	emote = "egobar", 		canRun = true, 		time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,20), }},
		["snikkel_candy"] = { 	emote = "egobar", 		canRun = true, 		time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,20), }},
		["tosti"] = { 			emote = "sandwich", 	canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,20), }},
		["xxlburger"] = { 		emote = "burger", 	canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(80,100), }},
		["burgershot_bigking"] = { 		emote = "burger", 	canRun = true, 	time = math.random(9000, 10000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(80,100), }},
		["burgershot_bleeder"] = { 		emote = "burger", 	canRun = true, 	time = math.random(9000, 10000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40,50), }},
		["burgershot_goatwrap"] = { 	emote = "burger", 	canRun = true, 	time = math.random(9000, 10000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(80,100), }},
		["burgershot_macaroon"] = { 	emote = "donut", 	canRun = true, 	time = math.random(9000, 10000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(15,25), }},
		["burgershot_colab"] = { 		emote = "bscoke", 		canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(40,50), }},
		["obezburger"] = { 		emote = "burger", 	canRun = true, 	time = math.random(9000, 10000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(80,100), }},


		["coffee"] = { 			emote = "coffee", 		canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { effect = "stamina", time = 10000, thirst = math.random(10,20), }},
		["water_bottle"] = { 	emote = "drink", 		canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(10,20), }},
		["kurkakola"] = { 		emote = "ecola", 		canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(10,20), }},
		["milkshake"] = { 		emote = "ecola", 		canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(10,20), }},
		["mojito"] = { 			emote = "soda", 		canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(10,20), }},
		["bhotchoc"] = { 			emote = "coffee", 		canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(35,45), }},
		["bhoneyhazelnutoatlatte"] = { 			emote = "coffee", 		canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(35,45), }},
		["bstrawberrycreamfrappuccino"] = { 			emote = "coffee", 		canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(35,45), }},
		["bicedcaffelatte"] = { 			emote = "coffee", 		canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(35,45), }},
		["bespresso"] = { 			emote = "coffee", 		canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(35,45), }},
		["bespressomacchiato"] = { 			emote = "coffee", 		canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(35,45), }},
		["bcoldbrewlatte"] = { 			emote = "coffee", 		canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(35,45), }},
		["bchocolatemuffin"] = { 	emote = "donut", 	canRun = true, 	time = math.random(9000, 10000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40,65), }},
		["bberrymuffin"] = { 	emote = "donut", 	canRun = true, 	time = math.random(9000, 10000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(40,65), }},
		["bdonut"] = { 	emote = "donut", 	canRun = true, 	time = math.random(9000, 10000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,15), }},

		["pvegpizza"] = { 		emote = "pizza", 	canRun = true, 	time = math.random(9000, 10000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(80,100), }},
		["pmushroomspizza"] = { 		emote = "pizza", 	canRun = true, 	time = math.random(9000, 10000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(80,100), }},
		["pnapollitano"] = { 		emote = "pizza", 	canRun = true, 	time = math.random(9000, 10000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(80,100), }},
		["pmargharita"] = { 		emote = "pizza", 	canRun = true, 	time = math.random(9000, 10000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(80,100), }},
		["bsprite"] = { 		emote = "ecola", 		canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(40,50), }},
		["bcocacola"] = { 		emote = "ecola", 		canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(40,50), }},
		["fanta"] = { 		emote = "ecola", 		canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(40,50), }},

		["cooked_chicken"] = { 		emote = "foodbowl", 	canRun = true, 	time = math.random(9000, 10000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(80,100), }},

		["cokebaggy"] = { 		emote = "coke",		time = math.random(5000, 6000), stress = math.random(12, 24), heal = 0, armor = 0, type = "drug", stats = { screen = "focus", effect = "stamina", widepupils = false, canOD = true } },
		["crackbaggy"] = { 		emote = "coke",		time = math.random(5000, 6000), stress = math.random(12, 24), heal = 0, armor = 0, type = "drug", stats = { effect = "heal", widepupils = false, canOD = true } },
		["xtcbaggy"] = { 		emote = "oxy",		time = math.random(5000, 6000), stress = math.random(12, 24), heal = 0, armor = 0, type = "drug", stats = { effect = "strength", widepupils = true, canOD = true } },
		["oxy"] = { 			emote = "oxy",		time = math.random(5000, 6000), stress = math.random(12, 24), heal = 0, armor = 0, type = "drug", stats = { effect = "heal", widepupils = false, canOD = false } },
		["meth"] = { 			emote = "coke",		time = math.random(5000, 6000), stress = math.random(12, 24), heal = 0, armor = 0, type = "drug", stats = { screen = "focus", effect = "stamina", widepupils = false, canOD = true } },
		["joint"] = { 			emote = "joint",		time = math.random(5000, 6000), stress = math.random(12, 24), heal = 0, armor = 0, type = "drug", stats = { screen = "weed", effect = "stamina", widepupils = false, canOD = true } },
		["bong"] = { 			emote = "bong",		time = math.random(5000, 6000), stress = math.random(12, 24), heal = 0, armor = 0, type = "drug", stats = { screen = "weed", effect = "stamina", widepupils = false, canOD = true } },

		["irishpub_berry_hydrating"] = { 		emote = "drink", 		canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(30,50), }},
		["irishpub_cake"] = { 	emote = "donut", 	canRun = true, 	time = math.random(9000, 10000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(25,45), }},
		["irishpub_kamikaze"] = { 	emote = "drink", 	canRun = true, 	time = math.random(9000, 10000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { effect = "stress", time = 5000, amount = 2, thirst = math.random(10,20),canOD = true }},
		["kizartma"] = { 	emote = "bsfries", 	canRun = true, 	time = math.random(9000, 10000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(45,65), }},

		--uwu
		["muffin-chocolate"] = { 	emote = "donut", 	canRun = true, 	time = math.random(9000, 15000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(35,45), }},
		["cupcake-morango"] = { 	emote = "donut", 	canRun = true, 	time = math.random(9000, 15000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(35,45), }},
		["cupcake-chocolate"] = { 	emote = "donut", 	canRun = true, 	time = math.random(9000, 15000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(35,45), }},
		["cupcake-limao"] = { 	emote = "donut", 	canRun = true, 	time = math.random(9000, 15000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(35,45), }},
		["gelado-morango"] = { 	emote = "donut", 	canRun = true, 	time = math.random(9000, 15000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(35,45), }},
		["gelado-chocolate"] = { 	emote = "donut", 	canRun = true, 	time = math.random(9000, 15000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(35,45), }},
		["gelado-baunilha"] = { 	emote = "donut", 	canRun = true, 	time = math.random(9000, 15000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(35,45), }},
		["panqueca-nutela"] = { 	emote = "donut", 	canRun = true, 	time = math.random(9000, 15000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(35,45), }},
		["panqueca-oreo"] = { 	emote = "donut", 	canRun = true, 	time = math.random(9000, 15000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(35,45), }},
		["waffle-nutela"] = { 	emote = "donut", 	canRun = true, 	time = math.random(9000, 15000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(35,45), }},
		["pastel-frango"] = { 	emote = "donut", 	canRun = true, 	time = math.random(9000, 15000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(35,45), }},

		["cafe-uwu"] = { 		emote = "coffee", 		canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(30,50), }},
		["latte-uwu"] = { 		emote = "coffee", 		canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(30,50), }},
		["bubble-amora"] = { 		emote = "cup", 		canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(30,50), }},
		["bubble-menta"] = { 		emote = "cup", 		canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(30,50), }},
		["bubble-morango"] = { 		emote = "cup", 		canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(30,50), }},
		["milkshake-morango"] = { 		emote = "cup", 		canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(30,50), }},
		["milkshake-chocolate"] = { 		emote = "cup", 		canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(30,50), }},

		
		["spagetti"] = { 		emote = "foodbowl", 	canRun = true, 	time = math.random(9000, 10000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(80,100), }},
		["bonfile"] = { 		emote = "foodbowl", 	canRun = true, 	time = math.random(9000, 10000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(80,100), }},
		["balik"] = { 		emote = "foodbowl", 	canRun = true, 	time = math.random(9000, 10000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(80,100), }},
		["balik2"] = { 		emote = "foodbowl", 	canRun = true, 	time = math.random(9000, 10000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(80,100), }},
		["istakoz"] = { 		emote = "foodbowl", 	canRun = true, 	time = math.random(9000, 10000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(80,100), }},
		["sprite"] = { 		emote = "ecola", 		canRun = true, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(40,50), }},
		["raki"] = { 			emote = "vodkab", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "alcohol", stats = { effect = "stress", time = 5000, amount = 2, thirst = math.random(10,20), canOD = true }},
		["kokteyl"] = { 			emote = "vodkab", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "alcohol", stats = { effect = "stress", time = 5000, amount = 2, thirst = math.random(10,20), canOD = true }},
		["kokteyl2"] = { 			emote = "vodkab", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "alcohol", stats = { effect = "stress", time = 5000, amount = 2, thirst = math.random(10,20), canOD = true }},
		["sarap"] = { 			emote = "vodkab", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "alcohol", stats = { effect = "stress", time = 5000, amount = 2, thirst = math.random(10,20), canOD = true }},
		["soganhalkasi"] = { 		emote = "foodbowl", 	canRun = true, 	time = math.random(9000, 10000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(80,100), }},
		["pattatotab"] = { 		emote = "foodbowl", 	canRun = true, 	time = math.random(9000, 10000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(80,100), }},
		["pmisir"] = { 		emote = "foodbowl", 	canRun = true, 	time = math.random(9000, 10000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(80,100), }},
		["nuggetk"] = { 		emote = "foodbowl", 	canRun = true, 	time = math.random(9000, 10000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(80,100), }},


		----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
		--Example item
		--[[ ["heartstopper"] = {
			emote = "burger", 							-- Select an emote from below, it has to be in here
			time = math.random(5000, 6000),				-- Amount of time it takes to consume the item
			stress = math.random(1,2),					-- Amount of stress relief, can be 0
			heal = 0, 									-- Set amount to heal by after consuming
			armor = 5,									-- Amount of armor to add
			type = "food",								-- Type: "alcohol" / "drink" / "food"
			stats = {
				screen = "rampage",						-- The screen effect to be played when after consuming the item
				effect = "heal", 						-- The status effect given by the item, "heal" / "stamina"
				time = 10000,							-- How long the effect should last (if not added it will default to 10000)
				amount = 6,								-- How much the value is changed by per second
				hunger = math.random(10,20),			-- The hunger/thirst stats of the item, if not found in the items.lua
				thirst = math.random(10,20),			-- The hunger/thirst stats of the item, if not found in the items.lua
			},
		}, ]]

	},
	Emotes = {
		["drink"] = {"mp_player_intdrink", "loop_bottle", "Drink", AnimationOptions =
			{ Prop = "prop_ld_flow_bottle", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["whiskeyb"] = {"mp_player_intdrink", "loop_bottle", "(Don't Use) Whiskey Bottle", AnimationOptions =
			{ Prop = "prop_cs_whiskey_bottle", PropBone = 60309, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0},
				EmoteMoving = true, EmoteLoop = true }},
		["rumb"] = {"mp_player_intdrink", "loop_bottle", "(Don't Use) Rum Bottle", AnimationOptions =
			{ Prop = "prop_rum_bottle", PropBone = 18905, PropPlacement = {0.03, -0.18, 0.10, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true }},
		["icream"] = {"mp_player_intdrink", "loop_bottle", "Irish Cream Bottle", AnimationOptions =
			{ Prop = "prop_bottle_brandy", PropBone = 18905, PropPlacement = {0.00, -0.26, 0.10, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true }},
		["ginb"] =  {"mp_player_intdrink", "loop_bottle", "(Don't Use) Gin Bottle", AnimationOptions =
			{ Prop = "prop_tequila_bottle", PropBone = 18905, PropPlacement = {0.00, -0.26, 0.10, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true }},
		["vodkab"] = {"mp_player_intdrink", "loop_bottle", "(Don't Use) Vodka Bottle", AnimationOptions =
			{ Prop = 'prop_vodka_bottle', PropBone = 18905, PropPlacement = {0.00, -0.26, 0.10, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true }},
		["crisps"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Chrisps", AnimationOptions =
			{ Prop = 'v_ret_ml_chips2', PropBone = 28422, PropPlacement = {0.01, -0.05, -0.1, 0.0, 0.0, 90.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["beer1"] = {"mp_player_intdrink", "loop_bottle", "Dusche", AnimationOptions =
			{ Prop = "prop_beerdusche", PropBone = 18905, PropPlacement = {0.04, -0.14, 0.10, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["beer2"] = {"mp_player_intdrink", "loop_bottle", "Logger", AnimationOptions =
			{ Prop = "prop_beer_logopen", PropBone = 18905, PropPlacement = {0.03, -0.18, 0.10, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["beer3"] = {"mp_player_intdrink", "loop_bottle", "AM Beer", AnimationOptions =
			{ Prop = "prop_beer_amopen", PropBone = 18905, PropPlacement = {0.03, -0.18, 0.10, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["beer4"] = {"mp_player_intdrink", "loop_bottle", "Pisswasser1", AnimationOptions =
			{ Prop = "prop_beer_pissh", PropBone = 18905, PropPlacement = {0.03, -0.18, 0.10, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["beer5"] = {"mp_player_intdrink", "loop_bottle", "Pisswasser2", AnimationOptions =
			{ Prop = "prop_amb_beer_bottle", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["beer6"] = {"mp_player_intdrink", "loop_bottle", "Pisswasser3", AnimationOptions =
			{ Prop = "prop_cs_beer_bot_02", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["ecola"] = {"mp_player_intdrink", "loop_bottle", "E-cola", AnimationOptions =
			{ Prop = "prop_ecola_can", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["sprunk"] = {"mp_player_intdrink", "loop_bottle", "Sprunk", AnimationOptions =
			{ Prop = "v_res_tt_can03", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true, }},
		--Jim-BeanMachine
		["bmcoffee1"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Coffee2", AnimationOptions =
			{ Prop = 'prop_fib_coffee', PropBone = 28422, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},

		["bmcoffee2"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Coffee3", AnimationOptions =
			{ Prop = 'ng_proc_coffee_01a', PropBone = 28422, PropPlacement = {0.0, 0.0, -0.06, 0.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},

		["bmcoffee3"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Coffee3", AnimationOptions =
			{ Prop = 'v_club_vu_coffeecup', PropBone = 28422, PropPlacement = {0.0, 0.0, -0.06, 0.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},
		--Jim-PizzaThis
		["redwine"] = {"mp_player_intdrink", "loop_bottle", "Red Wine Bottle", AnimationOptions =
			{ Prop = "prop_wine_rose", PropBone = 18905, PropPlacement = {0.00, -0.26, 0.10, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["whitewine"] = {"mp_player_intdrink", "loop_bottle", "White Wine Bottle", AnimationOptions =
			{ Prop = "prop_wine_white", PropBone = 18905, PropPlacement = {0.00, -0.26, 0.10, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["pizza"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger_fp", "Pizza", AnimationOptions =
			{ Prop = "v_res_tt_pizzaplate", PropBone = 18905, PropPlacement = {0.20, 0.038, 0.051, 15.0, 155.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["bowl"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "bowl", AnimationOptions =
			{ Prop = "h4_prop_h4_coke_plasticbowl_01", PropBone = 28422, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["pineapple"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger_fp", "Pizza", AnimationOptions =
			{ Prop = "prop_pineapple", PropBone = 18905, PropPlacement = {0.10, 0.038, 0.03, 15.0, 50.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["foodbowl"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "bowl", AnimationOptions =
			{ Prop = "prop_cs_bowl_01", PropBone = 28422, PropPlacement = {0.0, 0.0, 0.050, 0.0, 0.0, 0.0},
				EmoteMoving = true, EmoteLoop = true, }},
		--Jim-BurgerShot
		["milk"] = {"mp_player_intdrink", "loop_bottle", "Milk", AnimationOptions =
			{ Prop = "v_res_tt_milk", PropBone = 18905, PropPlacement = {0.10, 0.008, 0.07, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["bscoke"] = {"mp_player_intdrink", "loop_bottle", "BS Coke", AnimationOptions =
			{ Prop = "prop_food_bs_juice01", PropBone = 18905, PropPlacement = {0.04, -0.10, 0.10, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["bscoffee"] = {"mp_player_intdrink", "loop_bottle", "BS Coffee", AnimationOptions =
			{ Prop = "prop_food_bs_coffee", PropBone = 18905, PropPlacement = {0.08, -0.10, 0.10, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["glass"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Tall Glass", AnimationOptions =
			{ Prop = 'prop_wheat_grass_glass', PropBone = 28422, PropPlacement = {0.0, 0.0, -0.1, 0.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},

		["torpedo"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger_fp", "Torpedo", AnimationOptions =
			{ Prop = "prop_food_bs_burger2", PropBone = 18905, PropPlacement = {0.10, -0.07, 0.091, 15.0, 135.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["bsfries"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger_fp", "Fries", AnimationOptions =
			{ Prop = "prop_food_bs_chips", PropBone = 18905, PropPlacement = {0.09, -0.06, 0.05, 300.0, 150.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["donut2"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Donut2", AnimationOptions =
			{ Prop = 'prop_donut_02', PropBone = 18905, PropPlacement = {0.13, 0.05, 0.02, -50.0, 100.0, 270.0},
				EmoteMoving = true, EmoteLoop = true, }},

		--Jim-CatCafe
		["boba1"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Boba 1", AnimationOptions =
			{ Prop = 'denis3d_catcafe_boobaA', PropBone = 28422, PropPlacement = {0.0, 0.0, -0.1, 0.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["boba2"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Boba 2", AnimationOptions =
			{ Prop = 'denis3d_catcafe_boobaB', PropBone = 28422, PropPlacement = {0.0, 0.0, -0.1, 0.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["boba3"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Boba 3", AnimationOptions =
			{ Prop = 'denis3d_catcafe_boobaC', PropBone = 28422, PropPlacement = {0.0, 0.0, -0.1, 0.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["boba4"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Boba 4", AnimationOptions =
			{ Prop = 'denis3d_catcafe_boobaD', PropBone = 28422, PropPlacement = {0.0, 0.0, -0.1, 0.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["mochi"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Mochi", AnimationOptions =
			{ Prop = 'denis3d_catcafe_plateD', PropBone = 28422, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},

		--Jim-Tequilala
		["whiskeyb"] = {"anim@amb@nightclub@mini@drinking@drinking_shots@ped_b@normal@", "glass_hold", "Whiskey Bottle", AnimationOptions =
			{ Prop = "prop_cs_whiskey_bottle", PropBone = 60309, PropPlacement = {0.08, 0.0, 0.05, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true }},
		["rumb"] = {"anim@amb@nightclub@mini@drinking@drinking_shots@ped_b@normal@", "glass_hold", "Rum Bottle", AnimationOptions =
			{ Prop = "prop_rum_bottle", PropBone = 60309, PropPlacement = {-0.04, -0.18, 0.12, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true }},
		["icream"] = {"anim@amb@nightclub@mini@drinking@drinking_shots@ped_b@normal@", "glass_hold", "Irish Cream Bottle", AnimationOptions =
			{ Prop = "prop_bottle_brandy", PropBone = 60309, PropPlacement = {-0.04, -0.18, 0.12, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true }},
		["ginb"] =  {"anim@amb@nightclub@mini@drinking@drinking_shots@ped_b@normal@", "glass_hold", "Gin Bottle", AnimationOptions =
			{ Prop = "prop_tequila_bottle", PropBone = 60309, PropPlacement = {-0.04, -0.18, 0.12, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true }},
		["vodkab"] = {"anim@amb@nightclub@mini@drinking@drinking_shots@ped_b@normal@", "glass_hold", "Vodka Bottle", AnimationOptions =
			{ Prop = 'prop_vodka_bottle', PropBone = 60309, PropPlacement = {-0.04, -0.18, 0.12, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true }},
		["browncup"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Brown Cup", AnimationOptions =
			{ Prop = 'v_serv_bs_mug', PropBone = 28422, PropPlacement = {0.03, -0.02, 0.0, 0.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["crisps"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Crisps", AnimationOptions =
			{ Prop = 'v_ret_ml_chips2', PropBone = 28422, PropPlacement = {0.01, -0.05, -0.1, 0.0, 0.0, 90.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["smoke2"] = {"amb@world_human_aa_smoke@male@idle_a", "idle_c", "Smoke 2", AnimationOptions =
			{ Prop = 'prop_cs_ciggy_01', PropBone = 28422, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["smoke3"] = {"amb@world_human_aa_smoke@male@idle_a", "idle_b", "Smoke 3", AnimationOptions =
			{ Prop = 'prop_cs_ciggy_01', PropBone = 28422, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["smoke4"] = {"amb@world_human_smoking@female@idle_a", "idle_b", "Smoke 4", AnimationOptions =
			{ Prop = 'prop_cs_ciggy_01', PropBone = 28422, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["bong"] = {"anim@safehouse@bong", "bong_stage3", "Bong", AnimationOptions =
			{ Prop = 'hei_heist_sh_bong_01', PropBone = 18905, PropPlacement = {0.10,-0.25,0.0,95.0,190.0,180.0}, }},
		["coffee"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Coffee", AnimationOptions =
			{ Prop = 'p_amb_coffeecup_01', PropBone = 28422, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["whiskey"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Whiskey", AnimationOptions =
			{ Prop = 'prop_drink_whisky', PropBone = 28422, PropPlacement = {0.01, -0.01, -0.06, 0.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["beer"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Beer", AnimationOptions =
			{ Prop = 'prop_amb_beer_bottle', PropBone = 28422, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["cup"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Cup", AnimationOptions =
			{ Prop = 'prop_plastic_cup_02', PropBone = 28422, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["donut"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Donut", AnimationOptions =
			{ Prop = 'prop_amb_donut', PropBone = 18905, PropPlacement = {0.13, 0.05, 0.02, -50.0, 16.0, 60.0},
				EmoteMoving = true, }},
		["burger"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Burger", AnimationOptions =
			{ Prop = 'prop_cs_burger_01', PropBone = 18905, PropPlacement = {0.13, 0.05, 0.02, -50.0, 16.0, 60.0},
				EmoteMoving = true, }},
		["sandwich"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Sandwich", AnimationOptions =
			{ Prop = 'prop_sandwich_01', PropBone = 18905, PropPlacement = {0.13, 0.05, 0.02, -50.0, 16.0, 60.0},
				EmoteMoving = true, }},
		["soda"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Soda", AnimationOptions =
			{ Prop = 'prop_ecola_can', PropBone = 28422, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 130.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["egobar"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Ego Bar", AnimationOptions =
			{ Prop = 'prop_choc_ego', PropBone = 60309, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
				EmoteMoving = true, }},
		["wine"] = {"anim@heists@humane_labs@finale@keycards", "ped_a_enter_loop", "Wine", AnimationOptions =
			{ Prop = 'prop_drink_redwine', PropBone = 18905, PropPlacement = {0.10, -0.03, 0.03, -100.0, 0.0, -10.0},
				EmoteMoving = true, EmoteLoop = true }},
		["flute"] = {"anim@heists@humane_labs@finale@keycards", "ped_a_enter_loop", "Flute", AnimationOptions =
			{ Prop = 'prop_champ_flute', PropBone = 18905, PropPlacement = {0.10, -0.03, 0.03, -100.0, 0.0, -10.0},
				EmoteMoving = true, EmoteLoop = true }},
		["champagne"] = {"anim@heists@humane_labs@finale@keycards", "ped_a_enter_loop", "Champagne", AnimationOptions =
			{ Prop = 'prop_drink_champ', PropBone = 18905, PropPlacement = {0.10, -0.03, 0.03, -100.0, 0.0, -10.0},
				EmoteMoving = true, EmoteLoop = true }},
		["cigar"] = {"amb@world_human_smoking@male@male_a@enter", "enter", "Cigar", AnimationOptions =
			{ Prop = 'prop_cigar_02', PropBone = 47419, PropPlacement = {0.010, 0.0, 0.0, 50.0, 0.0, -80.0},
				EmoteMoving = true, EmoteDuration = 2600 }},
		["cigar2"] = {"amb@world_human_smoking@male@male_a@enter", "enter", "Cigar 2", AnimationOptions =
			{ Prop = 'prop_cigar_01', PropBone = 47419, PropPlacement = {0.010, 0.0, 0.0, 50.0, 0.0, -80.0},
				EmoteMoving = true, EmoteDuration = 2600 }},
		["joint"] = {"amb@world_human_smoking@male@male_a@enter", "enter", "Joint", AnimationOptions =
			{ Prop = 'p_cs_joint_02', PropBone = 47419, PropPlacement = {0.015, -0.009, 0.003, 55.0, 0.0, 110.0},
				EmoteMoving = true, EmoteDuration = 2600 }},
		["cig"] = {"amb@world_human_smoking@male@male_a@enter", "enter", "Cig", AnimationOptions =
			{ Prop = 'prop_amb_ciggy_01', PropBone = 47419, PropPlacement = {0.015, -0.009, 0.003, 55.0, 0.0, 110.0},
				EmoteMoving = true, EmoteDuration = 2600 }},
		["clean"] = {"timetable@floyd@clean_kitchen@base", "base", "Clean", AnimationOptions =
			{ Prop = "prop_sponge_01", PropBone = 28422, PropPlacement = {0.0, 0.0, -0.01, 90.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["clean2"] = {"amb@world_human_maid_clean@", "base", "Clean 2", AnimationOptions =
			{ Prop = "prop_sponge_01", PropBone = 28422, PropPlacement = {0.0, 0.0, -0.01, 90.0, 0.0, 0.0},
				EmoteLoop = true, EmoteMoving = true, }},
		["coke"] = { "switch@trevor@trev_smoking_meth", "trev_smoking_meth_loop", "Coke", AnimationOptions =
			{ EmoteLoop = true, EmoteMoving = true, }},
		["oxy"] = { "mp_suicide", "pill", "Oxy", AnimationOptions =
			{ EmoteLoop = true, EmoteMoving = true, }},
	},
}
