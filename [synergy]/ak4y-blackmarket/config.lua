-- ak4y dev.
-- IF YOU HAVE ANY PROBLEM OR DO YOU NEED HELP PLS COME TO MY DISCORD SERVER AND CREATE A TICKET
-- IF YOU DONT HAVE ANY PROBLEM YET AGAIN COME TO MY DISCORD =)
-- https://discord.gg/kWwM3Bx
--------------------------------------------------------------------------------------------------------
-- IMPORTANT -- IMPORTANT -- IMPORTANT -- IMPORTANT -- IMPORTANT -- IMPORTANT -- IMPORTANT -- IMPORTANT
-- YOU SHOUD RESET AK4Y-BLACKMARKET SQL, WHEN YOU CHANGE ANYTHING ON TASKS... ITS NUI DEVTOOLS PROTECT
--------------------------------------------------------------------------------------------------------
AK4Y = {}

AK4Y.Framework = "qb" -- qb / oldqb | qb = export system | oldqb = triggerevent system
AK4Y.Mysql = "oxmysql" -- Check fxmanifest.lua when you change it! | ghmattimysql / oxmysql / mysql-async
AK4Y.TaskResetPeriod = 2 -- DAY (Tasks are reset and become available again)
AK4Y.WeaponsAreItem = true -- If your weapons are item then you should set this TRUE.
AK4Y.DefaultGarage = "pillboxgarage" -- purchased vehicles will be sent to this garage

AK4Y.Translate = {
    male = "MALE",
    female = "FEMALE"
}

AK4Y.Blackmarkets = {{
    pedName = "AK4Y",
    pedHash = 0x855E36A3, -- https://wiki.rage.mp/index.php?title=Peds
    pedCoord = vector3(-1001.35, 4847.36, 274.01), -- ped coord vector4(-168.95, 6144.61, 42.64, 89.0)
    h = 16.75, -- ped heading
    drawText = "Black Market",
    authorizedJobs = {"all"}, -- if you type all then all players will have access
    -- authorizedJobs = {"gang1", "gang2"}, -- If you want to integrate the job, this is the example.
    blipSettings = { -- https://docs.fivem.net/docs/game-references/blips/
        blip = false,
        blipName = "Blackmarket",
        blipIcon = 68,
        blipColour = 3
    }
} -- {
--     pedName = "AK4Y", 
--     pedHash = 0x855E36A3, -- https://wiki.rage.mp/index.php?title=Peds
--     pedCoord = vector3(600.11, -462.05, 24.38),
--     drawText = "Nervous-Looking Man",
--     authorizedJobs = {"gang1", "gang2"}
--     h = 351,
--     blipSettings = { -- https://docs.fivem.net/docs/game-references/blips/
--         blip = false,
--         blipName = "Blackmarket",
--         blipIcon = 68,
--         blipColour = 3,
--     },
-- },
}

AK4Y.Categories = {{
    category = "weapon",
    label = "Silahlar"
}, {
    category = "item",
    label = "Mühimmatlar"
}, {
    category = "malzeme",
    label = "Malzemeler"
} -- { category = "knife", label = "KNIFE" },
-- { category = "rig", label = "RIG" },
}

