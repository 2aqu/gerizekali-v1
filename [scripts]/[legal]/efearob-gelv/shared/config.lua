Config,Locales = {} , {}

--[[---------------------------------------------------------------------------
░██████╗░███████╗███╗░░██╗███████╗██████╗░░█████╗░██╗░░░░░
██╔════╝░██╔════╝████╗░██║██╔════╝██╔══██╗██╔══██╗██║░░░░░
██║░░██╗░█████╗░░██╔██╗██║█████╗░░██████╔╝███████║██║░░░░░
██║░░╚██╗██╔══╝░░██║╚████║██╔══╝░░██╔══██╗██╔══██║██║░░░░░
╚██████╔╝███████╗██║░╚███║███████╗██║░░██║██║░░██║███████╗
░╚═════╝░╚══════╝╚═╝░░╚══╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝╚══════╝
---------------------------------------------------------------------------]]--

Config.Framework = 'newqb' -- oldesx / newesx / newqb / oldqb / autodetect
Config.SQL = 'oxmysql' -- oxmysql, ghmattimysql, mysql-async | Don't forget to set it in fxmanifest !
Config.Locale = 'en' -- cs & en are available 

-- Command
Config.Command = true -- Enabled opening mdt with command
Config.CommandName = 'mdt' -- Mdt open command 
 
-- Item
Config.Item = false -- if this option set to true the you can use mdt as item
Config.ItemName = 'mdt' -- item name

Config.Access = { -- occupations of the people who can access the mdt
    ['police'] = true,
    ['sheriff'] = true,
    ['davison'] = true,
    ['state'] = true,
    ['doj'] = true,
    ['ranger'] = true,
    ['vpd'] = true,
    ['dppd'] = true
}

Config.Headers = {
    ['police'] = 'LOS SANTOS POLICE DEPARTMENT',
    ['sheriff'] = 'LOS SANTOS SHERIFF DEPARTMENT',
    ['davison'] = 'LOS SANTOS SHERIFF DEPARTMENT',
    ['state'] = 'SAN ANDREAS STATE POLICE',
    ['vpd'] = 'VINEWOOD POLICE DEPARTMENT',
    ['dppd'] = 'DEL PIERRO POLICE DEPARTMENT',
    ['ranger'] = 'SAN ANDREAS PARK RANGER',
    ['doj'] = 'DEPARTMENT OF JUSTICE',
}

Config.SocietyNameJob = {
    police = 'society_police',
    sheriff = 'society_sheriff',
    ambulance = 'society_ambulance',
}

-- Billings
Config.Invoices = false -- if this option set to true the mdt will send the bill to the player
Config.OkokBilling = false -- if this option set to true the mdt will send the bill to the player with okokbilling
Config.JaksamBilling = false -- if this option set to true the mdt will send the bill to the player with jaksam bill

-- Community Service
Config.CommunityService = false -- if this option set to true the mdt will send the community service to the player (should be used with communtiy service script)
Config.CommunityServiceScript = 'JD_CommunityService' -- (for now only 'JD_CommunityService' is supported u can adjust it for your own script in server/editable.lua) https://github.com/JackDUpModZ/JD_CommunityService

