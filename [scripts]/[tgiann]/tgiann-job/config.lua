--[[ 
    - this script needs tgiann-core script to work, you can download the script from your keymaster account
      Start tgiann-core script after es_extented/qb-core script and before tgiann-* scripts
      Adjust the tgiann-core config file according to the framework you are using

    Commands:
        setjobamount - Set Player Job Amount
        resetjobcd - Reset Player Job Cd
]]

tgiCoreExports = exports["tgiann-core"]
Config = tgiCoreExports:getConfig()
Config.jobTime = 900000 -- 900000(15 minute) Job time
Config.penaltyTime = 15000 -- job cancel time
Config.maxjobsbAmount = 13 -- amount of work that can be done until the job is reset

-- The number of jobs the player has to do in 15 minutes(Config.jobTime) to get paid
Config.minTotalComplatedJob = 12
Config.customMinTotalComplatedJob = { 
    ["construction"] = { 
        --[1] = 12,
        --[2] = 15,
        [3] = 6
    },

    -- ["truck"] = { 
    --     [1] = 1,
    -- },
    -- ["construction"] = { 
    --     [1] = 12,
    -- },
    -- ["diver"] = { 
    --     [1] = 12,
    -- }, 
}

--level names appearing in the menu
Config.levelName = {
    "Level 1",
    "Level 2",
    "Level 3"
}
--amount of money earned by level
Config.giveMoney = {
    8000, -- Level 1
    9000, -- Level 2
    10000 -- Level 3
}

Config.text = {
    workEarnMoney = "Çalış ve Para Kazan",
    cancelJob = "İşi iptal et",
    wantedJob = "Bu iş için %s kişi aranıyor: %s",
    noWantedJob = "Bu iş için çalışan aranmıyor.",
    finishJob = "İşi Bitir [ Toplam bitirilen iş: %s ]",
    startJob =  "İşi başlat [ %s | Toplam yapılan iş: %s ]",
    earned = "Kazandın: ",
    noMoney = "İşini Doğru Yapmayana Para Vermiyorum",
    foundItem = "Buldun: %s %s",
    canceledProgbar = "İptal ettin",
    penalty = "Eski İşinizi İptal Ettiğiniz İçin Yeni İşinizde %s Dakika Çalışamazsınız",
    vehSpawnError = "Aracın spawn noktasında bir araç var",
    canceledJob = "İşi İptal Ettin!",
    movedTooFar = "Çalışma Alanınızdan Çok Uzağa Taşındığınız İçin İşiniz İptal Edildi",
    comeBack = "Daha Fazla Çalışmaya Gerek Yok Geri Dönün!",
    cGetTheMaterial = "Malzemeyi alın",
    cGetMaterial = "Malzemeyi sen al...",
    cGetOther = "Aferin, şimdi git diğerini getir!",
    CWork = "İş",
    CJobComblated = "İş Tamamlandı",
    cPutMaterialOnGorund = "Malzemeyi yere koyun",
    cPutMaterialVeh = "Malzemeleri aracın arkasına koyun",
    cPutMaterialGround = "Malzemeleri aracın arkasında yere koyun",
    cGoBack = "Aferin Şimdi Geri Dön Diğer Materyalleri Getir",
    cWorking = "Çalışıyorsun...",
    cLoadMaterial = "Yük Malzemeleri",
    dot = "",
    goLocation = "Harita Üzerindeki Konuma Git",
    dWearing = "Giyim",
    dTrashTheTrash = "Çöpü Çöpe Atın",
    dTrashThrowComplated = "Çöpü Çöpe Atıyorsunuz",
    dPickUpTrash = "Çöpleri toplayın",
    dPickUpTrashComplated = "Çöpü Sen Topladın",
    dCarryTrashError = "Çok Fazla Çöp Taşıyorsunuz! Çöpü Çöpe Atın",
    dNextPoint = "Sonraki Noktaya Git",
    fFillWater = "Suyu Doldur",
    fFillingWater = "Su Doldur",
    fGoWaterPlant = "Su Dolu! Gidip Bitkileri Sulayın!",
    fWaterPlant = "Bitkiyi sulayın",
    fWaterThePlant = "Sen bitkiyi sula...",
    fWateredPlant = "Bitkiyi Suladınız",
    fRefillWater = "Suyunuz Bitti! Su doldurun!",
    fCarePlant = "Bitkinin Bakımını Yapın",
    fCaringPlant = "Bitkiye Bakım Yapıyorsunuz",
    fTookCarePlant = "Bitkiyle ilgilenmişsin.",
    fPlowField = "Tarlayı Sürün",
    fYouPlowField = "Tarlayı Sürüyorsun",
    tGetBorcodes = "Barkodları Alın",
    tYouGetBarcodes = "Barkodları alıyorsun..",
    tGotBarcodes = "Barkodları aldınız! Kutu ve Konteynerlere Barkod Yapıştırın!",
    tPasteBarcode = "Barkod Yapıştır",
    tYouOasteBarcode = "Barkodu yapıştırıyorsun...",
    tPastedBarcode = "Barkodu Yapıştırdınız",
    tOutOfBarcode = "Barkodunuz Bitti! Barkodu Tekrar Alın!",
    tCheckBarcode = "Barkodu Kontrol Edin",
    tCheckingBarcode = "Barkodu Kontrol Ediyorsunuz",
    tcheckedBarcode = "Barkodu Kontrol Ettiniz",
    tDliverMaterials = "Malzemeleri teslim edin",
    tYDliverMaterials = "Malzemeleri teslim ediyorsunuz...",
}

