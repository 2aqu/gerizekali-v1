-- https://discord.gg/mikishops

MIKI = {}

MIKI.Framework = "qb" --qb - oldqb
MIKI.FrameWorkScriptName = "qb-core"
MIKI.FrameGetObjectEvent = 'QBCore:GetObject'
MIKI.sql = "oxmysql" --Check fxmanifest.lua when you change it! | ghmattimysql / oxmysql / mysql-async
MIKI.SellPercentange = 10 --%10
MIKI.ExtendPercentange = 20 --%20 1 week extend price
MIKI.RentDay = 7 --7 day for 1 rent time(week)
MIKI.AccountForManageMarket = "bank" --For deposit money etc.
MIKI.FixCommand = "marketfix"

MIKI.Blip = {
    BlipSprite = 52,
    BlipColour = 2,
    BlipScale = 0.7,
    BlipName = "Shop",
}

MIKI.BuyMarketBlip = {
    BlipSprite = 350,
    BlipColour = 3,
    BlipScale = 0.7,
    BlipName = "Buy Market",
}

MIKI.WhoSallerBlip = {
    BlipSprite = 52,
    BlipColour = 27,
    BlipScale = 0.7,
    BlipName = "WhoSaller",
}

MIKI.ShopCoords = {
    [1] = vector3(-48.2197, -1757.4711, 29.4210),
    [2] = vector3(1163.2614, -323.6537, 69.2051),
    [3] = vector3(-707.3671, -914.3745, 19.2156),
    [4] = vector3(-1820.6412, 792.6923, 138.1135),
    [5] = vector3(1698.1538, 4924.4492, 42.0637),
    [6] = vector3(1135.6437, -982.3683, 46.4158),
    [7] = vector3(-1222.9817, -907.1884, 12.3263),
    [8] = vector3(-1487.2129, -379.1227, 40.1634),
    [9] = vector3(-2968.0149, 390.8926, 15.0433),
    [10] = vector3(1165.9236, 2709.1414, 38.1577),
    [11] = vector3(1392.5616, 3604.9871, 34.9809),
    [12] = vector3(373.8432, 326.2942, 103.5664),
    [13] = vector3(2556.8718, 382.1080, 108.6229),
    [14] = vector3(-3039.3450, 585.8024, 7.9089),
    [15] = vector3(-3241.8052, 1001.3857, 12.8307),
    [16] = vector3(547.7012, 2671.2729, 42.1565),
    [17] = vector3(1961.4301, 3740.4883, 32.3437),
    [18] = vector3(2679.0320, 3280.5186, 55.2411),
    [19] = vector3(1729.3567, 6414.9438, 35.0372),
    [20] = vector3(25.8079, -1347.2013, 29.4970),
    [21] = vector3(-2930.98, 9.65, 7.95),
}
MIKI.BuyShopCoords = vector3(-685.8456, 223.0823, 81.9551)
MIKI.WhoSaller = vector3(1197.0603, -3253.5757, 7.0952)

MIKI.WhoSallerItems = {
    [0] = {
        itemname = "bdonut",
        label = "Donut",
        price = 5,
    },
    [1] = {
        itemname = "water_bottle",
        label = "Su",
        price = 5,
    },
    [2] = {
        itemname = "kurkakola",
        label = "Kola",
        price = 5,
    },
    [3] = {
        itemname = "twerks_candy",
        label = "Twix",
        price = 5,
    },
    [4] = {
        itemname = "snikkel_candy",
        label = "Snickers",
        price = 5,
    },
    [5] = {
        itemname = "sandwich",
        label = "Sandwich",
        price = 5,
    },
    [6] = {
        itemname = "beer",
        label = "Bira",
        price = 5,
    },
    [7] = {
        itemname = "whiskey",
        label = "Viski",
        price = 5,
    },
    [8] = {
        itemname = "vodka",
        label = "Votka",
        price = 5,
    },
    [9] = {
        itemname = "bandage",
        label = "Bandaj",
        price = 5,
    },
    [10] = {
        itemname = "medikit",
        label = "Medikit",
        price = 35,
    },
    [11] = {
        itemname = "parachute",
        label = "Paraşüt",
        price = 35,
    },
    [12] = {
        itemname = "skateboard",
        label = "Kaykay",
        price = 20,
    },
    [13] = {
        itemname = "flint",
        label = "Çakmak",
        price = 10,
    },
    [14] = {
        itemname = "fireplace",
        label = "Kamp Ateşi",
        price = 10,
    },
    [15] = {
        itemname = "tent_1",
        label = "Çadır",
        price = 50,
    },
    [16] = {
        itemname = "tent_2",
        label = "Büyük Çadır",
        price = 50,
    },
    [17] = {
        itemname = "wood",
        label = "Odun",
        price = 10,
    },
    [18] = {
        itemname = "chair_1",
        label = "Sandalye",
        price = 20,
    },
    [19] = {
        itemname = "chair_2",
        label = "Sandalye",
        price = 20,
    },
    [20] = {
        itemname = "chair_3",
        label = "Sandalye",
        price = 20,
    },
    [21] = {
        itemname = "gazebo_1",
        label = "Siyah Çardak",
        price = 40,
    },
    [22] = {
        itemname = "gazebo_2",
        label = "Mavi Çardak",
        price = 40,
    },
    [23] = {
        itemname = "gazebo_3",
        label = "Beyaz Çardak",
        price = 40,
    },
    [24] = {
        itemname = "beerkeg",
        label = "Bira Fıçısı - 30L",
        price = 30,
    },
    [25] = {
        itemname = "raw_chicken",
        label = "Çiğ Tavuk",
        price = 10,
    },
}