-- Jail
Config.Jail = false -- if this option set to true the mdt will send the jail to the player (should be used with jail script)
Config.JailScript = 'esx-qalle-jail' -- (for now 'esx_jail' & 'esx-qalle-jail' & 'qb-prison' is supported u can adjust it for your own script in server/editable.lua) (esx_jail:https://github.com/esx-community/esx_jail , esx-qalle-jail:https://github.com/qalle-git/esx-qalle-jail/tree/master, qb-prison:https://github.com/qbcore-framework/qb-prison)

-- License
Config.LicenseSystem = 'default' -- default , esx_license (for now only esx_license is supported we can add with your suggestion)

-- Adjustments
Config.HouseSystem = false -- esx_property (only new legacy property version), 'qb-houses' , qs-housing , false
Config.Phone = 'lb-phone' -- qb-phone , qs-phone , lb-phone, road-phone, esx_default (database users table phone column), false
Config.mdtTransparent = true -- if this option set to true the mdt will be transparent if your mouse is not on it
Config.mdtBlurInGame = true -- if this option set to true the mdt will be blur in game if open input or select menu

-- Live Map & Chat & Customization
Config.LiveMapUpdateInterval = 15 -- seconds live map update interval
Config.ChatClearInterval = 20 -- minutes chat clear interval

Config.AvailableLicenses = { -- licenses that can be added to the mdt
    {
        type = 'driver',
        label = 'Driver License',
    },
    {
        type = 'weapon',
        label = 'Weapon License',
    },
    {
        type = 'business',
        label = 'Business License',
    },
    {
        type = 'aircraft',
        label = 'Aircraft License',
    },
    {
        type = 'boat',
        label = 'Boat License',
    },
    {
        type = 'truck',
        label = 'Truck License',
    },
    {
        type = 'bike',
        label = 'Bike License',
    },
}

-- Discord
Config.AvatarUrl = 'https://cdn.discordapp.com/attachments/1115629201245089802/1133894661585502300/dcphoto.jpg' -- avatar url for discord webhook
Config.BotName = 'POLICE MDT' -- bot name for discord webhook

-- Vehicle
Config.onlyInVehicle = false -- enable vehicle restriction for opening mdt
Config.allowedVehicles = {  -- the only allowed vehicles where the mdt can be opened
    'police',
    'police2',
    'police3',
    'police4',
    'policeb',
    'policeold1',
    'policeold2',
    'policet',
    'sheriff',
    'sheriff2',
}

Config.DisplayPage = { -- true shows the menu, false closes the menu
    ['DASHBOARD'] = true,
    ['PROFILES'] = true,
    ['INCIDENTS'] = true,
    ['WARRANTS'] = true,
    ['VEHICLES'] = true,
    ['CAMS'] = true,
    ['CALLS'] = false,
    ['EVIDENCE'] = true,
    ['CHARGES'] = true,
    ['HOUSES'] = false,
    ['LIVEMAP'] = false,
    ['SETTINGS'] = true,
}

Config.AccessMenu = { -- applies to grades above the number 
    ['DASHBOARD'] = nil,
    ['PROFILES'] = nil,
    ['INCIDENTS'] = nil,
    ['CREATE_INCIDENTS'] = nil, 
    ['WARRANTS'] = nil,
    ['CREATE_WARRANT'] = nil,
    ['VEHICLES'] = nil,
    ['CAMS'] = nil,
    ['CALLS'] = nil,
    ['EVIDENCE'] = nil,
    ['CREATE_EVIDENCE'] = nil,
    ['CHARGES'] = nil,
    ['CREATE_CHARGES'] = nil,
    ['HOUSES'] = nil,
    ['LIVEMAP'] = nil, 
    ['SETTINGS'] = nil,
}

Config.MenuOpen = function() -- This Executed when the menu is opened (useful to hide hud or any other elements on the screen)
    -- TriggerEvent('codem-blackhudv2:SetForceHide', true, true)
    -- TriggerEvent('codem-venicehud:SetForceHide', true)
end

Config.MenuClose = function() -- This Executed when the menu is closed (useful to show hud again or any other elements on the screen)
    -- TriggerEvent('codem-blackhudv2:SetForceHide', false, false)
    -- TriggerEvent('codem-venicehud:SetForceHide', false)
end

Config.CamCloseKey = 177 -- DELETE | https://docs.fivem.net/docs/game-references/controls/

Config.Cams = {
    [1] = {
        img = "./assets/cams/cam_1.png",
        position = vector4(381.73, 322.91, 105.86, 44.79),
        name = "Downtown Vinewood 24/7 Market",
        enable = true
    },
    [2] = {
        img = "./assets/cams/cam_2.png",
        position = vector4(257.25, 209.73, 109.95, 27.03),
        name = "Pacific Bank Cam 1",
        enable = true
    },
    [3] = {
        img = "./assets/cams/cam_3.png",
        position = vector4(232.71, 221.73, 108.44, 210.54),
        name = "Pacific Bank Cam 2",
        enable = true
    },
    [4] = {
        img = "./assets/cams/cam_4.png",
        position = vector4(252.08, 225.4, 104.71, 284.79),
        name = "Pacific Bank Cam 3",
        enable = true
    },
    [5] = {
        img = "./assets/cams/cam_5.png",
        position = vector4(-103.25, 6467.35, 33.71, 21.57),
        name = "Paleto Bank",
        enable = true
    },
    [6] = {
        img = "./assets/cams/cam_6.png",
        position = vector4(-627.47, -239.87, 40.58, 350.88),
        name = "Vangelico Jewelry  CAM 1",
        enable = true
    },
    [7] = {
        img = "./assets/cams/cam_7.png",
        position = vector4(-622.51, -236.2, 40.58, 350.41),
        name = "Vangelico Jewelry CAM 2",
        enable = true
    },
    [8] = {
        img = "./assets/cams/cam_8.png",
        position = vector4(-620.33, -224.39, 40.46, 177.1),
        name = "Vangelico Jewelry CAM 3",
        enable = true
    },
    [9] = {
        img = "./assets/cams/cam_9.png",
        position = vector4(-627.58, -229.56, 40.66, 168.05),
        name = "Vangelico Jewelry CAM 4",
        enable = true
    },
}

Config.NotificationText = { 
    ["NOT_LOADED"] = {
        text = "Mdt is not loaded yet",
        type = "error",
        timeout = 3000,
    },
    ["EXISTS"] = {
        text = "Such a Reason Exists",
        type = "error",
        timeout = 3000,
    },
    ["IN_CAM"] = {
        text = "Mdt is not used when the camera is on",
        type = "error",
        timeout = 3000,
    },
    ["MDT_ALROPENED"] = {
        text = "Mdt is already open",
        type = "error",
        timeout = 3000,
    },
    ["ONLY_IN_VEHICLE"] = {
        text = "You can only use this command in a vehicle",
        type = "error",
        timeout = 3000,
    },
    ["NOT_ALLOWED_VEHICLE"] = {
        text = "You are not allowed to use this vehicle",
        type = "error",
        timeout = 3000,
    },
    ["ALREADY_OPENED"] = {
        text = "You already have a menu open",
        type = "error",
        timeout = 3000,
    }
}

Config.ChatBlacklistedWords = { -- This prevents police type chat blacklisted words
    'faggot',
    'bitch',
    'allah',
    'kuran',

}

--[[---------------------------------------------------------------------------
░█████╗░████████╗██╗░░██╗███████╗██████╗░░██████╗
██╔══██╗╚══██╔══╝██║░░██║██╔════╝██╔══██╗██╔════╝
██║░░██║░░░██║░░░███████║█████╗░░██████╔╝╚█████╗░
██║░░██║░░░██║░░░██╔══██║██╔══╝░░██╔══██╗░╚═══██╗
╚█████╔╝░░░██║░░░██║░░██║███████╗██║░░██║██████╔╝
░╚════╝░░░░╚═╝░░░╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═════╝░
---------------------------------------------------------------------------]]--

Config.QBCoreLoaded = 'QBCore:Client:OnPlayerLoaded'
Config.ESXLoaded = 'esx:playerLoaded'

Config.ClientNotification = function(message, type, length) -- You can change notification event here
    if Config.Framework == "esx" then
        TriggerEvent("esx:showNotification", message)
    else
        TriggerEvent('QBCore:Notify', message, type, length)
    end
end

Config.ServerNotification = function(source, message, type, length) -- You can change notification event here
    if Config.Framework == "esx" then
        TriggerClientEvent("esx:showNotification",source, message)
    else
        TriggerClientEvent('QBCore:Notify', source, message, type, length)
    end
end

Config.Class = {
    [0]  = 'Compacts',-- Compacts  
    [1]  = 'Sedans',-- Sedans  
    [2]  = 'SUVs',-- SUVs  
    [3]  = 'Coupes',-- Coupes 
    [4]  = 'Muscle',-- Muscle 
    [5]  = 'Sports Classics',-- Sports Classics 
    [6]  = 'Sports',-- Sports 
    [7]  = 'Super',-- Super
    [8]  = 'Motorcycles',-- Motorcycles  
    [9]  = 'Off-road',--  Off-road 
    [10] = 'Industrial',-- Industrial
    [11] = 'Utility',-- Utility
    [12] = 'Vans',-- Vans  
    [13] = 'Cycles',-- Cycles
    [14] = 'Boats',-- Boats  
    [15] = 'Helicopters',-- Helicopters
    [16] = 'Planes',-- Planes 
    [17] = 'Service',-- Service
    [18] = 'Emergency',-- Emergency 
    [19] = 'Military', -- Military  
    [20] = 'Commercial' -- Commercial  
}

Config.Colors = {
    ['0'] = "Metallic Black",
    ['1'] = "Metallic Graphite Black",
    ['2'] = "Metallic Black Steal",
    ['3'] = "Metallic Dark Silver",
    ['4'] = "Metallic Silver",
    ['5'] = "Metallic Blue Silver",
    ['6'] = "Metallic Steel Gray",
    ['7'] = "Metallic Shadow Silver",
    ['8'] = "Metallic Stone Silver",
    ['9'] = "Metallic Midnight Silver",
    ['10'] = "Metallic Gun Metal",
    ['11'] = "Metallic Anthracite Grey",
    ['12'] = "Matte Black",
    ['13'] = "Matte Gray",
    ['14'] = "Matte Light Grey",
    ['15'] = "Util Black",
    ['16'] = "Util Black Poly",
    ['17'] = "Util Dark silver",
    ['18'] = "Util Silver",
    ['19'] = "Util Gun Metal",
    ['20'] = "Util Shadow Silver",
    ['21'] = "Worn Black",
    ['22'] = "Worn Graphite",
    ['23'] = "Worn Silver Grey",
    ['24'] = "Worn Silver",
    ['25'] = "Worn Blue Silver",
    ['26'] = "Worn Shadow Silver",
    ['27'] = "Metallic Red",
    ['28'] = "Metallic Torino Red",
    ['29'] = "Metallic Formula Red",
    ['30'] = "Metallic Blaze Red",
    ['31'] = "Metallic Graceful Red",
    ['32'] = "Metallic Garnet Red",
    ['33'] = "Metallic Desert Red",
    ['34'] = "Metallic Cabernet Red",
    ['35'] = "Metallic Candy Red",
    ['36'] = "Metallic Sunrise Orange",
    ['37'] = "Metallic Classic Gold",
    ['38'] = "Metallic Orange",
    ['39'] = "Matte Red",
    ['40'] = "Matte Dark Red",
    ['41'] = "Matte Orange",
    ['42'] = "Matte Yellow",
    ['43'] = "Util Red",
    ['44'] = "Util Bright Red",
    ['45'] = "Util Garnet Red",
    ['46'] = "Worn Red",
    ['47'] = "Worn Golden Red",
    ['48'] = "Worn Dark Red",
    ['49'] = "Metallic Dark Green",
    ['50'] = "Metallic Racing Green",
    ['51'] = "Metallic Sea Green",
    ['52'] = "Metallic Olive Green",
    ['53'] = "Metallic Green",
    ['54'] = "Metallic Gasoline Blue Green",
    ['55'] = "Matte Lime Green",
    ['56'] = "Util Dark Green",
    ['57'] = "Util Green",
    ['58'] = "Worn Dark Green",
    ['59'] = "Worn Green",
    ['60'] = "Worn Sea Wash",
    ['61'] = "Metallic Midnight Blue",
    ['62'] = "Metallic Dark Blue",
    ['63'] = "Metallic Saxony Blue",
    ['64'] = "Metallic Blue",
    ['65'] = "Metallic Mariner Blue",
    ['66'] = "Metallic Harbor Blue",
    ['67'] = "Metallic Diamond Blue",
    ['68'] = "Metallic Surf Blue",
    ['69'] = "Metallic Nautical Blue",
    ['70'] = "Metallic Bright Blue",
    ['71'] = "Metallic Purple Blue",
    ['72'] = "Metallic Spinnaker Blue",
    ['73'] = "Metallic Ultra Blue",
    ['74'] = "Metallic Bright Blue",
    ['75'] = "Util Dark Blue",
    ['76'] = "Util Midnight Blue",
    ['77'] = "Util Blue",
    ['78'] = "Util Sea Foam Blue",
    ['79'] = "Uil Lightning blue",
    ['80'] = "Util Maui Blue Poly",
    ['81'] = "Util Bright Blue",
    ['82'] = "Matte Dark Blue",
    ['83'] = "Matte Blue",
    ['84'] = "Matte Midnight Blue",
    ['85'] = "Worn Dark blue",
    ['86'] = "Worn Blue",
    ['87'] = "Worn Light blue",
    ['88'] = "Metallic Taxi Yellow",
    ['89'] = "Metallic Race Yellow",
    ['90'] = "Metallic Bronze",
    ['91'] = "Metallic Yellow Bird",
    ['92'] = "Metallic Lime",
    ['93'] = "Metallic Champagne",
    ['94'] = "Metallic Pueblo Beige",
    ['95'] = "Metallic Dark Ivory",
    ['96'] = "Metallic Choco Brown",
    ['97'] = "Metallic Golden Brown",
    ['98'] = "Metallic Light Brown",
    ['99'] = "Metallic Straw Beige",
    ['100'] = "Metallic Moss Brown",
    ['101'] = "Metallic Biston Brown",
    ['102'] = "Metallic Beechwood",
    ['103'] = "Metallic Dark Beechwood",
    ['104'] = "Metallic Choco Orange",
    ['105'] = "Metallic Beach Sand",
    ['106'] = "Metallic Sun Bleeched Sand",
    ['107'] = "Metallic Cream",
    ['108'] = "Util Brown",
    ['109'] = "Util Medium Brown",
    ['110'] = "Util Light Brown",
    ['111'] = "Metallic White",
    ['112'] = "Metallic Frost White",
    ['113'] = "Worn Honey Beige",
    ['114'] = "Worn Brown",
    ['115'] = "Worn Dark Brown",
    ['116'] = "Worn straw beige",
    ['117'] = "Brushed Steel",
    ['118'] = "Brushed Black steel",
    ['119'] = "Brushed Aluminium",
    ['120'] = "Chrome",
    ['121'] = "Worn Off White",
    ['122'] = "Util Off White",
    ['123'] = "Worn Orange",
    ['124'] = "Worn Light Orange",
    ['125'] = "Metallic Securicor Green",
    ['126'] = "Worn Taxi Yellow",
    ['127'] = "police car blue",
    ['128'] = "Matte Green",
    ['129'] = "Matte Brown",
    ['130'] = "Worn Orange",
    ['131'] = "Matte White",
    ['132'] = "Worn White",
    ['133'] = "Worn Olive Army Green",
    ['134'] = "Pure White",
    ['135'] = "Hot Pink",
    ['136'] = "Salmon pink",
    ['137'] = "Metallic Vermillion Pink",
    ['138'] = "Orange",
    ['139'] = "Green",
    ['140'] = "Blue",
    ['141'] = "Mettalic Black Blue",
    ['142'] = "Metallic Black Purple",
    ['143'] = "Metallic Black Red",
    ['144'] = "hunter green",
    ['145'] = "Metallic Purple",
    ['146'] = "Metaillic V Dark Blue",
    ['147'] = "MODSHOP BLACK1",
    ['148'] = "Matte Purple",
    ['149'] = "Matte Dark Purple",
    ['150'] = "Metallic Lava Red",
    ['151'] = "Matte Forest Green",
    ['152'] = "Matte Olive Drab",
    ['153'] = "Matte Desert Brown",
    ['154'] = "Matte Desert Tan",
    ['155'] = "Matte Foilage Green",
    ['156'] = "DEFAULT ALLOY COLOR",
    ['157'] = "Epsilon Blue",
}