Config.farmer = {}
Config.farmer.startCoord = vector4(2029.81, 4980.66, 42.1, 217.03) -- NPC Coord
Config.farmer.name = "Farmer" -- Blip and NPC Name
Config.farmer.ped = `a_m_m_farmer_01` -- NPC Ped
Config.farmer.levels = {0, 10, 20} -- level numbers (Example: 0 and above 1 level, 10 and above 2 level, 20 and above 3 level) | Do not add more than 3 levels
Config.farmer.veh = `tractor2`

Config.construction = {}
Config.construction.startCoord = vector4(-510.21, -953.26, 23.8, 198.41)
Config.construction.name = "Constructor"
Config.construction.ped = `s_m_y_construct_02`
Config.construction.levels = {0, 10, 20}
Config.construction.veh = `scrap`

Config.diver = {}
Config.diver.startCoord = vector4(-1431.58, -1509.24, 3.71, 196.05)
Config.diver.name = "Diver and Garbageman"
Config.diver.ped = `s_f_y_baywatch_01`
Config.diver.levels = {0, 10, 20}
Config.diver.veh = `suntrap`

Config.truck = {}
Config.truck.startCoord = vector4(835.53, -1211.5, 28.01, 276.29)
Config.truck.name = "Logistics"
Config.truck.ped = `s_m_m_trucker_01`
Config.truck.levels = {0, 10, 20}
Config.truck.veh = `mule3`