-- ekleme
MIKI.DefaultItems = {
    [0] = {
        itemname = "bdonut",
        label = "Donut",
        price = 40,
        stock = 999,
    },
    [1] = {
        itemname = "water_bottle",
        label = "Su",
        price = 40,
        stock = 999,
    },
    [2] = {
        itemname = "kurkakola",
        label = "Kola",
        price = 40,
        stock = 999,
    },
    [3] = {
        itemname = "twerks_candy",
        label = "Twix",
        price = 40,
        stock = 999,
    },
    [4] = {
        itemname = "snikkel_candy",
        label = "Snickers",
        price = 40,
        stock = 999,
    },
    [5] = {
        itemname = "sandwich",
        label = "Sandwich",
        price = 40,
        stock = 999,
    },
    [6] = {
        itemname = "bandage",
        label = "Bandaj",
        price = 40,
        stock = 999,
    },
    [7] = {
        itemname = "medikit",
        label = "Medikit",
        price = 80,
        stock = 999,
    },
    [8] = {
        itemname = "skateboard",
        label = "Kaykay",
        price = 100,
        stock = 999,
    },
}

MIKI.Languages = {
    ["nomoney"] = "Paranız yok",
    ["bought"] = "Satın alındı.",
    ["no_money_on_market"] = "Pazarda yeterli para yok.",
    ["already_working_here"] = "Bu oyuncu zaten bu pazarda çalışıyor.",
    ["not_online"] = "Bu oyuncu oyun içinde değil",
    ["rented_market"] = "Pazar kiralandı.",
    ["error_market"] = "Pazar bulunamadı, tekrar deneyin",
    ["hired_person"] = "Kişi işe alındı.",
    ["remove_stock"] = "Stoktan çıkartıldı.",
    ["negative_number"] = "Negatif bir sayı giremezsiniz.",
    ["price_changed"] = "Fiyat değiştirildi.",
    ["no_stock"] = "Bu kadar stok yok",
    ["turn_back_item"] = "Eşyalar geri alındı. Miktar:",
    ["enter_price"] = "Fiyat girmelisiniz",
    ["enter_stock"] = "Stok girmelisiniz",
    ["stock_added"] = "Stok eklendi.",
    ["max_stock"] = "Maksimum Stok: ",
    ["fired_person"] = "İşten çıkarıldı.",
    ["cannot_increase"] = "Daha fazla arttıramazsınız",
    ["cannot_decrease"] = "Daha fazla azaltamazsınız",
    ["removed_on_basket"] = "Sepetten öğe kaldırıldı.",
    ["has_owner_market"] = "Bu pazarın zaten bir sahibi var.",
    ["enter_player_id"] = "Oyuncu kimliği girmelisiniz",
    ["not_market_owner"] = "Pazar sahibi değilsiniz.",

    ["buy_market"] = "[E] Pazarı Satın Al" ,
    ["whosaller"] = "[E] Toptancı",
    ["acces_market"] = "[E] Pazar Erişimi",

    ["market_no"] = "Pazar No: ",

    --ekleme
    ["no_job"] = "Mesleğiniz bu pazara erişemez.",
}


