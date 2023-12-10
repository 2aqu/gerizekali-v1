-- read README.txt
cfg = {
    useTarget = true, -- Supports QB & OX Target
    targetDistance = 2.0,
    hotelDoors = {     -- Hotel door positions
        vector3(-3031.65, 92.0, 12.21),
    },
    npc = { --NPC Config
        coords = vector4(-3029.81, 90.91, 11.35, 316.96),
        model = 'a_m_m_malibu_01',
        name = 'Jonathan',
        anim = {
            dict = 'misshair_shop@hair_dressers',
            anim = 'keeper_base',
        },
    },
    blip = {
        active = false,
        sprite = 475,
        display = 4,
        scale = 0.7,
        colour = 27,
        label = 'Motel',
    },
    grades = {
        [1] = {
            label = 'Starter',
            payment = 500,
            stashCapacity = 180000,
            stashSlot = 100,
            -----------------------------------------------------
            interiorCoords = vector3(-257.5, -956.65, -7.343731),
            doorCoords = vector4(-259.52, -959.99, -8.03, 12.13),
            changeCharCoords = vector3(-256.48, -954.7, -7.98),
            clothesCoords = vector3(-260.45, -955.58, -8.03),
            stashCoords = vector3(-260.61, -958.96, -8.03),
            bedCoords = vector4(-258.5, -958.1, -8.35, 185.77),
        },
        [2] = {
            label = 'Regular',
            payment = 2000,
            stashCapacity = 270000,
            stashSlot = 150,
            ------------------------------------------------------
            interiorCoords = vector3(-257.5000, -956.6500, 1.4300),
            doorCoords = vector4(-260.44, -960.95, -1.38, 356.97),
            clothesCoords = vector3(-258.03, -953.21, -1.43),
            stashCoords = vector3(-258.29, -956.41, -1.43),
        },
        [3] = {
            label = 'Lux',
            payment = 5000,
            stashCapacity = 550000,
            stashSlot = 200,
            ------------------------------------------------------
            interiorCoords = vector3(-257.5, -956.65, 5.71469831),
            doorCoords = vector4(-243.19, -963.5, 5.03, 97.91),
            clothesCoords = vector3(-258.06, -967.05, 5.03),
            stashCoords = vector3(-249.42, -968.54, 5.03),
        },
    },
    colors = {
        normal = {
            label = 'Default',
            payment = 30,
        },
        black = {
            label = 'Black',
            payment = 30,
        },
        orange = {
            label = 'Orange',
            payment = 30,
        },
        red = {
            label = 'Red',
            payment = 30,
        },
        blue = {
            label = 'Blue',
            payment = 30,
        },
    },
    canVisitorsAccessDrawer = true, -- If true, visitors can access the wardrobe
    canVisitorsAccessStash = true,  -- If true, visitors can access the stash
    locale = 'tr',
    locales = {
        ['en'] = {
            drawTextPrefix = '~g~[Current (Default: E)]~w~',
            stash = 'Stash',
            clothes = 'Drawer',
            hotelLandLord = 'Landlord',
            accept = 'Accept',
            decline = 'Decline',
            current = 'Current',
            currency = '$',
            --
            enterHotelRoom = 'Enter hotel room',
            hotelOptions = 'Hotel interactions',
            exitHotelRoom = 'Exit hotel room',
            invitePeople = 'Invite people',
            upgradeHotel = 'Upgrade hotel room',
            changeColor = 'Change hotel room color',
            clickToInvite = 'Click to invite.',
            moneyError = 'Something is missing.',
            upgraded = 'Your Hotel Room has been upgraded.',
            colorchange = 'Your Hotel Room\'s color has been changed.',
            invitedYou = 'invited you to his/her hotel room.',
            invited = '**Invited a player!**\n\n**Player Info**;',
            updatedColor = '**Updated Hotel Room Color**\n**Color: **',
            updatedGrade = '**Updated Hotel Room Grade**\n**Grade: **',
        },
        ['tr'] = {
            drawTextPrefix = '~g~[Mevcut (Varsayılan: E)]~w~',
            stash = 'Depo',
            clothes = 'Gardrop',
            hotelLandLord = 'Hotel Sahibi',
            accept = 'Kabul Et',
            decline = 'Reddet',
            current = 'Şu anki',
            currency = '$',
            --
            enterHotelRoom = 'Hotel odaasına gir',
            hotelOptions = 'Hotel etkileşimleri',
            exitHotelRoom = 'Hotel odasından çık',
            invitePeople = 'Davet et',
            upgradeHotel = 'Hotel odanı geliştir',
            changeColor = 'Hotel odanın rengini değiştir',
            clickToInvite = 'Davet etmek için tıkla.',
            moneyError = 'Bir şeyler eksik.',
            upgraded = 'Hotel odanı geliştirdin.',
            colorchange = 'Hotel odanın rengini değiştirdin.',
            invitedYou = 'seni odasına davet etti.',
            invited = '**Bir oyuncu davet etti!**\n\n**Player Info**;\n',
            updatedColor = '**Hotel odasının rengini değiştirdi!**\n**Renk: **',
            updatedGrade = '**Hotel odasının seviyesini değiştirdi!**\n**Seviye: **',
        },
    },
}


-- Multichar event for after character creation hotel enterance;
--  CLIENT: TriggerEvent('sh-hotels:client:multichar', charid)
--  SERVER: TriggerNetEvent('sh-hotels:client:multichar', source, charid)
