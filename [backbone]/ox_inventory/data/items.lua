return {
    ['testburger'] = {
        label = 'Test Burger',
        weight = 220,
        degrade = 60,
        client = {
            status = {
                hunger = 200000
            },
            anim = 'eating',
            prop = 'burger',
            usetime = 2500,
            export = 'ox_inventory_examples.testburger'
        },
        server = {
            export = 'ox_inventory_examples.testburger',
            test = 'what an amazingly delicious burger, amirite?'
        },
        buttons = {{
            label = 'Lick it',
            action = function(slot)
                print('You licked the burger')
            end
        }, {
            label = 'Squeeze it',
            action = function(slot)
                print('You squeezed the burger :(')
            end
        }, {
            label = 'What do you call a vegan burger?',
            group = 'Hamburger Puns',
            action = function(slot)
                print('A misteak.')
            end
        }, {
            label = 'What do frogs like to eat with their hamburgers?',
            group = 'Hamburger Puns',
            action = function(slot)
                print('French flies.')
            end
        }, {
            label = 'Why were the burger and fries running?',
            group = 'Hamburger Puns',
            action = function(slot)
                print('Because they\'re fast food.')
            end
        }},
        consume = 0.3
    },

    ['bandage'] = {
        label = 'Bandaj',
        weight = 100
    },

    ['black_money'] = {
        label = 'Dirty Money'
    },

    ['burger'] = {
        label = 'Burger',
        weight = 220
    },

    ['cola'] = {
        label = 'eCola',
        weight = 350,
        degrade = 2880
    },

    ['parachute'] = {
        label = 'Paraşüt',
        weight = 500,
        stack = true
    },

    ['garbage'] = {
        label = 'Garbage'
    },

    ['paperbag'] = {
        label = 'Paper Bag',
        weight = 1,
        stack = false,
        close = false,
        consume = 0
    },

    ['identification'] = {
        label = 'Identification'
    },

    ['panties'] = {
        label = 'Knickers',
        weight = 10,
        consume = 0,
        client = {
            status = {
                thirst = -100000,
                stress = -25000
            },
            anim = {
                dict = 'mp_player_intdrink',
                clip = 'loop_bottle'
            },
            prop = {
                model = prop_cs_panties_02,
                pos = vec3(0.03, 0.0, 0.02),
                rot = vec3(0.0, -13.5, -1.5)
            },
            usetime = 2500
        }
    },

    ['lockpick'] = {
        label = 'Maymuncuk',
        weight = 50
    },

    ['phone'] = {
        label = 'Telefon',
        weight = 100,
        stack = true,
        consume = 0,
        client = {
            add = function(total)
                if total > 0 then
                    pcall(function()
                        return exports.npwd:setPhoneDisabled(false)
                    end)
                end
            end,

            remove = function(total)
                if total < 1 then
                    pcall(function()
                        return exports.npwd:setPhoneDisabled(true)
                    end)
                end
            end
        }
    },

    ['money'] = {
        label = 'Para'
    },

    ['mustard'] = {
        label = 'Mustard',
        weight = 500
    },

    ['water'] = {
        label = 'Water',
        weight = 500
    },

    ['radio'] = {
        label = 'Telsiz',
        weight = 100,
        stack = true,
        allowArmed = true
    },

    ['armour'] = {
        label = 'Bulletproof Vest',
        weight = 2500,
        stack = false,
        client = {
            anim = {
                dict = 'clothingshirt',
                clip = 'try_shirt_positive_d'
            },
            usetime = 3500
        }
    },

    ['clothing'] = {
        label = 'Clothing',
        consume = 0
    },

    ['mastercard'] = {
        label = 'Mastercard',
        stack = false,
        weight = 10
    },

    ['hackerphone'] = {
        label = 'root@hackerphone',
        stack = false,
        weight = 100
    },

    ['centralchip'] = {
        label = 'Central Chip',
        stack = false,
        weight = 200
    },

    ['spray'] = {
        label = 'Spray Boya',
        stack = false,
        weight = 100
    },

    ['spray_remover'] = {
        label = 'Spray Boya Temizleyici',
        stack = false,
        weight = 100
    },

    ['tracker'] = {
        label = 'Tracker',
        stack = false,
        weight = 200
    },

    ['scrapmetal'] = {
        label = 'Scrap Metal',
        weight = 80
    },

    ["drill"] = {
        label = "Drill",
        weight = 500,
        stack = true,
        close = false,
        description = "The real deal...",
        client = {
            image = "drill.png"
        }
    },

    ["advancedrepairkit"] = {
        label = "Gelişmiş Tamir Kiti",
        weight = 4000,
        stack = true,
        close = true,
        description = "A nice toolbox with stuff to repair your vehicle",
        client = {
            image = "advancedkit.png"
        }
    },

    ["advancedlockpick"] = {
        label = "Advanced Lockpick",
        weight = 50,
        stack = true,
        close = true,
        description = "If you lose your keys a lot this is very useful... Also useful to open your beers",
        client = {
            image = "advancedlockpick.png"
        }
    },

    ["empty_evidence_bag"] = {
        label = "Empty Evidence Bag",
        weight = 0,
        stack = true,
        close = false,
        description = "Used a lot to keep DNA from blood, bullet shells and more",
        client = {
            image = "evidence.png"
        }
    },

    ["coke_small_brick"] = {
        label = "Coke Package",
        weight = 350,
        stack = true,
        close = true,
        description = "Small package of cocaine, mostly used for deals and takes a lot of space",
        client = {
            image = "coke_small_brick.png"
        }
    },

    ["jerry_can"] = {
        label = "Jerrycan 20L",
        weight = 20000,
        stack = true,
        close = true,
        description = "A can full of Fuel",
        client = {
            image = "jerry_can.png"
        }
    },

    ["copper"] = {
        label = "Bakır",
        weight = 10,
        stack = true,
        close = false,
        description = "Nice piece of metal that you can probably use for something",
        client = {
            image = "copper.png"
        }
    },

    ["trojan_usb"] = {
        label = "Trojan USB",
        weight = 0,
        stack = true,
        close = true,
        description = "Handy software to shut down some systems",
        client = {
            image = "usb_device.png"
        }
    },

    ["iron"] = {
        label = "Demir",
        weight = 10,
        stack = true,
        close = false,
        description = "Handy piece of metal that you can probably use for something",
        client = {
            image = "iron.png"
        }
    },

    ["metalscrap"] = {
        label = "Hurda Metal",
        weight = 10,
        stack = true,
        close = false,
        description = "You can probably make something nice out of this",
        client = {
            image = "metalscrap.png"
        }
    },

    ["cokebaggy"] = {
        label = "Bag of Coke",
        weight = 0,
        stack = true,
        close = true,
        description = "To get happy real quick",
        client = {
            image = "cocaine_baggy.png"
        }
    },

    ["grapejuice"] = {
        label = "Üzüm Suyu",
        weight = 200,
        stack = true,
        close = false,
        description = "Grape juice is said to be healthy",
        degrade = 2880,
        client = {
            image = "grapejuice.png"
        }
    },

    ["walkstick"] = {
        label = "Walking Stick",
        weight = 1000,
        stack = true,
        close = true,
        description = "Walking stick for ya'll grannies out there.. HAHA",
        client = {
            image = "walkstick.png"
        }
    },

    ["firework4"] = {
        label = "Weeping Willow",
        weight = 1000,
        stack = true,
        close = true,
        description = "Fireworks",
        client = {
            image = "firework4.png"
        }
    },

    ["babyvitamin"] = {
        label = "Bebek Vitamini",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "babyvitamin.png"
        }
    },

    ["plastic"] = {
        label = "Plastik",
        weight = 10,
        stack = true,
        close = false,
        description = "RECYCLE! - Greta Thunberg 2019",
        client = {
            image = "plastic.png"
        }
    },

    ["healthybabymineral"] = {
        label = "Bebek Minerali",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "healthybabymineral.png"
        }
    },

    ["coke_brick"] = {
        label = "Coke Brick",
        weight = 1000,
        stack = true,
        close = true,
        description = "Heavy package of cocaine, mostly used for deals and takes a lot of space",
        client = {
            image = "coke_brick.png"
        }
    },

    ["weed_purple-haze_seed"] = {
        label = "Purple Haze Seed",
        weight = 0,
        stack = true,
        close = true,
        description = "A weed seed of Purple Haze",
        client = {
            image = "weed_seed.png"
        }
    },

    ["weed_white-widow"] = {
        label = "White Widow 2g",
        weight = 200,
        stack = true,
        close = false,
        description = "A weed bag with 2g White Widow",
        client = {
            image = "weed_baggy.png"
        }
    },

    ["harness"] = {
        label = "Race Harness",
        weight = 1000,
        stack = false,
        close = true,
        description = "Racing Harness so no matter what you stay in the car",
        client = {
            image = "harness.png"
        }
    },

    ["aluminumoxide"] = {
        label = "Aluminium Powder",
        weight = 10,
        stack = true,
        close = false,
        description = "Some powder to mix with",
        client = {
            image = "aluminumoxide.png"
        }
    },

    ["glass"] = {
        label = "Cam",
        weight = 10,
        stack = true,
        close = false,
        description = "It is very fragile, watch out",
        client = {
            image = "glass.png"
        }
    },

    ["metal"] = {
        label = "Metal",
        weight = 10,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "metal.png"
        }
    },

    ["weed_white-widow_seed"] = {
        label = "White Widow Seed",
        weight = 0,
        stack = true,
        close = false,
        description = "A weed seed of White Widow",
        client = {
            image = "weed_seed.png"
        }
    },

    ["babystroller"] = {
        label = "Bebek Arabası",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "babystroller.png"
        }
    },

    ["ironoxide"] = {
        label = "Iron Powder",
        weight = 10,
        stack = true,
        close = false,
        description = "Some powder to mix with.",
        client = {
            image = "ironoxide.png"
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
            image = "beer.png"
        }
    },

    ["newsbmic"] = {
        label = "Boom Microphone",
        weight = 100,
        stack = false,
        close = true,
        description = "A Useable BoomMic",
        client = {
            image = "newsbmic.png"
        }
    },

    ["dendrogyra_coral"] = {
        label = "Dendrogyra",
        weight = 1000,
        stack = true,
        close = true,
        description = "Its also known as pillar coral",
        client = {
            image = "dendrogyra_coral.png"
        }
    },

    ["firework2"] = {
        label = "Poppelers",
        weight = 1000,
        stack = true,
        close = true,
        description = "Fireworks",
        client = {
            image = "firework2.png"
        }
    },

    ["aluminum"] = {
        label = "Aluminium",
        weight = 10,
        stack = true,
        close = false,
        description = "Nice piece of metal that you can probably use for something",
        client = {
            image = "aluminum.png"
        }
    },

    ["printerdocument"] = {
        label = "Document",
        weight = 500,
        stack = false,
        close = true,
        description = "A nice document",
        client = {
            image = "printerdocument.png"
        }
    },

    ["goldbar"] = {
        label = "Gold Bar",
        weight = 200,
        stack = true,
        close = true,
        description = "Looks pretty expensive to me",
        client = {
            image = "goldbar.png"
        }
    },

    ["crack_baggy"] = {
        label = "Bag of Crack",
        weight = 0,
        stack = true,
        close = true,
        description = "To get happy faster",
        client = {
            image = "crack_baggy.png"
        }
    },

    ["lawyerpass"] = {
        label = "Lawyer Pass",
        weight = 0,
        stack = false,
        close = false,
        description = "Pass exclusive to lawyers to show they can represent a suspect",
        client = {
            image = "lawyerpass.png"
        }
    },

    ["meth"] = {
        label = "Meth",
        weight = 100,
        stack = true,
        close = true,
        description = "A baggie of Meth",
        client = {
            image = "meth_baggy.png"
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
            image = "sandwich.png"
        }
    },

    ["electronickit"] = {
        label = "Electronic Kit",
        weight = 100,
        stack = true,
        close = true,
        description = "If you've always wanted to build a robot you can maybe start here. Maybe you'll be the new Elon Musk?",
        client = {
            image = "electronickit.png"
        }
    },

    ["moneybag"] = {
        label = "Money Bag",
        weight = 0,
        stack = false,
        close = true,
        description = "A bag with cash",
        client = {
            image = "moneybag.png"
        }
    },

    ["lighter"] = {
        label = "Lighter",
        weight = 0,
        stack = true,
        close = true,
        description = "On new years eve a nice fire to stand next to",
        client = {
            image = "lighter.png"
        }
    },

    ["weed_og-kush"] = {
        label = "OGKush 2g",
        weight = 200,
        stack = true,
        close = false,
        description = "A weed bag with 2g OG Kush",
        client = {
            image = "weed_baggy.png"
        }
    },

    ["weed_brick"] = {
        label = "Weed Brick",
        weight = 1000,
        stack = true,
        close = true,
        description = "1KG Weed Brick to sell to large customers.",
        client = {
            image = "weed_brick.png"
        }
    },

    ["handcuffs"] = {
        label = "Handcuffs",
        weight = 500,
        stack = true,
        close = true,
        description = "Comes in handy when people misbehave. Maybe it can be used for something else?",
        client = {
            image = "handcuffs.png"
        }
    },

    ["ifaks"] = {
        label = "ifaks",
        weight = 5,
        stack = true,
        close = true,
        description = "ifaks for healing and a complete stress remover.",
        client = {
            image = "ifaks.png"
        }
    },

    ["fitbit"] = {
        label = "Fitbit",
        weight = 50,
        stack = false,
        close = true,
        description = "I like fitbit",
        client = {
            image = "fitbit.png"
        }
    },

    ["newscam"] = {
        label = "News Camera",
        weight = 100,
        stack = false,
        close = true,
        description = "A camera for the news",
        client = {
            image = "newscam.png"
        }
    },
    ['enginegago'] = {
        label = 'MOTOR',
        weight = 50000,
        stack = false,
        close = true,
        description = ''
    },
    ["nitrous"] = {
        label = "Nitro",
        weight = 1000,
        stack = true,
        close = true,
        description = "Sistem oksijen kullandığından araç yakıtının normalde olduğundan daha yüksek güç vermesini sağlar.",
        client = {
            image = "nitrous.png"
        }
    },

    ["tablet"] = {
        label = "Tablet",
        weight = 250,
        stack = true,
        close = true,
        description = "Expensive tablet",
        client = {
            image = "tablet.png"
        }
    },

    ["chiptuningtablet"] = {
        label = "Chiptuning Tableti",
        weight = 450,
        stack = true,
        close = true,
        description = "Araç yazılımını düzenleyebilen tablet.",
        client = {
            image = "tablet.png"
        }
    },

    ["gatecrack"] = {
        label = "Gatecrack",
        weight = 0,
        stack = true,
        close = true,
        description = "Handy software to tear down some fences",
        client = {
            image = "usb_device.png"
        }
    },

    ["cleaningkit"] = {
        label = "Temizlik Bezi",
        weight = 250,
        stack = true,
        close = true,
        description = "Biraz sabunlu bir mikrofiber bez arabanızın tekrar ışıldamasını sağlayacaktır!",
        client = {
            image = "cleaningkit.png"
        }
    },

    ["water_bottle"] = {
        label = "Su",
        weight = 500,
        stack = true,
        close = true,
        description = "For all the thirsty out there",
        client = {
            image = "water_bottle.png"
        }
    },

    ["weed_amnesia_seed"] = {
        label = "Amnesia Seed",
        weight = 0,
        stack = true,
        close = true,
        description = "A weed seed of Amnesia",
        client = {
            image = "weed_seed.png"
        }
    },

    ["radioscanner"] = {
        label = "Radio Scanner",
        weight = 1000,
        stack = true,
        close = true,
        description = "With this you can get some police alerts. Not 100% effective however",
        client = {
            image = "radioscanner.png"
        }
    },

    ["pinger"] = {
        label = "Pinger",
        weight = 1000,
        stack = true,
        close = true,
        description = "With a pinger and your phone you can send out your location",
        client = {
            image = "pinger.png"
        }
    },

    ["rolex"] = {
        label = "Altın Saat",
        weight = 200,
        stack = true,
        close = true,
        description = "A golden watch seems like the jackpot to me!",
        client = {
            image = "rolex.png"
        }
    },

    ["visa"] = {
        label = "Visa Card",
        weight = 0,
        stack = false,
        close = false,
        description = "Visa can be used via ATM",
        client = {
            image = "visacard.png"
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
            image = "vodka.png"
        }
    },

    ["repairkit"] = {
        label = "Repairkit",
        weight = 2500,
        stack = true,
        close = true,
        description = "A nice toolbox with stuff to repair your vehicle",
        client = {
            image = "repairkit.png"
        }
    },

    ["healthybabyfood"] = {
        label = "Bebek Maması",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "healthybabyfood.png"
        }
    },

    ["diamond"] = {
        label = "Elmas",
        weight = 500,
        stack = true,
        close = true,
        description = "A diamond seems like the jackpot to me!",
        client = {
            image = "diamond.png"
        }
    },

    ["oxy"] = {
        label = "Prescription Oxy",
        weight = 0,
        stack = true,
        close = true,
        description = "The Label Has Been Ripped Off",
        client = {
            image = "oxy.png"
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
            image = "coffee.png"
        }
    },

    ["thermite"] = {
        label = "Termit",
        weight = 1000,
        stack = true,
        close = true,
        description = "Sometimes you'd wish for everything to burn",
        client = {
            image = "thermite.png"
        }
    },

    ["thermitec"] = {
        label = "Termit Patlayıcı",
        weight = 1000,
        stack = true,
        close = true,
        description = "Sometimes you'd wish for everything to burn",
        client = {
            image = "thermitec.png"
        }
    },

    ["laptop"] = {
        label = "Laptop",
        weight = 500,
        stack = true,
        close = true,
        description = "Expensive laptop",
        client = {
            image = "laptop.png"
        }
    },

    ["grape"] = {
        label = "Grape",
        weight = 100,
        stack = true,
        close = false,
        description = "Mmmmh yummie, grapes",
        client = {
            image = "grape.png"
        }
    },

    ["security_card_01"] = {
        label = "Security Card A",
        weight = 0,
        stack = true,
        close = true,
        description = "A security card... I wonder what it goes to",
        client = {
            image = "security_card_01.png"
        }
    },

    ["iphone"] = {
        label = "iPhone",
        weight = 100,
        stack = true,
        close = true,
        description = "Very expensive phone",
        client = {
            image = "iphone.png"
        }
    },

    ["cutter"] = {
        label = "Kesici",
        weight = 15000,
        stack = false,
        close = true,
        description = "For pain you can't stand anymore, take this pill that'd make you feel great again",
        client = {
            image = "cutter.png"
        }
    },

    ["painkillers"] = {
        label = "Ağrı Kesici",
        weight = 0,
        stack = true,
        close = true,
        description = "For pain you can't stand anymore, take this pill that'd make you feel great again",
        client = {
            image = "painkillers.png"
        }
    },

    ["weed_skunk_seed"] = {
        label = "Skunk Seed",
        weight = 0,
        stack = true,
        close = true,
        description = "A weed seed of Skunk",
        client = {
            image = "weed_seed.png"
        }
    },

    ["weaponlicense"] = {
        label = "Weapon License",
        weight = 0,
        stack = false,
        close = true,
        description = "Weapon License",
        client = {
            image = "weapon_license.png"
        }
    },

    ["weed_purple-haze"] = {
        label = "Purple Haze 2g",
        weight = 200,
        stack = true,
        close = false,
        description = "A weed bag with 2g Purple Haze",
        client = {
            image = "weed_baggy.png"
        }
    },

    ["rubber"] = {
        label = "Rubber",
        weight = 10,
        stack = true,
        close = false,
        description = "Rubber, I believe you can make your own rubber ducky with it :D",
        client = {
            image = "rubber.png"
        }
    },

    ["casinochips"] = {
        label = "Casino Chips",
        weight = 0,
        stack = true,
        close = false,
        description = "Chips For Casino Gambling",
        client = {
            image = "casinochips.png"
        }
    },

    ["10kgoldchain"] = {
        label = "10k Gold Chain",
        weight = 1000,
        stack = true,
        close = true,
        description = "10 carat golden chain",
        client = {
            image = "10kgoldchain.png"
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
            image = "tosti.png"
        }
    },

    ["joint"] = {
        label = "Joint",
        weight = 0,
        stack = true,
        close = true,
        description = "Sidney would be very proud at you",
        client = {
            image = "joint.png"
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
            image = "cola.png"
        }
    },

    ["salgam"] = {
        label = "Şalgam",
        weight = 500,
        stack = false,
        close = true,
        description = "",
        degrade = 2880,
        client = {
            image = "salgam.png"
        }
    },

    ["ayran"] = {
        label = "Ayran",
        weight = 500,
        stack = false,
        close = true,
        description = "",
        degrade = 2880,
        client = {
            image = "ayran.png"
        }
    },

    ["filled_evidence_bag"] = {
        label = "Evidence Bag",
        weight = 200,
        stack = false,
        close = false,
        description = "A filled evidence bag to see who committed the crime >:(",
        client = {
            image = "evidence.png"
        }
    },

    ["driver_license"] = {
        label = "Drivers License",
        weight = 0,
        stack = false,
        close = false,
        description = "Permit to show you can drive a vehicle",
        client = {
            image = "driver_license.png"
        }
    },

    ["weed_og-kush_seed"] = {
        label = "OGKush Seed",
        weight = 0,
        stack = true,
        close = true,
        description = "A weed seed of OG Kush",
        client = {
            image = "weed_seed.png"
        }
    },

    ["comfortdiaper"] = {
        label = "Bebek Bezi",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "comfortdiaper.png"
        }
    },

    ["id_card"] = {
        label = "ID Card",
        weight = 0,
        stack = false,
        close = false,
        description = "A card containing all your information to identify yourself",
        client = {
            image = "id_card.png"
        }
    },

    ["diving_gear"] = {
        label = "Dalış Tüpü",
        weight = 30000,
        stack = false,
        close = true,
        description = "An oxygen tank and a rebreather",
        client = {
            image = "diving_gear.png"
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
            image = "whiskey.png"
        }
    },

    ["weed_skunk"] = {
        label = "Skunk 2g",
        weight = 200,
        stack = true,
        close = false,
        description = "A weed bag with 2g Skunk",
        client = {
            image = "weed_baggy.png"
        }
    },

    ["xtcbaggy"] = {
        label = "Bag of XTC",
        weight = 0,
        stack = true,
        close = true,
        description = "Pop those pills baby",
        client = {
            image = "xtc_baggy.png"
        }
    },

    ["newsmic"] = {
        label = "News Microphone",
        weight = 100,
        stack = false,
        close = true,
        description = "A microphone for the news",
        client = {
            image = "newsmic.png"
        }
    },

    ["samsungphone"] = {
        label = "Samsung S10",
        weight = 1000,
        stack = true,
        close = true,
        description = "Very expensive phone",
        client = {
            image = "samsungphone.png"
        }
    },

    ["security_card_02"] = {
        label = "Security Card B",
        weight = 0,
        stack = true,
        close = true,
        description = "A security card... I wonder what it goes to",
        client = {
            image = "security_card_02.png"
        }
    },

    ["steel"] = {
        label = "Çelik",
        weight = 10,
        stack = true,
        close = false,
        description = "Nice piece of metal that you can probably use for something",
        client = {
            image = "steel.png"
        }
    },

    ["rolling_paper"] = {
        label = "Rolling Paper",
        weight = 0,
        stack = true,
        close = true,
        description = "Paper made specifically for encasing and smoking tobacco or cannabis.",
        client = {
            image = "rolling_paper.png"
        }
    },

    ["binoculars"] = {
        label = "Dürbün",
        weight = 600,
        stack = true,
        close = true,
        description = "Sneaky Breaky...",
        client = {
            image = "binoculars.png"
        }
    },

    ["weed_amnesia"] = {
        label = "Amnesia 2g",
        weight = 200,
        stack = true,
        close = false,
        description = "A weed bag with 2g Amnesia",
        client = {
            image = "weed_baggy.png"
        }
    },

    ["weed_ak47"] = {
        label = "AK47 2g",
        weight = 200,
        stack = true,
        close = false,
        description = "A weed bag with 2g AK47",
        client = {
            image = "weed_baggy.png"
        }
    },

    ["certificate"] = {
        label = "Certificate",
        weight = 0,
        stack = true,
        close = true,
        description = "Certificate that proves you own certain stuff",
        client = {
            image = "certificate.png"
        }
    },

    ["goldchain"] = {
        label = "Altın Kolye",
        weight = 300,
        stack = true,
        close = true,
        description = "A golden chain seems like the jackpot to me!",
        client = {
            image = "goldchain.png"
        }
    },

    ["diamond_ring"] = {
        label = "Elmas yüzük",
        weight = 500,
        stack = true,
        close = true,
        description = "A diamond ring seems like the jackpot to me!",
        client = {
            image = "diamond_ring.png"
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
            image = "snikkel_candy.png"
        }
    },

    ["babytoys"] = {
        label = "Bebek Oyuncağı",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "babytoys.png"
        }
    },

    ["weed_nutrition"] = {
        label = "Sıvı Bitki Gübresi",
        weight = 750,
        stack = true,
        close = true,
        description = "Plant nutrition",
        client = {
            image = "weed_nutrition.png"
        }
    },

    ["empty_weed_bag"] = {
        label = "Boş Torba",
        weight = 0,
        stack = true,
        close = true,
        description = "A small empty bag",
        client = {
            image = "weed_baggy_empty.png"
        }
    },

    ["screwdriverset"] = {
        label = "Toolkit",
        weight = 1000,
        stack = true,
        close = false,
        description = "Very useful to screw... screws...",
        client = {
            image = "screwdriverset.png"
        }
    },

    ["police_stormram"] = {
        label = "Stormram",
        weight = 18000,
        stack = true,
        close = true,
        description = "A nice tool to break into doors",
        client = {
            image = "police_stormram.png"
        }
    },

    ["firework1"] = {
        label = "2Brothers",
        weight = 1000,
        stack = true,
        close = true,
        description = "Fireworks",
        client = {
            image = "firework1.png"
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
            image = "wine.png"
        }
    },

    ["labkey"] = {
        label = "Key",
        weight = 500,
        stack = false,
        close = true,
        description = "Key for a lock...?",
        client = {
            image = "labkey.png"
        }
    },

    ["weed_ak47_seed"] = {
        label = "AK47 Tohumu",
        weight = 0,
        stack = true,
        close = true,
        description = "A weed seed of AK47",
        client = {
            image = "weed_ak47_seed.png"
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
            image = "twerks_candy.png"
        }
    },

    ["firework3"] = {
        label = "WipeOut",
        weight = 1000,
        stack = true,
        close = true,
        description = "Fireworks",
        client = {
            image = "firework3.png"
        }
    },

    ["firstaid"] = {
        label = "Sağlık Kiti",
        weight = 2500,
        stack = true,
        close = true,
        description = "You can use this First Aid kit to get people back on their feet",
        client = {
            image = "firstaid.png"
        }
    },

    ["diving_fill"] = {
        label = "Regülatör",
        weight = 3000,
        stack = false,
        close = true,
        client = {
            image = "diving_tube.png"
        }
    },

    ["antipatharia_coral"] = {
        label = "Antipatharia",
        weight = 1000,
        stack = true,
        close = true,
        description = "Its also known as black corals or thorn corals",
        client = {
            image = "antipatharia_coral.png"
        }
    },

    ["armor"] = {
        label = "Çelik Yelek",
        weight = 2500,
        stack = true,
        close = true,
        description = "Some protection won't hurt... right?",
        client = {
            image = "armor.png"
        }
    },

    ["tunerlaptop"] = {
        label = "Tunerchip",
        weight = 2000,
        stack = false,
        close = true,
        description = "With this tunerchip you can get your car on steroids... If you know what you're doing",
        client = {
            image = "tunerchip.png"
        }
    },

    ["heavyarmor"] = {
        label = "Heavy Armor",
        weight = 2500,
        stack = true,
        close = true,
        description = "Some protection won't hurt... right?",
        client = {
            image = "armor.png"
        }
    },

    ["cryptostick"] = {
        label = "Crypto Stick",
        weight = 200,
        stack = false,
        close = true,
        description = "Why would someone ever buy money that doesn't exist.. How many would it contain..?",
        client = {
            image = "cryptostick.png"
        }
    },

    ["stickynote"] = {
        label = "Sticky note",
        weight = 0,
        stack = false,
        close = false,
        description = "Sometimes handy to remember something :)",
        client = {
            image = "stickynote.png"
        }
    },

    ["markedbills"] = {
        label = "Marked Money",
        weight = 1000,
        stack = false,
        close = true,
        description = "Money?",
        client = {
            image = "markedbills.png"
        }
    },

    ["guvenlik_karti_b"] = {
        label = "Güvenlik Kartı B",
        weight = 100,
        stack = true,
        close = true,
        description = "Güvenlik Kartı",
        client = {
            image = "guvenlik_karti_b.png"
        }
    },

    ["guvenlik_karti_h"] = {
        label = "Güvenlik Kartı H",
        weight = 100,
        stack = true,
        close = true,
        description = "Güvenlik Kartı",
        client = {
            image = "guvenlik_karti_h.png"
        }
    },

    ["guvenlik_karti_d"] = {
        label = "Güvenlik Kartı D",
        weight = 100,
        stack = true,
        close = true,
        description = "Güvenlik Kartı",
        client = {
            image = "guvenlik_karti_d.png"
        }
    },

    ["guvenlik_karti_g"] = {
        label = "Güvenlik Kartı G",
        weight = 100,
        stack = true,
        close = true,
        description = "Güvenlik Kartı",
        client = {
            image = "guvenlik_karti_g.png"
        }
    },

    ["guvenlik_karti_e"] = {
        label = "Güvenlik Kartı E",
        weight = 100,
        stack = true,
        close = true,
        description = "Güvenlik Kartı",
        client = {
            image = "guvenlik_karti_e.png"
        }
    },

    ["guvenlik_karti_f"] = {
        label = "Güvenlik Kartı F",
        weight = 100,
        stack = true,
        close = true,
        description = "Güvenlik Kartı",
        client = {
            image = "guvenlik_karti_f.png"
        }
    },

    ["guvenlik_karti_a"] = {
        label = "Güvenlik Kartı A",
        weight = 100,
        stack = true,
        close = true,
        description = "Güvenlik Kartı",
        client = {
            image = "guvenlik_karti_a.png"
        }
    },

    ["guvenlik_karti_c"] = {
        label = "Güvenlik Kartı C",
        weight = 100,
        stack = true,
        close = true,
        description = "Güvenlik Kartı",
        client = {
            image = "guvenlik_karti_c.png"
        }
    },

    ["kelepceanahtar"] = {
        label = "Kelepçe Anahtarı",
        weight = 100,
        stack = true,
        close = true,
        description = "Kendine ait kelepçeyi açabilen bir anahtar.",
        client = {
            image = "kelepceanahtar.png"
        }
    },

    ["pkelepceanahtar"] = {
        label = "Polis Anahtarı",
        weight = 100,
        stack = true,
        close = true,
        description = "Her polis kelepçesini açabilen, polis anahtarı.",
        client = {
            image = "pkelepceanahtar.png"
        }
    },

    ["pkelepce"] = {
        label = "Polis Kelepçesi",
        weight = 100,
        stack = true,
        close = true,
        description = "Kaliteli çelikten yapılma, güçlü polis kelepçesi.",
        client = {
            image = "pkelepce.png"
        }
    },

    ["kelepce"] = {
        label = "Kelepçe",
        weight = 100,
        stack = true,
        close = true,
        description = "Ne yazık ki tüylü modellerinden değil..",
        client = {
            image = "kelepce.png"
        }
    },

    ["pizzaslice"] = {
        label = "Pizza Slice",
        weight = 320,
        stack = true,
        close = true,
        description = "Slice of Pizza.",
        client = {
            image = "pizzaslice.png"
        }
    },

    ["fruitpunch"] = {
        label = "Fruit Punch",
        weight = 100,
        stack = true,
        close = true,
        description = "Drink that Smiles Back",
        client = {
            image = ".png"
        }
    },

    ["sushirolls"] = {
        label = "sushirolls",
        weight = 400,
        stack = true,
        close = true,
        description = "Sushi Roll.",
        client = {
            image = "changeme.png"
        }
    },

    ["gum"] = {
        label = "Gum",
        weight = 250,
        stack = true,
        close = true,
        description = "Pack of Gum",
        client = {
            image = "gum.png"
        }
    },

    ["pinklemonade"] = {
        label = "Pink Lemonade",
        weight = 100,
        stack = true,
        close = true,
        description = "Straight from the Pink Juice",
        client = {
            image = ".png"
        }
    },

    ["mtndew"] = {
        label = "Mountain Dew",
        weight = 100,
        stack = true,
        close = true,
        description = "Drink that may cause your genitals to get smaller.",
        client = {
            image = ".png"
        }
    },

    ["cupcake"] = {
        label = "Cupcake",
        weight = 150,
        stack = false,
        close = true,
        degrade = 2880,
        description = "Colorfully iced cupcake",
        client = {
            image = "cupcake.png"
        }
    },

    ["donut"] = {
        label = "Donut",
        weight = 200,
        stack = true,
        close = true,
        description = "Pink iced donut.",
        client = {
            image = "donut.png"
        }
    },

    ["cookie"] = {
        label = "Cookie",
        weight = 250,
        stack = true,
        close = true,
        description = "Choc-Chip Cookie.",
        client = {
            image = "cookie.png"
        }
    },

    ["ramen"] = {
        label = "Ramen",
        weight = 300,
        stack = true,
        close = true,
        description = "Noodly Ramen",
        client = {
            image = "ramen.png"
        }
    },

    ["drpepper"] = {
        label = "Dr. Pepper",
        weight = 100,
        stack = true,
        close = true,
        description = "Drink of the Doctors Finest",
        client = {
            image = ".png"
        }
    },

    ["sprite"] = {
        label = "Sprite",
        weight = 100,
        stack = false,
        close = true,
        description = "",
        degrade = 2880,
        client = {
            image = "sprite.png"
        }
    },

    ["fries"] = {
        label = "Fries",
        weight = 250,
        stack = true,
        close = true,
        description = "Some nice cold fries.",
        client = {
            image = "fries.png"
        }
    },

    ["fanta"] = {
        label = "Fanta",
        weight = 100,
        stack = true,
        close = true,
        description = "Drink of Orange SuperPowers",
        degrade = 2880,
        client = {
            image = "fanta.png"
        }
    },

    ["muffin"] = {
        label = "Muffin",
        weight = 150,
        stack = true,
        close = true,
        description = "Choc-Chip Muffin.",
        client = {
            image = "changeme.png"
        }
    },

    ["lemonade"] = {
        label = "Lemonade",
        weight = 100,
        stack = true,
        close = true,
        description = "Straight from the Juice",
        client = {
            image = "lemonade.png"
        }
    },

    ["icedtea"] = {
        label = "Iced Tea",
        weight = 100,
        stack = true,
        close = true,
        description = "Iced Brew of Tea",
        client = {
            image = "icedtea.png"
        }
    },

    ["pepsi"] = {
        label = "Pepsi",
        weight = 100,
        stack = true,
        close = true,
        description = "Knock off CocaCola",
        client = {
            image = ".png"
        }
    },

    ["icecream"] = {
        label = "Ice Cream",
        weight = 200,
        stack = true,
        close = true,
        description = "Ice Cream.",
        client = {
            image = "icecream.png"
        }
    },

    ["milk"] = {
        label = "Milk",
        weight = 100,
        stack = true,
        close = true,
        description = "Drink of Cow Produce",
        client = {
            image = "milk.png"
        }
    },

    ["paintingj"] = {
        label = "Değerli Resim 3",
        weight = 1000,
        stack = true,
        close = true,
        description = "Değerli bir resime benziyor.",
        client = {
            image = "paintingj.png"
        }
    },

    ["paintingi"] = {
        label = "Değerli Resim 1",
        weight = 1000,
        stack = true,
        close = true,
        description = "Değerli bir resime benziyor.",
        client = {
            image = "paintingi.png"
        }
    },

    ["paintingg"] = {
        label = "Değerli Resim 5",
        weight = 1000,
        stack = true,
        close = true,
        description = "Değerli bir resime benziyor.",
        client = {
            image = "paintingg.png"
        }
    },

    ["paintingf"] = {
        label = "Değerli Resim 4",
        weight = 1000,
        stack = true,
        close = true,
        description = "Değerli bir resime benziyor.",
        client = {
            image = "paintingf.png"
        }
    },

    ["paintingh"] = {
        label = "Değerli Resim 2",
        weight = 1000,
        stack = true,
        close = true,
        description = "Değerli bir resime benziyor.",
        client = {
            image = "paintingh.png"
        }
    },

    ["gasmask"] = {
        label = "Gaz Maskesi",
        weight = 200,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "gasmask.png"
        }
    },

    ["jewels"] = {
        label = "Mücevher",
        weight = 200,
        stack = true,
        close = true,
        description = "Değerli şeylere benziyor.",
        client = {
            image = "jewels.png"
        }
    },

    ["yakutelmas"] = {
        label = "Yakut Elmas",
        weight = 200,
        stack = true,
        close = true,
        description = "Çok değerli bir taşa benziyor.",
        client = {
            image = "yakutelmas.png"
        }
    },

    ["islenmis_altin"] = {
        label = "Altın Külçesi",
        weight = 200,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "islenmis_altin.png"
        }
    },

    ["atmobject"] = {
        label = "ATM",
        weight = 200,
        stack = false,
        close = true,
        description = "",
        client = {
            image = "atmobject.png"
        }
    },

    ["towingrope"] = {
        label = "Halat",
        weight = 200,
        stack = false,
        close = true,
        description = "Güçlü bir halata benziyor.",
        client = {
            image = "towingrope.png"
        }
    },

    ["uncut_sapphire"] = {
        label = "İşlenmemiş Safir",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "uncut_sapphire.png"
        }
    },

    ["sapphire_earring_silver"] = {
        label = "Safir Küpe",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "sapphire_earring_silver.png"
        }
    },

    ["sapphire_ring"] = {
        label = "Safir Yüzük",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "sapphire_ring.png"
        }
    },

    ["uncut_ruby"] = {
        label = "İşlenmemiş Yakut",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "uncut_ruby.png"
        }
    },

    ["copperore"] = {
        label = "Bakır Cevheri",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "copperore.png"
        }
    },

    ["emerald_ring_silver"] = {
        label = "Zümrüt Yüzük",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "emerald_ring_silver.png"
        }
    },

    ["bottle"] = {
        label = "Kırık Şişe",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "bottle.png"
        }
    },

    ["goldingot"] = {
        label = "Altın Külçe",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "goldingot.png"
        }
    },

    ["silverore"] = {
        label = "Gümüş Cevheri",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "silverore.png"
        }
    },

    ["silverchain"] = {
        label = "Gümüş Kolye",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "silverchain.png"
        }
    },

    ["uncut_diamond"] = {
        label = "İşlenmemiş Elmas",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "uncut_diamond.png"
        }
    },

    ["silverearring"] = {
        label = "Gümüş Küpe",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "silverearring.png"
        }
    },

    ["ironore"] = {
        label = "Demir Cevheri",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "ironore.png"
        }
    },

    ["drillbit"] = {
        label = "Matkap ucu",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "drillbit.png"
        }
    },

    ["emerald"] = {
        label = "Zümrüt",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "emerald.png"
        }
    },

    ["ruby_ring"] = {
        label = "Yakut Yüzük",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "ruby_ring.png"
        }
    },

    ["can"] = {
        label = "Kutu Şişe",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "can.png"
        }
    },

    ["stone"] = {
        label = "Taş",
        weight = 1000,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "stone.png"
        }
    },

    ["pickaxe"] = {
        label = "Kazma",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "pickaxe.png"
        }
    },

    ["ruby"] = {
        label = "Yakut",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "ruby.png"
        }
    },

    ["mininglaser"] = {
        label = "Maden lazeri",
        weight = 10000,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "mininglaser.png"
        }
    },

    ["silver_ring"] = {
        label = "Gümüş Yüzük",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "silver_ring.png"
        }
    },

    ["ruby_necklace_silver"] = {
        label = "Yakut Kolye",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "ruby_necklace_silver.png"
        }
    },

    ["sapphire"] = {
        label = "Safir",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "sapphire.png"
        }
    },

    ["diamond_ring_silver"] = {
        label = "Gümüş Yüzük",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "diamond_ring_silver.png"
        }
    },

    ["goldore"] = {
        label = "Altın Cevheri",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "goldore.png"
        }
    },

    ["silver_earring"] = {
        label = "Gümüş Küpe",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "silver_earring.png"
        }
    },

    ["emerald_ring"] = {
        label = "Zümrüt Yüzük",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "emerald_ring.png"
        }
    },

    ["goldpan"] = {
        label = "Altın Tepsi",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "goldpan.png"
        }
    },

    ["sapphire_necklace"] = {
        label = "Safir Kolye",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "sapphire_necklace.png"
        }
    },

    ["ruby_earring_silver"] = {
        label = "Yakut Küpe",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "ruby_earring_silver.png"
        }
    },

    ["emerald_necklace_silver"] = {
        label = "Zümrüt Kolye",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "emerald_necklace_silver.png"
        }
    },

    ["diamond_necklace_silver"] = {
        label = "Gümüş Kolye",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "diamond_necklace_silver.png"
        }
    },

    ["sapphire_earring"] = {
        label = "Safir Küpe",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "sapphire_earring.png"
        }
    },

    ["gold_earring"] = {
        label = "Altın Küpe",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "gold_earring.png"
        }
    },

    ["emerald_earring_silver"] = {
        label = "Zümrüt Küpe",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "emerald_earring_silver.png"
        }
    },

    ["miningdrill"] = {
        label = "Madencilik Matkabı",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "miningdrill.png"
        }
    },

    ["gold_ring"] = {
        label = "Altın Yüzük",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "gold_ring.png"
        }
    },

    ["diamond_necklace"] = {
        label = "Elmas Kolye",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "diamond_necklace.png"
        }
    },

    ["ruby_necklace"] = {
        label = "Yakut Kolye",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "ruby_necklace.png"
        }
    },

    ["emerald_necklace"] = {
        label = "Zümrüt Kolye",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "emerald_necklace.png"
        }
    },

    ["uncut_emerald"] = {
        label = "İşlenmemiş Zümrüt",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "uncut_emerald.png"
        }
    },

    ["diamond_earring"] = {
        label = "Elmas Küpe",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "diamond_earring.png"
        }
    },

    ["diamond_earring_silver"] = {
        label = "Gümüş Küpe",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "diamond_earring_silver.png"
        }
    },

    ["carbon"] = {
        label = "Ham Karbon",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "carbon.png"
        }
    },

    ["sapphire_ring_silver"] = {
        label = "Safir Yüzük",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "sapphire_ring_silver.png"
        }
    },

    ["silveringot"] = {
        label = "Gümüş Külçe",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "silveringot.png"
        }
    },

    ["emerald_earring"] = {
        label = "Zümrüt Küpe",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "emerald_earring.png"
        }
    },

    ["ruby_ring_silver"] = {
        label = "Yakut Yüzük",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "ruby_ring_silver.png"
        }
    },

    ["sapphire_necklace_silver"] = {
        label = "Safir Kolye",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "sapphire_necklace_silver.png"
        }
    },

    ["ruby_earring"] = {
        label = "Yakut Küpe",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "ruby_earring.png"
        }
    },

    ["fish"] = {
        label = "Minik Balık",
        weight = 200,
        stack = true,
        close = false,
        description = "Sudan çıkmış balık, belki de babandır? Yer misin?"
    },

    ["lufer"] = {
        label = "Lüfer",
        weight = 300,
        stack = true,
        close = false,
        description = "Sudan çıkmış balık, belki de babandır? Yer misin?"
    },

    ["fishingrod3"] = {
        label = "Olta (3Lv.)",
        weight = 1000,
        stack = true,
        close = false,
        description = "Deniz canlılarını yakalayabilmek için üretilmiş kancalı alet."
    },

    ["levrek"] = {
        label = "Levrek",
        weight = 300,
        stack = true,
        close = false,
        description = "Sudan çıkmış balık, belki de babandır? Yer misin?"
    },

    ["pantolonbaligi"] = {
        label = "Pantolon Balığı",
        weight = 750,
        stack = true,
        close = false,
        description = "Sudan çıkmış balık, belki de babandır? Yer misin?"
    },

    ["kirmiziinci"] = {
        label = "Kırmızı inci",
        weight = 100,
        stack = true,
        close = false,
        description = "Sudan çıkmış balık, belki de babandır? Yer misin?"
    },

    ["fishingrod5"] = {
        label = "Olta (5Lv.)",
        weight = 1000,
        stack = true,
        close = false,
        description = "Deniz canlılarını yakalayabilmek için üretilmiş kancalı alet."
    },

    ["turtlebait"] = {
        label = "İllegal Yem",
        weight = 400,
        stack = true,
        close = false,
        description = "Olta ucuna takılabilen, İllegal balık yemi.."
    },

    ["maviinci"] = {
        label = "Mavi inci",
        weight = 100,
        stack = true,
        close = false,
        description = "Sudan çıkmış balık, belki de babandır? Yer misin?"
    },

    ["beyazinci"] = {
        label = "Beyaz inci",
        weight = 100,
        stack = true,
        close = false,
        description = "Sudan çıkmış balık, belki de babandır? Yer misin?"
    },

    ["kopekbaligix"] = {
        label = "Köpekbalığı",
        weight = 1000,
        stack = true,
        close = false,
        description = "Sudan çıkmış balık, belki de babandır? Yer misin?"
    },

    ["sariinci"] = {
        label = "Sarı inci",
        weight = 100,
        stack = true,
        close = false,
        description = "Sudan çıkmış balık, belki de babandır? Yer misin?"
    },

    ["fishingrod4"] = {
        label = "Olta (4Lv.)",
        weight = 1000,
        stack = true,
        close = false,
        description = "Deniz canlılarını yakalayabilmek için üretilmiş kancalı alet."
    },

    ["fishingrod2"] = {
        label = "Olta (2Lv.)",
        weight = 1000,
        stack = true,
        close = false,
        description = "Deniz canlılarını yakalayabilmek için üretilmiş kancalı alet."
    },

    ["palamut"] = {
        label = "Palamut",
        weight = 300,
        stack = true,
        close = false,
        description = "Sudan çıkmış balık, belki de babandır? Yer misin?"
    },

    ["hamsi"] = {
        label = "Hamsi",
        weight = 300,
        stack = true,
        close = false,
        description = "Piçtur piç"
    },

    ["fishingrod1"] = {
        label = "Olta (1Lv.)",
        weight = 1000,
        stack = true,
        close = false,
        description = "Deniz canlılarını yakalayabilmek için üretilmiş kancalı alet."
    },

    ["zargana"] = {
        label = "Zargana",
        weight = 300,
        stack = true,
        close = false,
        description = "Sudan çıkmış balık, belki de babandır? Yer misin?"
    },

    ["yesilinci"] = {
        label = "Yeşil inci",
        weight = 100,
        stack = true,
        close = false,
        description = "Sudan çıkmış balık, belki de babandır? Yer misin?"
    },

    ["cinekop"] = {
        label = "Çinekop",
        weight = 300,
        stack = true,
        close = false,
        description = "Sudan çıkmış balık, belki de babandır? Yer misin?"
    },

    ["carettacaretta"] = {
        label = "Caretta Caretta",
        weight = 750,
        stack = true,
        close = false,
        description = "Sudan çıkmış balık, belki de babandır? Yer misin?"
    },

    ["fishbait"] = {
        label = "Balık Yemi",
        weight = 200,
        stack = true,
        close = false,
        description = "Olta ucuna takılabilen, basit balık yemi."
    },

    ["drone_flyer_4"] = {
        label = "Gelişmiş Drone 1",
        weight = 1000,
        stack = true,
        close = true,
        description = "Büyük, fena değil bir quadcopter",
        client = {
            image = "drone_flyer_4.png"
        }
    },

    ["drone_flyer_1"] = {
        label = "Basit Drone 1",
        weight = 1000,
        stack = true,
        close = true,
        description = "Minik, yavaş bir quadcopter",
        client = {
            image = "drone_flyer_1.png"
        }
    },

    ["medikit"] = {
        label = "Sağlık Çantası",
        weight = 500,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "medikit.png"
        }
    },

    ["drone_flyer_5"] = {
        label = "Gelişmiş Drone 2",
        weight = 1000,
        stack = true,
        close = true,
        description = "Büyük, iyi bir quadcopter",
        client = {
            image = "drone_flyer_5.png"
        }
    },

    ["drone_flyer_6"] = {
        label = "Gelişmiş Drone 3",
        weight = 1000,
        stack = true,
        close = true,
        description = "Büyük, oldukça kaliteli bir quadcopter",
        client = {
            image = "drone_flyer_6.png"
        }
    },

    ["drone_flyer_2"] = {
        label = "Basit Drone 2",
        weight = 1000,
        stack = true,
        close = true,
        description = "Minik, yavaşça bir quadcopter",
        client = {
            image = "drone_flyer_2.png"
        }
    },

    ["Çelik Yelek"] = {
        label = "Armor",
        weight = 5000,
        stack = true,
        close = true,
        description = "Some protection won't hurt... right?",
        client = {
            image = "armor.png"
        }
    },

    ["gps"] = {
        label = "GPS",
        weight = 100,
        stack = false,
        close = false,
        description = "",
        client = {
            image = "gps.png"
        }
    },

    ["drone_flyer_7"] = {
        label = "Polis Drone",
        weight = 1000,
        stack = true,
        close = true,
        description = "Polisler için özel üretilmiş bir quadcopter.",
        client = {
            image = "drone_flyer_7.png"
        }
    },

    ["drone_flyer_3"] = {
        label = "Basit Drone 3",
        weight = 1000,
        stack = true,
        close = true,
        description = "Minik, idare eder bir quadcopter",
        client = {
            image = "drone_flyer_3.png"
        }
    },

    ["enerji_icecegi"] = {
        label = "Enerji İçeceği",
        weight = 500,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "enerji_icecegi.png"
        }
    },

    ["kitap"] = {
        label = "Dosya",
        weight = 500,
        stack = false,
        close = true,
        description = "",
        client = {
            image = "book.png"
        }
    },

    ["kraker"] = {
        label = "Kraker",
        weight = 200,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "kraker.png"
        }
    },

    ["aspirin"] = {
        label = "Aspirin",
        weight = 5,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "aspirin.png"
        }
    },

    ["bodycam"] = {
        label = "Bodycam",
        weight = 50,
        stack = false,
        close = false,
        description = "",
        client = {
            image = "bodycam.png"
        }
    },

    ["megaphone"] = {
        label = "Megafon",
        weight = 2000,
        stack = false,
        close = false,
        description = "",
        client = {
            image = "megaphone.png"
        }
    },

    ["chair3"] = {
        label = "Kamp Sandalyesi",
        weight = 1000,
        stack = false,
        close = false,
        description = "",
        client = {
            image = "chair3.png"
        }
    },

    ["bag"] = {
        label = "Çanta",
        weight = 3000,
        stack = false,
        close = true,
        description = ""
    },

    ["universal_cure"] = {
        label = "Evrensel Tedavi Hapı",
        weight = 250,
        stack = false,
        close = true,
        description = "Bazı bağımlılıkları giderir aşk hariç",
        client = {
            image = "aspirin.png"
        }
    },

    ["marijuana_cure"] = {
        label = "Marijuana Tedavi Hapı",
        weight = 250,
        stack = false,
        close = true,
        description = "Marijuana bağımlılıkları giderir aşk hariç",
        client = {
            image = "aspirin.png"
        }
    },

    ["chair7"] = {
        label = "Keko Sandalyesi",
        weight = 1000,
        stack = false,
        close = false,
        description = "",
        client = {
            image = "chair7.png"
        }
    },

    ["eskitelefon"] = {
        label = "3310",
        weight = 100,
        stack = false,
        close = false,
        description = "",
        client = {
            image = "3310.png"
        }
    },

    ["hacking_device"] = {
        label = "USB",
        weight = 10,
        stack = false,
        close = false,
        description = "",
        client = {
            image = "hacking_device.png"
        }
    },

    ["chair6"] = {
        label = "Bahçe Sandalyesi",
        weight = 1000,
        stack = false,
        close = false,
        description = "",
        client = {
            image = "chair6.png"
        }
    },

    ["chair5"] = {
        label = "Ofis Sandalyesi",
        weight = 1000,
        stack = false,
        close = false,
        description = "",
        client = {
            image = "chair5.png"
        }
    },

    ["methlab"] = {
        label = "Methlab",
        weight = 2000,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "methlab.png"
        }
    },

    ["lithium"] = {
        label = "Lithium",
        weight = 700,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "lithium.png"
        }
    },

    ["chair1"] = {
        label = "Kamp Sandalyesi",
        weight = 1000,
        stack = false,
        close = false,
        description = "",
        client = {
            image = "chair1.png"
        }
    },

    ["chair4"] = {
        label = "Kamp Sandalyesi",
        weight = 1000,
        stack = false,
        close = false,
        description = "",
        client = {
            image = "chair4.png"
        }
    },

    ["chair2"] = {
        label = "Kamp Sandalyesi",
        weight = 1000,
        stack = false,
        close = false,
        description = "",
        client = {
            image = "chair2.png"
        }
    },

    ["pixellaptop"] = {
        label = "Pixel Laptop",
        weight = 1000,
        stack = false,
        close = false,
        description = "",
        client = {
            image = "pixellaptop.png"
        }
    },

    ["chair8"] = {
        label = "Tahta Sandalye",
        weight = 1000,
        stack = false,
        close = false,
        description = "",
        client = {
            image = "chair8.png"
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
            image = "cikolatapasta.png"
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
            image = "rezenecayi.png"
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
            image = "crossosandvic.png"
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
            image = "sebastian.png"
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
            image = "pinky.png"
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
            image = "tiramisu.png"
        }
    },

    ["seker"] = {
        label = "Toz Şeker",
        weight = 0,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "seker.png"
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
            image = "kedicookie.png"
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
            image = "ozelkarisim.png"
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
            image = "prensespasta.png"
        }
    },

    ["nohutdurum"] = {
        label = "Nohut Dürüm",
        weight = 600,
        stack = false,
        close = false,
        description = "",
        degrade = 2880,
        client = {
            image = "nohutdurum.png"
        }
    },

    ["nohutpilav"] = {
        label = "Nohut Pilav",
        weight = 600,
        stack = false,
        close = false,
        description = "",
        degrade = 2880,
        client = {
            image = "nohutpilav.png"
        }
    },

    ["tavukpilav"] = {
        label = "Tavuk Pilav",
        weight = 600,
        stack = false,
        close = false,
        description = "",
        degrade = 2880,
        client = {
            image = "tavukpilav.png"
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
            image = "gokkusagik.png"
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
            image = "chocoberry.png"
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
            image = "simit.png"
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
            image = "smoothie.png"
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
            image = "cileklipasta.png"
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
            image = "caramellatte.png"
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
            image = "cilekkokteyl.png"
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
            image = "cutepasta.png"
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
            image = "filtrekahve.png"
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
            image = "baget.png"
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
            image = "italiansoda.png"
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
            image = "ahududuwaffle.png"
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
            image = "cheescake.png"
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
            image = "cocowhite.png"
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
            image = "meyvelipasta.png"
        }
    },

    ["kremsanti"] = {
        label = "Krem Şanti",
        weight = 0,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "kremsanti.png"
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
            image = "cheesetost.png"
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
            image = "limonata.png"
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
            image = "cay.png"
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
            image = "frappe.png"
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
            image = "cremabrule.png"
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
            image = "tatlikahvalti.png"
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
            image = "icetea.png"
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
            image = "papatyacayi.png"
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
            image = "visneliturta.png"
        }
    },

    ["yumurta"] = {
        label = "Yumurta",
        weight = 0,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "yumurta.png"
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
            image = "meyvelikrep.png"
        }
    },

    ["etilalkol"] = {
        label = "Etil Alkol",
        weight = 0,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "etilalkol.png"
        }
    },

    ["buz"] = {
        label = "Buz",
        weight = 0,
        stack = true,
        close = false,
        description = "Donmuş su",
        client = {
            image = "buz.png"
        }
    },

    ["sut"] = {
        label = "Süt",
        weight = 0,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "sut.png"
        }
    },

    ["3310"] = {
        label = "3310",
        weight = 100,
        stack = false,
        close = false,
        description = "",
        client = {
            image = "3310.png"
        }
    },

    ["domates2"] = {
        label = "Söğüş Domates",
        weight = 0,
        stack = true,
        close = false,
        description = "İnce ince dilimlenmiş lezzetli görünen bir domates",
        client = {
            image = "domates2.png"
        }
    },

    ["misir"] = {
        label = "Mısır",
        weight = 0,
        stack = true,
        close = false,
        description = "Tezgahta satılanı en güzeli.",
        client = {
            image = "misir.png"
        }
    },

    ["yosun"] = {
        label = "Yosun",
        weight = 0,
        stack = true,
        close = false,
        description = "Su altından toplanmış, yeşil bitki.",
        client = {
            image = "yosun.png"
        }
    },

    ["tuz"] = {
        label = "Tuz",
        weight = 0,
        stack = true,
        close = false,
        description = "Kaya tuzu.",
        client = {
            image = "tuz.png"
        }
    },

    ["packaged_chicken"] = {
        label = "Paketlenmiş Tavuk",
        weight = 0,
        stack = true,
        close = false,
        description = "Paketlenmiş Tavuk",
        client = {
            image = "packaged_chicken.png"
        }
    },

    ["patates2"] = {
        label = "Dilimlenmiş Patates",
        weight = 0,
        stack = true,
        close = false,
        description = "Taze ve parmak kalınlığında dilimlenmiş patates",
        client = {
            image = "patates2.png"
        }
    },

    ["redbull"] = {
        label = "Redbull",
        weight = 0,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "redbull.png"
        }
    },

    ["bmochi"] = {
        label = "Blue Mochi",
        weight = 200,
        stack = false,
        close = true,
        description = "Hmm Uwu",
        degrade = 2880
    },

    ["pmochi"] = {
        label = "Pink Mochi",
        weight = 200,
        stack = false,
        close = true,
        description = "Hmm Uwu",
        degrade = 2880
    },

    ["gmochi"] = {
        label = "Green Mochi",
        weight = 200,
        stack = false,
        close = true,
        description = "Hmm Uwu",
        degrade = 2880
    },

    ["omochi"] = {
        label = "Orange Mochi",
        weight = 200,
        stack = false,
        close = true,
        description = "Hmm Uwu",
        degrade = 2880
    },

    ["bobatea"] = {
        label = "Boba Tea",
        weight = 200,
        stack = false,
        close = true,
        description = "Hmm Uwu",
        degrade = 2880
    },

    ["bbobatea"] = {
        label = "Blue Boba Tea",
        weight = 200,
        stack = false,
        close = true,
        description = "Hmm Uwu",
        degrade = 2880
    },

    ["gbobatea"] = {
        label = "Green Boba Tea",
        weight = 200,
        stack = false,
        close = true,
        description = "Hmm Uwu",
        degrade = 2880
    },

    ["pbobatea"] = {
        label = "Pink Boba Tea",
        weight = 200,
        stack = false,
        close = true,
        description = "Hmm Uwu",
        degrade = 2880
    },

    ["obobatea"] = {
        label = "Orange Boba Tea",
        weight = 200,
        stack = false,
        close = true,
        description = "Hmm Uwu",
        degrade = 2880
    },

    ["nekolatte"] = {
        label = "Neko Latte",
        weight = 200,
        stack = false,
        close = true,
        description = "Hmm Uwu",
        degrade = 2880
    },

    ["sake"] = {
        label = "Sake",
        weight = 200,
        stack = false,
        close = true,
        description = "Hmm Uwu",
        degrade = 2880
    },

    ["miso"] = {
        label = "Miso Soup",
        weight = 200,
        stack = false,
        close = true,
        description = "Hmm Uwu",
        degrade = 2880
    },

    ["cake"] = {
        label = "Strawberry Cake",
        weight = 200,
        stack = false,
        close = true,
        description = "Hmm Uwu",
        degrade = 2880
    },

    ["bento"] = {
        label = "Bento Box",
        weight = 200,
        stack = false,
        close = true,
        description = "Hmm Uwu",
        degrade = 2880
    },

    ["riceball"] = {
        label = "Neko Onigiri",
        weight = 200,
        stack = false,
        close = true,
        description = "Hmm Uwu",
        degrade = 2880
    },

    ["nekocookie"] = {
        label = "Neko Cookie",
        weight = 200,
        stack = false,
        close = true,
        description = "Hmm Uwu",
        degrade = 2880
    },

    ["nekodonut"] = {
        label = "Neko Donut",
        weight = 200,
        stack = false,
        close = true,
        description = "Hmm Uwu",
        degrade = 2880
    },

    ["boba"] = {
        label = "Boba",
        weight = 200,
        stack = false,
        close = true,
        description = "Hmm Uwu",
        degrade = 2880
    },

    ["flour"] = {
        label = "Flour",
        weight = 200,
        stack = false,
        close = true,
        description = "Hmm Uwu",
        degrade = 2880
    },

    ["rice"] = {
        label = "Bowl of Rice",
        weight = 200,
        stack = false,
        close = true,
        description = "Hmm Uwu",
        degrade = 2880
    },

    ["nori"] = {
        label = "Nori",
        weight = 200,
        stack = false,
        close = true,
        description = "Hmm Uwu",
        degrade = 2880
    },

    ["sugar"] = {
        label = "Sugar",
        weight = 200,
        stack = false,
        close = true,
        description = "Hmm Uwu",
        degrade = 2880
    },

    ["blueberry"] = {
        label = "Blueberry",
        weight = 200,
        stack = false,
        close = true,
        description = "Hmm Uwu",
        degrade = 2880
    },

    ["strawberry"] = {
        label = "Strawberry",
        weight = 200,
        stack = false,
        close = true,
        description = "Hmm Uwu",
        degrade = 2880
    },

    ["orange"] = {
        label = "Orange",
        weight = 200,
        stack = false,
        close = true,
        description = "Hmm Uwu",
        degrade = 2880
    },

    ["mint"] = {
        label = "Matcha",
        weight = 200,
        stack = false,
        close = true,
        description = "Hmm Uwu",
        degrade = 2880
    },

    ["tofu"] = {
        label = "Tofu",
        weight = 200,
        stack = false,
        close = true,
        description = "Hmm Uwu",
        degrade = 2880
    },

    ["mocha"] = {
        label = "Mocha Meow",
        weight = 200,
        stack = false,
        close = true,
        description = "Hmm Uwu",
        degrade = 2880
    },

    ["cakepop"] = {
        label = "Cat Cake-Pop",
        weight = 200,
        stack = false,
        close = true,
        description = "Hmm Uwu",
        degrade = 2880
    },

    ["pancake"] = {
        label = "PawCake",
        weight = 200,
        stack = false,
        close = true,
        description = "Hmm Uwu",
        degrade = 2880
    },

    ["pizza"] = {
        label = "Kitty Pizza",
        weight = 200,
        stack = false,
        close = true,
        description = "Hmm Uwu",
        degrade = 2880
    },

    ["purrito"] = {
        label = "Purrito",
        weight = 200,
        stack = false,
        close = true,
        description = "Hmm Uwu",
        degrade = 2880
    },

    ["noodlebowl"] = {
        label = "Bowl of Noodles",
        weight = 200,
        stack = false,
        close = true,
        description = "Hmm Uwu",
        degrade = 2880
    },

    ["noodles"] = {
        label = "Instant Noodles",
        weight = 200,
        stack = false,
        close = true,
        description = "Hmm Uwu",
        degrade = 2880
    },

    ["ramen"] = {
        label = "Bowl of Ramen",
        weight = 200,
        stack = false,
        close = true,
        description = "Hmm Uwu",
        degrade = 2880
    },

    ["milk"] = {
        label = "Süt",
        weight = 200,
        stack = false,
        close = true,
        description = "Hmm Uwu",
        degrade = 2880
    },

    ["onion"] = {
        label = "Soğan",
        weight = 200,
        stack = false,
        close = true,
        description = "Hmm Uwu",
        degrade = 2880
    },

    ["kiyma"] = {
        label = "Kıyma",
        weight = 0,
        stack = true,
        close = false,
        description = "Sağlıklı değil gibi ama sen bilirsin.",
        client = {
            image = "kiyma.png"
        }
    },

    ["hamur"] = {
        label = "Hamur",
        weight = 0,
        stack = true,
        close = false,
        description = "Açarsın börek, yayarsın pizza. Nerede kullanacaksın?",
        client = {
            image = "hamur.png"
        }
    },

    ["havuc"] = {
        label = "Havuç",
        weight = 0,
        stack = true,
        close = false,
        description = "Iııı naber cınım??",
        client = {
            image = "havuc.png"
        }
    },

    ["kahvea"] = {
        label = "Kahve Çekirdeği",
        weight = 0,
        stack = true,
        close = false,
        description = "Kaliteli kahve çekirdekleri.",
        client = {
            image = "kahvea.png"
        }
    },

    ["limon"] = {
        label = "Limon",
        weight = 0,
        stack = true,
        close = false,
        description = "Sarı, ekşi.",
        client = {
            image = "limon.png"
        }
    },

    ["domates"] = {
        label = "Domates",
        weight = 0,
        stack = true,
        close = false,
        description = "Biber , patlıcaan.",
        client = {
            image = "domates.png"
        }
    },

    ["baliketi"] = {
        label = "Balık Eti",
        weight = 0,
        stack = true,
        close = false,
        description = "Balık eti, deniz veya tatlı sularda yakalanan soğuk kanlı solungaçları ile solunum yapan hayvanların besin olarak kullanılan etleridir.",
        client = {
            image = "baliketi.png"
        }
    },

    ["marul2"] = {
        label = "Söğüş Marul",
        weight = 0,
        stack = true,
        close = false,
        description = "Yıkanmış, taze ve dilimlenmiş marul parçaları",
        client = {
            image = "marul2.png"
        }
    },

    ["ketcap"] = {
        label = "Ketçap",
        weight = 0,
        stack = true,
        close = false,
        description = "Dök dök ye.",
        client = {
            image = "ketcap.png"
        }
    },

    ["slaughtered_chicken"] = {
        label = "Kesilmiş Tavuk",
        weight = 0,
        stack = true,
        close = false,
        description = "Kesilmiş tavuk",
        client = {
            image = "slaughtered_chicken.png"
        }
    },

    ["sogan2"] = {
        label = "Doğranmış Soğan",
        weight = 0,
        stack = true,
        close = false,
        description = "Görenin gözlerini yaşartan taze doğranmış soğan",
        client = {
            image = "sogan2.png"
        }
    },

    ["dana_eti"] = {
        label = "Dana Eti",
        weight = 0,
        stack = true,
        close = false,
        description = "Möö.",
        client = {
            image = "dana_eti.png"
        }
    },

    ["sosis"] = {
        label = "Sosis",
        weight = 0,
        stack = true,
        close = false,
        description = "Et silindiri.",
        client = {
            image = "sosis.png"
        }
    },

    ["temizbelgesi"] = {
        label = "Temiz Belgesi",
        weight = 500,
        stack = false,
        close = true,
        description = "",
        client = {
            image = "temizbelgesi.png"
        }
    },

    ["cigarette"] = {
        label = "Sigara",
        weight = 10,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "cigarette.png"
        }
    },

    ["kaykay"] = {
        label = "Kaykay",
        weight = 500,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "kaykay.png"
        }
    },

    ["camera"] = {
        label = "Kamera",
        weight = 1000,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "camera.png"
        }
    },

    ["dckart"] = {
        label = "DC Kart",
        weight = 1000,
        stack = true,
        close = true,
        description = ""
    },

    ["acetone"] = {
        label = "Aseton",
        weight = 200,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "acetone.png"
        }
    },

    ["rizla"] = {
        label = "Rızla",
        weight = 10,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "rizla.png"
        }
    },

    ["plastiksise"] = {
        label = "Plastik Şişe",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "plastiksise.png"
        }
    },

    ["kumas"] = {
        label = "Kumaş",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "kumas.png"
        }
    },

    ["uzum"] = {
        label = "Üzüm",
        weight = 3500,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "uzum.png"
        }
    },

    ["pkonserve"] = {
        label = "Paslı Konserve",
        weight = 300,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "pkonserve.png"
        }
    },

    ["lowradio"] = {
        label = "Stok Radyo",
        weight = 700,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "lowradio.png"
        }
    },

    ["yuzuk"] = {
        label = "Yüzük",
        weight = 700,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "yuzuk.png"
        }
    },

    ["splaka"] = {
        label = "Sahte Plaka",
        weight = 700,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "splaka.png"
        }
    },

    ["altinkolye"] = {
        label = "Altın Kolye",
        weight = 700,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "altinkolye.png"
        }
    },

    ["airbag"] = {
        label = "Hava Yastığı",
        weight = 1500,
        stack = true,
        close = false,
        description = "Kaza anında can kurtaran hava yastığı.",
        client = {
            image = "airbag.png"
        }
    },

    ["kumanda"] = {
        label = "Drone Kumandası",
        weight = 250,
        stack = true,
        close = false,
        description = "Bir drone üretmek için gerekli malzeme",
        client = {
            image = "kumanda.png"
        }
    },

    ["menudiner"] = {
        label = "Tequila Paket",
        weight = 0,
        stack = false,
        close = true,
        description = "",
        client = {
            image = "menudiner.png"
        }
    },

    ["stockrim"] = {
        label = "Stok Jant",
        weight = 2600,
        stack = true,
        close = false,
        description = "Standart kalitede bir jant.",
        client = {
            image = "stockrim.png"
        }
    },

    ["battery"] = {
        label = "Araç Aküsü",
        weight = 4500,
        stack = true,
        close = false,
        description = "Arabalara gerekli elektrik gücünü sağlayan büyük pil.",
        client = {
            image = "battery.png"
        }
    },

    ["menubellx"] = {
        label = "Bahama Paket",
        weight = 0,
        stack = false,
        close = true,
        description = "",
        client = {
            image = "menubellx.png"
        }
    },

    ["highradio"] = {
        label = "Dijital Radyo",
        weight = 1500,
        stack = true,
        close = false,
        description = "Son teknoloji kaliteli bir araç müzik sistemi.",
        client = {
            image = "highradio.png"
        }
    },

    ["menuanamur"] = {
        label = "Social Paket",
        weight = 0,
        stack = false,
        close = true,
        description = "",
        client = {
            image = "menuanamur.png"
        }
    },

    ["menumotel"] = {
        label = "C'est Paket",
        weight = 0,
        stack = false,
        close = true,
        description = "",
        client = {
            image = "menumotel.png"
        }
    },

    ["highrim"] = {
        label = "Kaliteli Jant",
        weight = 5200,
        stack = true,
        close = false,
        description = "Oldukça pahalı duran bir jant",
        client = {
            image = "highrim.png"
        }
    },

    ["menubell"] = {
        label = "Tiki Paket",
        weight = 0,
        stack = false,
        close = true,
        description = "",
        client = {
            image = "menubell.png"
        }
    },

    ["menushot"] = {
        label = "Unicorn Paket",
        weight = 0,
        stack = false,
        close = true,
        description = "",
        client = {
            image = "menushot.png"
        }
    },

    ["speaker"] = {
        label = "Hoparlör",
        weight = 1050,
        stack = true,
        close = false,
        description = "Yüksek ses veren araçlar için tasarlanmış elektronik alet",
        client = {
            image = "speaker.png"
        }
    },

    ["kapi"] = {
        label = "Araç Kapısı",
        weight = 9000,
        stack = true,
        close = false,
        description = "Arabadan özensizce sökülmüş kapı.",
        client = {
            image = "kapi.png"
        }
    },

    ["dronemotoru"] = {
        label = "Drone Motoru",
        weight = 250,
        stack = true,
        close = false,
        description = "Bir drone üretmek için gerekli malzeme",
        client = {
            image = "dronemotoru.png"
        }
    },

    ["kemer"] = {
        label = "Kemer",
        weight = 50,
        stack = true,
        close = false,
        description = "Sıkı kemer",
        client = {
            image = "kemer.png"
        }
    },

    ["water2"] = {
        label = "Sulama Bidonu",
        weight = 0,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "water2.png"
        }
    },

    ["pepporonipizza"] = {
        label = "Pepperoni Pizza",
        weight = 320,
        stack = false,
        close = true,
        description = "",
        degrade = 2880,
        client = {
            image = "pepporonipizza.png"
        }
    },

    ["karisikpizza"] = {
        label = "Karışık Pizza",
        weight = 320,
        stack = false,
        close = true,
        description = "",
        degrade = 2880,
        client = {
            image = "karisikpizza.png"
        }
    },

    ["supremepizza"] = {
        label = "Supreme Pizza",
        weight = 320,
        stack = false,
        close = true,
        description = "",
        degrade = 2880,
        client = {
            image = "supremepizza.png"
        }
    },

    ["gennaropizza"] = {
        label = "Gennaro Pizza",
        weight = 320,
        stack = false,
        close = true,
        description = "",
        degrade = 2880,
        client = {
            image = "gennaropizza.png"
        }
    },

    ["barut"] = {
        label = "Barut",
        weight = 10,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "barut.png"
        }
    },

    ["menupizza"] = {
        label = "Pizzaria Paket",
        weight = 0,
        stack = false,
        close = true,
        description = "",
        client = {
            image = "menudiner.png"
        }
    },

    ["bilezik"] = {
        label = "Bilezik",
        weight = 100,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "bilezik.png"
        }
    },

    ["hackv1"] = {
        label = "Hack v1",
        weight = 320,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "hackv1.png"
        }
    },

    ["hackv3"] = {
        label = "Hack v3",
        weight = 320,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "hackv1.png"
        }
    },

    ["hackcoin"] = {
        label = "Coin",
        weight = 320,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "hackcoin.png"
        }
    },

    ["hackv2"] = {
        label = "Hack v2",
        weight = 320,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "hackv1.png"
        }
    },

    ["stancekit"] = {
        label = "Stance Kit",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "tunerchip.png"
        }
    },

    ["ucuz_saat"] = {
        label = "Ucuz Saat",
        weight = 320,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "ucuz_saat.png"
        }
    },

    ["elmas_saat"] = {
        label = "Elmas Saat",
        weight = 320,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "elmas_saat.png"
        }
    },

    ["ucuz_kamera"] = {
        label = "Ucuz Kamera",
        weight = 320,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "ucuz_kamera.png"
        }
    },

    ["anahtarluks"] = {
        label = "Anahtar Lüks",
        weight = 320,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "anahtarluks.png"
        }
    },

    ["ucuz_tv"] = {
        label = "Ucuz TV",
        weight = 320,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "ucuz_tv.png"
        }
    },

    ["anahtarbuyuk"] = {
        label = "Anahtar Büyük",
        weight = 320,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "anahtarbuyuk.png"
        }
    },

    ["kirli_kiyafet_kolisi"] = {
        label = "Kirli Kıyafet Kolisi",
        weight = 320,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "kirli_kiyafet_kolisi.png"
        }
    },

    ["4k_hd_tv"] = {
        label = "4K HD TV",
        weight = 320,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "4k_hd_tv.png"
        }
    },

    ["2k_hd_tv"] = {
        label = "2K HD TV",
        weight = 320,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "2k_hd_tv.png"
        }
    },

    ["gumus_saat"] = {
        label = "Gümüş Saat",
        weight = 320,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "gumus_saat.png"
        }
    },

    ["kaliteli_kamera"] = {
        label = "Kaliteli Kamera",
        weight = 320,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "kaliteli_kamera.png"
        }
    },

    ["antika_caki"] = {
        label = "Antika Çakı",
        weight = 320,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "antika_caki.png"
        }
    },

    ["antika_av_tufegi"] = {
        label = "Antika Av Tüfeği",
        weight = 320,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "antika_av_tufegi.png"
        }
    },

    ["anahtarorta"] = {
        label = "Anahtar Orta",
        weight = 320,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "anahtarorta.png"
        }
    },

    ["ultra_kaliteli_kamera"] = {
        label = "Ultra Kaliteli Kamera",
        weight = 320,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "ultra_kaliteli_kamera.png"
        }
    },

    ["anahtarkucuk"] = {
        label = "Anahtar Küçük",
        weight = 320,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "anahtarkucuk.png"
        }
    },

    ["marka_kiyafet_kolisi"] = {
        label = "Marka Kıyafet Kolisi",
        weight = 320,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "marka_kiyafet_kolisi.png"
        }
    },

    ["blueprint_smg"] = {
        label = "SMG Şeması",
        weight = 0,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "blueprint_smg.png"
        }
    },

    ["racingtablet"] = {
        label = "Yarış Tableti",
        weight = 200,
        stack = false,
        close = true,
        description = "",
        client = {
            image = "racingtablet.png"
        }
    },

    ["beerkeg_0_3"] = {
        label = "Bira Fıçısı - 30L - Boş",
        weight = 750,
        stack = true,
        close = true,
        description = "Beer keg with lot of beers!",
        client = {
            image = "beerkeg_0_3.png"
        }
    },

    ["chair13"] = {
        label = "Turuncu Deri Sandalye",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair13.png"
        }
    },

    ["chair102"] = {
        label = "Kırmızı Dekor Sandalye",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair102.png"
        }
    },

    ["tq_redhot_daquiri"] = {
        label = "Redhot Daquiri",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "coffee.png"
        }
    },

    ["peyote_tea"] = {
        label = "Peyote Çayı",
        weight = 200,
        stack = true,
        close = true,
        description = "Peyote Tea",
        client = {
            image = "peyote_tea.png"
        }
    },

    ["contract"] = {
        label = "Araç Kontratı",
        weight = 1,
        stack = false,
        close = true,
        description = "A contract",
        client = {
            image = "old_paper.png"
        }
    },

    ["cupcake-chocolate"] = {
        label = "Çikolatalı Cupkek",
        weight = 100,
        stack = false,
        close = true,
        description = "",
        degrade = 2880,
        client = {
            image = "cupchocolate.png"
        }
    },

    ["burgershot_frozenrings"] = {
        label = "Donmuş Halka",
        weight = 100,
        stack = true,
        close = true,
        description = "Frozen Rings",
        client = {
            image = "burgershot_frozenrings.png"
        }
    },

    ["obezmenu"] = {
        label = "Obez Menü",
        weight = 100,
        stack = false,
        close = true,
        description = "Obezseniz tam size göre!",
        client = {
            image = "obezmenu.png"
        }
    },

    ["bakingsoda"] = {
        label = "Karbonat",
        weight = 1500,
        stack = true,
        close = false,
        description = "Household Baking Soda!",
        client = {
            image = "bakingsoda.png"
        }
    },

    ["butter"] = {
        label = "Tereyağı",
        weight = 125,
        stack = true,
        close = true,
        description = "Smooth like butter, like a criminal undercover~",
        client = {
            image = "butter.png"
        }
    },

    ["burgershot_smallemptyglass"] = {
        label = "Küçük Boy Boş Bardak",
        weight = 100,
        stack = true,
        close = true,
        description = "Small Size Empty Glass",
        client = {
            image = "burgershot_smallemptyglass.png"
        }
    },

    ["peyote"] = {
        label = "Peyote",
        weight = 200,
        stack = true,
        close = true,
        description = "Peyote",
        client = {
            image = "peyote.png"
        }
    },

    ["chair101"] = {
        label = "Siyah Dekor Sandalye",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair101.png"
        }
    },

    ["divingsuit"] = {
        label = "Dalış Kıyafeti",
        weight = 1,
        stack = false,
        close = true,
        description = "Diving suit and oxygen cylinder",
        client = {
            image = "divingsuit.png"
        }
    },

    ["burgershot_colas"] = {
        label = "Küçük Boy Cola",
        weight = 100,
        stack = true,
        close = true,
        description = "Small Size Cola",
        client = {
            image = "burgershot_colas.png"
        }
    },

    ["bchocolatemuffin"] = {
        label = "Çikolatalı Muffin",
        weight = 1000,
        stack = false,
        close = true,
        description = "Chocolate Muffin",
        degrade = 2880,
        client = {
            image = "bchocolatemuffin.png"
        }
    },

    ["green_phone"] = {
        label = "Yeşil İphone 14",
        weight = 700,
        stack = false,
        close = true,
        description = "They say that Quasar Smartphone is the same as an iPhone, what do you think?",
        client = {
            image = "green_phone.png"
        }
    },

    ["bapple"] = {
        label = "Apple",
        weight = 1000,
        stack = true,
        close = true,
        description = "Red Apple",
        client = {
            image = "bapple.png"
        }
    },

    ["burgershot_ubeicecream"] = {
        label = "Ube Dondurma",
        weight = 100,
        stack = true,
        close = true,
        description = "Ube Ice Cream",
        client = {
            image = "burgershot_ubeicecream.png"
        }
    },

    ["chair_2"] = {
        label = "Sandalye",
        weight = 500,
        stack = true,
        close = true,
        description = "Chair",
        client = {
            image = "chair_2.png"
        }
    },

    ["burgershot_frozenmeat"] = {
        label = "Donmuş Köfte",
        weight = 100,
        stack = true,
        close = true,
        description = "Frozen Meat",
        client = {
            image = "burgershot_frozenmeat.png"
        }
    },

    ["pacote-farinha"] = {
        label = "Un",
        weight = 150,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "farinha.png"
        }
    },

    ["greenlight_phone"] = {
        label = "Açık Yeşil İphone 14",
        weight = 700,
        stack = false,
        close = true,
        description = "They say that Quasar Smartphone is the same as an iPhone, what do you think?",
        client = {
            image = "greenlight_phone.png"
        }
    },

    ["frango"] = {
        label = "Tavuk",
        weight = 150,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "frango.png"
        }
    },

    ["chair75"] = {
        label = "Meşe Sandalye",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair75.png"
        }
    },

    ["chair60"] = {
        label = "Kahverengi Ofis Koltuğu",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair60.png"
        }
    },

    ["kevlar"] = {
        label = "Zırh Hammadde",
        weight = 100,
        stack = true,
        close = true,
        description = "Craft Malzemesi",
        client = {
            image = "kevlar.png"
        }
    },

    ["irishpub_chocolate"] = {
        label = "Chocolate",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "irishpub_chocolate.png"
        }
    },

    ["chair68"] = {
        label = "Beyaz Metal Yemek Sandalyesi2",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair68.png"
        }
    },

    ["irishpub_island_fantasy"] = {
        label = "Island Fantasy",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "irishpub_island_fantasy.png"
        }
    },

    ["rim"] = {
        label = "Rim",
        weight = 1,
        stack = true,
        close = true,
        description = "Rim",
        client = {
            image = "rim.png"
        }
    },

    ["kirikfener"] = {
        label = "Kırık Fener",
        weight = 100,
        stack = true,
        close = true,
        description = "Craft Malzemesi",
        client = {
            image = "kirikfener.png"
        }
    },

    ["bhoney"] = {
        label = "Bal",
        weight = 1000,
        stack = true,
        close = true,
        description = "Honey",
        client = {
            image = "bhoney.png"
        }
    },

    ["moneybag2"] = {
        label = "Kara Para Çantası",
        weight = 0,
        stack = true,
        close = true,
        description = "Para dolu bi çanta",
        client = {
            image = "moneybag.png"
        }
    },

    ["chair65"] = {
        label = "Şık Şezlong",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair65.png"
        }
    },

    ["coca_leaf"] = {
        label = "Kokain Yaprakları",
        weight = 1500,
        stack = true,
        close = false,
        description = "Cocaine leaves that must be processed !",
        client = {
            image = "coca_leaf.png"
        }
    },

    ["raw-ground-beef"] = {
        label = "Çiğ Kıyma",
        weight = 210,
        stack = true,
        close = true,
        description = "Ingredient",
        client = {
            image = "raw-ground-beef.png"
        }
    },

    ["burgershot_smallfrozenpotato"] = {
        label = "Küçük Boy Donmuş Patates",
        weight = 100,
        stack = true,
        close = true,
        description = "Small Size Frozen Potato",
        client = {
            image = "burgershot_smallfrozenpotato.png"
        }
    },

    ["burgershot_meat"] = {
        label = "Köfte",
        weight = 100,
        stack = true,
        close = true,
        description = "Meat",
        client = {
            image = "burgershot_meat.png"
        }
    },

    ["redpearl"] = {
        label = "Kırmızı İnci",
        weight = 50,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "redpearl.png"
        }
    },

    ["ground-beef"] = {
        label = "Kıyma",
        weight = 210,
        stack = true,
        close = true,
        description = "Ingredient",
        client = {
            image = "ground-beef.png"
        }
    },

    ["cheddar-cheese"] = {
        label = "Cheddar Peyniri",
        weight = 125,
        stack = true,
        close = true,
        description = "Ingredient",
        client = {
            image = "cheddar-cheese.png"
        }
    },

    ["chair100"] = {
        label = "Mavi Metal Sandalye",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair100.png"
        }
    },

    ["chair47"] = {
        label = "Siyah Hasır Sandalye",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair47.png"
        }
    },

    ["bonitosfish"] = {
        label = "Palamut",
        weight = 50,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "bonitosfish.png"
        }
    },

    ["chair24"] = {
        label = "Eski Beyaz Sandalye",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair24.png"
        }
    },

    ["tyre_motorcycle"] = {
        label = "Tyre Motorcycle",
        weight = 1,
        stack = true,
        close = true,
        description = "A tyre",
        client = {
            image = "tyre_motorcycle.png"
        }
    },

    ["chair76"] = {
        label = "Siyah Dekor Sandalye",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair76.png"
        }
    },

    ["bstrawberryvanillaoatlatte"] = {
        label = "Strawberry Vanilla Oat Latte",
        weight = 1000,
        stack = false,
        close = true,
        description = "Strawberry Vanilla Oat Latte",
        client = {
            image = "bstrawberryvanillaoatlatte.png"
        }
    },

    ["irishpub_strawberry"] = {
        label = "Strawberry",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "irishpub_strawberry.png"
        }
    },

    ["chair45"] = {
        label = "Koyu Kahverengi Yemek Sandalyesi",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair45.png"
        }
    },

    ["burgershot_bagsmall"] = {
        label = "Küçük Boy Paket",
        weight = 100,
        stack = true,
        close = true,
        description = "1x Bleeder Burger, 1x Small Size Cola, 1x Small Size Patato",
        client = {
            image = "burgershot_bagsmall.png"
        }
    },

    ["chair58"] = {
        label = "Zebra Desenli Kanepe",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair58.png"
        }
    },

    ["tq_chocolate_cake"] = {
        label = "Çikolatalı Pasta",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "yellow_jacket_cakes.png"
        }
    },

    ["chair34"] = {
        label = "Kırmızı Ofis Koltuğu",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair34.png"
        }
    },

    ["burgershot_patatob"] = {
        label = "Büyük Boy Patates",
        weight = 100,
        stack = true,
        close = true,
        description = "Big Size Patato",
        client = {
            image = "burgershot_patatob.png"
        }
    },

    ["wet_pink_phone"] = {
        label = "Wet Pink Phone",
        weight = 700,
        stack = false,
        close = true,
        description = "They say that Quasar Smartphone is the same as an iPhone, what do you think?",
        client = {
            image = "wet_pink_phone.png"
        }
    },

    ["cooked_chicken"] = {
        label = "Kızarmış Tavuk",
        weight = 500,
        stack = false,
        close = true,
        description = "Can be eaten",
        client = {
            image = "cooked_chicken.png"
        }
    },

    ["weedplant_seedm"] = {
        label = "Erkek Esrar Tohumu",
        weight = 0,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "weedplant_seed.png"
        }
    },

    ["jant"] = {
        label = "Jant",
        weight = 1500,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "jant.png"
        }
    },

    ["kiriksusturucu"] = {
        label = "Kırık Susturucu",
        weight = 100,
        stack = true,
        close = true,
        description = "Craft Malzemesi",
        client = {
            image = "kiriksusturucu.png"
        }
    },

    ["meatrabbit"] = {
        label = "Tavşan Kürkü",
        weight = 100,
        stack = true,
        close = false,
        description = "Rabbit Fur",
        client = {
            image = "rabbitfur.png"
        }
    },

    ["chair104"] = {
        label = "Mavi Metal Yemek Sandalyesi",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair104.png"
        }
    },

    ["chair52"] = {
        label = "Aşınmış Metal Sandalye",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair52.png"
        }
    },

    ["plant_tub"] = {
        label = "Saksı",
        weight = 1000,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "plant_tub.png"
        }
    },

    ["bcocacola"] = {
        label = "CocaCola",
        weight = 1000,
        stack = true,
        close = true,
        description = "Cup Fill With Cocacola",
        client = {
            image = "bcocacola.png"
        }
    },

    ["rope"] = {
        label = "Halat",
        weight = 1,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "rope.png"
        }
    },

    ["tq_watermelon"] = {
        label = "Karpuz",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "tq_watermelon.png"
        }
    },

    ["radyo"] = {
        label = "Radyo",
        weight = 200,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "radyo.png"
        }
    },

    ["popularpaket"] = {
        label = "Popular Paket",
        weight = 100,
        stack = false,
        close = true,
        description = "",
        client = {
            image = "menu.png"
        }
    },

    ["bmenu"] = {
        label = "Bean Machine Menu",
        weight = 1000,
        stack = true,
        close = true,
        description = "Menu",
        client = {
            image = "bmenu.png"
        }
    },

    ["burgershot_shotnuggets"] = {
        label = "Shot Nugget",
        weight = 100,
        stack = false,
        close = true,
        description = "Shot Nuggets",
        degrade = 2880,
        client = {
            image = "burgershot_shotnuggets.png"
        }
    },

    ["beef-burrito"] = {
        label = "Et Burrito",
        weight = 250,
        stack = false,
        close = true,
        description = "Mis gibi taco!",
        client = {
            image = "beef-burrito.png"
        }
    },

    ["chemicals"] = {
        label = "Kimyasallar",
        weight = 1500,
        stack = true,
        close = false,
        description = "Chemicals, handle with care...",
        client = {
            image = "chemicals.png"
        }
    },

    ["burgershot_cheddar"] = {
        label = "Çedar",
        weight = 100,
        stack = true,
        close = true,
        description = "Cheddar",
        client = {
            image = "burgershot_cheddar.png"
        }
    },

    ["irishpub_ban_straw_juice"] = {
        label = "Banana & Strawberry Juice",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "irishpub_ban_straw_juice.png"
        }
    },

    ["chair88"] = {
        label = "Siyah Dekor Kanepe",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair88.png"
        }
    },

    ["tq_strawberry"] = {
        label = "Çilek",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "tq_strawberry.png"
        }
    },

    ["chair37"] = {
        label = "Koyu Kahverengi Yemek Sandalyesi",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair37.png"
        }
    },

    ["blue_phone"] = {
        label = "Mavi İphone 14",
        weight = 700,
        stack = false,
        close = true,
        description = "They say that Quasar Smartphone is the same as an iPhone, what do you think?",
        client = {
            image = "blue_phone.png"
        }
    },

    ["trimming_scissors"] = {
        label = "Makas",
        weight = 1500,
        stack = true,
        close = false,
        description = "Very Sharp Trimming Scissors",
        client = {
            image = "trimming_scissors.png"
        }
    },

    ["chair84"] = {
        label = "Turuncu Deko Kanepe",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair84.png"
        }
    },

    ["meatboar"] = {
        label = "Domuz Dişi",
        weight = 100,
        stack = true,
        close = false,
        description = "Boar Tusks",
        client = {
            image = "boartusks.png"
        }
    },

    ["irishpub_kiwi_juice"] = {
        label = "Kiwi Juice",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "irishpub_kiwi_juice.png"
        }
    },

    ["hydrochloric_acid"] = {
        label = "Hidroklorik Asit",
        weight = 1500,
        stack = true,
        close = true,
        description = "Chemicals, handle with care!",
        client = {
            image = "hydrochloric_acid.png"
        }
    },

    ["wet_black_phone"] = {
        label = "Wet Black Phone",
        weight = 700,
        stack = false,
        close = true,
        description = "Did you really think that swimming in the ocean with your phone was a good idea?",
        client = {
            image = "wet_black_phone.png"
        }
    },

    ["beerkeg"] = {
        label = "Bira Fıçısı - 30L- Full",
        weight = 750,
        stack = true,
        close = true,
        description = "Beer keg with lot of beers!",
        client = {
            image = "beerkeg.png"
        }
    },

    ["cupcake-limao"] = {
        label = "Limonlu Cupkek",
        weight = 100,
        stack = false,
        close = true,
        description = "",
        degrade = 2880,
        client = {
            image = "cuplimao.png"
        }
    },

    ["tyre_sport"] = {
        label = "Tyre Sport",
        weight = 1,
        stack = true,
        close = true,
        description = "A tyre",
        client = {
            image = "tyre_sport.png"
        }
    },

    ["empty_watering_can"] = {
        label = "Boş Sulama Kabı",
        weight = 500,
        stack = false,
        close = true,
        description = "Su Şişesiyle doldurabilirsin.",
        client = {
            image = "watering_can.png"
        }
    },

    ["chair44"] = {
        label = "Eski Şık Yemek Sandalyesi",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair44.png"
        }
    },

    ["chair81"] = {
        label = "Mavi Dekor Sandalye",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair81.png"
        }
    },

    ["c4_bomb"] = {
        label = "C4 Bomba",
        weight = 1000,
        stack = false,
        close = true,
        description = "A high-yield, timed explosive device",
        client = {
            image = "weapon_stickybomb.png"
        }
    },

    ["bjavachipfrappuccino"] = {
        label = "Java Chip Frappuccino",
        weight = 1000,
        stack = true,
        close = true,
        description = "Java Chip Frappuccino",
        client = {
            image = "bjavachipfrappuccino.png"
        }
    },

    ["burgershot_goatwrap"] = {
        label = "Goat Wrap",
        weight = 100,
        stack = true,
        close = true,
        description = "Goat Wrap",
        client = {
            image = "burgershot_goatwrap.png"
        }
    },

    ["gold_phone"] = {
        label = "Altın İphone 14",
        weight = 700,
        stack = false,
        close = true,
        description = "They say that Quasar Smartphone is the same as an iPhone, what do you think?",
        client = {
            image = "gold_phone.png"
        }
    },

    ["burgershot_chocolateicecream"] = {
        label = "Çikolatalı Dondurma",
        weight = 100,
        stack = true,
        close = true,
        description = "Chocolate Ice Cream",
        client = {
            image = "burgershot_chocolateicecream.png"
        }
    },

    ["wet_greenlight_phone"] = {
        label = "Wet Green Light Phone",
        weight = 700,
        stack = false,
        close = true,
        description = "They say that Quasar Smartphone is the same as an iPhone, what do you think?",
        client = {
            image = "wet_greenlight_phone.png"
        }
    },

    ["tq_chocolatecup"] = {
        label = "Çikolatalı Kapkek",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "yellow_jacket_cakes.png"
        }
    },

    ["tq_coffee"] = {
        label = "Kahve",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "coffee.png"
        }
    },

    ["tq_strawberry_juice"] = {
        label = "Çilekli Meyvesuyu",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "coffee.png"
        }
    },

    ["irishpub_banana"] = {
        label = "Banana",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "irishpub_banana.png"
        }
    },

    ["sponge"] = {
        label = "Deniz Süngeri",
        weight = 1,
        stack = true,
        close = true,
        description = "Sponge",
        client = {
            image = "sponge.png"
        }
    },

    ["tyre_highend"] = {
        label = "Tyre Highend",
        weight = 1,
        stack = true,
        close = true,
        description = "A tyre",
        client = {
            image = "tyre_highend.png"
        }
    },

    ["pastel-frango"] = {
        label = "Kızarmış Peynir",
        weight = 100,
        stack = false,
        close = true,
        description = "",
        client = {
            image = "pfrango.png"
        }
    },

    ["chair73"] = {
        label = "Koyu Kahve Ahşap Sandalye",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair73.png"
        }
    },

    ["rentalpapers"] = {
        label = "Kiralama Kontratı",
        weight = 50,
        stack = false,
        close = false,
        description = "",
        client = {
            image = "rentalpapers.png"
        }
    },

    ["chair93"] = {
        label = "Kahverengi Lüks Ofis Koltuğu",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair93.png"
        }
    },

    ["chair14"] = {
        label = "Beyaz Deri Sandalye",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair14.png"
        }
    },

    ["chair48"] = {
        label = "Kahverengi Metal Yemek Sandalyesi",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair48.png"
        }
    },

    ["fob_racing_master"] = {
        label = "Usta Tableti",
        weight = 500,
        stack = false,
        close = true,
        description = "Yarış oluşturmayı sağlayan tablet.",
        client = {
            image = "fob_racing_master.png"
        }
    },

    ["pnapollitano"] = {
        label = "Napollitano Pizza",
        weight = 1000,
        stack = true,
        close = true,
        description = "",
        degrade = 2880,
        client = {
            image = "pnapollitano.png"
        }
    },

    ["thermite_h"] = {
        label = "Thermite",
        weight = 1000,
        stack = false,
        close = true,
        description = "A low-yield thermite charge..",
        client = {
            image = "thermite_h.png"
        }
    },

    ["weedplant_weed"] = {
        label = "Kurutulmuş Esrar",
        weight = 100,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "weedplant_weed.png"
        }
    },

    ["ziptie"] = {
        label = "Plastik Kelepçe",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "ziptie.png"
        }
    },

    ["burgershot_toy3"] = {
        label = "Burger Shot Oyuncak",
        weight = 100,
        stack = false,
        close = true,
        description = "Burger Shot Toy",
        client = {
            image = "burgershot_toy3.png"
        }
    },

    ["bhotchoc"] = {
        label = "Sıcak Çikolata",
        weight = 1000,
        stack = false,
        close = true,
        description = "Hot Choc",
        client = {
            image = "bhotchoc.png"
        }
    },

    ["tyre_street"] = {
        label = "Tyre Street",
        weight = 1,
        stack = true,
        close = true,
        description = "A tyre",
        client = {
            image = "tyre_street.png"
        }
    },

    ["chair32"] = {
        label = "Lüks Ofis Koltuğu",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair32.png"
        }
    },

    ["pvegpizza"] = {
        label = "Vejeteryan Pizza",
        weight = 1000,
        stack = true,
        close = true,
        description = "",
        degrade = 2880,
        client = {
            image = "pvegpizza.png"
        }
    },

    ["chair108"] = {
        label = "Beyaz Kumarhane Sandalyesi",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair108.png"
        }
    },

    ["aracparcalari"] = {
        label = "Araç Parçaları",
        weight = 3000,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "aracparcalari.png"
        }
    },

    ["telefon"] = {
        label = "Nokia 3310",
        weight = 100,
        stack = false,
        close = false,
        description = "",
        client = {
            image = "telefon.png"
        }
    },

    ["tyre_bennys"] = {
        label = "Tyre Bennys",
        weight = 1,
        stack = true,
        close = true,
        description = "A tyre",
        client = {
            image = "tyre_bennys.png"
        }
    },

    ["wet_classic_phone"] = {
        label = "Wet Classic Phone",
        weight = 700,
        stack = false,
        close = true,
        description = "Did you really think that swimming in the ocean with your phone was a good idea?",
        client = {
            image = "wet_classic_phone.png"
        }
    },

    ["chair74"] = {
        label = "Sarı Dekor Sandalye",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair74.png"
        }
    },

    ["chair71"] = {
        label = "Kahverengi Şezlong",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair71.png"
        }
    },

    ["barra-chocolate"] = {
        label = "Çikolata",
        weight = 150,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chocolate.png"
        }
    },

    ["pacote-natas"] = {
        label = "Krema Paketi",
        weight = 150,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "natas.png"
        }
    },

    ["tekila"] = {
        label = "Tekila",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "tekila.png"
        }
    },

    ["pacote-oreo"] = {
        label = "Oreo Paketi",
        weight = 150,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "oreo.png"
        }
    },

    ["burgershot_smurfetteicecream"] = {
        label = "Şirine Dondurma",
        weight = 100,
        stack = true,
        close = true,
        description = "Smurfette Ice Cream",
        client = {
            image = "burgershot_smurfetteicecream.png"
        }
    },

    ["black_phone"] = {
        label = "Siyah İphone 14",
        weight = 700,
        stack = false,
        close = true,
        description = "They say that Quasar Smartphone is the same as an iPhone, what do you think?",
        client = {
            image = "black_phone.png"
        }
    },

    ["paintinge"] = {
        label = "Değerli Resim 6",
        weight = 200,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "tablo.png"
        }
    },

    ["sodium_hydroxide"] = {
        label = "Sodyum Hidroksit",
        weight = 1500,
        stack = true,
        close = true,
        description = "Chemicals, handle with care!",
        client = {
            image = "sodium_hydroxide.png"
        }
    },

    ["tq_coffee_heart"] = {
        label = "Latte",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "latte.png"
        }
    },

    ["beef-taco"] = {
        label = "Taco",
        weight = 250,
        stack = false,
        close = true,
        description = "Mis gibi taco!",
        client = {
            image = "beef-taco.png"
        }
    },

    ["irishpub_coffee_heart"] = {
        label = "Coffee Heart",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "irishpub_coffee_heart.png"
        }
    },

    ["chair26"] = {
        label = "Mavi Plastik Sandalye",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair26.png"
        }
    },

    ["wet_white_phone"] = {
        label = "Wet White Phone",
        weight = 700,
        stack = false,
        close = true,
        description = "They say that Quasar Smartphone is the same as an iPhone, what do you think?",
        client = {
            image = "wet_white_phone.png"
        }
    },

    ["sexon"] = {
        label = "Sex On The Beach",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "sexon.png"
        }
    },

    ["kaput"] = {
        label = "Kaput",
        weight = 2000,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "kaput.png"
        }
    },

    ["syphoningkit"] = {
        label = "Benzin Çekme Kiti",
        weight = 5000,
        stack = false,
        close = false,
        description = "A kit made to siphon gasoline from vehicles.",
        client = {
            image = "syphoningkit.png"
        }
    },

    ["seashell"] = {
        label = "Deniz Kabuğu",
        weight = 1,
        stack = true,
        close = true,
        description = "Seashell",
        client = {
            image = "seashell.png"
        }
    },

    ["chair29"] = {
        label = "Mavi Ofis Koltuğu",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair29.png"
        }
    },

    ["jerrycan"] = {
        label = "Benzin Bidonu",
        weight = 15000,
        stack = false,
        close = false,
        description = "A Jerry Can made to hold gasoline.",
        client = {
            image = "jerrycan.png"
        }
    },

    ["methkey"] = {
        label = "M Anahtar",
        weight = 200,
        stack = true,
        close = false,
        description = "Random Key, with \"Walter\" Engraved on the Back...",
        client = {
            image = "keya.png"
        }
    },

    ["tyre_suv"] = {
        label = "Tyre Suv",
        weight = 1,
        stack = true,
        close = true,
        description = "A tyre",
        client = {
            image = "tyre_suv.png"
        }
    },

    ["chair_3"] = {
        label = "Sandalye",
        weight = 500,
        stack = true,
        close = true,
        description = "Chair",
        client = {
            image = "chair_3.png"
        }
    },

    ["bberrymuffin"] = {
        label = "Böğürtlenli Muffin",
        weight = 1000,
        stack = false,
        close = true,
        description = "Berry Muffin",
        degrade = 2880,
        client = {
            image = "bberrymuffin.png"
        }
    },

    ["chair31"] = {
        label = "Siyah Ofis Koltuğu",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair31.png"
        }
    },

    ["tq_cheese"] = {
        label = "Peynir",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "cheese_cubes.png"
        }
    },

    ["borangeslush"] = {
        label = "Orange Slush",
        weight = 1000,
        stack = true,
        close = true,
        description = "Cup Fill With Orange Slush",
        client = {
            image = "borangeslush.png"
        }
    },

    ["poppyresin"] = {
        label = "Haşhaş Reçinesi",
        weight = 2000,
        stack = true,
        close = false,
        description = "It sticks to your fingers when you handle it.",
        client = {
            image = "poppyresin.png"
        }
    },

    ["graos-cafe"] = {
        label = "Kahve Çekirdekleri",
        weight = 150,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "graoscafe.png"
        }
    },

    ["chair12"] = {
        label = "2.El Kahverengi Ofis Koltuğu",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair12.png"
        }
    },

    ["caixa-amoras"] = {
        label = "Böğürtlen Kutusu",
        weight = 150,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "amoras.png"
        }
    },

    ["licenseplate"] = {
        label = "Plaka",
        weight = 1,
        stack = false,
        close = false,
        description = "Bir araca ait plaka",
        client = {
            image = "licenseplate.png"
        }
    },

    ["pmushroomspizza"] = {
        label = "Mantarlı Pizza",
        weight = 1000,
        stack = true,
        close = true,
        description = "",
        degrade = 2880,
        client = {
            image = "pmushroomspizza.png"
        }
    },

    ["perch"] = {
        label = "Levrek",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "perch.png"
        }
    },

    ["tq_coconut"] = {
        label = "Hindistan Cevizi",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "tq_coconut.png"
        }
    },

    ["burgershot_macaroon"] = {
        label = "Makaron",
        weight = 100,
        stack = true,
        close = true,
        description = "Macaroon",
        client = {
            image = "burgershot_macaroon.png"
        }
    },

    ["chair17"] = {
        label = "Yeşil Kanepe",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair17.png"
        }
    },

    ["gelado-morango"] = {
        label = "Çilekli Dondurma",
        weight = 100,
        stack = false,
        close = true,
        description = "",
        degrade = 2880,
        client = {
            image = "gemorango.png"
        }
    },

    ["chair78"] = {
        label = "Şarap Kırmızısı Sandalye",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair78.png"
        }
    },

    ["chair33"] = {
        label = "Siyah Rahat Ofis Koltuğu",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair33.png"
        }
    },

    ["irishpub_just_peachy"] = {
        label = "Just Peachy",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "irishpub_just_peachy.png"
        }
    },

    ["burgershot_colab"] = {
        label = "Büyük Boy Cola",
        weight = 100,
        stack = false,
        close = true,
        description = "Big Size Cola",
        degrade = 2880,
        client = {
            image = "burgershot_colab.png"
        }
    },

    ["chair92"] = {
        label = "Kahverengi Kanepe",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair92.png"
        }
    },

    ["burgershot_toy6"] = {
        label = "Burger Shot Oyuncak",
        weight = 100,
        stack = false,
        close = true,
        description = "Burger Shot Toy",
        client = {
            image = "burgershot_toy6.png"
        }
    },

    ["tq_strawberrycup"] = {
        label = "Çilekli Kapkek",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "yellow_jacket_cakes.png"
        }
    },

    ["bhoneyhazelnutoatlatte"] = {
        label = "Ballı Fındıklı Latte",
        weight = 1000,
        stack = false,
        close = true,
        description = "Honey Hazelnut Oat Latte",
        degrade = 2880,
        client = {
            image = "bhoneyhazelnutoatlatte.png"
        }
    },

    ["basinkarti"] = {
        label = "basin karti",
        weight = 0,
        stack = false,
        close = true,
        description = "Type of this ID card: basin karti",
        client = {
            image = "basinkarti.png"
        }
    },

    ["chicken-burrito"] = {
        label = "Tavuk Burrito",
        weight = 250,
        stack = false,
        close = true,
        description = "Mis gibi taco!",
        client = {
            image = "chicken-burrito.png"
        }
    },

    ["sharkfish"] = {
        label = "Köpek Balığı",
        weight = 50,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "sharkfish.png"
        }
    },

    ["bubble-amora"] = {
        label = "Böğürtlenli Bubble Tea",
        weight = 100,
        stack = false,
        close = true,
        description = "",
        degrade = 2880,
        client = {
            image = "btamora.png"
        }
    },

    ["chemicalvapor"] = {
        label = "Kimyasal Varil",
        weight = 1500,
        stack = true,
        close = false,
        description = "High Pressure Chemical Vapors, Explosive!",
        client = {
            image = "chemicalvapor.png"
        }
    },

    ["chair35"] = {
        label = "Ergonomik Ofis Koltuğu",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair35.png"
        }
    },

    ["chair23"] = {
        label = "Şık Beyaz Yemek Sandalyesi",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair23.png"
        }
    },

    ["lobster"] = {
        label = "Istakoz",
        weight = 1,
        stack = true,
        close = true,
        description = "lobster",
        client = {
            image = "lobster.png"
        }
    },

    ["meatlion"] = {
        label = "Puma Pençesi",
        weight = 100,
        stack = true,
        close = false,
        description = "Cougar Claw",
        client = {
            image = "cougarclaw.png"
        }
    },

    ["burgershot_shotrings"] = {
        label = "Shot Halka",
        weight = 100,
        stack = false,
        close = true,
        description = "Shot Rings",
        degrade = 2880,
        client = {
            image = "burgershot_shotrings.png"
        }
    },

    ["bstrawberry"] = {
        label = "Çilek",
        weight = 1000,
        stack = true,
        close = true,
        description = "Strawberry",
        client = {
            image = "bstrawberry.png"
        }
    },

    ["lsd"] = {
        label = "LSD",
        weight = 500,
        stack = true,
        close = false,
        description = "Lets get this party started!",
        client = {
            image = "lsd.png"
        }
    },

    ["milkshake"] = {
        label = "Milkshake",
        weight = 500,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "milkshake.png"
        }
    },

    ["chair99"] = {
        label = "Oyuncu Koltuğu",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair99.png"
        }
    },

    ["irishpub_banana_juice"] = {
        label = "Banana Juice",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "irishpub_banana_juice.png"
        }
    },

    ["basinkartzarfi"] = {
        label = "Basın Kartı Zarfı",
        weight = 0,
        stack = true,
        close = false,
        description = "İçinden ne çıkacak acaba?",
        client = {
            image = "security_card_02.png"
        }
    },

    ["tortilla-chips"] = {
        label = "Tortilla Cipsi",
        weight = 150,
        stack = true,
        close = true,
        description = "Ingredient",
        client = {
            image = "tortilla-chips.png"
        }
    },

    ["wet_red_phone"] = {
        label = "Wet Red Phone",
        weight = 700,
        stack = false,
        close = true,
        description = "Did you really think that swimming in the ocean with your phone was a good idea?",
        client = {
            image = "wet_red_phone.png"
        }
    },

    ["collegeofcoastv"] = {
        label = "Öğrenci Kartı",
        weight = 0,
        stack = false,
        close = true,
        description = "COLLEGE OF COASTV ÖĞRENCİ KARTI",
        client = {
            image = "security_card_02.png"
        }
    },

    ["chair42"] = {
        label = "Kahverengi Metal Sandalye",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair42.png"
        }
    },

    ["isletmeruhsati"] = {
        label = "İşletme Ruhsatı",
        weight = 0,
        stack = false,
        close = true,
        description = "İşletme Ruhsatı",
        client = {
            image = "id_card.png"
        }
    },

    ["quesadilla"] = {
        label = "Quesadilla",
        weight = 250,
        stack = false,
        close = true,
        description = "Mis gibi taco!",
        client = {
            image = "quesadilla.png"
        }
    },

    ["airpods"] = {
        label = "AirPods",
        weight = 200,
        stack = false,
        close = false,
        description = "",
        client = {
            image = "airpods.png"
        }
    },

    ["chair53"] = {
        label = "Fantezi Bahçe Sandalyesi",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair53.png"
        }
    },

    ["rope2"] = {
        label = "Halat",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "rope.png"
        }
    },

    ["tyre_f1"] = {
        label = "Tyre F1",
        weight = 1,
        stack = true,
        close = true,
        description = "A tyre",
        client = {
            image = "tyre_f1.png"
        }
    },

    ["policegunrack"] = {
        label = "Police Gun Rack",
        weight = 15000,
        stack = true,
        close = true,
        description = "Gun rack for police vehicles",
        client = {
            image = "policegunrack.png"
        }
    },

    ["burgershot_bagbig"] = {
        label = "Büyük Boy Paket",
        weight = 100,
        stack = true,
        close = true,
        description = "1x Big King, 1x Big Size Cola, 1x Big Size Patato",
        client = {
            image = "burgershot_bagbig.png"
        }
    },

    ["chair110"] = {
        label = "Siyah Metal Yemek Sandalyesi",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair110.png"
        }
    },

    ["greenpearl"] = {
        label = "Yeşil İnci",
        weight = 50,
        stack = false,
        close = true,
        description = "",
        client = {
            image = "greenpearl.png"
        }
    },

    ["chair61"] = {
        label = "Krem Sandalye",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair61.png"
        }
    },

    ["bcoldbrewlatte"] = {
        label = "Cold Brew Latte",
        weight = 1000,
        stack = false,
        close = true,
        description = "Cold Brew Latte",
        degrade = 2880,
        client = {
            image = "bcoldbrewlatte.png"
        }
    },

    ["chair51"] = {
        label = "Yeşil Çim Sandalye",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair51.png"
        }
    },

    ["latte-uwu"] = {
        label = "Latte",
        weight = 100,
        stack = false,
        close = true,
        description = "",
        degrade = 2880,
        client = {
            image = "latte.png"
        }
    },

    ["soganhalkasi"] = {
        label = "Soğan Halkası",
        weight = 100,
        stack = false,
        close = true,
        description = "",
        degrade = 2880,
        client = {
            image = "soganhalkasi.png"
        }
    },

    ["pattatotab"] = {
        label = "Patates Kovası",
        weight = 100,
        stack = false,
        close = true,
        description = "",
        degrade = 2880,
        client = {
            image = "pattatotab.png"
        }
    },

    ["pmisir"] = {
        label = "Patates Kovası",
        weight = 100,
        stack = false,
        close = true,
        description = "",
        degrade = 2880,
        client = {
            image = "pmisir.png"
        }
    },

    ["nuggetk"] = {
        label = "Patates Kovası",
        weight = 100,
        stack = false,
        close = true,
        description = "",
        degrade = 2880,
        client = {
            image = "nuggetk.png"
        }
    },

    ["broken_handcuffs"] = {
        label = "Kırık Kelepçe",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "broken_handcuffs.png"
        }
    },

    ["chair103"] = {
        label = "Yeşil Metal Yemek Sandalyesi",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair103.png"
        }
    },

    ["bespressomacchiato"] = {
        label = "Espresso Macchiato",
        weight = 1000,
        stack = false,
        close = true,
        description = "Espresso Macchiato",
        degrade = 2880,
        client = {
            image = "bespressomacchiato.png"
        }
    },

    ["chair106"] = {
        label = "Mor Dekor Sandalye",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair106.png"
        }
    },

    ["mojito"] = {
        label = "Mojito",
        weight = 500,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "mojito.png"
        }
    },

    ["bespresso"] = {
        label = "Espresso",
        weight = 1000,
        stack = false,
        close = true,
        description = "Espresso",
        degrade = 2880,
        client = {
            image = "bespresso.png"
        }
    },

    ["gelado-chocolate"] = {
        label = "Çikolatalı Dondurma",
        weight = 100,
        stack = false,
        close = true,
        description = "",
        degrade = 2880,
        client = {
            image = "gechocolate.png"
        }
    },

    ["weed"] = {
        label = "Esrar",
        weight = 100,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "weedplant_weed.png"
        }
    },

    ["tq_cocktail"] = {
        label = "Kokteyl",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "cocktailglass.png"
        }
    },

    ["chair19"] = {
        label = "Beyaz Yemek Sandalyesi",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair19.png"
        }
    },

    ["irishpub_strawberry_juice"] = {
        label = "Strawberry Juice",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "irishpub_strawberry_juice.png"
        }
    },

    ["bregularcup"] = {
        label = "Regular Cup",
        weight = 1000,
        stack = true,
        close = true,
        description = "Regular Cup",
        client = {
            image = "bregularcup.png"
        }
    },

    ["irishpub_milk"] = {
        label = "Milk",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "irishpub_milk.png"
        }
    },

    ["panqueca-oreo"] = {
        label = "Oreolu Pankek",
        weight = 100,
        stack = false,
        close = true,
        description = "",
        degrade = 2880,
        client = {
            image = "paoreo.png"
        }
    },

    ["plaka"] = {
        label = "Plaka",
        weight = 200,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "plaka.png"
        }
    },

    ["irishpub_coconut"] = {
        label = "Coconut",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "irishpub_coconut.png"
        }
    },

    ["chair105"] = {
        label = "Hafif Malzeme Yemek Sandalyesi",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair105.png"
        }
    },

    ["irishpub_caramel"] = {
        label = "Caramel",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "irishpub_caramel.png"
        }
    },

    ["full_watering_can"] = {
        label = "Dolu Sulama Kabı",
        weight = 1000,
        stack = false,
        close = false,
        description = "",
        client = {
            image = "watering_can.png"
        }
    },

    ["meatpig"] = {
        label = "Domuz Eti",
        weight = 100,
        stack = true,
        close = false,
        description = "Pig Meat",
        client = {
            image = "pigpelt.png"
        }
    },

    ["pantfish"] = {
        label = "Pantolon Balığı",
        weight = 50,
        stack = false,
        close = true,
        description = "",
        client = {
            image = "pantfish.png"
        }
    },

    ["burgershot_matchaicecream"] = {
        label = "Maça Dondurma",
        weight = 100,
        stack = true,
        close = true,
        description = "Matcha Ice Cream",
        client = {
            image = "burgershot_matchaicecream.png"
        }
    },

    ["bubble-morango"] = {
        label = "Çilekli Bubble Tea",
        weight = 100,
        stack = false,
        close = true,
        description = "",
        degrade = 2880,
        client = {
            image = "btmorango.png"
        }
    },

    ["meatcoyote"] = {
        label = "Çakal Postu",
        weight = 100,
        stack = true,
        close = false,
        description = "Coyote Pelt",
        client = {
            image = "coyotepelt.png"
        }
    },

    ["kizartma"] = {
        label = "Kızartma Tabağı",
        weight = 100,
        stack = false,
        close = true,
        description = "",
        degrade = 2880,
        client = {
            image = "kizartma.png"
        }
    },

    ["arkatampon"] = {
        label = "Arka Tampon",
        weight = 2000,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "arkatampon.png"
        }
    },

    ["weedplant_branch"] = {
        label = "Esrar Fidanı",
        weight = 1000,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "weedplant_branch.png"
        }
    },

    ["bdonut"] = {
        label = "Donut",
        weight = 1000,
        stack = false,
        close = true,
        description = "",
        degrade = 2880,
        client = {
            image = "bdonut.png"
        }
    },

    ["chair72"] = {
        label = "Gri Şezlong",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair72.png"
        }
    },

    ["tq_caramel"] = {
        label = "Karamel",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "tq_caramel.png"
        }
    },

    ["chicken"] = {
        label = "Tavuk",
        weight = 180,
        stack = true,
        close = true,
        description = "Ingredient",
        client = {
            image = "chicken.png"
        }
    },

    ["irishpub_berry_hydrating"] = {
        label = "Böğürtlenli İçecek",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "irishpub_berry_hydrating.png"
        }
    },

    ["pacote-acucar"] = {
        label = "Şeker Paketi",
        weight = 150,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "acucar.png"
        }
    },

    ["sugar-cubes"] = {
        label = "Küp Şeker",
        weight = 100,
        stack = true,
        close = true,
        description = "Ingredient",
        client = {
            image = "sugar-cubes.png"
        }
    },

    ["tyre_offroad"] = {
        label = "Tyre Offroad",
        weight = 1,
        stack = true,
        close = true,
        description = "A tyre",
        client = {
            image = "tyre_offroad.png"
        }
    },

    ["burgershot_patatos"] = {
        label = "Küçük Boy Patates",
        weight = 100,
        stack = true,
        close = true,
        description = "Small Size Patato",
        client = {
            image = "burgershot_patatos.png"
        }
    },

    ["mala_roupas"] = {
        label = "Kıyafet Çantası",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "mala_roupas.png"
        }
    },

    ["gelado-baunilha"] = {
        label = "Vanilyalı Dondurma",
        weight = 100,
        stack = false,
        close = true,
        description = "",
        degrade = 2880,
        client = {
            image = "gemorango.png"
        }
    },

    ["irishpub_water"] = {
        label = "Water",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "irishpub_water.png"
        }
    },

    ["shovel"] = {
        label = "Kürek",
        weight = 1,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "shovel.png"
        }
    },

    ["tq_kiwi"] = {
        label = "Kivi",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "tq_kiwi.png"
        }
    },

    ["chair80"] = {
        label = "Turuncu Koltuk",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair80.png"
        }
    },

    ["burgershot_bread"] = {
        label = "Ekmek",
        weight = 100,
        stack = true,
        close = true,
        description = "Bread",
        client = {
            image = "burgershot_bread.png"
        }
    },

    ["lsa"] = {
        label = "LSA",
        weight = 500,
        stack = true,
        close = false,
        description = "Almost ready to party...",
        client = {
            image = "lsa.png"
        }
    },

    ["cocainekey"] = {
        label = "K Anahtar",
        weight = 200,
        stack = true,
        close = false,
        description = "Random Key, with a \"Razorblade\" Engraved on the Back...",
        client = {
            image = "keyb.png"
        }
    },

    ["tq_orange_juice"] = {
        label = "Portakal Suyu",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "coffee.png"
        }
    },

    ["burgershot_icecreamcone"] = {
        label = "Külah",
        weight = 100,
        stack = true,
        close = true,
        description = "Cone",
        client = {
            image = "burgershot_icecreamcone.png"
        }
    },

    ["irishpub_sugar"] = {
        label = "Sugar",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "irishpub_sugar.png"
        }
    },

    ["chair66"] = {
        label = "Sarı Hasır Sandalye",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair66.png"
        }
    },

    ["skateboard"] = {
        label = "Kaykay",
        weight = 1,
        stack = false,
        close = true,
        description = "",
        client = {
            image = "skateboard.png"
        }
    },

    ["meatbird"] = {
        label = "Kuş Tüyü",
        weight = 100,
        stack = true,
        close = false,
        description = "Bird Feather",
        client = {
            image = "birdfeather.png"
        }
    },

    ["burgershot_unicornicecream"] = {
        label = "Tek Boynuzlu At Dondurma",
        weight = 100,
        stack = true,
        close = true,
        description = "Unicorn Ice Cream",
        client = {
            image = "burgershot_unicornicecream.png"
        }
    },

    ["chair46"] = {
        label = "Beyaz Yemek Sandalyesi",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair46.png"
        }
    },

    ["bcoffeebeans"] = {
        label = "Coffee Beans",
        weight = 1000,
        stack = true,
        close = true,
        description = "Coffee Beans",
        client = {
            image = "bcoffeebeans.png"
        }
    },

    ["methtray"] = {
        label = "Meth Tepsisi",
        weight = 200,
        stack = true,
        close = false,
        description = "make some meth",
        client = {
            image = "meth_tray.png"
        }
    },

    ["chair107"] = {
        label = "Kırmızı Dekor Sandalye",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair107.png"
        }
    },

    ["limao"] = {
        label = "Limon",
        weight = 150,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "limao.png"
        }
    },

    ["tq_cake"] = {
        label = "Pasta",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "yellow_jacket_cakes.png"
        }
    },

    ["tq_berry_hydrating"] = {
        label = "Böğürtlenli Kokteyl",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "tq_berry_hydrating.png"
        }
    },

    ["chair90"] = {
        label = "Beyaz Kanepe",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair90.png"
        }
    },

    ["chair79"] = {
        label = "Siyah Ofis Koltuğu",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair79.png"
        }
    },

    ["thionyl_chloride"] = {
        label = "Tiyonil Klorür",
        weight = 1500,
        stack = true,
        close = false,
        description = "Chemicals, handle with care!",
        client = {
            image = "thionyl_chloride.png"
        }
    },

    ["illegalfishbait"] = {
        label = "İllegal Balık Yemi",
        weight = 50,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "illegalFishBait.png"
        }
    },

    ["milkshake-chocolate"] = {
        label = "Çikolatalı Milkshake",
        weight = 100,
        stack = false,
        close = true,
        description = "",
        degrade = 2880,
        client = {
            image = "mschocolate.png"
        }
    },

    ["boombox"] = {
        label = "Boombox",
        weight = 5000,
        stack = false,
        close = true,
        description = "İstediğin yerde müzik dinle!",
        client = {
            image = "boombox.png"
        }
    },

    ["tq_milk"] = {
        label = "Süt",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "milk.png"
        }
    },

    ["headbag"] = {
        label = "Çuval",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "cuval.png"
        }
    },

    ["gazebo_2"] = {
        label = "Mavi Çardak",
        weight = 1000,
        stack = true,
        close = true,
        description = "Gazebo",
        client = {
            image = "gazebo_2.png"
        }
    },

    ["chicken-taco"] = {
        label = "Tavuk Taco",
        weight = 250,
        stack = false,
        close = true,
        description = "Mis gibi taco!",
        client = {
            image = "chicken-taco.png"
        }
    },

    ["wood"] = {
        label = "Odun",
        weight = 500,
        stack = true,
        close = true,
        description = "Wood for fireplace",
        client = {
            image = "wood.png"
        }
    },

    ["chair20"] = {
        label = "Mavi Ofis Koltuğu",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair20.png"
        }
    },

    ["chair9"] = {
        label = "Standart Yemek Sandalyesi",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair9.png"
        }
    },

    ["bice"] = {
        label = "Ice",
        weight = 1000,
        stack = true,
        close = true,
        description = "Ice",
        client = {
            image = "bice.png"
        }
    },

    ["pacote-leite"] = {
        label = "Süt",
        weight = 150,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "leite.png"
        }
    },

    ["chair94"] = {
        label = "Gri Lüks Ofis Koltuğu",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair94.png"
        }
    },

    ["irishpub_redhot_daquiri"] = {
        label = "Redhot Daquiri",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "irishpub_redhot_daquiri.png"
        }
    },

    ["chair10"] = {
        label = "Siyah Ofis Kanepesi",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair10.png"
        }
    },

    ["flush_cutter"] = {
        label = "Yankeski",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "flush_cutter.png"
        }
    },

    ["chair109"] = {
        label = "Krem Hasır Sandalye",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair109.png"
        }
    },

    ["carbonated-water"] = {
        label = "Karbonatlı Su",
        weight = 125,
        stack = true,
        close = true,
        description = "Ingredient",
        client = {
            image = "carbonated-water.png"
        }
    },

    ["chair16"] = {
        label = "Beyaz Yemek Sandalyesi",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair16.png"
        }
    },

    ["tq_kamikaze"] = {
        label = "Kamikaze",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "coffee.png"
        }
    },

    ["cupcake-morango"] = {
        label = "Çilekli Cupkek",
        weight = 100,
        stack = false,
        close = true,
        description = "",
        degrade = 2880,
        client = {
            image = "cupmorango.png"
        }
    },

    ["irishpub_coffee"] = {
        label = "Coffee",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "irishpub_coffee.png"
        }
    },

    ["chair86"] = {
        label = "kırmızı kanepe",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair86.png"
        }
    },

    ["kolejzarfi"] = {
        label = "Kolej Zarfı",
        weight = 0,
        stack = true,
        close = false,
        description = "İçinden ne çıkacak acaba?",
        client = {
            image = "security_card_02.png"
        }
    },

    ["tent_1"] = {
        label = "Çadır",
        weight = 1000,
        stack = true,
        close = true,
        description = "Tent",
        client = {
            image = "tent_1.png"
        }
    },

    ["chair18"] = {
        label = "Mavi Yemek Sandalyesi",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair18.png"
        }
    },

    ["beer_03"] = {
        label = "Bira 0.3l",
        weight = 750,
        stack = true,
        close = true,
        description = "Smaller but still, good beer!",
        client = {
            image = "beerglass.png"
        }
    },

    ["bhighcoffeeglasscup"] = {
        label = "High Coffee Glass",
        weight = 1000,
        stack = true,
        close = true,
        description = "Empty High Coffee Glass",
        client = {
            image = "bhighcoffeeglasscup.png"
        }
    },

    ["frasco-nutela"] = {
        label = "Nutella Şişesi",
        weight = 150,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "nutela.png"
        }
    },

    ["nachos"] = {
        label = "Nacho",
        weight = 250,
        stack = false,
        close = true,
        description = "Mis gibi taco!",
        client = {
            image = "nachos.png"
        }
    },

    ["burgershot_toy1"] = {
        label = "Burger Shot Oyuncak",
        weight = 100,
        stack = false,
        close = true,
        description = "Burger Shot Toy",
        client = {
            image = "burgershot_toy1.png"
        }
    },

    ["irishpub_green_dream"] = {
        label = "Green Dream",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "irishpub_green_dream.png"
        }
    },

    ["smallbluefish"] = {
        label = "Çinekop",
        weight = 50,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "smallbluefish.png"
        }
    },

    ["raw_chicken"] = {
        label = "Çiğ Tavuk",
        weight = 500,
        stack = true,
        close = false,
        description = "Raw chicken can be cooked on fire",
        client = {
            image = "raw_chicken.png"
        }
    },

    ["irishpub_kiwi"] = {
        label = "Kiwi",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "irishpub_kiwi.png"
        }
    },

    ["finescale"] = {
        label = "Hassas Tartı",
        weight = 200,
        stack = true,
        close = false,
        description = "Scale Used for Fine Powders and Materials.",
        client = {
            image = "finescale.png"
        }
    },

    ["starfish"] = {
        label = "Deniz Yıldızı",
        weight = 1,
        stack = true,
        close = true,
        description = "Urchin",
        client = {
            image = "starfish.png"
        }
    },

    ["chair89"] = {
        label = "Açık Mavi Kanepe",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair89.png"
        }
    },

    ["chair11"] = {
        label = "Siyah Ofis Koltuğu",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair11.png"
        }
    },

    ["barra-manteiga"] = {
        label = "Tereyağı",
        weight = 150,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "manteiga.png"
        }
    },

    ["bbanana"] = {
        label = "Banana",
        weight = 1000,
        stack = true,
        close = true,
        description = "Banana",
        client = {
            image = "bbanana.png"
        }
    },

    ["gazebo_1"] = {
        label = "Siyah Çardak",
        weight = 1000,
        stack = true,
        close = true,
        description = "Gazebo",
        client = {
            image = "gazebo_1.png"
        }
    },

    ["kiriksilahparcasi"] = {
        label = "Silah Parçası",
        weight = 100,
        stack = true,
        close = true,
        description = "Craft Malzemesi",
        client = {
            image = "kiriksilahparcasi.png"
        }
    },

    ["muffin-chocolate"] = {
        label = "Çikolatalı Muffin",
        weight = 100,
        stack = false,
        close = true,
        description = "",
        degrade = 2880,
        client = {
            image = "uwudcupcake.png"
        }
    },

    ["bcloudcafe"] = {
        label = "Cloud Cafe",
        weight = 1000,
        stack = true,
        close = true,
        description = "Cloud Cafe",
        client = {
            image = "bcloudcafe.png"
        }
    },

    ["irishpub_watermelon_dream"] = {
        label = "Watermelon Dream",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "irishpub_watermelon_dream.png"
        }
    },

    ["raw-chicken"] = {
        label = "Çiğ Tavuk",
        weight = 180,
        stack = true,
        close = true,
        description = "Ingredient",
        client = {
            image = "raw-chicken.png"
        }
    },

    ["fob_racing_basic"] = {
        label = "Yarış Tableti",
        weight = 500,
        stack = false,
        close = true,
        description = "Yarışlara katılmanı sağlayan tablet.",
        client = {
            image = "fob_racing_basic.png"
        }
    },

    ["tent_2"] = {
        label = "Büyük Çadır",
        weight = 1000,
        stack = true,
        close = true,
        description = "Tent",
        client = {
            image = "tent_2.png"
        }
    },

    ["white_phone"] = {
        label = "Beyaz İphone 14",
        weight = 700,
        stack = false,
        close = true,
        description = "They say that Quasar Smartphone is the same as an iPhone, what do you think?",
        client = {
            image = "white_phone.png"
        }
    },

    ["tq_banana_juice"] = {
        label = "Muzlu Meyvesuyu",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "coffee.png"
        }
    },

    ["urchin"] = {
        label = "Deniz Kestanesi",
        weight = 1,
        stack = true,
        close = true,
        description = "Urchin",
        client = {
            image = "urchin.png"
        }
    },

    ["milkshake-morango"] = {
        label = "Çilekli Milkshake",
        weight = 100,
        stack = false,
        close = true,
        description = "",
        degrade = 2880,
        client = {
            image = "msmorango.png"
        }
    },

    ["burgershot_tomato"] = {
        label = "Domates",
        weight = 100,
        stack = true,
        close = true,
        description = "Tomato",
        client = {
            image = "burgershot_tomato.png"
        }
    },

    ["wet_purple_phone"] = {
        label = "Wet Purple Phone",
        weight = 700,
        stack = false,
        close = true,
        description = "Did you really think that swimming in the ocean with your phone was a good idea?",
        client = {
            image = "wet_purple_phone.png"
        }
    },

    ["tyre_bespoke"] = {
        label = "Tyre Bespoke",
        weight = 1,
        stack = true,
        close = true,
        description = "A tyre",
        client = {
            image = "tyre_bespoke.png"
        }
    },

    ["obezpaket"] = {
        label = "Upn Atom Paket",
        weight = 100,
        stack = false,
        close = true,
        description = "Obezseniz tam size göre!",
        client = {
            image = "obezmenu.png"
        }
    },

    ["serendipaket"] = {
        label = "Serendipity Paket",
        weight = 100,
        stack = false,
        close = true,
        description = "Tatlı bir deneyim!",
        client = {
            image = "pearlspaket.png"
        }
    },
    ["caixa-morangos"] = {
        label = "Çilek Paketi",
        weight = 150,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "morangos.png"
        }
    },

    ["chair21"] = {
        label = "Metal Çim Sandalye",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair21.png"
        }
    },

    ["door"] = {
        label = "Kapı",
        weight = 100,
        stack = true,
        close = true,
        description = "Ingredient",
        client = {
            image = "doors.png"
        }
    },

    ["chair_1"] = {
        label = "Sandalye",
        weight = 500,
        stack = true,
        close = true,
        description = "Chair",
        client = {
            image = "chair_1.png"
        }
    },

    ["wmeth"] = {
        label = "W Kristali",
        weight = 100,
        stack = true,
        close = true,
        description = "A baggie of Meth",
        client = {
            image = "meth_baggy.png"
        }
    },

    ["chair30"] = {
        label = "Açık Gri Ofis Koltuğu",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair30.png"
        }
    },

    ["burgershot_curly"] = {
        label = "Kıvırcık",
        weight = 100,
        stack = true,
        close = true,
        description = "Curly",
        client = {
            image = "burgershot_curly.png"
        }
    },

    ["burgershot_thesmurfsicecream"] = {
        label = "Şirin Dondurma",
        weight = 100,
        stack = true,
        close = true,
        description = "The Smurfs Ice Cream",
        client = {
            image = "burgershot_thesmurfsicecream.png"
        }
    },

    ["bpepper"] = {
        label = "DR.Pepper",
        weight = 1000,
        stack = true,
        close = true,
        description = "Cup Fill With DR.Pepper",
        client = {
            image = "bpepper.png"
        }
    },

    ["uwupaket"] = {
        label = "UwU Paket",
        weight = 100,
        stack = false,
        close = true,
        description = "",
        client = {
            image = "uwu-bag.png"
        }
    },

    ["huntingbait"] = {
        label = "Av Yemi",
        weight = 150,
        stack = true,
        close = true,
        description = "Hunting Bait",
        client = {
            image = "huntingbait.png"
        }
    },

    ["powerbank"] = {
        label = "Power Bank",
        weight = 200,
        stack = false,
        close = true,
        description = "Incredible portable charger!",
        client = {
            image = "powerbank.png"
        }
    },

    ["tyre_lowrider"] = {
        label = "Tyre Lowrider",
        weight = 1,
        stack = true,
        close = true,
        description = "A tyre",
        client = {
            image = "tyre_lowrider.png"
        }
    },

    ["chair82"] = {
        label = "Küçük Siyah Tabure",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair82.png"
        }
    },

    ["chair57"] = {
        label = "Mor Deri Sandalye",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair57.png"
        }
    },

    ["bespressocoffeecup"] = {
        label = "Espresso Coffee Cup",
        weight = 1000,
        stack = false,
        close = true,
        description = "Espresso Coffee Cup",
        degrade = 2880,
        client = {
            image = "bespressocoffeecup.png"
        }
    },

    ["sulfuric_acid"] = {
        label = "Sülfürik Asit",
        weight = 1500,
        stack = true,
        close = false,
        description = "Chemicals, handle with care!",
        client = {
            image = "sulfuric_acid.png"
        }
    },

    ["burgershot_bigcardboard"] = {
        label = "Büyük Boy Karton",
        weight = 100,
        stack = true,
        close = true,
        description = "Big Size Cardboard",
        client = {
            image = "burgershot_bigcardboard.png"
        }
    },

    ["wet_green_phone"] = {
        label = "Wet Green Phone",
        weight = 700,
        stack = false,
        close = true,
        description = "They say that Quasar Smartphone is the same as an iPhone, what do you think?",
        client = {
            image = "wet_green_phone.png"
        }
    },

    ["bicedcaffelatte"] = {
        label = "Buzlu Latte",
        weight = 1000,
        stack = false,
        close = true,
        description = "Iced Caffe Latte",
        degrade = 2880,
        client = {
            image = "bicedcaffelatte.png"
        }
    },

    ["liquidmix"] = {
        label = "Sıvı Kimyasal Karışımı",
        weight = 1500,
        stack = true,
        close = false,
        description = "Chemicals, handle with care!",
        client = {
            image = "liquidmix.png"
        }
    },

    ["chair64"] = {
        label = "Çizgili Kamp Sandalyesi",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair64.png"
        }
    },

    ["chair91"] = {
        label = "Beyaz Deri Sandalye",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair91.png"
        }
    },

    ["lettuce"] = {
        label = "Marul",
        weight = 150,
        stack = true,
        close = true,
        description = "Ingredient",
        client = {
            image = "lettuce.png"
        }
    },

    ["tq_kiwi_juice"] = {
        label = "Kivili Meyveuyu",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "coffee.png"
        }
    },

    ["chair59"] = {
        label = "Kireç Sandalye",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair59.png"
        }
    },

    ["tq_coconut_drink"] = {
        label = "Hindistan Cevizli İçecek",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "coffee.png"
        }
    },

    ["tq_banana_nut"] = {
        label = "Kapkek",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "yellow_jacket_cakes.png"
        }
    },

    ["beerkeg_1_3"] = {
        label = "Bira Fıçısı - 30L- 1/3",
        weight = 750,
        stack = true,
        close = true,
        description = "Beer keg with lot of beers!",
        client = {
            image = "beerkeg_1_3.png"
        }
    },

    ["cafe-uwu"] = {
        label = "Kahve",
        weight = 100,
        stack = false,
        close = true,
        description = "",
        degrade = 2880,
        client = {
            image = "cafe.png"
        }
    },

    ["chair40"] = {
        label = "Gri Deri Sandalye",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair40.png"
        }
    },

    ["chair98"] = {
        label = "Kırmızı/Yeşil Oyuncu Koltuğu",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair98.png"
        }
    },

    ["burgershot_toy5"] = {
        label = "Burger Shot Oyuncak",
        weight = 100,
        stack = false,
        close = true,
        description = "Burger Shot Toy",
        client = {
            image = "burgershot_toy5.png"
        }
    },

    ["chair50"] = {
        label = "Plastik Çim Sandalye",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair50.png"
        }
    },

    ["garfish"] = {
        label = "Zargana",
        weight = 50,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "garfish.png"
        }
    },

    ["yellowpearl"] = {
        label = "Sarı İnci",
        weight = 50,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "yellowpearl.png"
        }
    },

    ["bsprite"] = {
        label = "Sprite",
        weight = 1000,
        stack = true,
        close = true,
        description = "Cup Fill With Sprite",
        degrade = 2880,
        client = {
            image = "bsprite.png"
        }
    },

    ["burgershot_vanillaicecream"] = {
        label = "Vanilyalı Dondurma",
        weight = 100,
        stack = true,
        close = true,
        description = "Vanilla Ice Cream",
        client = {
            image = "burgershot_vanillaicecream.png"
        }
    },

    ["tq_just_peachy"] = {
        label = "Sadece Şeftali",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "coffee.png"
        }
    },

    ["chair36"] = {
        label = "Rahat Ergonomik Ofis Koltuğu",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair36.png"
        }
    },

    ["tyre_muscle"] = {
        label = "Tyre Muscle",
        weight = 1,
        stack = true,
        close = true,
        description = "A tyre",
        client = {
            image = "tyre_muscle.png"
        }
    },

    ["aku"] = {
        label = "Akü",
        weight = 1000,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "aku.png"
        }
    },

    ["beerkeg_2_3"] = {
        label = "Bira Fıçısı - 30L - 2/3",
        weight = 750,
        stack = true,
        close = true,
        description = "Beer keg with lot of beers!",
        client = {
            image = "beerkeg_2_3.png"
        }
    },

    ["pmargharita"] = {
        label = "Margharita Pizza",
        weight = 1000,
        stack = true,
        close = true,
        description = "",
        degrade = 2880,
        client = {
            image = "pmargharita.png"
        }
    },

    ["irishpub_chocolate_cake"] = {
        label = "Chocolate Cake",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "irishpub_chocolate_cake.png"
        }
    },

    ["chair87"] = {
        label = "Beyaz Kanepe",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair87.png"
        }
    },

    ["tq_sugar"] = {
        label = "Şeker",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "tq_sugar.png"
        }
    },

    ["bobcatkeycard"] = {
        label = "Bobcat Güvenlik Kartı",
        weight = 1000,
        stack = true,
        close = true,
        description = "A keycard used at the Bobcat Security Deposit..",
        client = {
            image = "bobcatkeycard.png"
        }
    },

    ["bmilk"] = {
        label = "Süt",
        weight = 1000,
        stack = true,
        close = true,
        description = "Milk",
        client = {
            image = "bmilk.png"
        }
    },

    ["tq_island_fantasy"] = {
        label = "Ada Fantezisi",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        degrade = 2880,
        client = {
            image = "coffee.png"
        }
    },

    ["bolt_cutter"] = {
        label = "Demir Kesici",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "bolt_cutter.png"
        }
    },

    ["rentcertificate"] = {
        label = "Kiralama Kontratı",
        weight = 0,
        stack = false,
        close = true,
        description = "",
        client = {
            image = "rentalpapers.png"
        }
    },

    ["extrato-menta"] = {
        label = "Nane Özü",
        weight = 150,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "menta.png"
        }
    },

    ["bstrawberrycreamfrappuccino"] = {
        label = "Çilekli Köpüklü Frappuccino",
        weight = 1000,
        stack = false,
        close = true,
        description = "Strawberry Cream Frappuccino",
        degrade = 2880,
        client = {
            image = "bstrawberrycreamfrappuccino.png"
        }
    },

    ["chair69"] = {
        label = "Koyu Malzeme Yemek Sandalyesi",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair69.png"
        }
    },

    ["meatdeer"] = {
        label = "Geyik Boynuzu",
        weight = 100,
        stack = true,
        close = false,
        description = "Deer Horns",
        client = {
            image = "deerhorns.png"
        }
    },

    ["bcream"] = {
        label = "Whipped Cream",
        weight = 1000,
        stack = true,
        close = true,
        description = "Whipped Cream",
        client = {
            image = "bcream.png"
        }
    },

    ["gazebo_3"] = {
        label = "Beyaz Çardak",
        weight = 1000,
        stack = true,
        close = true,
        description = "Gazebo",
        client = {
            image = "gazebo_3.png"
        }
    },

    ["irishpub_kamikaze"] = {
        label = "Kamikaze",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "irishpub_kamikaze.png"
        }
    },

    ["chair77"] = {
        label = "Sarı Ofis Koltuğu",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair77.png"
        }
    },

    ["electrocuff"] = {
        label = "Elektronik Kelepçe",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "electroniccuffs.png"
        }
    },

    ["irishpub_daquiri"] = {
        label = "Daquiri",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "irishpub_daquiri.png"
        }
    },

    ["bcaramelsyrup"] = {
        label = "Caramel Syrup",
        weight = 1000,
        stack = true,
        close = true,
        description = "Caramel Syrup",
        client = {
            image = "bcaramelsyrup.png"
        }
    },

    ["bluepearl"] = {
        label = "Mavi İnci",
        weight = 50,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "bluepearl.png"
        }
    },

    ["wet_gold_phone"] = {
        label = "Wet Gold Phone",
        weight = 700,
        stack = false,
        close = true,
        description = "Did you really think that swimming in the ocean with your phone was a good idea?",
        client = {
            image = "wet_gold_phone.png"
        }
    },

    ["glove"] = {
        label = "Eldiven",
        weight = 1,
        stack = false,
        close = true,
        description = "Glove",
        client = {
            image = "glove.png"
        }
    },

    ["chair25"] = {
        label = "Kırmızı Plastik Sandalye",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair25.png"
        }
    },

    ["flint"] = {
        label = "Çakmak",
        weight = 500,
        stack = true,
        close = true,
        description = "Flint & Steel used for starting fire",
        client = {
            image = "flint.png"
        }
    },

    ["irishpub_orange"] = {
        label = "Orange",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "irishpub_orange.png"
        }
    },

    ["chair85"] = {
        label = "Şarap Kırmızısı Kanepe",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair85.png"
        }
    },

    ["beer_05"] = {
        label = "Bira 0.5l",
        weight = 750,
        stack = true,
        close = true,
        description = "Good size of beer glass!",
        client = {
            image = "beerglass.png"
        }
    },

    ["red_phone"] = {
        label = "Kırmızı İphone 14",
        weight = 700,
        stack = false,
        close = true,
        description = "They say that Quasar Smartphone is the same as an iPhone, what do you think?",
        client = {
            image = "red_phone.png"
        }
    },

    ["classic_phone"] = {
        label = "İphone 14",
        weight = 700,
        stack = false,
        close = true,
        description = "They say that Quasar Smartphone is the same as an iPhone, what do you think?",
        client = {
            image = "classic_phone.png"
        }
    },

    ["chair83"] = {
        label = "Turuncu Kanepe",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair83.png"
        }
    },

    ["isletmeruhsatizarfi"] = {
        label = "İşletme Ruhsatı Zarfı",
        weight = 0,
        stack = true,
        close = false,
        description = "İçinden ne çıkacak acaba?",
        client = {
            image = "security_card_02.png"
        }
    },

    ["chair70"] = {
        label = "Koyu Kahve Metal Sandalye",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair70.png"
        }
    },

    ["irishpub_coconut_drink"] = {
        label = "Coconut Drink",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "irishpub_coconut_drink.png"
        }
    },

    ["extrato-baunilha"] = {
        label = "Vanilya Özü",
        weight = 150,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "baunilha.png"
        }
    },

    ["bong"] = {
        label = "Bong",
        weight = 1000,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "bong.png"
        }
    },

    ["chair49"] = {
        label = "Kahverengi Ahşap Yemek Sandalyesi",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair49.png"
        }
    },

    ["chair55"] = {
        label = "Eski Metal ",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair55.png"
        }
    },

    ["koltuk"] = {
        label = "Koltuk",
        weight = 500,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "koltuk.png"
        }
    },

    ["purple_phone"] = {
        label = "Pembe İphone 14",
        weight = 700,
        stack = false,
        close = true,
        description = "They say that Quasar Smartphone is the same as an iPhone, what do you think?",
        client = {
            image = "purple_phone.png"
        }
    },

    ["chair62"] = {
        label = "Yeşil Kamp Sandalyesi",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair62.png"
        }
    },

    ["tq_banana"] = {
        label = "Muz",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "tq_banana.png"
        }
    },

    ["chair22"] = {
        label = "Şık Yemek Sandalyesi",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair22.png"
        }
    },

    ["irishpub_cocktail"] = {
        label = "Cocktail",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "irishpub_cocktail.png"
        }
    },

    ["chair38"] = {
        label = "Ol' Sallanan Sandalye",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair38.png"
        }
    },

    ["chair28"] = {
        label = "Gri Ofis Koltuğu",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair28.png"
        }
    },

    ["chair54"] = {
        label = "Eski Ahşap Sandalye",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair54.png"
        }
    },

    ["chair27"] = {
        label = "Siyah Deri Sandalye",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair27.png"
        }
    },

    ["tyre_tuner"] = {
        label = "Tyre Tuner",
        weight = 1,
        stack = true,
        close = true,
        description = "A tyre",
        client = {
            image = "tyre_tuner.png"
        }
    },

    ["chair56"] = {
        label = "Eski Kanepe",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair56.png"
        }
    },

    ["tq_daquiri"] = {
        label = "Daquiri",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "tq_daquiri.png"
        }
    },

    ["burgershot_bigemptyglass"] = {
        label = "Büyük Boy Boş Bardak",
        weight = 100,
        stack = true,
        close = true,
        description = "Big Size Empty Glass",
        client = {
            image = "burgershot_bigemptyglass.png"
        }
    },

    ["burgershot_coffee"] = {
        label = "Burger Shot Kahve",
        weight = 100,
        stack = true,
        close = true,
        description = "Burger Shot Coffee",
        client = {
            image = "burgershot_coffee.png"
        }
    },

    ["chair97"] = {
        label = "Plastik Çim Sandalye 2",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair97.png"
        }
    },

    ["borange"] = {
        label = "Orange",
        weight = 1000,
        stack = true,
        close = true,
        description = "Orange",
        client = {
            image = "borange.png"
        }
    },

    ["waffle-nutela"] = {
        label = "Nutellalı Waffle",
        weight = 100,
        stack = false,
        close = true,
        description = "",
        degrade = 2880,
        client = {
            image = "wnutela.png"
        }
    },

    ["burgershot_baggoat"] = {
        label = "Goat Menü",
        weight = 100,
        stack = true,
        close = true,
        description = "1x Goat Wrap, 1x Big Size Cola, 1x Shot Nuggets, 1x Shot Rings",
        client = {
            image = "burgershot_baggoat.png"
        }
    },

    ["irishpub_cheese"] = {
        label = "Cheese",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "irishpub_cheese.png"
        }
    },

    ["irishpub_island_breeze"] = {
        label = "Island Breeze",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "irishpub_island_breeze.png"
        }
    },

    ["burgershot_toy2"] = {
        label = "Burger Shot Oyuncak",
        weight = 100,
        stack = false,
        close = true,
        description = "Burger Shot Toy",
        client = {
            image = "burgershot_toy2.png"
        }
    },

    ["chair63"] = {
        label = "Mavi Kamp Sandalyesi",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair63.png"
        }
    },

    ["coke-soda"] = {
        label = "Coca-Cola",
        weight = 180,
        stack = false,
        close = true,
        description = "Aç bi coca-cola!",
        client = {
            image = "coke-soda.png"
        }
    },

    ["phone_hack"] = {
        label = "Telefon Hack",
        weight = 300,
        stack = false,
        close = true,
        description = "With this chip, you can access hidden areas of Discord.",
        client = {
            image = "phone_hack.png"
        }
    },

    ["burgershot_bagcoffe"] = {
        label = "Kahve Paketi",
        weight = 100,
        stack = true,
        close = true,
        description = "1x Coffee, 1x Macaroon",
        client = {
            image = "burgershot_bagcoffe.png"
        }
    },

    ["bluefish"] = {
        label = "Lüfer",
        weight = 50,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "bluefish.png"
        }
    },

    ["anchovy"] = {
        label = "Hamsi",
        weight = 50,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "anchovy.png"
        }
    },

    ["cuffkeys"] = {
        label = "Kelepçe Anahtarı",
        weight = 100,
        stack = false,
        close = true,
        description = "",
        client = {
            image = "cuffkeys.png"
        }
    },

    ["tq_orange"] = {
        label = "Portakal",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "tq_orange.png"
        }
    },

    ["irishpub_watermelon"] = {
        label = "Watermelon",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "irishpub_watermelon.png"
        }
    },

    ["ontampon"] = {
        label = "Ön Tampon",
        weight = 2000,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "ontampon.png"
        }
    },

    ["carjack"] = {
        label = "Car Jack",
        weight = 1,
        stack = true,
        close = true,
        description = "Car Jack",
        client = {
            image = "carjack.png"
        }
    },

    ["chair39"] = {
        label = "Çizgili Hasır Sandalye",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair39.png"
        }
    },

    ["coke"] = {
        label = "Kokanik",
        weight = 1000,
        stack = true,
        close = false,
        description = "Processed cocaine",
        client = {
            image = "coke.png"
        }
    },

    ["burgershot_bleeder"] = {
        label = "Küçük Burger",
        weight = 100,
        stack = true,
        close = true,
        description = "Bleeder Burger",
        client = {
            image = "burgershot_bleeder.png"
        }
    },

    ["tq_ban_straw_juice"] = {
        label = "Muzlu Çilekli Meyvesuyu",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "coffee.png"
        }
    },

    ["bcoffeeglass"] = {
        label = "Coffee Glass",
        weight = 1000,
        stack = true,
        close = true,
        description = "Empty Coffee Glass",
        client = {
            image = "bcoffeeglass.png"
        }
    },

    ["burgershot_frozennuggets"] = {
        label = "Donmuş Nugget",
        weight = 100,
        stack = true,
        close = true,
        description = "Frozen Nuggets",
        client = {
            image = "burgershot_frozennuggets.png"
        }
    },

    ["obezburger"] = {
        label = "Obez Burger",
        weight = 100,
        stack = false,
        close = true,
        description = "",
        degrade = 2880,
        client = {
            image = "burgershot_bigking.png"
        }
    },

    ["pink_phone"] = {
        label = "Pembe İphone 14",
        weight = 700,
        stack = false,
        close = true,
        description = "They say that Quasar Smartphone is the same as an iPhone, what do you think?",
        client = {
            image = "pink_phone.png"
        }
    },

    ["heroin"] = {
        label = "Heroin",
        weight = 500,
        stack = true,
        close = false,
        description = "Really addictive depressant...",
        client = {
            image = "heroin.png"
        }
    },

    ["irishpub_tequila"] = {
        label = "Tequila",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "irishpub_tequila.png"
        }
    },

    ["chair67"] = {
        label = "Beyaz Metal Yemek Sandalyesi",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair67.png"
        }
    },

    ["panqueca-nutela"] = {
        label = "Nutellalı Pankek",
        weight = 100,
        stack = false,
        close = true,
        description = "",
        degrade = 2880,
        client = {
            image = "panutela.png"
        }
    },

    ["chair43"] = {
        label = "Hasır Çim Sandalye",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair43.png"
        }
    },

    ["xxlburger"] = {
        label = "XXL Burger",
        weight = 200,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "xxlburger.png"
        }
    },

    ["irishpub_cake"] = {
        label = "Cake",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "yellow_jacket_cakes.png"
        }
    },

    ["doping"] = {
        label = "doping",
        weight = 200,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "doping.png"
        }
    },

    ["electrocufftracker"] = {
        label = "Takip Cihazı",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "tablet.png"
        }
    },

    ["burgershot_smallcardboard"] = {
        label = "Küçük Boy Karton",
        weight = 100,
        stack = true,
        close = true,
        description = "Small Size Cardboard",
        client = {
            image = "burgershot_smallcardboard.png"
        }
    },

    ["irishpub_orange_juice"] = {
        label = "Orange Juice",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "irishpub_orange_juice.png"
        }
    },

    ["burgershot_sauce"] = {
        label = "Sos",
        weight = 100,
        stack = true,
        close = true,
        description = "Sauce",
        client = {
            image = "burgershot_sauce.png"
        }
    },

    ["wet_blue_phone"] = {
        label = "Wet Blue Phone",
        weight = 700,
        stack = false,
        close = true,
        description = "Did you really think that swimming in the ocean with your phone was a good idea?",
        client = {
            image = "wet_blue_phone.png"
        }
    },

    ["tq_island_breeze"] = {
        label = "Ada Esintisi",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "coffee.png"
        }
    },

    ["bcaramelfrappucino"] = {
        label = "Caramel Frappucino",
        weight = 1000,
        stack = false,
        close = true,
        description = "Caramel Frappucino",
        client = {
            image = "bcaramelfrappucino.png"
        }
    },

    ["bmuffin"] = {
        label = "Muffin",
        weight = 1000,
        stack = true,
        close = true,
        description = "Muffin",
        client = {
            image = "bmuffin.png"
        }
    },

    ["taco-tomato"] = {
        label = "Domates",
        weight = 100,
        stack = true,
        close = true,
        description = "Ingredient",
        client = {
            image = "taco-tomato.png"
        }
    },

    ["coral"] = {
        label = "Mercan",
        weight = 1,
        stack = true,
        close = true,
        description = "coral",
        client = {
            image = "coral.png"
        }
    },

    ["weedplant_packedweed"] = {
        label = "Paketlenmiş Esrar",
        weight = 100,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "weedplant_weed.png"
        }
    },

    ["bubble-menta"] = {
        label = "Naneli Bubble Tea",
        weight = 100,
        stack = false,
        close = true,
        description = "",
        degrade = 2880,
        client = {
            image = "btmenta.png"
        }
    },

    ["bhotchocolatepowder"] = {
        label = "Hot Chocolate Powder",
        weight = 1000,
        stack = false,
        close = true,
        description = "Hot Chocolate Powder",
        degrade = 2880,
        client = {
            image = "bhotchocolatepowder.png"
        }
    },

    ["weedseed"] = {
        label = "Esrar Tohumu",
        weight = 0,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "weedplant_seed.png"
        }
    },

    ["burgershot_strawberryicecream"] = {
        label = "Çilekli Dondurma",
        weight = 100,
        stack = true,
        close = true,
        description = "Strawberry Ice Cream",
        client = {
            image = "burgershot_strawberryicecream.png"
        }
    },

    ["leite-condensado"] = {
        label = "Yoğunlaştırılmış Süt",
        weight = 150,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "condensado.png"
        }
    },

    ["stancerkit"] = {
        label = "Kamber Kiti",
        weight = 1000,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "speaker.png"
        }
    },

    ["tq_watermelon_dream"] = {
        label = "Karpuz Rüyası",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "coffee.png"
        }
    },

    ["blemonslush"] = {
        label = "Lemon Slush",
        weight = 1000,
        stack = true,
        close = true,
        description = "Cup Fill With Lemon Slush",
        client = {
            image = "blemonslush.png"
        }
    },

    ["tq_chocolate"] = {
        label = "Çikolata",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "chocolate.png"
        }
    },

    ["burgershot_bigfrozenpotato"] = {
        label = "Donmuş Patates",
        weight = 100,
        stack = true,
        close = true,
        description = "Big Size Frozen Potato",
        client = {
            image = "burgershot_bigfrozenpotato.png"
        }
    },

    ["tq_tequila"] = {
        label = "Tequila",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "tequila-crate.png"
        }
    },

    ["fireplace"] = {
        label = "Kamp Ateşi",
        weight = 1000,
        stack = true,
        close = true,
        description = "Fireplace",
        client = {
            image = "fireplace.png"
        }
    },

    ["chair96"] = {
        label = "Açık Kahve Metal Sandalye",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair96.png"
        }
    },

    ["tq_green_dream"] = {
        label = "Yeşil Rüya",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "coffee.png"
        }
    },

    ["meatcow"] = {
        label = "İnek Postu",
        weight = 100,
        stack = true,
        close = false,
        description = "Cow Pelt",
        client = {
            image = "cowpelt.png"
        }
    },

    ["weedplant_seedf"] = {
        label = "Dişi Esrar Tohumu",
        weight = 0,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "weedplant_seed.png"
        }
    },

    ["crab"] = {
        label = "Yengeç",
        weight = 1,
        stack = true,
        close = true,
        description = "Crab",
        client = {
            image = "crab.png"
        }
    },

    ["whitepearl"] = {
        label = "Beyaz İnci",
        weight = 50,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "whitepearl.png"
        }
    },

    ["chair95"] = {
        label = "Koyu Kahve Kanepe",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair95.png"
        }
    },

    ["chair15"] = {
        label = "Eski Yemek Sandalyesi",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair15.png"
        }
    },

    ["burgershot_coffeeemptyglass"] = {
        label = "Boş Kahve Bardağı",
        weight = 100,
        stack = true,
        close = true,
        description = "Coffee Empty Glass",
        client = {
            image = "burgershot_coffeeemptyglass.png"
        }
    },

    ["burgershot_toy4"] = {
        label = "Burger Shot Oyuncak",
        weight = 100,
        stack = false,
        close = true,
        description = "Burger Shot Toy",
        client = {
            image = "burgershot_toy4.png"
        }
    },

    ["chair41"] = {
        label = "Gri Metal Sandalye",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chair41.png"
        }
    },

    ["tortillas"] = {
        label = "Tortilla Ekmeği",
        weight = 150,
        stack = true,
        close = true,
        description = "Ingredient",
        client = {
            image = "tortillas.png"
        }
    },

    ["burgershot_bigking"] = {
        label = "Big King Burger",
        weight = 100,
        stack = true,
        close = true,
        description = "Big King",
        client = {
            image = "burgershot_bigking.png"
        }
    },

    ["burgershot_lavash"] = {
        label = "Lavaş",
        weight = 100,
        stack = true,
        close = true,
        description = "Lavash",
        client = {
            image = "burgershot_lavash.png"
        }
    },

    ["phone_module"] = {
        label = "Telefon Modülü",
        weight = 300,
        stack = false,
        close = true,
        description = "It seems that we can fix a wet phone with this module, interesting.",
        client = {
            image = "phone_module.png"
        }
    },

    ["keys"] = {
        label = "Motel Anahtarı",
        weight = 200,
        stack = false,
        close = true,
        description = "",
        client = {
            image = "keys.png"
        }
    },

    ["burgetpaket"] = {
        label = "Burgershot Paket",
        weight = 100,
        stack = false,
        close = true,
        description = "",
        client = {
            image = "obezmenu.png"
        }
    },

    ["pizzeriapaket"] = {
        label = "Burgershot Paket",
        weight = 100,
        stack = false,
        close = true,
        description = "",
        client = {
            image = "obezmenu.png"
        }
    },

    ["bakir"] = {
        label = "Bakır",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "bakir.png"
        }
    },

    ["plastik"] = {
        label = "Plastik",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "plastik.png"
        }
    },

    ["demir"] = {
        label = "Demir",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "demir.png"
        }
    },

    ["balik"] = {
        label = "Balık",
        weight = 100,
        stack = false,
        close = true,
        description = "",
        degrade = 2880,
        client = {
            image = "balik.png"
        }
    },

    ["kokteyl"] = {
        label = "Kokteyl",
        weight = 100,
        stack = false,
        close = true,
        description = "",
        degrade = 2880,
        client = {
            image = "kokteyl.png"
        }
    },

    ["kokteyl2"] = {
        label = "Kokteyl 2",
        weight = 100,
        stack = false,
        close = true,
        description = "",
        degrade = 2880,
        client = {
            image = "kokteyl2.png"
        }
    },

    ["sarap"] = {
        label = "Şarap",
        weight = 100,
        stack = false,
        close = true,
        description = "",
        degrade = 2880,
        client = {
            image = "sarap.png"
        }
    },

    ["istakoz"] = {
        label = "Istakoz",
        weight = 100,
        stack = false,
        close = true,
        description = "",
        degrade = 2880,
        client = {
            image = "istakoz.png"
        }
    },

    ["raki"] = {
        label = "Rakı",
        weight = 100,
        stack = false,
        close = true,
        description = "",
        degrade = 2880,
        client = {
            image = "raki.png"
        }
    },

    ["kurabiye"] = {
        label = "Kurabiye",
        weight = 100,
        stack = false,
        close = true,
        description = "",
        degrade = 2880,
        client = {
            image = "kurabiye.png"
        }
    },

    ["balik2"] = {
        label = "Balık",
        weight = 100,
        stack = false,
        close = true,
        description = "",
        degrade = 2880,
        client = {
            image = "balik2.png"
        }
    },

    ["mermikovani"] = {
        label = "Mermi Kovanı",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "mermikovani.png"
        }
    },

    ["bonfile"] = {
        label = "Bonfile",
        weight = 100,
        stack = false,
        close = true,
        description = "",
        degrade = 2880,
        client = {
            image = "bonfile.png"
        }
    },

    ["spagetti"] = {
        label = "Spagetti",
        weight = 100,
        stack = false,
        close = true,
        description = "",
        degrade = 2880,
        client = {
            image = "spagetti.png"
        }
    },

    ["pearlspaket"] = {
        label = "Pearls Paket",
        weight = 100,
        stack = false,
        close = true,
        description = "",
        client = {
            image = "pearlspaket.png"
        }
    },

    ["mdma"] = {
        label = "Mdma",
        weight = 1,
        stack = true,
        close = false,
        description = "Bağımılılık yapan cinsten.",
        client = {
            image = "mdma.png"
        }
    },

    ["marijuana"] = {
        label = "Marijuana",
        weight = 1,
        stack = true,
        close = false,
        description = "Bağımılılık yapan cinsten.",
        client = {
            image = "marijuana.png"
        }
    },

    ["cocaine"] = {
        label = "Cocaine",
        weight = 1,
        stack = true,
        close = false,
        description = "Bağımılılık yapan cinsten.",
        client = {
            image = "cocaine.png"
        }
    },

    ["salmon"] = {
        label = "Somon",
        weight = 1000,
        stack = true,
        close = false,
        description = "A Fish",
        client = {
            image = "salmon.png"
        }
    },

    ["sulfur"] = {
        label = "Kükürt",
        weight = 100,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "sulfur.png"
        }
    },

    ["cannabis"] = {
        label = "Esrar",
        weight = 2500,
        stack = true,
        close = true,
        description = "Ayıklanmamış kanabis",
        client = {
            image = "cannabis.png"
        }
    },

    ["collarpet"] = {
        label = "Pet collar",
        weight = 500,
        stack = true,
        close = true,
        description = "Rename your pets!",
        client = {
            image = "collarpet.png"
        }
    },

    ["pclip"] = {
        label = "Tabanca Şarjörü",
        weight = 100,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "pclip.png"
        }
    },

    ["case_prisma2"] = {
        label = "Prisma 2 Case",
        weight = 2000,
        stack = false,
        close = true,
        description = "A prize awaits inside.",
        client = {
            image = "case_recoil.png"
        }
    },

    ["apb"] = {
        label = "APS BP",
        weight = 100,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "apb.png"
        }
    },

    ["laptop_blue"] = {
        label = "Mavi Laptop",
        weight = 15000,
        stack = false,
        close = true,
        description = "A security Laptop",
        client = {
            image = "laptop_blue.png"
        }
    },

    ["emptycowbucket"] = {
        label = "Boş Süt Kovası",
        weight = 25,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "emptybucket.png"
        }
    },

    ["cooked_bacon"] = {
        label = "Pişmiş Pastırma",
        weight = 25,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "cooked_bacon.png"
        }
    },

    ["casekey"] = {
        label = "Kasa Anahtarı",
        weight = 0,
        stack = false,
        close = false,
        description = "Kasa Anahtarı",
        client = {
            image = "key1.png"
        }
    },

    ["raw_sausage"] = {
        label = "Çiğ Sosisli",
        weight = 25,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "raw_sausage.png"
        }
    },

    ["apple"] = {
        label = "Elma",
        weight = 25,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "apple.png"
        }
    },

    ["pbarrel"] = {
        label = "Tabanca Namlusu",
        weight = 100,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "pbarrel.png"
        }
    },

    ["keepcompanionwesty"] = {
        label = "Westy",
        weight = 500,
        stack = false,
        close = true,
        description = "Westy is your royal companion!",
        client = {
            image = "A_C_Westy.png"
        }
    },

    ["whale2"] = {
        label = "Balina",
        weight = 1000,
        stack = true,
        close = false,
        description = "A Fish",
        client = {
            image = "whale2.png"
        }
    },

    ["greenpepper"] = {
        label = "Yeşil Biber",
        weight = 15,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "greenpepper.png"
        }
    },

    ["makbp"] = {
        label = "Makarov PM BP",
        weight = 100,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "makbp.png"
        }
    },

    ["keepcompanionmtlion"] = {
        label = "MtLion",
        weight = 500,
        stack = false,
        close = true,
        description = "MtLion is your royal companion!",
        client = {
            image = "A_C_MtLion.png"
        }
    },

    ["catfish"] = {
        label = "Kedi Balığı",
        weight = 1000,
        stack = true,
        close = false,
        description = "A Fish",
        client = {
            image = "catfish.png"
        }
    },

    ["corncob"] = {
        label = "Mısır Koçanı",
        weight = 15,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "corncob.png"
        }
    },

    ["weedkey"] = {
        label = "Key C",
        weight = 200,
        stack = true,
        close = false,
        description = "Esrar tarlası için anahtar...",
        client = {
            image = "keyc.png"
        }
    },

    ["pbody"] = {
        label = "Tabanca Gövdesi",
        weight = 100,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "pbody.png"
        }
    },

    ["redfish"] = {
        label = "Kırmızı Balık",
        weight = 1000,
        stack = true,
        close = false,
        description = "A Fish",
        client = {
            image = "redfish.png"
        }
    },

    ["meth_cured"] = {
        label = "Buz",
        weight = 100,
        stack = true,
        close = false,
        description = "Saf kristal meth, bu senin maaşın üstünde",
        client = {
            image = "meth_cured.png"
        }
    },

    ["pgrip"] = {
        label = "Tabanca Kabzası",
        weight = 100,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "pgrip.png"
        }
    },

    ["petwaterbottleportable"] = {
        label = "Portable water bottle",
        weight = 1000,
        stack = false,
        close = true,
        description = "Flask to store water for your pets",
        client = {
            image = "petwaterbottleportable.png"
        }
    },

    ["milkbucket"] = {
        label = "Süt Kovası",
        weight = 75,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "milkbucket.png"
        }
    },

    ["hotsauce"] = {
        label = "Acı Sos",
        weight = 15,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "hotsauce.png"
        }
    },

    ["cooked_pork"] = {
        label = "Pişmiş Domuz Eti",
        weight = 25,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "cooked_pork.png"
        }
    },

    ["soybeans"] = {
        label = "Soya Fasulyesi",
        weight = 10,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "soybeans.png"
        }
    },

    ["coketable"] = {
        label = "Kokain Masası",
        weight = 100,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "coket.png"
        }
    },

    ["canofcorn"] = {
        label = "Mısır Konservesi",
        weight = 15,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "canofcorn.png"
        }
    },

    ["raw_beef"] = {
        label = "Çiğ İnek Eti",
        weight = 25,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "raw_beef.png"
        }
    },

    ["laptop_green"] = {
        label = "Yeşil Laptop",
        weight = 15000,
        stack = false,
        close = true,
        description = "A security Laptop",
        client = {
            image = "laptop_green.png"
        }
    },

    ["securitycase"] = {
        label = "Güvenli Kasa",
        weight = 1000,
        stack = false,
        close = false,
        description = "Açılması için anahtar",
        client = {
            image = "securitycase.png"
        }
    },

    ["methtable"] = {
        label = "Meth Masası",
        weight = 100,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "metht.png"
        }
    },

    ["clown_notes"] = {
        label = "Garip Belgeler",
        weight = 100,
        stack = true,
        close = false,
        description = "Maaş derecenizin açıkça üzerinde olan belgeler. HONK HONK",
        client = {
            image = "deliverynote.png"
        }
    },

    ["kasap"] = {
        label = "Kasap Bıçağı",
        weight = 500,
        stack = true,
        close = false,
        description = "Kasaplar için ideal bir alet..",
        client = {
            image = "kasap.png"
        }
    },

    ["largemouthbass"] = {
        label = "Büyük Ağızlı Levrek",
        weight = 1000,
        stack = true,
        close = false,
        description = "A Fish",
        client = {
            image = "largemouthbass.png"
        }
    },

    ["slicedpie"] = {
        label = "Balkabağı Dilimi",
        weight = 10,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "slicedpie.png"
        }
    },

    ["fishingbait"] = {
        label = "Yem",
        weight = 50,
        stack = true,
        close = false,
        description = "With this I can lure the fishessss..",
        client = {
            image = "fishingbait.png"
        }
    },

    ["keepcompanionrabbit"] = {
        label = "Rabbit",
        weight = 500,
        stack = false,
        close = true,
        description = "Rabbit is your royal companion!",
        client = {
            image = "A_C_Rabbit_01.png"
        }
    },

    ["raw_bacon"] = {
        label = "Çiğ Pastırma",
        weight = 25,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "raw_bacon.png"
        }
    },

    ["rawpumpkin"] = {
        label = "Balkabağı",
        weight = 50,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "raw_pumpkin.png"
        }
    },

    ["laptop_red"] = {
        label = "Kırmızı Laptop",
        weight = 15000,
        stack = false,
        close = true,
        description = "A security Laptop",
        client = {
            image = "laptop_red.png"
        }
    },

    ["keepcompanioncoyote"] = {
        label = "Coyote",
        weight = 500,
        stack = false,
        close = true,
        description = "Coyote is your royal companion!",
        client = {
            image = "A_C_Coyote.png"
        }
    },

    ["coke_pure"] = {
        label = "Kokain ezmesi",
        weight = 100,
        stack = true,
        close = false,
        description = "Yüksek dereceli kokain ezmesi, bu senin maaş notunun üstünde",
        client = {
            image = "meth_cured.png"
        }
    },

    ["art_notes"] = {
        label = "Garip Belgeler",
        weight = 100,
        stack = true,
        close = false,
        description = "Maaş derecenizin açıkça üzerinde olan belgeler.",
        client = {
            image = "deliverynote.png"
        }
    },

    ["keepcompanionpug"] = {
        label = "Pug",
        weight = 500,
        stack = false,
        close = true,
        description = "Pug is your royal companion!",
        client = {
            image = "A_C_Pug.png"
        }
    },

    ["weedtable"] = {
        label = "Esrar Masası",
        weight = 100,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "weedt.png"
        }
    },

    ["apple_juice"] = {
        label = "Elma Suyu",
        weight = 100,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "apple_juice.png"
        }
    },

    ["weed_notes"] = {
        label = "Garip Belgeler",
        weight = 100,
        stack = true,
        close = false,
        description = "Maaş derecenizin açıkça üzerinde olan belgeler",
        client = {
            image = "deliverynote.png"
        }
    },

    ["tomatopaste"] = {
        label = "Domates Salçası",
        weight = 25,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "tomatopaste.png"
        }
    },

    ["cooked_ham"] = {
        label = "Pişmiş Salam",
        weight = 25,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "cooked_ham.png"
        }
    },

    ["cow_leather"] = {
        label = "İnek Derisi",
        weight = 50,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "cow_leather.png"
        }
    },

    ["fish2"] = {
        label = "Balık",
        weight = 1000,
        stack = true,
        close = false,
        description = "A Fish",
        client = {
            image = "fish2.png"
        }
    },

    ["stripedbass"] = {
        label = "Çizgili Levrek",
        weight = 1000,
        stack = true,
        close = false,
        description = "A Fish",
        client = {
            image = "stripedbass.png"
        }
    },

    ["keepcompanionhusky"] = {
        label = "Husky",
        weight = 500,
        stack = false,
        close = true,
        description = "Husky is your royal companion!",
        client = {
            image = "A_C_Husky.png"
        }
    },

    ["keepcompanioncat"] = {
        label = "Cat",
        weight = 500,
        stack = false,
        close = true,
        description = "Cat is your royal companion!",
        client = {
            image = "A_C_Cat_01.png"
        }
    },

    ["keepcompanionshepherd"] = {
        label = "Shepherd",
        weight = 500,
        stack = false,
        close = true,
        description = "Shepherd is your royal companion!",
        client = {
            image = "A_C_shepherd.png"
        }
    },

    ["beef"] = {
        label = "Pişmiş İnek Eti",
        weight = 25,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "beef.png"
        }
    },

    ["keepcompanionpoodle"] = {
        label = "Poodle",
        weight = 500,
        stack = false,
        close = true,
        description = "Poodle is your royal companion!",
        client = {
            image = "A_C_Poodle.png"
        }
    },

    ["pig_leather"] = {
        label = "Domuz Derisi",
        weight = 50,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "pig_leather.png"
        }
    },

    ["tree_lumber"] = {
        label = "Kesilmiş Ağaç",
        weight = 50,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "lumber.png"
        }
    },

    ["laptop_pink"] = {
        label = "Pembe Laptop",
        weight = 15000,
        stack = false,
        close = true,
        description = "A security Laptop",
        client = {
            image = "laptop_pink.png"
        }
    },

    ["tomato"] = {
        label = "Domates",
        weight = 15,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "tomato.png"
        }
    },

    ["cooked_sausage"] = {
        label = "Pişmiş Sosisli",
        weight = 25,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "cooked_sausage.png"
        }
    },

    ["goldfish"] = {
        label = "Altın Balık",
        weight = 1000,
        stack = true,
        close = false,
        description = "A Fish",
        client = {
            image = "goldfish.png"
        }
    },

    ["case_recoil"] = {
        label = "Recoil Case",
        weight = 2000,
        stack = false,
        close = true,
        description = "A prize awaits inside.",
        client = {
            image = "case_recoil.png"
        }
    },

    ["simcard"] = {
        label = "Sim Card",
        weight = 1,
        stack = true,
        close = true,
        description = "Numara değiştirmeye ne dersin?",
        client = {
            image = "simcard.png"
        }
    },

    ["belt"] = {
        label = "Kemer",
        weight = 250,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "belt.png"
        }
    },

    ["firstaidforpet"] = {
        label = "First aid for pet",
        weight = 500,
        stack = true,
        close = true,
        description = "Revive your pet!",
        client = {
            image = "firstaidforpet.png"
        }
    },

    ["doors"] = {
        label = "Kapılar",
        weight = 150,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "doors.png"
        }
    },

    ["grapes"] = {
        label = "Üzüm Salkımı",
        weight = 15,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "grapes.png"
        }
    },

    ["fishingrod"] = {
        label = "Olta",
        weight = 1000,
        stack = true,
        close = true,
        description = "With this I can catch the fish..",
        client = {
            image = "fishingrod.png"
        }
    },

    ["goldearring"] = {
        label = "Altın Küpeler",
        weight = 200,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "gold_earring.png"
        }
    },

    ["screwdriver"] = {
        label = "Tornavida",
        weight = 250,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "screwdriver.png"
        }
    },

    ["towing_rope"] = {
        label = "Çekme Halatı",
        weight = 40,
        stack = true,
        close = true,
        description = "Bununla fantastik şeyler deneme lütfen",
        client = {
            image = "towing_rope.png"
        }
    },

    ["pumpkinpiebox"] = {
        label = "Balkabağı Pastası",
        weight = 25,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "pumpkinpiebox.png"
        }
    },

    ["petgroomingkit"] = {
        label = "Pet Grooming Kit",
        weight = 1000,
        stack = false,
        close = true,
        description = "Pet Grooming Kit",
        client = {
            image = "petgroomingkit.png"
        }
    },

    ["recyclablematerial"] = {
        label = "Geri Dönüşüm Kutusu",
        weight = 100,
        stack = true,
        close = false,
        description = "Geri Dönüşüm Malzemeleri",
        client = {
            image = "recyclablematerial.png"
        }
    },

    ["wood_plank"] = {
        label = "Kereste",
        weight = 50,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "woodplank.png"
        }
    },

    ["registered_license_plate"] = {
        label = "Kayıtlı Plaka",
        weight = 150,
        stack = false,
        close = true,
        description = "Kullanıma hazır tescilli bir plaka.",
        client = {
            image = "licenseplate.png"
        }
    },

    ["chillypepper"] = {
        label = "Chilly Biberi",
        weight = 15,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "chillypepper.png"
        }
    },

    ["raw_pork"] = {
        label = "Çiğ Domuz Eti",
        weight = 25,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "raw_pork.png"
        }
    },

    ["raw_ham"] = {
        label = "Çiğ Salam",
        weight = 25,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "raw_ham.png"
        }
    },

    ["petfood"] = {
        label = "pet food",
        weight = 500,
        stack = true,
        close = true,
        description = "food for your companion!",
        client = {
            image = "petfood.png"
        }
    },

    ["petnametag"] = {
        label = "Name tag",
        weight = 500,
        stack = true,
        close = true,
        description = "Rename your pet",
        client = {
            image = "petnametag.png"
        }
    },

    ["1911bp"] = {
        label = "Colt M1911 BP",
        weight = 100,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "1911bp.png"
        }
    },

    ["laptop_gold"] = {
        label = "Altın Laptop",
        weight = 15000,
        stack = false,
        close = true,
        description = "A security Laptop",
        client = {
            image = "laptop_gold.png"
        }
    },

    ["keepcompanionretriever"] = {
        label = "Retriever",
        weight = 500,
        stack = false,
        close = true,
        description = "Retriever is your royal companion!",
        client = {
            image = "A_C_Retriever.png"
        }
    },

    ["ptrigger"] = {
        label = "Tabanca Tetiği",
        weight = 100,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "spring.png"
        }
    },

    ["whale"] = {
        label = "Balina",
        weight = 1000,
        stack = true,
        close = false,
        description = "A Fish",
        client = {
            image = "whale.png"
        }
    },

    ["stingray"] = {
        label = "Vatoz",
        weight = 1000,
        stack = true,
        close = false,
        description = "A Fish",
        client = {
            image = "stingray.png"
        }
    },

    ["tree_bark"] = {
        label = "Ağaç Parçaları",
        weight = 50,
        stack = true,
        close = true,
        description = "",
        client = {
            image = "treebark.png"
        }
    },

    ["keepcompanionrottweiler"] = {
        label = "Rottweiler",
        weight = 500,
        stack = false,
        close = true,
        description = "Rottweiler is your royal companion!",
        client = {
            image = "A_Rottweiler.png"
        }
    },

    ["keepcompanionhen"] = {
        label = "Hen",
        weight = 500,
        stack = false,
        close = true,
        description = "Hen is your royal companion!",
        client = {
            image = "A_C_Hen.png"
        }
    },

    ["keepcompanionmtlion2"] = {
        label = "Panter",
        weight = 500,
        stack = false,
        close = true,
        description = "Panter is your royal companion!",
        client = {
            image = "A_C_MtLion.png"
        }
    },

    ["kovan"] = {
        label = "Mermi Kovanı",
        weight = 100,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "kovan.png"
        }
    },

    ["casino_chips"] = {
        label = "Casino Chips",
        weight = 0,
        stack = true,
        close = false,
        description = "Chips For Casino Gambling",
        client = {
            image = "casino_chips.png"
        }
    },

    ["driftchip"] = {
        label = "DriftChip",
        weight = 1550,
        stack = true,
        close = true,
        description = "Aracın tüm kontrol karakteristiklerini değiştirir.",
        client = {
            image = "tunerchip.png"
        }
    },

    ['repairparts'] = {
        label = 'Repair Engine Parts',
        weight = 250,
        stack = false,
        close = true
    },

    ['street_tires'] = {
        label = 'Street Tires',
        weight = 250,
        stack = true,
        close = true,
        client = {
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_player'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'
        }
    },
    ['sports_tires'] = {
        label = 'Sports Tires',
        weight = 250,
        stack = true,
        close = true,
        client = {
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_player'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'
        }
    },
    ['racing_tires'] = {
        label = 'Racing Tires',
        weight = 250,
        stack = true,
        close = true,
        client = {
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_player'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'
        }
    },
    ['drag_tires'] = {
        label = 'Drag Tires',
        weight = 250,
        stack = true,
        close = true,
        client = {
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_player'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'
        }
    },

    ['transmition_clutch'] = {
        label = 'OEM Transmission Clutch',
        weight = 100,
        stack = true,
        client = {

            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },

    ['engine_flywheel'] = {
        label = 'OEM Flywheel',
        weight = 100,
        stack = true,
        client = {

            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },

    ['engine_oil'] = {
        label = 'OEM Engine Oil',
        weight = 100,
        stack = true,
        client = {

            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },

    ['engine_sparkplug'] = {
        label = 'Sparkplugs Kit',
        weight = 50,
        stack = true,
        client = {
            -- status = { hunger = -10000, thirst = -10000, stress = -100000 },
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },

    ['engine_gasket'] = {
        label = 'OEM Head Gasket Kit',
        weight = 50,
        stack = true,
        client = {
            -- status = { hunger = -10000, thirst = -10000, stress = -100000 },
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },

    ['engine_airfilter'] = {
        label = 'OEM Intake Air Filter',
        weight = 50,
        stack = true,
        client = {
            -- status = { hunger = -20000, thirst = -30000, stress = -100000 },
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },

    ['engine_fuelinjector'] = {
        label = 'OEM Fuel Injectors',
        weight = 150,
        stack = true,
        client = {
            -- status = { hunger = -20000, thirst = -30000, stress = -100000 },
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },
    ['engine_pistons'] = {
        label = 'OEM Pistons Kit',
        weight = 350,
        stack = true,
        client = {

            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },

    ['engine_connectingrods'] = {
        label = 'OEM Connecting Rods Kit',
        weight = 350,
        stack = true,
        client = {

            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },

    ['engine_valves'] = {
        label = 'OEM Head Valves Kit',
        weight = 350,
        stack = true,
        client = {

            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },

    ['engine_block'] = {
        label = 'OEM Block',
        weight = 350,
        stack = true,
        client = {

            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },

    ['engine_crankshaft'] = {
        label = 'OEM CrankShaft',
        weight = 350,
        stack = true,
        client = {

            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'
        }
    },

    ['engine_camshaft'] = {
        label = 'OEM Camshaft',
        weight = 350,
        stack = true,
        client = {

            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'
        }
    },

    ['ecu'] = {
        label = 'ecu',
        weight = 20,
        stack = true,
        close = true,
        description = nil
    },

    ['drift_tires'] = {
        label = 'Drift Tires',
        weight = 250,
        stack = true,
        close = true,
        client = {
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_player'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'
        }
    },

    ['lsdf'] = {
        label = 'Limited Slip Differential (Front)',
        weight = 250,
        stack = true,
        close = true,
        client = {
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_player'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'
        }
    },

    ['lsdr'] = {
        label = 'Limited Slip Differential (Rear)',
        weight = 250,
        stack = true,
        close = true,
        client = {
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_player'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'
        }
    },

    ['tcs'] = {
        label = 'Traction Control System (TCS)',
        weight = 250,
        stack = true,
        close = true,
        client = {
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_player'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'
        }
    },

    ['esc'] = {
        label = 'Stability Control System (ESC)',
        weight = 250,
        stack = true,
        close = true,
        client = {
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_player'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'
        }
    },

    ['closerationgears'] = {
        label = 'Close Ratio Gears',
        weight = 250,
        stack = true,
        close = true,
        client = {
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_player'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'
        }
    },

    ['cvttranny'] = {
        label = 'CVT Transmission',
        weight = 250,
        stack = true,
        close = true,
        client = {
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_player'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'
        }
    },

    ['abs'] = {
        label = 'Anti-lock braking System',
        weight = 250,
        stack = true,
        close = true,
        client = {
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_player'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'
        }
    },

    ['axletorsionfront'] = {
        label = 'Axle Torsion (Front)',
        weight = 250,
        stack = true,
        close = true,
        client = {
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_player'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'
        }
    },

    ['axletorsionrear'] = {
        label = 'Axle Torsion (Rear)',
        weight = 250,
        stack = true,
        close = true,
        client = {
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_player'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'
        }
    },

    ['axlesolidfront'] = {
        label = 'Axle Solid (Front)',
        weight = 250,
        stack = true,
        close = true,
        client = {
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_player'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'
        }
    },

    ['axlesolidrear'] = {
        label = 'Axle Solid (Rear)',
        weight = 250,
        stack = true,
        close = true,
        client = {
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_player'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'
        }
    },

    ['kers'] = {
        label = 'Kinetic Energy Recovery System (KERS)',
        weight = 250,
        stack = true,
        close = true,
        client = {
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_player'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'
        }
    },

    ['offroadtune1'] = {
        label = 'Offroad Tune 1',
        weight = 250,
        stack = true,
        close = true,
        client = {
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_player'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'
        }
    },

    ['offroadtune2'] = {
        label = 'Offroad Tune 2',
        weight = 250,
        stack = true,
        close = true,
        client = {
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_player'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'
        }
    },

    ['stanced'] = {
        label = 'Stanced Tune',
        weight = 250,
        stack = true,
        close = true,
        client = {
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_player'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'
        }
    },

    ['frontwheeldrive'] = {
        label = 'Front Wheel Drivetrain',
        weight = 250,
        stack = true,
        close = true,
        client = {
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_player'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'
        }
    },

    ['allwheeldrive'] = {
        label = 'All Wheel Drivetrain',
        weight = 250,
        stack = true,
        close = true,
        client = {
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_player'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'
        }
    },

    ['rearwheeldrive'] = {
        label = 'Rear Wheel Drivetrain',
        weight = 250,
        stack = true,
        close = true,
        client = {
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_player'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'
        }
    },

    ['oem_brakes'] = {
        label = 'OEM Brakes',
        weight = 250,
        stack = true,
        close = true,
        client = {
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_player'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'
        }
    },

    ['oem_suspension'] = {
        label = 'OEM Suspension',
        weight = 250,
        stack = true,
        close = true,
        client = {
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_player'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'
        }
    },

    ['oem_gearbox'] = {
        label = 'OEM Gear Box',
        weight = 250,
        stack = true,
        close = true,
        client = {
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_player'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'
        }
    },

    ['elite_brakes'] = {
        label = 'Elite Brakes',
        weight = 250,
        stack = true,
        close = true,
        client = {
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_player'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'
        }
    },

    ['elite_suspension'] = {
        label = 'Elite Suspension',
        weight = 250,
        stack = true,
        close = true,
        client = {
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_player'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'
        }
    },

    ['elite_gearbox'] = {
        label = 'Elite Gear Box',
        weight = 250,
        stack = true,
        close = true,
        client = {
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_player'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'
        }
    },

    ['elite_clutch'] = {
        label = 'Elite Transmission Clutch',
        weight = 100,
        stack = true,
        client = {

            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },

    ['elite_flywheel'] = {
        label = 'Elite Flywheel',
        weight = 100,
        stack = true,
        client = {

            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },

    ['elite_oil'] = {
        label = 'Elite Oil',
        weight = 100,
        stack = true,
        client = {

            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },

    ['elite_sparkplug'] = {
        label = 'Elite Sparkplugs Kit',
        weight = 50,
        stack = true,
        client = {

            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },

    ['elite_gasket'] = {
        label = 'Elite Head Gasket Kit',
        weight = 50,
        stack = true,
        client = {

            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },

    ['elite_airfilter'] = {
        label = 'Elite Intake Air Filter',
        weight = 50,
        stack = true,
        client = {

            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },

    ['elite_fuelinjector'] = {
        label = 'Elite Fuel Injectors',
        weight = 150,
        stack = true,
        client = {

            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },
    ['elite_pistons'] = {
        label = 'Elite Pistons Kit',
        weight = 350,
        stack = true,
        client = {

            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },

    ['elite_connectingrods'] = {
        label = 'Elite Connecting Rods Kit',
        weight = 350,
        stack = true,
        client = {

            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },

    ['elite_valves'] = {
        label = 'Elite Head Valves Kit',
        weight = 350,
        stack = true,
        client = {

            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },

    ['elite_block'] = {
        label = 'Elite Block',
        weight = 350,
        stack = true,
        client = {

            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },

    ['elite_crankshaft'] = {
        label = 'Elite CrankShaft',
        weight = 350,
        stack = true,
        client = {

            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'
        }
    },

    ['elite_camshaft'] = {
        label = 'Elite Camshaft',
        weight = 350,
        stack = true,
        client = {

            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'
        }
    },

    ['pro_brakes'] = {
        label = 'Pro Brakes',
        weight = 250,
        stack = true,
        close = true,
        client = {
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_player'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'
        }
    },

    ['pro_suspension'] = {
        label = 'Pro Suspension',
        weight = 250,
        stack = true,
        close = true,
        client = {
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_player'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'
        }
    },

    ['pro_gearbox'] = {
        label = 'Pro Gear Box',
        weight = 250,
        stack = true,
        close = true,
        client = {
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_player'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'
        }
    },

    ['pro_clutch'] = {
        label = 'Pro Transmission Clutch',
        weight = 100,
        stack = true,
        client = {

            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },

    ['pro_flywheel'] = {
        label = 'Pro Flywheel',
        weight = 100,
        stack = true,
        client = {

            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },

    ['pro_oil'] = {
        label = 'Pro Oil',
        weight = 100,
        stack = true,
        client = {

            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },

    ['pro_sparkplug'] = {
        label = 'Pro Sparkplugs Kit',
        weight = 50,
        stack = true,
        client = {

            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },

    ['pro_gasket'] = {
        label = 'Pro Head Gasket Kit',
        weight = 50,
        stack = true,
        client = {

            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },

    ['pro_airfilter'] = {
        label = 'Pro Intake Air Filter',
        weight = 50,
        stack = true,
        client = {

            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },

    ['pro_fuelinjector'] = {
        label = 'Pro Fuel Injectors',
        weight = 150,
        stack = true,
        client = {

            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },
    ['pro_pistons'] = {
        label = 'Pro Pistons Kit',
        weight = 350,
        stack = true,
        client = {

            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },

    ['pro_connectingrods'] = {
        label = 'Pro Connecting Rods Kit',
        weight = 350,
        stack = true,
        client = {

            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },

    ['pro_valves'] = {
        label = 'Pro Head Valves Kit',
        weight = 350,
        stack = true,
        client = {

            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },

    ['pro_block'] = {
        label = 'Pro Block',
        weight = 350,
        stack = true,
        client = {

            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },

    ['pro_crankshaft'] = {
        label = 'Pro CrankShaft',
        weight = 350,
        stack = true,
        client = {

            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'
        }
    },

    ['pro_camshaft'] = {
        label = 'Pro Camshaft',
        weight = 350,
        stack = true,
        client = {

            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'
        }
    },

    ['racing_brakes'] = {
        label = 'Racing Brakes',
        weight = 250,
        stack = true,
        close = true,
        client = {
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_player'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'
        }
    },

    ['racing_suspension'] = {
        label = 'Racing Suspension',
        weight = 250,
        stack = true,
        close = true,
        client = {
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_player'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'
        }
    },

    ['racing_gearbox'] = {
        label = 'Racing Gear Box',
        weight = 250,
        stack = true,
        close = true,
        client = {
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_player'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'
        }
    },

    ['racing_clutch'] = {
        label = 'Racing Transmission Clutch',
        weight = 100,
        stack = true,
        client = {
            -- status = { hunger = -150000, thirst = -50000, stress = -100000 },
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },

    ['racing_flywheel'] = {
        label = 'Racing Flywheel',
        weight = 100,
        stack = true,
        client = {
            -- status = { hunger = -150000, thirst = -50000, stress = -100000 },
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },

    ['racing_oil'] = {
        label = 'Racing Oil',
        weight = 100,
        stack = true,
        client = {
            -- status = { hunger = -150000, thirst = -50000, stress = -100000 },
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },

    ['racing_sparkplug'] = {
        label = 'Racing Sparkplugs Kit',
        weight = 50,
        stack = true,
        client = {
            -- status = { hunger = -10000, thirst = -10000, stress = -100000 },
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },

    ['racing_gasket'] = {
        label = 'Racing Head Gasket Kit',
        weight = 50,
        stack = true,
        client = {
            -- status = { hunger = -10000, thirst = -10000, stress = -100000 },
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },

    ['racing_airfilter'] = {
        label = 'Racing Intake Air Filter',
        weight = 50,
        stack = true,
        client = {
            -- status = { hunger = -20000, thirst = -30000, stress = -100000 },
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },

    ['racing_fuelinjector'] = {
        label = 'Racing Fuel Injectors',
        weight = 150,
        stack = true,
        client = {
            -- status = { hunger = -20000, thirst = -30000, stress = -100000 },
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },
    ['racing_pistons'] = {
        label = 'Racing Pistons Kit',
        weight = 350,
        stack = true,
        client = {
            -- status = { hunger = -110000, thirst = -1130000, stress = -200000 },
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },

    ['racing_connectingrods'] = {
        label = 'Racing Connecting Rods Kit',
        weight = 350,
        stack = true,
        client = {
            -- status = { hunger = -110000, thirst = -1130000, stress = -200000 },
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },

    ['racing_valves'] = {
        label = 'Racing Head Valves Kit',
        weight = 350,
        stack = true,
        client = {
            -- status = { hunger = -110000, thirst = -1130000, stress = -200000 },
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },

    ['racing_block'] = {
        label = 'Racing Block',
        weight = 350,
        stack = true,
        client = {
            -- status = { hunger = -110000, thirst = -1130000, stress = -200000 },
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },

    ['racing_crankshaft'] = {
        label = 'Racing CrankShaft',
        weight = 350,
        stack = true,
        client = {
            -- status = { hunger = -110000, thirst = -1130000, stress = -200000 },
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'
        }
    },

    ['racing_camshaft'] = {
        label = 'Racing Camshaft',
        weight = 350,
        stack = true,
        client = {
            -- status = { hunger = -110000, thirst = -1130000, stress = -200000 },
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'
        }
    },

    ['ultimate_brakes'] = {
        label = 'Ultimate Brakes',
        weight = 250,
        stack = true,
        close = true,
        client = {
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_player'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'
        }
    },

    ['ultimate_suspension'] = {
        label = 'Ultimate Suspension',
        weight = 250,
        stack = true,
        close = true,
        client = {
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_player'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'
        }
    },

    ['ultimate_gearbox'] = {
        label = 'Ultimate Gear Box',
        weight = 250,
        stack = true,
        close = true,
        client = {
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_player'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'
        }
    },

    ['ultimate_clutch'] = {
        label = 'Ultimate Transmission Clutch',
        weight = 100,
        stack = true,
        client = {

            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },

    ['ultimate_flywheel'] = {
        label = 'Ultimate Flywheel',
        weight = 100,
        stack = true,
        client = {

            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },

    ['ultimate_oil'] = {
        label = 'Ultimate Oil',
        weight = 100,
        stack = true,
        client = {

            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },

    ['ultimate_sparkplug'] = {
        label = 'Ultimate Sparkplugs Kit',
        weight = 50,
        stack = true,
        client = {

            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },

    ['ultimate_gasket'] = {
        label = 'Ultimate Head Gasket Kit',
        weight = 50,
        stack = true,
        client = {

            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },

    ['ultimate_airfilter'] = {
        label = 'Ultimate Intake Air Filter',
        weight = 50,
        stack = true,
        client = {

            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },

    ['ultimate_fuelinjector'] = {
        label = 'Ultimate Fuel Injectors',
        weight = 150,
        stack = true,
        client = {

            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },
    ['ultimate_pistons'] = {
        label = 'Ultimate Pistons Kit',
        weight = 350,
        stack = true,
        client = {

            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },

    ['ultimate_connectingrods'] = {
        label = 'Ultimate Connecting Rods Kit',
        weight = 350,
        stack = true,
        client = {

            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },

    ['ultimate_valves'] = {
        label = 'Ultimate Head Valves Kit',
        weight = 350,
        stack = true,
        client = {

            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },

    ['ultimate_block'] = {
        label = 'Ultimate Block',
        weight = 350,
        stack = true,
        client = {

            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'

        }
    },

    ['ultimate_crankshaft'] = {
        label = 'Ultimate CrankShaft',
        weight = 350,
        stack = true,
        client = {

            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'
        }
    },

    ['ultimate_camshaft'] = {
        label = 'Ultimate Camshaft',
        weight = 350,
        stack = true,
        client = {

            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
            usetime = 5500,
            export = 'renzu_tuners.useItem'
        }
    },
    ['polyester'] = {
        label = 'Polyester',
        weight = 20,
        stack = true,
        close = true,
        description = nil
    },
    ['chip'] = {
        label = 'Chip',
        weight = 20,
        stack = true,
        close = true,
        description = nil
    },
    ['board'] = {
        label = 'Board',
        weight = 20,
        stack = true,
        close = true,
        description = nil
    },

	['carpaintspray19'] = {
		label = "Cyan-Mor Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray2"] = {
		label = "Şarap Kırmızı Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray41"] = {
		label = "A. İnci Yeşil Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray65"] = {
		label = "Özel - Lime Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray26"] = {
		label = "Burgonya-Yeşil Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray68"] = {
		label = "Özel - 4S Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray10"] = {
		label = "Altın Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray62"] = {
		label = "Özel - Chrome Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray17"] = {
		label = "Turkuaz-Kırmızı Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray78"] = {
		label = "Özel - HSW Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray81"] = {
		label = "Özel - Fubuki Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray12"] = {
		label = "Yeşil-Kırmızı Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray49"] = {
		label = "İnci Krem Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray14"] = {
		label = "Yeşil-Turkuaz Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray32"] = {
		label = "Turuncu-Mavi Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray30"] = {
		label = "Kırmızı-Turuncu Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray31"] = {
		label = "Turuncu-Mor Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray21"] = {
		label = "Mavi-Yeşil Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray13"] = {
		label = "Yeşil-Kahve Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray4"] = {
		label = "Mavi Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray71"] = {
		label = "Özel - Rainbow Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray18"] = {
		label = "Turkuaz-Mor Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray67"] = {
		label = "Özel - Wave Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray69"] = {
		label = "Özel - 9M Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray70"] = {
		label = "Özel - Bubblegum Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray24"] = {
		label = "Magenta-Yeşil Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray35"] = {
		label = "Mavi Rainbow Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray44"] = {
		label = "A. İnci Pembe Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray79"] = {
		label = "Özel - Electro Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray7"] = {
		label = "Bakır Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray1"] = {
		label = "Kırmızı Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray60"] = {
		label = "Siyah Hologram Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray23"] = {
		label = "Mor-Yeşil Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray52"] = {
		label = "K. Mavi Prizma Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray56"] = {
		label = "Yeşil Prizma Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray46"] = {
		label = "İnci Sarı Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray45"] = {
		label = "İnci Pembe Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray25"] = {
		label = "Magenta-Sarı Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray47"] = {
		label = "İnci Yeşil Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray22"] = {
		label = "Mor-Kırmızı Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray34"] = {
		label = "Kırmızı Rainbow Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray5"] = {
		label = "Yeşil Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray6"] = {
		label = "Lime Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray11"] = {
		label = "Yeşil-Mavi Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["darkpurplepearl"] = {
		label = "K. İnci Mor Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray29"] = {
		label = "Magenta-Turuncu Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray77"] = {
		label = "Özel - Temperatur Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray80"] = {
		label = "Özel - Monica Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray63"] = {
		label = "Özel - İyigün Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray36"] = {
		label = "K. İnci Yeşil Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray53"] = {
		label = "K. Mor Prizma Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray37"] = {
		label = "K. İnci Turkuaz Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray33"] = {
		label = "Beyaz-Mor Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray61"] = {
		label = "Beyaz Hologram Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray57"] = {
		label = "Siyah Prizma Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray66"] = {
		label = "Özel - VC Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray15"] = {
		label = "Yeşil-Mor Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray48"] = {
		label = "İnci Mavi Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray76"] = {
		label = "Özel - Christmas Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray16"] = {
		label = "Turkuaz-Mor Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray50"] = {
		label = "Beyaz Prizma Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray43"] = {
		label = "A. İnci Mor Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray9"] = {
		label = "Şampanya Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray54"] = {
		label = "Pembe Prizma Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray28"] = {
		label = "Bakır-Mor Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray27"] = {
		label = "Magenta-Cyan Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray55"] = {
		label = "Kırmızı Prizma Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray64"] = {
		label = "Özel - MMKP Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray58"] = {
		label = "Petrol Prizma Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray40"] = {
		label = "İnci Petrol Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray38"] = {
		label = "K. İnci Mavi Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray42"] = {
		label = "A. İnci Mavi Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray59"] = {
		label = "Rainbow Prizma Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray75"] = {
		label = "Özel - Chromebera Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray20"] = {
		label = "Mavi-Pembe Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray8"] = {
		label = "Bronz Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray51"] = {
		label = "Grafit Prizma Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray73"] = {
		label = "Özel - The Seven Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray3"] = {
		label = "Mor Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray74"] = {
		label = "Özel - Kamenrider Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray72"] = {
		label = "Özel - Sunset Spray",
		weight = 200,
		stack = false,
		close = true,
		 description = nil
 
	},

	["carpaintspray39"] = {
		label = "K. İnci Mor Spray",
		weight = 200,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "carpaintspray.png",
		}
	},
}