--ekleme
MIKI.Shops = {
    ["megamall"] = { --must be uniq
        job = false, --if you want add job, don't want set false
        MarketName = "Nalbur", --market name
        coords = vector3(55.4192, -1739.2362, 29.5907), --set coords
        blip = { --for blip option, if you don't want set false
            Label = "MegaMall",
            Sprite = 402,
            Colour = 69,
            Scale = 0.7,
        },
        items = { --you can set shop items with this table
            [0] = {
                itemname = "phone", --itemname
                label = "Telefon", --label
                price = 30,  --price
                stock = 50, --stock (refresh on every open shop)
            },
            [1] = {
                itemname = "radio",
                label = "Telsiz",
                price = 50,
                stock = 1500,
            },
            [2] = {
                itemname = "mala_roupas",
                label = "Kıyafet Ç.",
                price = 100,
                stock = 100,
            },
            [3] = {
                itemname = "repairkit",
                label = "Repair Kit",
                price = 150,
                stock = 100,
            },
            [4] = {
                itemname = "weed_nutrition",
                label = "Sıvı Gübre",
                price = 50,
                stock = 100,
            },
            [5] = {
                itemname = "binoculars",
                label = "Dürbün",
                price = 50,
                stock = 100,
            },
            [6] = {
                itemname = "cleaningkit",
                label = "Temizlik Bezi",
                price = 25,
                stock = 100,
            },
            [7] = {
                itemname = "advancedrepairkit",
                label = "Gelişmiş Tamir K.",
                price = 5,
                stock = 100,
            },
            [8] = {
                itemname = "lighter",
                label = "Çakmak",
                price = 15,
                stock = 100,
            },
            [9] = {
                itemname = "boombox",
                label = "BoomBox",
                price = 200,
                stock = 100,
            },
            [10] = {
                itemname = "bolt_cutter",
                label = "Demir Kesici",
                price = 300,
                stock = 100,
            },
            [11] = {
                itemname = "flush_cutter",
                label = "Yan Keski",
                price = 100,
                stock = 100,
            },
            [12] = {
                itemname = "finescale",
                label = "Hassas Tartı",
                price = 125,
                stock = 100,
            },
            [13] = {
                itemname = "trimming_scissors",
                label = "Makas",
                price = 75,
                stock = 100,
            },
            [14] = {
                itemname = "bakingsoda",
                label = "Karbonat",
                price = 5,
                stock = 100,
            },
            [15] = {
                itemname = "rolling_paper",
                label = "Rolling Paper",
                price = 17,
                stock = 100,
            },
            [16] = {
                itemname = "drill",
                label = "Drill",
                price = 500,
                stock = 100,
            },
            [17] = {
                itemname = "rope",
                label = "Halat",
                price = 500,
                stock = 100,
            },
            [18] = {
                itemname = "lockpick",
                label = "Maymuncuk",
                price = 50,
                stock = 100,
            },
            [19] = {
                itemname = "bag",
                label = "Çanta",
                price = 1000,
                stock = 100,
            },
        }
    },
    ["manav"] = { --must be uniq
        job = false, --if you want add job, don't want set false
        MarketName = "Manav", --market name
        coords = vector3(386.2202, -325.3293, 46.8660), --set coords
        blip = { --for blip option, if you don't want set false
            Label = "Manav",
            Sprite = 626,
            Colour = 1,
            Scale = 0.7,
        },
        items = { --you can set shop items with this table
            [0] = {
                itemname = "burgershot_curly", --itemname
                label = "Kıvırcık", --label
                price = 1,  --price
                stock = 999, --stock (refresh on every open shop)
            },
            [1] = {
                itemname = "burgershot_bread",
                label = "Ekmek",
                price = 1,
                stock = 999,
            },
            [2] = {
                itemname = "burgershot_meat",
                label = "Köfte",
                price = 1,
                stock = 999,
            },
            [3] = {
                itemname = "raw-chicken",
                label = "Çiğ Tavuk",
                price = 1,
                stock = 999,
            },
            [4] = {
                itemname = "butter",
                label = "Tereyağ",
                price = 1,
                stock = 999,
            },
            [5] = {
                itemname = "sugar-cubes",
                label = "Küğ Şeker",
                price = 1,
                stock = 999,
            },
            [6] = {
                itemname = "barra-chocolate",
                label = "Çikolata",
                price = 1,
                stock = 999,
            },
            [7] = {
                itemname = "pacote-natas",
                label = "Krema Paketi",
                price = 1,
                stock = 999,
            },
            [8] = {
                itemname = "pacote-leite",
                label = "Süt",
                price = 1,
                stock = 999,
            },
            [9] = {
                itemname = "burgershot_bigfrozenpotato",
                label = "Donmuş Patates",
                price = 1,
                stock = 999,
            },
            [10] = {
                itemname = "carbonated-water",
                label = "Karbonatlı Su",
                price = 1,
                stock = 999,
            },
            [11] = {
                itemname = "graos-cafe",
                label = "Kahve Çekirdeği",
                price = 1,
                stock = 999,
            },
        }
    },
}