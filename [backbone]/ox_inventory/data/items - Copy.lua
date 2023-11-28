return {
	['testburger'] = {
		label = 'Test Burger',
		weight = 220,
		degrade = 60,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			export = 'ox_inventory_examples.testburger'
		},
		server = {
			export = 'ox_inventory_examples.testburger',
			test = 'what an amazingly delicious burger, amirite?'
		},
		buttons = {
			{
				label = 'Lick it',
				action = function(slot)
					print('You licked the burger')
				end
			},
			{
				label = 'Squeeze it',
				action = function(slot)
					print('You squeezed the burger :(')
				end
			},
			{
				label = 'What do you call a vegan burger?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('A misteak.')
				end
			},
			{
				label = 'What do frogs like to eat with their hamburgers?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('French flies.')
				end
			},
			{
				label = 'Why were the burger and fries running?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('Because they\'re fast food.')
				end
			}
		},
		consume = 0.3
	},

	['bandage'] = {
		label = 'Bandaj',
		weight = 115,
	},

	['black_money'] = {
		label = 'Dirty Money',
	},

	['burger'] = {
		label = 'Burger',
		weight = 220,
	},

	['cola'] = {
		label = 'eCola',
		weight = 350,
	},

	['parachute'] = {
		label = 'Paraşüt',
		weight = 2000,
		stack = true,
	},

	['garbage'] = {
		label = 'Garbage',
	},

	['paperbag'] = {
		label = 'Paper Bag',
		weight = 1,
		stack = false,
		close = false,
		consume = 0
	},

	['identification'] = {
		label = 'Identification',
	},

	['panties'] = {
		label = 'Knickers',
		weight = 10,
		consume = 0,
		client = {
			status = { thirst = -100000, stress = -25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
			usetime = 2500,
		}
	},

	['lockpick'] = {
		label = 'Maymuncuk',
		weight = 160,
	},

	['phone'] = {
		label = 'Telefon',
		weight = 190,
		stack = true,
		consume = 0,
		client = {
			add = function(total)
				if total > 0 then
					pcall(function() return exports.npwd:setPhoneDisabled(false) end)
				end
			end,

			remove = function(total)
				if total < 1 then
					pcall(function() return exports.npwd:setPhoneDisabled(true) end)
				end
			end
		}
	},

	['money'] = {
		label = 'Money',
	},

	['mustard'] = {
		label = 'Mustard',
		weight = 500,
	},

	['water'] = {
		label = 'Water',
		weight = 500,
	},

	['radio'] = {
		label = 'Telsiz',
		weight = 100,
		stack = true,
		allowArmed = true
	},

	['armour'] = {
		label = 'Bulletproof Vest',
		weight = 3000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 3500
		}
	},

	['clothing'] = {
		label = 'Clothing',
		consume = 0,
	},

	['mastercard'] = {
		label = 'Mastercard',
		stack = false,
		weight = 10,
	},

	['scrapmetal'] = {
		label = 'Scrap Metal',
		weight = 80,
	},

	["drill"] = {
		label = "Drill",
		weight = 20000,
		stack = true,
		close = false,
		description = "The real deal...",
		client = {
			image = "drill.png",
		}
	},

	["advancedrepairkit"] = {
		label = "Gelişmiş Tamir Kiti",
		weight = 4000,
		stack = true,
		close = true,
		description = "A nice toolbox with stuff to repair your vehicle",
		client = {
			image = "advancedkit.png",
		}
	},

	["advancedlockpick"] = {
		label = "Advanced Lockpick",
		weight = 500,
		stack = true,
		close = true,
		description = "If you lose your keys a lot this is very useful... Also useful to open your beers",
		client = {
			image = "advancedlockpick.png",
		}
	},

	["empty_evidence_bag"] = {
		label = "Empty Evidence Bag",
		weight = 0,
		stack = true,
		close = false,
		description = "Used a lot to keep DNA from blood, bullet shells and more",
		client = {
			image = "evidence.png",
		}
	},

	["coke_small_brick"] = {
		label = "Coke Package",
		weight = 350,
		stack = false,
		close = true,
		description = "Small package of cocaine, mostly used for deals and takes a lot of space",
		client = {
			image = "coke_small_brick.png",
		}
	},

	["jerry_can"] = {
		label = "Jerrycan 20L",
		weight = 20000,
		stack = true,
		close = true,
		description = "A can full of Fuel",
		client = {
			image = "jerry_can.png",
		}
	},

	["copper"] = {
		label = "Copper",
		weight = 100,
		stack = true,
		close = false,
		description = "Nice piece of metal that you can probably use for something",
		client = {
			image = "copper.png",
		}
	},

	["trojan_usb"] = {
		label = "Trojan USB",
		weight = 0,
		stack = true,
		close = true,
		description = "Handy software to shut down some systems",
		client = {
			image = "usb_device.png",
		}
	},

	["iron"] = {
		label = "Iron",
		weight = 100,
		stack = true,
		close = false,
		description = "Handy piece of metal that you can probably use for something",
		client = {
			image = "iron.png",
		}
	},

	["metalscrap"] = {
		label = "Hurda Metal",
		weight = 100,
		stack = true,
		close = false,
		description = "You can probably make something nice out of this",
		client = {
			image = "metalscrap.png",
		}
	},

	["cokebaggy"] = {
		label = "Bag of Coke",
		weight = 0,
		stack = true,
		close = true,
		description = "To get happy real quick",
		client = {
			image = "cocaine_baggy.png",
		}
	},

	["grapejuice"] = {
		label = "Üzüm Suyu",
		weight = 200,
		stack = false,
		close = false,
		description = "Grape juice is said to be healthy",
		degrade = 2880,
		client = {
			image = "grapejuice.png",
		}
	},

	["walkstick"] = {
		label = "Walking Stick",
		weight = 1000,
		stack = true,
		close = true,
		description = "Walking stick for ya'll grannies out there.. HAHA",
		client = {
			image = "walkstick.png",
		}
	},

	["firework4"] = {
		label = "Weeping Willow",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
		client = {
			image = "firework4.png",
		}
	},

	["babyvitamin"] = {
		label = "Bebek Vitamini",
		weight = 300,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "babyvitamin.png",
		}
	},

	["plastic"] = {
		label = "Plastik",
		weight = 100,
		stack = true,
		close = false,
		description = "RECYCLE! - Greta Thunberg 2019",
		client = {
			image = "plastic.png",
		}
	},

	["healthybabymineral"] = {
		label = "Bebek Minerali",
		weight = 300,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "healthybabymineral.png",
		}
	},

	["coke_brick"] = {
		label = "Coke Brick",
		weight = 1000,
		stack = false,
		close = true,
		description = "Heavy package of cocaine, mostly used for deals and takes a lot of space",
		client = {
			image = "coke_brick.png",
		}
	},

	["weed_purple-haze_seed"] = {
		label = "Purple Haze Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of Purple Haze",
		client = {
			image = "weed_seed.png",
		}
	},

	["weed_white-widow"] = {
		label = "White Widow 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g White Widow",
		client = {
			image = "weed_baggy.png",
		}
	},

	["harness"] = {
		label = "Race Harness",
		weight = 1000,
		stack = false,
		close = true,
		description = "Racing Harness so no matter what you stay in the car",
		client = {
			image = "harness.png",
		}
	},

	["aluminumoxide"] = {
		label = "Aluminium Powder",
		weight = 100,
		stack = true,
		close = false,
		description = "Some powder to mix with",
		client = {
			image = "aluminumoxide.png",
		}
	},

	["glass"] = {
		label = "Glass",
		weight = 100,
		stack = true,
		close = false,
		description = "It is very fragile, watch out",
		client = {
			image = "glass.png",
		}
	},

	["weed_white-widow_seed"] = {
		label = "White Widow Seed",
		weight = 0,
		stack = true,
		close = false,
		description = "A weed seed of White Widow",
		client = {
			image = "weed_seed.png",
		}
	},

	["babystroller"] = {
		label = "Bebek Arabası",
		weight = 300,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "babystroller.png",
		}
	},

	["ironoxide"] = {
		label = "Iron Powder",
		weight = 100,
		stack = true,
		close = false,
		description = "Some powder to mix with.",
		client = {
			image = "ironoxide.png",
		}
	},

	["beer"] = {
		label = "Bira",
		weight = 500,
		stack = false,
		close = true,
		description = "Nothing like a good cold beer!",
		degrade = 2880,
		client = {
			image = "beer.png",
		}
	},

	["newsbmic"] = {
		label = "Boom Microphone",
		weight = 100,
		stack = false,
		close = true,
		description = "A Useable BoomMic",
		client = {
			image = "newsbmic.png",
		}
	},

	["dendrogyra_coral"] = {
		label = "Dendrogyra",
		weight = 1000,
		stack = true,
		close = true,
		description = "Its also known as pillar coral",
		client = {
			image = "dendrogyra_coral.png",
		}
	},

	["firework2"] = {
		label = "Poppelers",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
		client = {
			image = "firework2.png",
		}
	},

	["aluminum"] = {
		label = "Aluminium",
		weight = 100,
		stack = true,
		close = false,
		description = "Nice piece of metal that you can probably use for something",
		client = {
			image = "aluminum.png",
		}
	},

	["printerdocument"] = {
		label = "Document",
		weight = 500,
		stack = false,
		close = true,
		description = "A nice document",
		client = {
			image = "printerdocument.png",
		}
	},

	["goldbar"] = {
		label = "Gold Bar",
		weight = 7000,
		stack = true,
		close = true,
		description = "Looks pretty expensive to me",
		client = {
			image = "goldbar.png",
		}
	},

	["crack_baggy"] = {
		label = "Bag of Crack",
		weight = 0,
		stack = true,
		close = true,
		description = "To get happy faster",
		client = {
			image = "crack_baggy.png",
		}
	},

	["lawyerpass"] = {
		label = "Lawyer Pass",
		weight = 0,
		stack = false,
		close = false,
		description = "Pass exclusive to lawyers to show they can represent a suspect",
		client = {
			image = "lawyerpass.png",
		}
	},

	["meth"] = {
		label = "Meth",
		weight = 100,
		stack = true,
		close = true,
		description = "A baggie of Meth",
		client = {
			image = "meth_baggy.png",
		}
	},

	["sandwich"] = {
		label = "Sandwich",
		weight = 200,
		stack = false,
		close = true,
		description = "Nice bread for your stomach",
		degrade = 2880,
		client = {
			image = "sandwich.png",
		}
	},

	["electronickit"] = {
		label = "Electronic Kit",
		weight = 100,
		stack = true,
		close = true,
		description = "If you've always wanted to build a robot you can maybe start here. Maybe you'll be the new Elon Musk?",
		client = {
			image = "electronickit.png",
		}
	},

	["moneybag"] = {
		label = "Money Bag",
		weight = 0,
		stack = false,
		close = true,
		description = "A bag with cash",
		client = {
			image = "moneybag.png",
		}
	},

	["lighter"] = {
		label = "Lighter",
		weight = 0,
		stack = true,
		close = true,
		description = "On new years eve a nice fire to stand next to",
		client = {
			image = "lighter.png",
		}
	},

	["weed_og-kush"] = {
		label = "OGKush 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g OG Kush",
		client = {
			image = "weed_baggy.png",
		}
	},

	["weed_brick"] = {
		label = "Weed Brick",
		weight = 1000,
		stack = true,
		close = true,
		description = "1KG Weed Brick to sell to large customers.",
		client = {
			image = "weed_brick.png",
		}
	},

	["handcuffs"] = {
		label = "Handcuffs",
		weight = 100,
		stack = true,
		close = true,
		description = "Comes in handy when people misbehave. Maybe it can be used for something else?",
		client = {
			image = "handcuffs.png",
		}
	},

	["ifaks"] = {
		label = "ifaks",
		weight = 200,
		stack = true,
		close = true,
		description = "ifaks for healing and a complete stress remover.",
		client = {
			image = "ifaks.png",
		}
	},

	["fitbit"] = {
		label = "Fitbit",
		weight = 500,
		stack = false,
		close = true,
		description = "I like fitbit",
		client = {
			image = "fitbit.png",
		}
	},

	["newscam"] = {
		label = "News Camera",
		weight = 100,
		stack = false,
		close = true,
		description = "A camera for the news",
		client = {
			image = "newscam.png",
		}
	},

	["nitrous"] = {
		label = "Nitrous",
		weight = 1000,
		stack = true,
		close = true,
		description = "Speed up, gas pedal! :D",
		client = {
			image = "nitrous.png",
		}
	},

	["tablet"] = {
		label = "Tablet",
		weight = 2000,
		stack = true,
		close = true,
		description = "Expensive tablet",
		client = {
			image = "tablet.png",
		}
	},

	["gatecrack"] = {
		label = "Gatecrack",
		weight = 0,
		stack = true,
		close = true,
		description = "Handy software to tear down some fences",
		client = {
			image = "usb_device.png",
		}
	},

	["cleaningkit"] = {
		label = "Cleaning Kit",
		weight = 250,
		stack = true,
		close = true,
		description = "A microfiber cloth with some soap will let your car sparkle again!",
		client = {
			image = "cleaningkit.png",
		}
	},

	["water_bottle"] = {
		label = "Su",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "water_bottle.png",
		}
	},

	["weed_amnesia_seed"] = {
		label = "Amnesia Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of Amnesia",
		client = {
			image = "weed_seed.png",
		}
	},

	["radioscanner"] = {
		label = "Radio Scanner",
		weight = 1000,
		stack = true,
		close = true,
		description = "With this you can get some police alerts. Not 100% effective however",
		client = {
			image = "radioscanner.png",
		}
	},

	["pinger"] = {
		label = "Pinger",
		weight = 1000,
		stack = true,
		close = true,
		description = "With a pinger and your phone you can send out your location",
		client = {
			image = "pinger.png",
		}
	},

	["rolex"] = {
		label = "Golden Watch",
		weight = 1500,
		stack = true,
		close = true,
		description = "A golden watch seems like the jackpot to me!",
		client = {
			image = "rolex.png",
		}
	},

	["visa"] = {
		label = "Visa Card",
		weight = 0,
		stack = false,
		close = false,
		description = "Visa can be used via ATM",
		client = {
			image = "visacard.png",
		}
	},

	["vodka"] = {
		label = "Votka",
		weight = 500,
		stack = false,
		close = true,
		description = "For all the thirsty out there",
		degrade = 2880,
		client = {
			image = "vodka.png",
		}
	},

	["repairkit"] = {
		label = "Repairkit",
		weight = 2500,
		stack = true,
		close = true,
		description = "A nice toolbox with stuff to repair your vehicle",
		client = {
			image = "repairkit.png",
		}
	},

	["healthybabyfood"] = {
		label = "Bebek Maması",
		weight = 300,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "healthybabyfood.png",
		}
	},

	["diamond"] = {
		label = "Diamond",
		weight = 1000,
		stack = true,
		close = true,
		description = "A diamond seems like the jackpot to me!",
		client = {
			image = "diamond.png",
		}
	},

	["oxy"] = {
		label = "Prescription Oxy",
		weight = 0,
		stack = true,
		close = true,
		description = "The Label Has Been Ripped Off",
		client = {
			image = "oxy.png",
		}
	},

	["coffee"] = {
		label = "Kahve",
		weight = 200,
		stack = false,
		close = true,
		description = "Pump 4 Caffeine",
		degrade = 2880,
		client = {
			image = "coffee.png",
		}
	},

	["thermite"] = {
		label = "Thermite",
		weight = 1000,
		stack = true,
		close = true,
		description = "Sometimes you'd wish for everything to burn",
		client = {
			image = "thermite.png",
		}
	},

	["laptop"] = {
		label = "Laptop",
		weight = 4000,
		stack = true,
		close = true,
		description = "Expensive laptop",
		client = {
			image = "laptop.png",
		}
	},

	["grape"] = {
		label = "Grape",
		weight = 100,
		stack = true,
		close = false,
		description = "Mmmmh yummie, grapes",
		client = {
			image = "grape.png",
		}
	},

	["security_card_01"] = {
		label = "Security Card A",
		weight = 0,
		stack = true,
		close = true,
		description = "A security card... I wonder what it goes to",
		client = {
			image = "security_card_01.png",
		}
	},

	["iphone"] = {
		label = "iPhone",
		weight = 1000,
		stack = true,
		close = true,
		description = "Very expensive phone",
		client = {
			image = "iphone.png",
		}
	},

	["painkillers"] = {
		label = "Ağrı Kesici",
		weight = 0,
		stack = true,
		close = true,
		description = "For pain you can't stand anymore, take this pill that'd make you feel great again",
		client = {
			image = "painkillers.png",
		}
	},

	["weed_skunk_seed"] = {
		label = "Skunk Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of Skunk",
		client = {
			image = "weed_seed.png",
		}
	},

	["weaponlicense"] = {
		label = "Weapon License",
		weight = 0,
		stack = false,
		close = true,
		description = "Weapon License",
		client = {
			image = "weapon_license.png",
		}
	},

	["weed_purple-haze"] = {
		label = "Purple Haze 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g Purple Haze",
		client = {
			image = "weed_baggy.png",
		}
	},

	["rubber"] = {
		label = "Rubber",
		weight = 100,
		stack = true,
		close = false,
		description = "Rubber, I believe you can make your own rubber ducky with it :D",
		client = {
			image = "rubber.png",
		}
	},

	["casinochips"] = {
		label = "Casino Chips",
		weight = 0,
		stack = true,
		close = false,
		description = "Chips For Casino Gambling",
		client = {
			image = "casinochips.png",
		}
	},

	["10kgoldchain"] = {
		label = "10k Gold Chain",
		weight = 2000,
		stack = true,
		close = true,
		description = "10 carat golden chain",
		client = {
			image = "10kgoldchain.png",
		}
	},

	["tosti"] = {
		label = "Grilled Cheese Sandwich",
		weight = 200,
		stack = false,
		close = true,
		description = "Nice to eat",
		degrade = 2880,
		client = {
			image = "tosti.png",
		}
	},

	["joint"] = {
		label = "Joint",
		weight = 0,
		stack = true,
		close = true,
		description = "Sidney would be very proud at you",
		client = {
			image = "joint.png",
		}
	},

	["kurkakola"] = {
		label = "Kola",
		weight = 500,
		stack = false,
		close = true,
		description = "For all the thirsty out there",
		degrade = 2880,
		client = {
			image = "cola.png",
		}
	},

	["filled_evidence_bag"] = {
		label = "Evidence Bag",
		weight = 200,
		stack = false,
		close = false,
		description = "A filled evidence bag to see who committed the crime >:(",
		client = {
			image = "evidence.png",
		}
	},

	["driver_license"] = {
		label = "Drivers License",
		weight = 0,
		stack = false,
		close = false,
		description = "Permit to show you can drive a vehicle",
		client = {
			image = "driver_license.png",
		}
	},

	["weed_og-kush_seed"] = {
		label = "OGKush Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of OG Kush",
		client = {
			image = "weed_seed.png",
		}
	},

	["comfortdiaper"] = {
		label = "Bebek Bezi",
		weight = 300,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "comfortdiaper.png",
		}
	},

	["id_card"] = {
		label = "ID Card",
		weight = 0,
		stack = false,
		close = false,
		description = "A card containing all your information to identify yourself",
		client = {
			image = "id_card.png",
		}
	},

	["diving_gear"] = {
		label = "Dalış Tüpü",
		weight = 30000,
		stack = false,
		close = true,
		description = "An oxygen tank and a rebreather",
		client = {
			image = "diving_gear.png",
		}
	},

	["whiskey"] = {
		label = "Viski",
		weight = 500,
		stack = false,
		close = true,
		description = "For all the thirsty out there",
		degrade = 2880,
		client = {
			image = "whiskey.png",
		}
	},

	["weed_skunk"] = {
		label = "Skunk 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g Skunk",
		client = {
			image = "weed_baggy.png",
		}
	},

	["xtcbaggy"] = {
		label = "Bag of XTC",
		weight = 0,
		stack = true,
		close = true,
		description = "Pop those pills baby",
		client = {
			image = "xtc_baggy.png",
		}
	},

	["newsmic"] = {
		label = "News Microphone",
		weight = 100,
		stack = false,
		close = true,
		description = "A microphone for the news",
		client = {
			image = "newsmic.png",
		}
	},

	["samsungphone"] = {
		label = "Samsung S10",
		weight = 1000,
		stack = true,
		close = true,
		description = "Very expensive phone",
		client = {
			image = "samsungphone.png",
		}
	},

	["security_card_02"] = {
		label = "Security Card B",
		weight = 0,
		stack = true,
		close = true,
		description = "A security card... I wonder what it goes to",
		client = {
			image = "security_card_02.png",
		}
	},

	["steel"] = {
		label = "Steel",
		weight = 100,
		stack = true,
		close = false,
		description = "Nice piece of metal that you can probably use for something",
		client = {
			image = "steel.png",
		}
	},

	["rolling_paper"] = {
		label = "Rolling Paper",
		weight = 0,
		stack = true,
		close = true,
		description = "Paper made specifically for encasing and smoking tobacco or cannabis.",
		client = {
			image = "rolling_paper.png",
		}
	},

	["binoculars"] = {
		label = "Dürbün",
		weight = 600,
		stack = true,
		close = true,
		description = "Sneaky Breaky...",
		client = {
			image = "binoculars.png",
		}
	},

	["weed_amnesia"] = {
		label = "Amnesia 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g Amnesia",
		client = {
			image = "weed_baggy.png",
		}
	},

	["weed_ak47"] = {
		label = "AK47 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g AK47",
		client = {
			image = "weed_baggy.png",
		}
	},

	["certificate"] = {
		label = "Certificate",
		weight = 0,
		stack = true,
		close = true,
		description = "Certificate that proves you own certain stuff",
		client = {
			image = "certificate.png",
		}
	},

	["goldchain"] = {
		label = "Golden Chain",
		weight = 1500,
		stack = true,
		close = true,
		description = "A golden chain seems like the jackpot to me!",
		client = {
			image = "goldchain.png",
		}
	},

	["diamond_ring"] = {
		label = "Diamond Ring",
		weight = 1500,
		stack = true,
		close = true,
		description = "A diamond ring seems like the jackpot to me!",
		client = {
			image = "diamond_ring.png",
		}
	},

	["snikkel_candy"] = {
		label = "Snickers",
		weight = 100,
		stack = false,
		close = true,
		description = "Some delicious candy :O",
		degrade = 2880,
		client = {
			image = "snikkel_candy.png",
		}
	},

	["babytoys"] = {
		label = "Bebek Oyuncağı",
		weight = 300,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "babytoys.png",
		}
	},

	["weed_nutrition"] = {
		label = "Sıvı Bitki Gübresi",
		weight = 750,
		stack = true,
		close = true,
		description = "Plant nutrition",
		client = {
			image = "weed_nutrition.png",
		}
	},

	["empty_weed_bag"] = {
		label = "Boş Torba",
		weight = 0,
		stack = true,
		close = true,
		description = "A small empty bag",
		client = {
			image = "weed_baggy_empty.png",
		}
	},

	["screwdriverset"] = {
		label = "Toolkit",
		weight = 1000,
		stack = true,
		close = false,
		description = "Very useful to screw... screws...",
		client = {
			image = "screwdriverset.png",
		}
	},

	["police_stormram"] = {
		label = "Stormram",
		weight = 18000,
		stack = true,
		close = true,
		description = "A nice tool to break into doors",
		client = {
			image = "police_stormram.png",
		}
	},

	["firework1"] = {
		label = "2Brothers",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
		client = {
			image = "firework1.png",
		}
	},

	["wine"] = {
		label = "Şarap",
		weight = 300,
		stack = false,
		close = false,
		description = "Some good wine to drink on a fine evening",
		degrade = 2880,
		client = {
			image = "wine.png",
		}
	},

	["labkey"] = {
		label = "Key",
		weight = 500,
		stack = false,
		close = true,
		description = "Key for a lock...?",
		client = {
			image = "labkey.png",
		}
	},

	["weed_ak47_seed"] = {
		label = "AK47 Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of AK47",
		client = {
			image = "weed_seed.png",
		}
	},

	["twerks_candy"] = {
		label = "Twix",
		weight = 100,
		stack = false,
		close = true,
		description = "Some delicious candy :O",
		degrade = 2880,
		client = {
			image = "twerks_candy.png",
		}
	},

	["firework3"] = {
		label = "WipeOut",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
		client = {
			image = "firework3.png",
		}
	},

	["firstaid"] = {
		label = "Sağlık Çantası",
		weight = 2500,
		stack = true,
		close = true,
		description = "You can use this First Aid kit to get people back on their feet",
		client = {
			image = "firstaid.png",
		}
	},

	["diving_fill"] = {
		label = "Regülatör",
		weight = 3000,
		stack = false,
		close = true,
		client = {
			image = "diving_tube.png",
		}
	},

	["antipatharia_coral"] = {
		label = "Antipatharia",
		weight = 1000,
		stack = true,
		close = true,
		description = "Its also known as black corals or thorn corals",
		client = {
			image = "antipatharia_coral.png",
		}
	},

	["armor"] = {
		label = "Çelik Yelek",
		weight = 5000,
		stack = true,
		close = true,
		description = "Some protection won't hurt... right?",
		client = {
			image = "armor.png",
		}
	},

	["tunerlaptop"] = {
		label = "Tunerchip",
		weight = 2000,
		stack = false,
		close = true,
		description = "With this tunerchip you can get your car on steroids... If you know what you're doing",
		client = {
			image = "tunerchip.png",
		}
	},

	["heavyarmor"] = {
		label = "Heavy Armor",
		weight = 5000,
		stack = true,
		close = true,
		description = "Some protection won't hurt... right?",
		client = {
			image = "armor.png",
		}
	},

	["cryptostick"] = {
		label = "Crypto Stick",
		weight = 200,
		stack = false,
		close = true,
		description = "Why would someone ever buy money that doesn't exist.. How many would it contain..?",
		client = {
			image = "cryptostick.png",
		}
	},

	["stickynote"] = {
		label = "Sticky note",
		weight = 0,
		stack = false,
		close = false,
		description = "Sometimes handy to remember something :)",
		client = {
			image = "stickynote.png",
		}
	},

	["markedbills"] = {
		label = "Marked Money",
		weight = 1000,
		stack = false,
		close = true,
		description = "Money?",
		client = {
			image = "markedbills.png",
		}
	},

	["guvenlik_karti_b"] = {
		label = "Güvenlik Kartı B",
		weight = 100,
		stack = true,
		close = true,
		description = "Güvenlik Kartı",
		client = {
			image = "guvenlik_karti_b.png",
		}
	},

	["guvenlik_karti_h"] = {
		label = "Güvenlik Kartı H",
		weight = 100,
		stack = true,
		close = true,
		description = "Güvenlik Kartı",
		client = {
			image = "guvenlik_karti_h.png",
		}
	},

	["guvenlik_karti_d"] = {
		label = "Güvenlik Kartı D",
		weight = 100,
		stack = true,
		close = true,
		description = "Güvenlik Kartı",
		client = {
			image = "guvenlik_karti_d.png",
		}
	},

	["guvenlik_karti_g"] = {
		label = "Güvenlik Kartı G",
		weight = 100,
		stack = true,
		close = true,
		description = "Güvenlik Kartı",
		client = {
			image = "guvenlik_karti_g.png",
		}
	},

	["guvenlik_karti_e"] = {
		label = "Güvenlik Kartı E",
		weight = 100,
		stack = true,
		close = true,
		description = "Güvenlik Kartı",
		client = {
			image = "guvenlik_karti_e.png",
		}
	},

	["guvenlik_karti_f"] = {
		label = "Güvenlik Kartı F",
		weight = 100,
		stack = true,
		close = true,
		description = "Güvenlik Kartı",
		client = {
			image = "guvenlik_karti_f.png",
		}
	},

	["guvenlik_karti_a"] = {
		label = "Güvenlik Kartı A",
		weight = 100,
		stack = true,
		close = true,
		description = "Güvenlik Kartı",
		client = {
			image = "guvenlik_karti_a.png",
		}
	},

	["guvenlik_karti_c"] = {
		label = "Güvenlik Kartı C",
		weight = 100,
		stack = true,
		close = true,
		description = "Güvenlik Kartı",
		client = {
			image = "guvenlik_karti_c.png",
		}
	},

	["kelepceanahtar"] = {
		label = "Kelepçe Anahtarı",
		weight = 100,
		stack = true,
		close = true,
		description = "Kendine ait kelepçeyi açabilen bir anahtar.",
		client = {
			image = "kelepceanahtar.png",
		}
	},

	["pkelepceanahtar"] = {
		label = "Polis Anahtarı",
		weight = 100,
		stack = true,
		close = true,
		description = "Her polis kelepçesini açabilen, polis anahtarı.",
		client = {
			image = "pkelepceanahtar.png",
		}
	},

	["pkelepce"] = {
		label = "Polis Kelepçesi",
		weight = 100,
		stack = true,
		close = true,
		description = "Kaliteli çelikten yapılma, güçlü polis kelepçesi.",
		client = {
			image = "pkelepce.png",
		}
	},

	["kelepce"] = {
		label = "Kelepçe",
		weight = 100,
		stack = true,
		close = true,
		description = "Ne yazık ki tüylü modellerinden değil..",
		client = {
			image = "kelepce.png",
		}
	},

	["pizzaslice"] = {
		label = "Pizza Slice",
		weight = 320,
		stack = true,
		close = true,
		description = "Slice of Pizza.",
		client = {
			image = "pizzaslice.png",
		}
	},

	["fruitpunch"] = {
		label = "Fruit Punch",
		weight = 100,
		stack = true,
		close = true,
		description = "Drink that Smiles Back",
		client = {
			image = ".png",
		}
	},

	["sushirolls"] = {
		label = "sushirolls",
		weight = 400,
		stack = true,
		close = true,
		description = "Sushi Roll.",
		client = {
			image = "changeme.png",
		}
	},

	["gum"] = {
		label = "Gum",
		weight = 250,
		stack = true,
		close = true,
		description = "Pack of Gum",
		client = {
			image = "gum.png",
		}
	},

	["pinklemonade"] = {
		label = "Pink Lemonade",
		weight = 100,
		stack = true,
		close = true,
		description = "Straight from the Pink Juice",
		client = {
			image = ".png",
		}
	},

	["mtndew"] = {
		label = "Mountain Dew",
		weight = 100,
		stack = true,
		close = true,
		description = "Drink that may cause your genitals to get smaller.",
		client = {
			image = ".png",
		}
	},

	["cupcake"] = {
		label = "Cupcake",
		weight = 150,
		stack = true,
		close = true,
		description = "Colorfully iced cupcake",
		client = {
			image = "cupcake.png",
		}
	},

	["donut"] = {
		label = "Donut",
		weight = 200,
		stack = true,
		close = true,
		description = "Pink iced donut.",
		client = {
			image = "donut.png",
		}
	},

	["cookie"] = {
		label = "Cookie",
		weight = 250,
		stack = true,
		close = true,
		description = "Choc-Chip Cookie.",
		client = {
			image = "cookie.png",
		}
	},

	["ramen"] = {
		label = "Ramen",
		weight = 300,
		stack = true,
		close = true,
		description = "Noodly Ramen",
		client = {
			image = "ramen.png",
		}
	},

	["drpepper"] = {
		label = "Dr. Pepper",
		weight = 100,
		stack = true,
		close = true,
		description = "Drink of the Doctors Finest",
		client = {
			image = ".png",
		}
	},

	["sprite"] = {
		label = "Sprite",
		weight = 100,
		stack = true,
		close = true,
		description = "Sprite more like Light",
		client = {
			image = ".png",
		}
	},

	["fries"] = {
		label = "Fries",
		weight = 250,
		stack = true,
		close = true,
		description = "Some nice cold fries.",
		client = {
			image = "fries.png",
		}
	},

	["fanta"] = {
		label = "Fanta",
		weight = 100,
		stack = true,
		close = true,
		description = "Drink of Orange SuperPowers",
		client = {
			image = ".png",
		}
	},

	["muffin"] = {
		label = "Muffin",
		weight = 150,
		stack = true,
		close = true,
		description = "Choc-Chip Muffin.",
		client = {
			image = "changeme.png",
		}
	},

	["lemonade"] = {
		label = "Lemonade",
		weight = 100,
		stack = true,
		close = true,
		description = "Straight from the Juice",
		client = {
			image = "lemonade.png",
		}
	},

	["icedtea"] = {
		label = "Iced Tea",
		weight = 100,
		stack = true,
		close = true,
		description = "Iced Brew of Tea",
		client = {
			image = "icedtea.png",
		}
	},

	["pepsi"] = {
		label = "Pepsi",
		weight = 100,
		stack = true,
		close = true,
		description = "Knock off CocaCola",
		client = {
			image = ".png",
		}
	},

	["icecream"] = {
		label = "Ice Cream",
		weight = 200,
		stack = true,
		close = true,
		description = "Ice Cream.",
		client = {
			image = "icecream.png",
		}
	},

	["milk"] = {
		label = "Milk",
		weight = 100,
		stack = true,
		close = true,
		description = "Drink of Cow Produce",
		client = {
			image = "milk.png",
		}
	},

	["paintingj"] = {
		label = "Değerli Resim",
		weight = 1000,
		stack = true,
		close = true,
		description = "Değerli bir resime benziyor.",
		client = {
			image = "paintingj.png",
		}
	},

	["paintingi"] = {
		label = "Değerli Resim",
		weight = 1000,
		stack = true,
		close = true,
		description = "Değerli bir resime benziyor.",
		client = {
			image = "paintingi.png",
		}
	},

	["paintingg"] = {
		label = "Değerli Resim",
		weight = 1000,
		stack = true,
		close = true,
		description = "Değerli bir resime benziyor.",
		client = {
			image = "paintingg.png",
		}
	},

	["paintingf"] = {
		label = "Değerli Resim",
		weight = 1000,
		stack = true,
		close = true,
		description = "Değerli bir resime benziyor.",
		client = {
			image = "paintingf.png",
		}
	},

	["paintingh"] = {
		label = "Değerli Resim",
		weight = 1000,
		stack = true,
		close = true,
		description = "Değerli bir resime benziyor.",
		client = {
			image = "paintingh.png",
		}
	},

	["gasmask"] = {
		label = "Gaz Maskesi",
		weight = 200,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "gasmask.png",
		}
	},

	["jewels"] = {
		label = "Mücevher",
		weight = 200,
		stack = true,
		close = true,
		description = "Değerli şeylere benziyor.",
		client = {
			image = "jewels.png",
		}
	},

	["yakutelmas"] = {
		label = "Yakut Elmas",
		weight = 200,
		stack = true,
		close = true,
		description = "Çok değerli bir taşa benziyor.",
		client = {
			image = "yakutelmas.png",
		}
	},

	["islenmis_altin"] = {
		label = "Altın Külçesi",
		weight = 200,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "islenmis_altin.png",
		}
	},

	["atmobject"] = {
		label = "ATM",
		weight = 200,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "atmobject.png",
		}
	},

	["towingrope"] = {
		label = "Halat",
		weight = 200,
		stack = false,
		close = true,
		description = "Güçlü bir halata benziyor.",
		client = {
			image = "towingrope.png",
		}
	},

	["uncut_sapphire"] = {
		label = "İşlenmemiş Safir",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "uncut_sapphire.png",
		}
	},

	["sapphire_earring_silver"] = {
		label = "Safir Küpe",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "sapphire_earring_silver.png",
		}
	},

	["sapphire_ring"] = {
		label = "Safir Yüzük",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "sapphire_ring.png",
		}
	},

	["uncut_ruby"] = {
		label = "İşlenmemiş Yakut",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "uncut_ruby.png",
		}
	},

	["copperore"] = {
		label = "Bakır Cevheri",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "copperore.png",
		}
	},

	["emerald_ring_silver"] = {
		label = "Zümrüt Yüzük",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "emerald_ring_silver.png",
		}
	},

	["bottle"] = {
		label = "Kırık Şişe",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bottle.png",
		}
	},

	["goldingot"] = {
		label = "Altın Külçe",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "goldingot.png",
		}
	},

	["silverore"] = {
		label = "Gümüş Cevheri",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "silverore.png",
		}
	},

	["silverchain"] = {
		label = "Gümüş Kolye",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "silverchain.png",
		}
	},

	["uncut_diamond"] = {
		label = "İşlenmemiş Elmas",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "uncut_diamond.png",
		}
	},

	["silverearring"] = {
		label = "Gümüş Küpe",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "silverearring.png",
		}
	},

	["ironore"] = {
		label = "Demir Cevheri",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ironore.png",
		}
	},

	["drillbit"] = {
		label = "Matkap ucu",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "drillbit.png",
		}
	},

	["emerald"] = {
		label = "Zümrüt",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "emerald.png",
		}
	},

	["ruby_ring"] = {
		label = "Yakut Yüzük",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ruby_ring.png",
		}
	},

	["can"] = {
		label = "Kutu Şişe",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "can.png",
		}
	},

	["stone"] = {
		label = "Taş",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "stone.png",
		}
	},

	["pickaxe"] = {
		label = "Kazma",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pickaxe.png",
		}
	},

	["ruby"] = {
		label = "Yakut",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ruby.png",
		}
	},

	["mininglaser"] = {
		label = "Maden lazeri",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "mininglaser.png",
		}
	},

	["silver_ring"] = {
		label = "Gümüş Yüzük",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "silver_ring.png",
		}
	},

	["ruby_necklace_silver"] = {
		label = "Yakut Kolye",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ruby_necklace_silver.png",
		}
	},

	["sapphire"] = {
		label = "Safir",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "sapphire.png",
		}
	},

	["diamond_ring_silver"] = {
		label = "Gümüş Yüzük",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "diamond_ring_silver.png",
		}
	},

	["goldore"] = {
		label = "Altın Cevheri",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "goldore.png",
		}
	},

	["silver_earring"] = {
		label = "Gümüş Küpe",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "silver_earring.png",
		}
	},

	["emerald_ring"] = {
		label = "Zümrüt Yüzük",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "emerald_ring.png",
		}
	},

	["goldpan"] = {
		label = "Altın Tepsi",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "goldpan.png",
		}
	},

	["sapphire_necklace"] = {
		label = "Safir Kolye",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "sapphire_necklace.png",
		}
	},

	["ruby_earring_silver"] = {
		label = "Yakut Küpe",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ruby_earring_silver.png",
		}
	},

	["emerald_necklace_silver"] = {
		label = "Zümrüt Kolye",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "emerald_necklace_silver.png",
		}
	},

	["diamond_necklace_silver"] = {
		label = "Gümüş Kolye",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "diamond_necklace_silver.png",
		}
	},

	["sapphire_earring"] = {
		label = "Safir Küpe",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "sapphire_earring.png",
		}
	},

	["gold_earring"] = {
		label = "Altın Küpe",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "gold_earring.png",
		}
	},

	["emerald_earring_silver"] = {
		label = "Zümrüt Küpe",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "emerald_earring_silver.png",
		}
	},

	["miningdrill"] = {
		label = "Madencilik Matkabı",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "miningdrill.png",
		}
	},

	["gold_ring"] = {
		label = "Altın Yüzük",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "gold_ring.png",
		}
	},

	["diamond_necklace"] = {
		label = "Elmas Kolye",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "diamond_necklace.png",
		}
	},

	["ruby_necklace"] = {
		label = "Yakut Kolye",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ruby_necklace.png",
		}
	},

	["emerald_necklace"] = {
		label = "Zümrüt Kolye",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "emerald_necklace.png",
		}
	},

	["uncut_emerald"] = {
		label = "İşlenmemiş Zümrüt",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "uncut_emerald.png",
		}
	},

	["diamond_earring"] = {
		label = "Elmas Küpe",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "diamond_earring.png",
		}
	},

	["diamond_earring_silver"] = {
		label = "Gümüş Küpe",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "diamond_earring_silver.png",
		}
	},

	["carbon"] = {
		label = "Ham Karbon",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "carbon.png",
		}
	},

	["sapphire_ring_silver"] = {
		label = "Safir Yüzük",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "sapphire_ring_silver.png",
		}
	},

	["silveringot"] = {
		label = "Gümüş Külçe",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "silveringot.png",
		}
	},

	["emerald_earring"] = {
		label = "Zümrüt Küpe",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "emerald_earring.png",
		}
	},

	["ruby_ring_silver"] = {
		label = "Yakut Yüzük",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ruby_ring_silver.png",
		}
	},

	["sapphire_necklace_silver"] = {
		label = "Safir Kolye",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "sapphire_necklace_silver.png",
		}
	},

	["ruby_earring"] = {
		label = "Yakut Küpe",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ruby_earring.png",
		}
	},

	["fish"] = {
		label = "Minik Balık",
		weight = 200,
		stack = true,
		close = false,
		description = "Sudan çıkmış balık, belki de babandır? Yer misin?",
	},

	["lufer"] = {
		label = "Lüfer",
		weight = 300,
		stack = true,
		close = false,
		description = "Sudan çıkmış balık, belki de babandır? Yer misin?",
	},

	["fishingrod3"] = {
		label = "Olta (3Lv.)",
		weight = 1000,
		stack = true,
		close = false,
		description = "Deniz canlılarını yakalayabilmek için üretilmiş kancalı alet.",
	},

	["levrek"] = {
		label = "Levrek",
		weight = 300,
		stack = true,
		close = false,
		description = "Sudan çıkmış balık, belki de babandır? Yer misin?",
	},

	["pantolonbaligi"] = {
		label = "Pantolon Balığı",
		weight = 750,
		stack = true,
		close = false,
		description = "Sudan çıkmış balık, belki de babandır? Yer misin?",
	},

	["kirmiziinci"] = {
		label = "Kırmızı inci",
		weight = 100,
		stack = true,
		close = false,
		description = "Sudan çıkmış balık, belki de babandır? Yer misin?",
	},

	["fishingrod5"] = {
		label = "Olta (5Lv.)",
		weight = 1000,
		stack = true,
		close = false,
		description = "Deniz canlılarını yakalayabilmek için üretilmiş kancalı alet.",
	},

	["turtlebait"] = {
		label = "İllegal Yem",
		weight = 400,
		stack = true,
		close = false,
		description = "Olta ucuna takılabilen, İllegal balık yemi..",
	},

	["maviinci"] = {
		label = "Mavi inci",
		weight = 100,
		stack = true,
		close = false,
		description = "Sudan çıkmış balık, belki de babandır? Yer misin?",
	},

	["beyazinci"] = {
		label = "Beyaz inci",
		weight = 100,
		stack = true,
		close = false,
		description = "Sudan çıkmış balık, belki de babandır? Yer misin?",
	},

	["kopekbaligix"] = {
		label = "Köpekbalığı",
		weight = 1000,
		stack = true,
		close = false,
		description = "Sudan çıkmış balık, belki de babandır? Yer misin?",
	},

	["sariinci"] = {
		label = "Sarı inci",
		weight = 100,
		stack = true,
		close = false,
		description = "Sudan çıkmış balık, belki de babandır? Yer misin?",
	},

	["fishingrod4"] = {
		label = "Olta (4Lv.)",
		weight = 1000,
		stack = true,
		close = false,
		description = "Deniz canlılarını yakalayabilmek için üretilmiş kancalı alet.",
	},

	["fishingrod2"] = {
		label = "Olta (2Lv.)",
		weight = 1000,
		stack = true,
		close = false,
		description = "Deniz canlılarını yakalayabilmek için üretilmiş kancalı alet.",
	},

	["palamut"] = {
		label = "Palamut",
		weight = 300,
		stack = true,
		close = false,
		description = "Sudan çıkmış balık, belki de babandır? Yer misin?",
	},

	["hamsi"] = {
		label = "Hamsi",
		weight = 300,
		stack = true,
		close = false,
		description = "Piçtur piç",
	},

	["fishingrod1"] = {
		label = "Olta (1Lv.)",
		weight = 1000,
		stack = true,
		close = false,
		description = "Deniz canlılarını yakalayabilmek için üretilmiş kancalı alet.",
	},

	["zargana"] = {
		label = "Zargana",
		weight = 300,
		stack = true,
		close = false,
		description = "Sudan çıkmış balık, belki de babandır? Yer misin?",
	},

	["yesilinci"] = {
		label = "Yeşil inci",
		weight = 100,
		stack = true,
		close = false,
		description = "Sudan çıkmış balık, belki de babandır? Yer misin?",
	},

	["cinekop"] = {
		label = "Çinekop",
		weight = 300,
		stack = true,
		close = false,
		description = "Sudan çıkmış balık, belki de babandır? Yer misin?",
	},

	["carettacaretta"] = {
		label = "Caretta Caretta",
		weight = 750,
		stack = true,
		close = false,
		description = "Sudan çıkmış balık, belki de babandır? Yer misin?",
	},

	["fishbait"] = {
		label = "Balık Yemi",
		weight = 200,
		stack = true,
		close = false,
		description = "Olta ucuna takılabilen, basit balık yemi.",
	},

	["drone_flyer_4"] = {
		label = "Gelişmiş Drone 1",
		weight = 1000,
		stack = true,
		close = true,
		description = "Büyük, fena değil bir quadcopter",
		client = {
			image = "drone_flyer_4.png",
		}
	},

	["drone_flyer_1"] = {
		label = "Basit Drone 1",
		weight = 1000,
		stack = true,
		close = true,
		description = "Minik, yavaş bir quadcopter",
		client = {
			image = "drone_flyer_1.png",
		}
	},

	["medikit"] = {
		label = "Sağlık Çantası",
		weight = 2500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "medikit.png",
		}
	},

	["drone_flyer_5"] = {
		label = "Gelişmiş Drone 2",
		weight = 1000,
		stack = true,
		close = true,
		description = "Büyük, iyi bir quadcopter",
		client = {
			image = "drone_flyer_5.png",
		}
	},

	["drone_flyer_6"] = {
		label = "Gelişmiş Drone 3",
		weight = 1000,
		stack = true,
		close = true,
		description = "Büyük, oldukça kaliteli bir quadcopter",
		client = {
			image = "drone_flyer_6.png",
		}
	},

	["drone_flyer_2"] = {
		label = "Basit Drone 2",
		weight = 1000,
		stack = true,
		close = true,
		description = "Minik, yavaşça bir quadcopter",
		client = {
			image = "drone_flyer_2.png",
		}
	},

	["Çelik Yelek"] = {
		label = "Armor",
		weight = 5000,
		stack = true,
		close = true,
		description = "Some protection won't hurt... right?",
		client = {
			image = "armor.png",
		}
	},

	["gps"] = {
		label = "GPS",
		weight = 700,
		stack = false,
		close = false,
		description = "",
		client = {
			image = "gps.png",
		}
	},

	["drone_flyer_7"] = {
		label = "Polis Drone",
		weight = 1000,
		stack = true,
		close = true,
		description = "Polisler için özel üretilmiş bir quadcopter.",
		client = {
			image = "drone_flyer_7.png",
		}
	},

	["drone_flyer_3"] = {
		label = "Basit Drone 3",
		weight = 1000,
		stack = true,
		close = true,
		description = "Minik, idare eder bir quadcopter",
		client = {
			image = "drone_flyer_3.png",
		}
	},

	["enerji_icecegi"] = {
		label = "Enerji İçeceği",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "enerji_icecegi.png",
		}
	},

	["kitap"] = {
		label = "Dosya",
		weight = 500,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "book.png",
		}
	},

	["kraker"] = {
		label = "Kraker",
		weight = 200,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "kraker.png",
		}
	},

	["aspirin"] = {
		label = "Aspirin",
		weight = 2500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "aspirin.png",
		}
	},

	["bodycam"] = {
		label = "Bodycam",
		weight = 700,
		stack = false,
		close = false,
		description = "",
		client = {
			image = "bodycam.png",
		}
	},

	["megaphone"] = {
		label = "Megafon",
		weight = 700,
		stack = false,
		close = false,
		description = "",
		client = {
			image = "megaphone.png",
		}
	},

	["chair3"] = {
		label = "Kamp Sandalyesi",
		weight = 2000,
		stack = false,
		close = false,
		description = "",
		client = {
			image = "chair3.png",
		}
	},

	["bag"] = {
		label = "Çanta",
		weight = 30000,
		stack = false,
		close = true,
		description = "",
	},

	["chair7"] = {
		label = "Keko Sandalyesi",
		weight = 2000,
		stack = false,
		close = false,
		description = "",
		client = {
			image = "chair7.png",
		}
	},

	["eskitelefon"] = {
        label = "3310",
        weight = 2000,
        stack = false,
        close = false,
        description = "",
        client = {
            image = "3310.png",
        }
    },

	["hacking_device"] = {
		label = "USB",
		weight = 2000,
		stack = false,
		close = false,
		description = "",
		client = {
			image = "hacking_device.png",
		}
	},

	["chair6"] = {
		label = "Bahçe Sandalyesi",
		weight = 2000,
		stack = false,
		close = false,
		description = "",
		client = {
			image = "chair6.png",
		}
	},

	["chair5"] = {
		label = "Ofis Sandalyesi",
		weight = 2000,
		stack = false,
		close = false,
		description = "",
		client = {
			image = "chair5.png",
		}
	},

	["methlab"] = {
		label = "Methlab",
		weight = 2000,
		stack = false,
		close = false,
		description = "",
		client = {
			image = "methlab.png",
		}
	},

	["lithium"] = {
		label = "Lithium",
		weight = 2000,
		stack = false,
		close = false,
		description = "",
		client = {
			image = "lithium.png",
		}
	},

	["chair1"] = {
		label = "Kamp Sandalyesi",
		weight = 2000,
		stack = false,
		close = false,
		description = "",
		client = {
			image = "chair1.png",
		}
	},

	["chair4"] = {
		label = "Kamp Sandalyesi",
		weight = 2000,
		stack = false,
		close = false,
		description = "",
		client = {
			image = "chair4.png",
		}
	},

	["chair2"] = {
		label = "Kamp Sandalyesi",
		weight = 2000,
		stack = false,
		close = false,
		description = "",
		client = {
			image = "chair2.png",
		}
	},

	["pixellaptop"] = {
		label = "Pixel Laptop",
		weight = 2000,
		stack = false,
		close = false,
		description = "",
		client = {
			image = "pixellaptop.png",
		}
	},

	["chair8"] = {
		label = "Tahta Sandalye",
		weight = 2000,
		stack = false,
		close = false,
		description = "",
		client = {
			image = "chair8.png",
		}
	},

	["cikolatapasta"] = {
		label = "Çikolatalı Pasta",
		weight = 600,
		stack = false,
		close = false,
		description = "",
		degrade = 2880,
		client = {
			image = "cikolatapasta.png",
		}
	},

	["rezenecayi"] = {
		label = "Rezene Çayı",
		weight = 600,
		stack = false,
		close = false,
		description = "",
		degrade = 2880,
		client = {
			image = "rezenecayi.png",
		}
	},

	["crossosandvic"] = {
		label = "Crosso Sandviç",
		weight = 600,
		stack = false,
		close = false,
		description = "",
		degrade = 2880,
		client = {
			image = "crossosandvic.png",
		}
	},

	["sebastian"] = {
		label = "Sebastian",
		weight = 600,
		stack = false,
		close = false,
		description = "",
		degrade = 2880,
		client = {
			image = "sebastian.png",
		}
	},

	["pinky"] = {
		label = "Milkshake",
		weight = 600,
		stack = false,
		close = false,
		description = "",
		degrade = 2880,
		client = {
			image = "pinky.png",
		}
	},

	["tiramisu"] = {
		label = "Tiramisu",
		weight = 600,
		stack = false,
		close = false,
		description = "",
		degrade = 2880,
		client = {
			image = "tiramisu.png",
		}
	},

	["seker"] = {
		label = "Toz Şeker",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "seker.png",
		}
	},

	["kedicookie"] = {
		label = "Kedi Kurabiye",
		weight = 600,
		stack = false,
		close = false,
		description = "",
		degrade = 2880,
		client = {
			image = "kedicookie.png",
		}
	},

	["ozelkarisim"] = {
		label = "Özel Karışım Kokteyl",
		weight = 600,
		stack = false,
		close = false,
		description = "",
		degrade = 2880,
		client = {
			image = "ozelkarisim.png",
		}
	},

	["prensespasta"] = {
		label = "Prenses Pasta",
		weight = 600,
		stack = false,
		close = false,
		description = "",
		degrade = 2880,
		client = {
			image = "prensespasta.png",
		}
	},

	["gokkusagik"] = {
		label = "Gökkuşağı Kokteyl",
		weight = 600,
		stack = false,
		close = false,
		description = "",
		degrade = 2880,
		client = {
			image = "gokkusagik.png",
		}
	},

	["chocoberry"] = {
		label = "Chocoberry",
		weight = 600,
		stack = false,
		close = false,
		description = "",
		degrade = 2880,
		client = {
			image = "chocoberry.png",
		}
	},

	["simit"] = {
		label = "Simit",
		weight = 600,
		stack = false,
		close = false,
		description = "",
		degrade = 2880,
		client = {
			image = "simit.png",
		}
	},

	["smoothie"] = {
		label = "Çilekli Smoothie",
		weight = 600,
		stack = false,
		close = false,
		description = "",
		degrade = 2880,
		client = {
			image = "smoothie.png",
		}
	},

	["cileklipasta"] = {
		label = "Çilekli Pasta",
		weight = 600,
		stack = false,
		close = false,
		description = "",
		degrade = 2880,
		client = {
			image = "cileklipasta.png",
		}
	},

	["caramellatte"] = {
		label = "Karamel Latte",
		weight = 600,
		stack = false,
		close = false,
		description = "",
		degrade = 2880,
		client = {
			image = "caramellatte.png",
		}
	},

	["cilekkokteyl"] = {
		label = "Çilek Kokteyl",
		weight = 600,
		stack = false,
		close = false,
		description = "",
		degrade = 2880,
		client = {
			image = "cilekkokteyl.png",
		}
	},

	["cutepasta"] = {
		label = "Sevimli Pasta",
		weight = 600,
		stack = false,
		close = false,
		description = "",
		degrade = 2880,
		client = {
			image = "cutepasta.png",
		}
	},

	["filtrekahve"] = {
		label = "Filtre Kahve",
		weight = 600,
		stack = false,
		close = false,
		description = "",
		degrade = 2880,
		client = {
			image = "filtrekahve.png",
		}
	},

	["baget"] = {
		label = "Baget",
		weight = 600,
		stack = false,
		close = false,
		description = "",
		degrade = 2880,
		client = {
			image = "baget.png",
		}
	},

	["italiansoda"] = {
		label = "Italyan Soda",
		weight = 600,
		stack = false,
		close = false,
		description = "",
		degrade = 2880,
		client = {
			image = "italiansoda.png",
		}
	},

	["ahududuwaffle"] = {
		label = "Ahududu Waffle",
		weight = 600,
		stack = false,
		close = false,
		description = "",
		degrade = 2880,
		client = {
			image = "ahududuwaffle.png",
		}
	},

	["cheescake"] = {
		label = "Chees Cake",
		weight = 600,
		stack = false,
		close = false,
		description = "",
		degrade = 2880,
		client = {
			image = "cheescake.png",
		}
	},

	["cocowhite"] = {
		label = "Coconut White Chocolate",
		weight = 600,
		stack = false,
		close = false,
		description = "",
		degrade = 2880,
		client = {
			image = "cocowhite.png",
		}
	},

	["meyvelipasta"] = {
		label = "Meyveli Pasta",
		weight = 600,
		stack = false,
		close = false,
		description = "",
		degrade = 2880,
		client = {
			image = "meyvelipasta.png",
		}
	},

	["kremsanti"] = {
		label = "Krem Şanti",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "kremsanti.png",
		}
	},

	["cheesetost"] = {
		label = "Peynirli Tost",
		weight = 600,
		stack = false,
		close = false,
		description = "",
		degrade = 2880,
		client = {
			image = "cheesetost.png",
		}
	},

	["limonata"] = {
		label = "Limonata",
		weight = 600,
		stack = false,
		close = false,
		description = "",
		degrade = 2880,
		client = {
			image = "limonata.png",
		}
	},

	["cay"] = {
		label = "Çay",
		weight = 600,
		stack = false,
		close = false,
		description = "",
		degrade = 2880,
		client = {
			image = "cay.png",
		}
	},

	["frappe"] = {
		label = "Frappe",
		weight = 600,
		stack = false,
		close = false,
		description = "",
		degrade = 2880,
		client = {
			image = "frappe.png",
		}
	},

	["cremabrule"] = {
		label = "Crema Brule",
		weight = 600,
		stack = false,
		close = false,
		description = "",
		degrade = 2880,
		client = {
			image = "cremabrule.png",
		}
	},

	["tatlikahvalti"] = {
		label = "Tatlı Kahvaltı",
		weight = 600,
		stack = false,
		close = false,
		description = "",
		degrade = 2880,
		client = {
			image = "tatlikahvalti.png",
		}
	},

	["icetea"] = {
		label = "Soğuk Çay",
		weight = 600,
		stack = false,
		close = false,
		description = "",
		degrade = 2880,
		client = {
			image = "icetea.png",
		}
	},

	["papatyacayi"] = {
		label = "Papatya Çayı",
		weight = 600,
		stack = false,
		close = false,
		description = "",
		degrade = 2880,
		client = {
			image = "papatyacayi.png",
		}
	},

	["visneliturta"] = {
		label = "Vişneli Turta",
		weight = 600,
		stack = false,
		close = false,
		description = "",
		degrade = 2880,
		client = {
			image = "visneliturta.png",
		}
	},

	["yumurta"] = {
		label = "Yumurta",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "yumurta.png",
		}
	},

	["meyvelikrep"] = {
		label = "Meyveli Krep",
		weight = 600,
		stack = false,
		close = false,
		description = "",
		degrade = 2880,
		client = {
			image = "meyvelikrep.png",
		}
	},

	["etilalkol"] = {
		label = "Etil Alkol",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "etilalkol.png",
		}
	},

	["buz"] = {
		label = "Buz",
		weight = 0,
		stack = true,
		close = false,
		description = "Donmuş su",
		client = {
			image = "buz.png",
		}
	},

	["sut"] = {
		label = "Süt",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "sut.png",
		}
	},

	["3310"] = {
		label = "3310",
		weight = 2000,
		stack = false,
		close = false,
		description = "",
		client = {
			image = "3310.png",
		}
	},

	["domates2"] = {
		label = "Söğüş Domates",
		weight = 0,
		stack = true,
		close = false,
		description = "İnce ince dilimlenmiş lezzetli görünen bir domates",
		client = {
			image = "domates2.png",
		}
	},

	["misir"] = {
		label = "Mısır",
		weight = 0,
		stack = true,
		close = false,
		description = "Tezgahta satılanı en güzeli.",
		client = {
			image = "misir.png",
		}
	},

	["yosun"] = {
		label = "Yosun",
		weight = 0,
		stack = true,
		close = false,
		description = "Su altından toplanmış, yeşil bitki.",
		client = {
			image = "yosun.png",
		}
	},

	["tuz"] = {
		label = "Tuz",
		weight = 0,
		stack = true,
		close = false,
		description = "Kaya tuzu.",
		client = {
			image = "tuz.png",
		}
	},

	["packaged_chicken"] = {
		label = "Paketlenmiş Tavuk",
		weight = 0,
		stack = true,
		close = false,
		description = "Paketlenmiş Tavuk",
		client = {
			image = "packaged_chicken.png",
		}
	},

	["patates2"] = {
		label = "Dilimlenmiş Patates",
		weight = 0,
		stack = true,
		close = false,
		description = "Taze ve parmak kalınlığında dilimlenmiş patates",
		client = {
			image = "patates2.png",
		}
	},

	["redbull"] = {
		label = "Redbull",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "redbull.png",
		}
	},

	["kiyma"] = {
		label = "Kıyma",
		weight = 0,
		stack = true,
		close = false,
		description = "Sağlıklı değil gibi ama sen bilirsin.",
		client = {
			image = "kiyma.png",
		}
	},

	["hamur"] = {
		label = "Hamur",
		weight = 0,
		stack = true,
		close = false,
		description = "Açarsın börek, yayarsın pizza. Nerede kullanacaksın?",
		client = {
			image = "hamur.png",
		}
	},

	["havuc"] = {
		label = "Havuç",
		weight = 0,
		stack = true,
		close = false,
		description = "Iııı naber cınım??",
		client = {
			image = "havuc.png",
		}
	},

	["kahvea"] = {
		label = "Kahve Çekirdeği",
		weight = 0,
		stack = true,
		close = false,
		description = "Kaliteli kahve çekirdekleri.",
		client = {
			image = "kahvea.png",
		}
	},

	["limon"] = {
		label = "Limon",
		weight = 0,
		stack = true,
		close = false,
		description = "Sarı, ekşi.",
		client = {
			image = "limon.png",
		}
	},

	["domates"] = {
		label = "Domates",
		weight = 0,
		stack = true,
		close = false,
		description = "Biber , patlıcaan.",
		client = {
			image = "domates.png",
		}
	},

	["baliketi"] = {
		label = "Balık Eti",
		weight = 0,
		stack = true,
		close = false,
		description = "Balık eti, deniz veya tatlı sularda yakalanan soğuk kanlı solungaçları ile solunum yapan hayvanların besin olarak kullanılan etleridir.",
		client = {
			image = "baliketi.png",
		}
	},

	["marul2"] = {
		label = "Söğüş Marul",
		weight = 0,
		stack = true,
		close = false,
		description = "Yıkanmış, taze ve dilimlenmiş marul parçaları",
		client = {
			image = "marul2.png",
		}
	},

	["ketcap"] = {
		label = "Ketçap",
		weight = 0,
		stack = true,
		close = false,
		description = "Dök dök ye.",
		client = {
			image = "ketcap.png",
		}
	},

	["slaughtered_chicken"] = {
		label = "Kesilmiş Tavuk",
		weight = 0,
		stack = true,
		close = false,
		description = "Kesilmiş tavuk",
		client = {
			image = "slaughtered_chicken.png",
		}
	},

	["sogan2"] = {
		label = "Doğranmış Soğan",
		weight = 0,
		stack = true,
		close = false,
		description = "Görenin gözlerini yaşartan taze doğranmış soğan",
		client = {
			image = "sogan2.png",
		}
	},

	["dana_eti"] = {
		label = "Dana Eti",
		weight = 0,
		stack = true,
		close = false,
		description = "Möö.",
		client = {
			image = "dana_eti.png",
		}
	},

	["sosis"] = {
		label = "Sosis",
		weight = 0,
		stack = true,
		close = false,
		description = "Et silindiri.",
		client = {
			image = "sosis.png",
		}
	},

	["temizbelgesi"] = {
		label = "Temiz Belgesi",
		weight = 500,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "temizbelgesi.png",
		}
	},

	["cigarette"] = {
		label = "Sigara",
		weight = 500,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "cigarette.png",
		}
	},

	["kaykay"] = {
		label = "Kaykay",
		weight = 500,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "kaykay.png",
		}
	},

	["camera"] = {
		label = "Kamera",
		weight = 500,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "camera.png",
		}
	},

	["dckart"] = {
		label = "DC Kart",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
	},

	["acetone"] = {
		label = "Asetonn",
		weight = 500,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "acetone.png",
		}
	},

	["rizla"] = {
		label = "Rızla",
		weight = 500,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "rizla.png",
		}
	},

	["plastiksise"] = {
		label = "Plastik Şişe",
		weight = 300,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "plastiksise.png",
		}
	},

	["kumas"] = {
		label = "Kumaş",
		weight = 300,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "kumas.png",
		}
	},

	["uzum"] = {
		label = "Üzüm",
		weight = 3500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "uzum.png",
		}
	},

	["pkonserve"] = {
		label = "Paslı Konserve",
		weight = 300,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pkonserve.png",
		}
	},
}