-- type: "ITEM", "WEAPON", "MONEY", "VEHICLE"
AK4Y.CategoryItems = {{
    id = 1,
    category = "weapon",
    itemName = "weapon_bat",
    type = "WEAPON",
    label = "Beyzbol Sopası",
    price = 10000,
    count = 1,
    level = 1,
    image = "./images/weapon_bat.png"
}, {
    id = 2,
    category = "item",
    itemName = "armor",
    type = "ITEM",
    label = "Hafif Zırh",
    price = 5000,
    count = 1,
    level = 4,
    image = "./images/armor.png"
}, {
    id = 3,
    category = "malzeme",
    itemName = "telefon",
    type = "ITEM",
    label = "3310",
    price = 3000,
    count = 1,
    level = 2,
    image = "./images/telefon.png"
}, {
    id = 4,
    category = "weapon",
    itemName = "weapon_knuckle",
    type = "WEAPON",
    label = "Muşta",
    price = 10000,
    count = 1,
    level = 2,
    image = "./images/weapon_knuckle.png"
}, {
    id = 5,
    category = "weapon",
    itemName = "weapon_switchblade",
    type = "WEAPON",
    label = "Sustalı",
    price = 25000,
    count = 1,
    level = 3,
    image = "./images/weapon_switchblade.png"
}, {
    id = 6,
    category = "malzeme",
    itemName = "methkey",
    type = "ITEM",
    label = "Meth Anahtarı",
    price = 3000,
    count = 1,
    level = 5,
    image = "./images/keya.png"
}, {
    id = 7,
    category = "malzeme",
    itemName = "cocainekey",
    type = "ITEM",
    label = "Kokain Anahtarı",
    price = 3000,
    count = 1,
    level = 5,
    image = "./images/keyb.png"
}, {
    id = 8,
    category = "weapon",
    itemName = "weapon_fnx45",
    type = "WEAPON",
    label = "Fnx 45",
    price = 35000,
    count = 1,
    level = 2,
    image = "./images/weapon_fnx45.png"
}, {
    id = 9,
    category = "weapon",
    itemName = "weapon_crowbar",
    type = "WEAPON",
    label = "Levye",
    price = 20000,
    count = 1,
    level = 4,
    image = "./images/weapon_crowbar.png"
}, {
    id = 10,
    category = "weapon",
    itemName = "weapon_machete",
    type = "WEAPON",
    label = "Machete",
    price = 25000,
    count = 1,
    level = 4,
    image = "./images/weapon_machete.png"
}, {
    id = 11,
    category = "item",
    itemName = "heavyarmor",
    type = "ITEM",
    label = "Ağır Zırh",
    price = 7500,
    count = 1,
    level = 4,
    image = "./images/heavyarmor.png"
}, {
    id = 12,
    category = "item",
    itemName = "ammo-9",
    type = "ITEM",
    label = "Pistol Mermisi",
    price = 2500,
    count = 1,
    level = 2,
    image = "./images/ammo-9.png"
}, {
    id = 13,
    category = "weapon",
    itemName = "weapon_knife",
    type = "WEAPON",
    label = "Bıçak",
    price = 20000,
    count = 1,
    level = 5,
    image = "./images/weapon_knife.png"
}, {
    id = 14,
    category = "weapon",
    itemName = "weapon_browning",
    type = "WEAPON",
    label = "Browning",
    price = 45000,
    count = 1,
    level = 11,
    image = "./images/weapon_browning.png"
}, {
    id = 15,
    category = "weapon",
    itemName = "weapon_glock17",
    type = "WEAPON",
    label = "Glock-17",
    price = 70000,
    count = 1,
    level = 11,
    image = "./images/weapon_glock17.png"
}, {
    id = 16,
    category = "malzeme",
    itemName = "weedseed",
    type = "ITEM",
    label = "Esrar Tohumu",
    price = 800,
    count = 1,
    level = 7,
    image = "./images/weedplant_seed.png"
}, {
    id = 17,
    category = "item",
    itemName = "ammo-smg",
    type = "ITEM",
    label = "Smg Mermisi",
    price = 20000,
    count = 1,
    level = 21,
    image = "./images/ammo-smg.png"
}, {
    id = 18,
    category = "item",
    itemName = "ammo-rifle",
    type = "ITEM",
    label = "Rifle Mermisi",
    price = 25000,
    count = 1,
    level = 20,
    image = "./images/ammo-rifle.png"
}, {
    id = 19,
    category = "weapon",
    itemName = "weapon_mac10",
    type = "WEAPON",
    label = "MAC 10",
    price = 250000,
    count = 1,
    level = 21,
    image = "./images/weapon_mac10.png"
}, {
    id = 20,
    category = "malzeme",
    itemName = "trojan_usb",
    type = "ITEM",
    label = "Trojan USB",
    price = 15000,
    count = 1,
    level = 18,
    image = "./images/usb_device.png"
}, {
    id = 21,
    category = "malzeme",
    itemName = "advancedlockpick",
    type = "ITEM",
    label = "Gelişmiş Maymuncuk",
    price = 5000,
    count = 1,
    level = 6,
    image = "./images/advancedlockpick.png"
}}

-- These tasks are examples, you should integrate tasks according to your own server package and taste.
-- Don't worry, this process is quite simple, there is an example task integration and explanation in example.lua.
AK4Y.Tasks = {{
    taskId = 1,
    requiredcount = 15,
    rewardXP = 250,
    taskTitle = "3310 İle Satış Yap",
    taskDescription = "3310 İle 10 Adet Satış Yap"
}, {
    taskId = 2,
    requiredcount = 3,
    rewardXP = 200,
    taskTitle = "Araç Parçala",
    taskDescription = "2 Adet Araç Parçala"
}, {
    taskId = 3,
    requiredcount = 3,
    rewardXP = 200,
    taskTitle = "Ev Soy",
    taskDescription = "2 Adet Ev Soy."
}, {
    taskId = 4,
    requiredcount = 1,
    rewardXP = 250,
    taskTitle = "Kuyumcu Soygunu",
    taskDescription = "1 Adet Kuyumcu Soy"
}, {
    taskId = 5,
    requiredcount = 1,
    rewardXP = 300,
    taskTitle = "Gun Shop Spygunu",
    taskDescription = "1 Adet Gun Shop Soy."
}, {
    taskId = 6,
    requiredcount = 2,
    rewardXP = 280,
    taskTitle = "Vezne Soy",
    taskDescription = "2 Adet Vezne Soy."
}, {
    taskId = 7,
    requiredcount = 4,
    rewardXP = 280,
    taskTitle = "Market Ön Kasa Soy",
    taskDescription = "2 Adet Market ön kasaı soy."
}, {
    taskId = 8,
    requiredcount = 1,
    rewardXP = 350,
    taskTitle = "Sanat Eseri Soygunu",
    taskDescription = "1 Adet Sanat Eseri Soy."
}, {
    taskId = 9,
    requiredcount = 15,
    rewardXP = 350,
    taskTitle = "ATM Soy",
    taskDescription = "15 Adet ATM Soy."
}}