Config.data = {
    ["farmer"] = {
        --lvl1
        {
            startText = "İş toplam 15 dakika sürecektir. Haritadaki Konuma Gidin ve Suyu Doldurup Sulamaya Başlayın",
            firstBlip = vector3(1959.46, 5056.84, 45.84),
            fillWaterCoords = {
                {coord = vector3(1957.23, 5054.66, 46.02)},
                {coord = vector3(1961.34, 5049.82, 45.56)},
                {coord = vector3(1953.19, 5059.66, 45.9)},
            },
            waterPlantCoord = {
                {coord = vector3(1937.38, 5009.23, 42.71), active = true},
                {coord = vector3(1934.97, 5007.03, 43.01), active = true},
                {coord = vector3(1932.57, 5004.92, 43.29), active = true},
                {coord = vector3(1932.51, 5007.87, 43.4), active = true},
                {coord = vector3(1934.66, 5009.63, 43.17), active = true},
                {coord = vector3(1936.66, 5011.67, 43.0), active = true},
                {coord = vector3(1904.45, 4984.29, 47.99), active = true},
                {coord = vector3(1902.57, 4982.45, 48.45), active = true},
                {coord = vector3(1900.25, 4980.4, 49.03), active = true},
                {coord = vector3(1900.22, 4977.25, 49.39), active = true},
                {coord = vector3(1902.81, 4979.83, 48.69), active = true},
                {coord = vector3(1905.14, 4981.56, 48.14), active = true},
            },
            randomItemsPercent = 25, -- chance to find items randomItemsPercent = 25,
            randomItems = { -- Items that can be found and their maximum amount
                {item ="bakir", maxAmount = 2},
            }
        },
        --lvl 2
        {
            startText = "İş toplam 15 dakika sürecektir. Haritadaki Konuma Gidin ve Bitkilerin Bakımını Yapın",
            firstBlip = vector3(1934.83, 5016.6, 43.49),
            plantCareCoord = {
                {coord = vector3(1937.88, 5018.24, 42.96), active = true},
                {coord = vector3(1935.45, 5016.15, 43.26), active = true},
                {coord = vector3(1933.56, 5014.58, 43.43), active = true},
                {coord = vector3(1931.78, 5012.99, 43.58), active = true},
                {coord = vector3(1930.86, 5014.85, 43.68), active = true},
                {coord = vector3(1932.83, 5016.61, 43.52), active = true},
                {coord = vector3(1934.4, 5017.8, 43.41), active = true},
                {coord = vector3(1936.28, 5019.65, 43.18), active = true},
            },
            randomItemsPercent = 25,
            randomItems = {
                {item ="bakir", maxAmount = 3},
            }
        },
        --lvl 3
        {
            startText = "İş toplam 15 dakika sürecektir. Haritadaki Konuma Gidin ve Traktörle Bitkileri Biçmeye Başlayın",
            tractorSpawnCoord = vector4(2038.38, 4971.76, 41.13, 224.75),
            tractorCoord = {
                {coord = vector3(2045.18, 4964.65, 41.14), active = true},
                {coord = vector3(2063.63, 4946.19, 41.09), active = true},
                {coord = vector3(2092.15, 4918.1, 41.06), active = true},
                {coord = vector3(2068.65, 4933.45, 41.14), active = true},
                {coord = vector3(2041.05, 4951.6, 41.13), active = true},
                {coord = vector3(2081.5, 4911.5, 41.12), active = true},
                {coord = vector3(2065.29, 4910.95, 41.06), active = true},
                {coord = vector3(2029.41, 4937.92, 41.13), active = true},
                {coord = vector3(2063.36, 4897.84, 41.16), active = true},
            },
            randomItemsPercent = 25,
            randomItems = {
                {item ="bakir", maxAmount = 4},
            }
        }
    },
    ["construction"] = {
        --lvl 1
        {
            startText = "İş toplam 15 dakika sürecektir. Arkamdaki Malzemeleri Alın ve İstediğim Yere Bırakın",
            pickUpCoord = {
                vector3(-507.97, -941.42, 24.03),
                vector3(-506.95, -938.98, 24.07),
                vector3(-503.56, -937.43, 24.07),
            },
            randomPickUp = 1, -- Don't change
            dropItCoord = {
                vector3(-474.97, -933.39, 23.67),
                vector3(-473.93, -934.81, 23.58),
                vector3(-473.4, -936.22, 23.57),
                vector3(-473.16, -938.64, 23.57),
                vector3(-473.23, -940.27, 23.57),
                vector3(-473.3, -942.04, 23.57),
            },
            randomDropIt = 1, -- Don't change
            randomItemsPercent = 25,
            randomItems = {
                {item ="demir", maxAmount = 2},
                {item ="metal", maxAmount = 2},
            }
        },
        --lvl 2
        {
            startText = "İş toplam 15 dakika sürecektir. Sağ tarafımdaki binanın birinci katına git ve işe koyul.",
            workCoord = {
                {coord = vector3(-493.89, -992.44, 29.13), active = true},
                {coord = vector3(-493.64, -998.76, 29.13), active = true},
                {coord = vector3(-493.64, -1001.22, 29.13), active = true},
                {coord = vector3(-493.64, -1003.59, 29.13), active = true},
                {coord = vector3(-492.52, -1006.63, 29.13), active = true},
                {coord = vector3(-485.4, -1006.63, 29.13), active = true},
                {coord = vector3(-492.13, -1018.51, 29.13), active = true},
                {coord = vector3(-485.06, -1016.61, 29.13), active = true},
                {coord =  vector3(-494.33, -1015.2, 29.13), active = true},
            },
            randomItemsPercent = 25,
            randomItems = {
                {item ="demir", maxAmount = 3},
                {item ="metal", maxAmount = 3},
            }
        },
        --lvl 3
        {
            startText = "İş toplam 15 dakika sürecektir. Kamyonu Al ve Malzemeleri Yükle ve Diğer İnşaata Götür",
            pickUpCoord = vector3(-473.47, -984.06, 23.55),
            scrapSpawnCoord = vector4(-507.12, -959.7, 23.71, 313.51),
            dropItCoord = {
                vector3(-209.41, -1106.41, 22.67),
                vector3(-90.13, -1020.48, 27.65),
                vector3(-301.74, -1171.28, 23.2),
                vector3(-452.1, -544.65, 25.51)
            },
            randomDropIt = 1, -- Don't change
            randomItemsPercent = 25,
            randomItems = {
                {item ="demir", maxAmount = 3},
                {item ="metal", maxAmount = 3},
            }
        },
    },
    ["diver"] = {
        -- lvl 1
        {
            startText = "İş toplam 15 dakika sürecektir. Sahildeki Çöpleri Toplayın.",
            workCoord = {
                {coord = vector3(-1443.74, -1516.09, 1.93), active = true},
                {coord = vector3(-1435.08, -1522.96, 2.11), active = true},
                {coord = vector3(-1423.59, -1524.08, 2.14), active = true},
                {coord = vector3(-1418.07, -1531.72, 2.15), active = true},
                {coord = vector3(-1410.73, -1527.92, 2.57), active = true},
                {coord = vector3(-1414.3, -1520.68, 2.57), active = true},
                {coord = vector3(-1417.12, -1511.69, 2.41), active = true},
                {coord = vector3(-1439.84, -1523.3, 1.97), active = true},
                {coord = vector3(-1442.26, -1532.52, 1.69), active = true},
            },
            trashCoord = vector3(-1432.3, -1514.56, 2.13),
            randomItemsPercent = 25,
            randomItems = {
                {item ="kumas", maxAmount = 2},
            }
        },
        -- lvl 2
        {
            startText = "İş toplam 15 dakika sürecektir. Özel Bir Tekne ile Sudaki Çöpleri Toplayın",
            suntrapSpawnCoord = vector4(-1468.05, -1535.04, 0.28, 117.23),
            workCoord = {
                {coord = vector3(-1490.3, -1546.73, 2.44), active = true},
                {coord = vector3(-1523.87, -1567.22, 2.44), active = true},
                {coord = vector3(-1560.5, -1588.28, 2.24), active = true},
                {coord = vector3(-1590.97, -1624.96, 2.44), active = true},
                {coord = vector3(-1590.72, -1668.83, 2.44), active = true},
                {coord = vector3(-1570.57, -1697.23, 2.44), active = true},
                {coord = vector3(-1529.6, -1707.4, 2.44), active = true},
                {coord = vector3(-1491.85, -1678.44, 2.44), active = true},
                {coord = vector3(-1480.3, -1633.61, 2.44), active = true},
                {coord = vector3(-1480.26, -1590.89, 2.44), active = true},
            },
            randomItemsPercent = 25,
            randomItems = {
                {item ="kumas", maxAmount = 3},
            }
        },
        -- lvl 3
        {
            startText = "İş toplam 15 dakika sürecektir. Haritada İşaretli Yere Gidin ve Sualtı Çöplerini Toplayın",
            suntrapSpawnCoord = vector4(-1468.05, -1535.04, 0.28, 117.23),
            firstBlip = vector3(-1782.55, -1281.88, -17.74),
            workCoord = {
                {coord = vector3(-1786.29, -1272.14, -21.21), active = true},
                {coord = vector3(-1796.39, -1267.19, -21.55), active = true},
                {coord = vector3(-1791.23, -1279.97, -20.06), active = true},
                {coord = vector3(-1751.04, -1279.13, -19.36), active = true},
                {coord = vector3(-1747.77, -1268.0, -16.94), active = true},
                {coord = vector3(-1772.99, -1270.19, -19.08), active = true},
                {coord = vector3(-1778.19, -1276.24, -17.55), active = true},
            },
            randomItemsPercent = 25,
            randomItems = {
                {item ="kumas", maxAmount = 4},
            }
        }
    },
    ["truck"] = {
        -- lvl 1
        {
            startText = "İş toplam 15 dakika sürecektir. Gidip barkodları alıp kutu ve konteynerların üzerine yapıştırın.",
            takeBarcodeCoord = vector3(835.87, -1220.42, 26.03),
            pasteBarcodeCoords = {
                {coord = vector3(836.93, -1222.53, 26.39), active = true},
                {coord = vector3(839.26, -1223.03, 25.97), active = true},
                {coord = vector3(840.68, -1223.58, 26.05), active = true},
                {coord = vector3(841.33, -1226.9, 26.16), active = true},
                {coord = vector3(840.81, -1228.57, 26.19), active = true},
                {coord = vector3(837.36, -1229.9, 26.04), active = true},
                {coord = vector3(851.73, -1218.49, 25.75), active = true},
                {coord = vector3(845.89, -1218.69, 25.93), active = true},
                {coord = vector3(840.03, -1218.96, 25.68), active = true},
            },
            randomItemsPercent = 25,
            randomItems = {
                {item ="barut", maxAmount = 2},
            }
        },
        -- lvl 2
        {
            startText = "İş toplam 15 dakika sürecektir. Haritadan konuma bakıp barkodları kontrol edin.",
            firstBlip = vector3(919.91, -1256.89, 25.52),
            controlBarcodeCoords = {
                {coord = vector3(919.91, -1256.89, 25.52), active = true},
                {coord = vector3(919.37, -1258.27, 25.53), active = true},
                {coord = vector3(918.56, -1262.32, 25.55), active = true},
                {coord = vector3(920.32, -1262.88, 25.54), active = true},
                {coord = vector3(919.89, -1264.46, 25.54), active = true},
                {coord = vector3(923.34, -1264.4, 25.52), active = true},
                {coord = vector3(923.96, -1262.82, 25.51), active = true},
                {coord = vector3(927.76, -1258.01, 25.48), active = true},
                {coord = vector3(930.02, -1256.8, 25.48), active = true},
                {coord = vector3(934.38, -1256.41, 25.51), active = true},
            },
            randomItemsPercent = 25,
            randomItems = {
                {item ="barut", maxAmount = 3},
            }
        },
        -- lvl 3
        {
            startText = "İş toplam 15 dakika sürecektir. Kamyona Binin ve Dağıtıma Çıkın.",
            truckSpawnCoord = vector4(857.25, -1239.18, 26.41, 230.83),
            selectedtruckCoord = 1, -- Don't change
            truckCoords = {
                vector3(729.32, -984.53, 24.38),
                vector3(798.13, -736.74, 27.69),
                vector3(91.18, -214.39, 54.6),
                vector3(-30.2, -87.33, 57.36),
                vector3(-441.0, 141.61, 64.82),
                vector3(-516.17, 288.47, 83.21),
                vector3(-559.52, 301.87, 83.28),
                vector3(-698.89, 310.66, 83.09),
                vector3(-704.36, -116.64, 37.71),
                vector3(-357.24, -435.69, 27.4),
                vector3(-267.72, -564.07, 31.38),
                vector3(-305.16, -707.51, 29.5),
                vector3(-711.68, -868.19, 23.45),
                vector3(-574.27, -885.62, 25.81),
                vector3(-566.58, -998.08, 22.44),
                vector3(-719.1, -1282.37, 5.11),
                vector3(-853.17, -1258.5, 5.11),
                vector3(-628.67, -1188.68, 14.78),
                vector3(-641.05, -1620.9, 25.23),
                vector3(-551.46, -1786.51, 22.24),
                vector3(-324.5, -1524.34, 27.54),
                vector3(-235.24, -1392.53, 31.38),
                vector3(26.23, -1414.93, 29.47),
                vector3(159.85, -1461.84, 29.25),
                vector3(414.19, -1519.4, 29.39),
                vector3(765.58, -1412.42, 26.62)
            },

            randomItemsPercent = 25,
            randomItems = {
                {item ="barut", maxAmount = 4},
            }
        }
    },
}

Config.jobsAmount = {
    ["farmer"] = { amount = Config.maxjobsbAmount, label = Config.farmer.name},
    ["construction"] = { amount = Config.maxjobsbAmount, label = Config.construction.name},
    ["truck"] = { amount = Config.maxjobsbAmount, label = Config.truck.name },
    ["diver"] = { amount = Config.maxjobsbAmount, label = Config.diver.name},
}

Config.blips = {
    {
        coord = Config.farmer.startCoord,
        sprite = 408,
        colour = 0,
        name = Config.farmer.name,
    },
    {
        coord = Config.construction.startCoord,
        sprite = 408,
        colour = 0,
        name = Config.construction.name,
    },
    {
        coord = Config.diver.startCoord,
        sprite = 408,
        colour = 0,
        name = Config.diver.name,
    },
    {
        coord = Config.truck.startCoord,
        sprite = 408,
        colour = 0,
        name = Config.truck.name,
    },
}