Config = Config or {}

Config.Debug = false -- Set to True to enable Debug Prints
Config.MoneyType = 'bank'
Config.RepairMoneyType = 'cash'
Config.UseRadial = false -- Will use qb-radial menu for entering instead of press E
Config.allowGovPlateIndex = false -- Setting this to true will allow all vehicles to purchase gov plate index "Blue on White #3" (only for emergency vehicles otherwise)

maxVehiclePerformanceUpgrades = 0 -- | All Upgrades: 0 | No Upgrades: -1 | Can be -1 to 4
vehicleBaseRepairCost = 1500
vehicleRepairCostMultiplier = 1

-- ADJUST PRICING
vehicleCustomisationPrices = {
    cosmetics = {price = 0},
    respray = {price = 0},
    performance = {prices = {0, 0, 0, 0, 0, 0, 0}},
    turbo = {prices = {0, 0}},
    wheels = {price = 0},
    customwheels = {price = 0},
    wheelsmoke = {price = 0},
    windowtint = {price = 0},
    neonside = {price = 0},
    neoncolours = {price = 0},
    headlights = {price = 0},
    xenoncolours = {price = 0},
    oldlivery = {price = 0},
    plateindex = {price = 0}
}

-- RESPRAY CATEGORIES

vehicleResprayCategories = {
    {category = "Ana Renk", id = 0},
    {category = "İkincil Renk", id = 1},
    {category = "Sedef Renk", id = 2},
    {category = "Tekerlek Rengi", id = 3},
    {category = "Gövde Rengi", id = 4},
    {category = "İç Renk", id = 5}
}

-- WINDOW TINTS


vehicleWindowTintOptions = {
    {name = "Yok", id = 0},
    {name = "1.Derece Film", id = 1},
    {name = "2.Derece Film", id = 2},
    {name = "3.Derece Film", id = 3}
}

-- HEADLIGHTS

vehicleXenonOptions = {
    xenonColours = {
        {name = "Stock", id = 255},
        {name = "Beyaz",id = 0},
        {name = "Mavi",id = 1},
        {name = "Elektirik Mavisi",id = 2},
        {name = "Nane Yeşili",id = 3},
        {name = "Limon Yeşili",id = 4},
        {name = "Sarı",id = 5},
        {name = "Altın Duş",id = 6},
        {name = "Turuncu",id = 7},
        {name = "Kırmızı",id = 8},
        {name = "Midilli Pembesi",id = 9},
        {name = "Sıcak Pembe",id = 10},
        {name = "Mor",id = 11},
        {name = "Siyah",id = 12}
    }
}
-- WHEELS

vehicleWheelOptions = {
    {category = "Özel Lastikler", id = -1, wheelID = 23},
    --{category = "Lastik Dumanı", id = 20, wheelID = 23},
    {category = "Spor", id = 0, wheelID = 23},
    {category = "Muscle", id = 1, wheelID = 23},
    {category = "Lowrider", id = 2, wheelID = 23},
    {category = "SUV", id = 3, wheelID = 23},
    {category = "Offroad", id = 4, wheelID = 23},
    {category = "Tuner", id = 5, wheelID = 23},
    {category = "Motosiklet", id = 6, wheelID = 23},
    {category = "Highend", id = 7, wheelID = 23},
    {category = "BennysWheel", id = 8, wheelID = 23},
    {category = "BespokeWheel", id = 9, wheelID = 23},
    {category = "Dragster", id = 10, wheelID = 23},
    {category = "Sokak", id = 11, wheelID = 23},
    {category = "Ralli", id = 12, wheelID = 23},
}

-- TIRE SMOKE
vehicleTyreSmokeOptions = {
    {
        name = "Beyaz Duman",
        r = 254,
        g = 254,
        b = 254
    }, 
    {
        name = "Siyah Duman",
        r = 1,
        g = 1,
        b = 1
    },
    {
        name = "Mavi Duman",
        r = 0,
        g = 150,
        b = 255
    },
    {
        name = "Sarı Duman",
        r = 255,
        g = 255,
        b = 50
    },
    {
        name = "Turuncu Duman",
        r = 255,
        g = 153,
        b = 51
    },
    {
        name = "Kırmızı Duman",
        r = 255,
        g = 10,
        b = 10
    },
    {
        name = "Yeşil Duman",
        r = 10,
        g = 255,
        b = 10
    },
    {
        name = "Mor Duman",
        r = 153,
        g = 10,
        b = 153
    },
    {
        name = "Pembe Duman",
        r = 255,
        g = 102,
        b = 178
    },
    {
        name = "Gri Duman",
        r = 128,
        g = 128,
        b = 128
    }
}

-- NEONS

vehicleNeonOptions = {
    category = "Neons",
        neonTypes = {
            {name = "Ön Neon", id = 2},
            {name = "Arka Neon", id = 3},
            {name = "Sol Neon", id = 0},
            {name = "Sağ Neon", id = 1}
        },
    neonColours = {
        {
            name = "Beyaz",
            r = 222,
            g = 222,
            b = 255
        }, {
            name = "Mavi",
            r = 2,
            g = 21,
            b = 255
        }, {
            name = "Elektirik Mavisi",
            r = 3,
            g = 83,
            b = 255
        }, {
            name = "Nane Yeşili",
            r = 0,
            g = 255,
            b = 140
        }, {
            name = "Limon Yeşili",
            r = 94,
            g = 255,
            b = 1
        }, {
            name = "Sarı",
            r = 255,
            g = 255,
            b = 0
        }, {
            name = "Altın Duş",
            r = 255,
            g = 150,
            b = 0
        }, {
            name = "Turuncu",
            r = 255,
            g = 62,
            b = 0
        }, {
            name = "Kırmızı",
            r = 255,
            g = 1,
            b = 1
        }, {
            name = "Midilli Pembesi",
            r = 255,
            g = 50,
            b = 100
        }, {
            name = "Sıcak Pembe",
            r = 255,
            g = 5,
            b = 190
        }, {
            name = "Mor",
            r = 35,
            g = 1,
            b = 255
        }, {
            name = "Siyah",
            r = 15,
            g = 3,
            b = 255
        }
    }
}

-- MAIN COMPONENTS

vehicleCustomisation = {
    {category = "Spoiler", id = 0}, 
    {category = "Ön Tampon", id = 1},
    {category = "Arka Tampon", id = 2},
    {category = "Yan Etek", id = 3},
    {category = "Egzoz", id = 4},
    {category = "Kafes", id = 5},
    {category = "Izgara", id = 6},
    {category = "Kaput", id = 7},
    {category = "Sol Çamurluk", id = 8},
    {category = "Sağ Çamurluk", id = 9},
    {category = "Araç Tavanı",id = 10},
    {category = "Motor Yükseltmesi", id = 11},
    {category = "Fren Yükseltmesi", id = 12},
    {category = "Vites Yükseltmesi", id = 13},
    {category = "Süspansiyon Yükseltmesi", id = 15},
    {category = "Zırh Yükseltmesi", id = 16},
    {category = "Turbo Yükseltmesi", id = 18},
    {category = "Plaka Modelleri",id = 25},
    {category = "İç Döşeme", id = 27},
    {category = "Ornaments", id = 28},
    {category = "Araç İçi Süs", id = 29},
    {category = "Göstergeler", id = 30},
    {category = "Kapı Hoparlörü", id = 31},
    {category = "Koltuklar", id = 32},
    {category = "Direksiyon Modelleri", id = 33},
    {category = "Vites Kolu", id = 34},
    {category = "Plaka Çerçeveleri", id = 35},
    {category = "Hoparlör", id = 36},
    {category = "Bagaj İçi", id = 37},
    {category = "Hidrolik", id = 38},
    {category = "Motor bloğu", id = 39},
    {category = "Hava Filtresi", id = 40},
    {category = "Yay", id = 41},
    {category = "Tekerlek Üstü Etek", id = 42},
    {category = "Anten", id = 43},
    {category = "Direk Kaplaamsı", id = 44},
    {category = "Yakıt Tankı", id = 45},
    {category = "Camlar", id = 46},
    {category = "Kaplamalar", id = 48},
    {category = "Kornalar", id = 14, 
        
        hornNames = {
            {name = "Kamyon Korna", id = 0},
            {name = "Polis Korna", id = 1},
            {name = "Palyaço Korna", id = 2},
            {name = "Müzikli Korna 1", id = 3},
            {name = "Müzikli Korna 2", id = 4},
            {name = "Müzikli Korna 3", id = 5},
            {name = "Müzikli Korna 4", id = 6},
            {name = "Müzikli Korna 5", id = 7},
            {name = "Üzgün Trompet", id = 8},
            {name = "Klasik Korna 1", id = 9},
            {name = "Klasik Korna 2", id = 10},
            {name = "Klasik Korna 3", id = 11},
            {name = "Klasik Korna 4", id = 12},
            {name = "Klasik Korna 5", id = 13},
            {name = "Klasik Korna 6", id = 14},
            {name = "Klasik Korna 7", id = 15},
            {name = "Gam - Do", id = 16},
            {name = "Gam - Re", id = 17},
            {name = "Gam - Mi", id = 18},
            {name = "Gam - Fa", id = 19},
            {name = "Gam - Sol", id = 20},
            {name = "Gam - La", id = 21},
            {name = "Gam - Si", id = 22},
            {name = "Gam - Do", id = 23},
            {name = "Caz Korna 1", id = 24},
            {name = "Caz Korna 2", id = 25},
            {name = "Caz Korna 3", id = 26},
            {name = "Caz Korna Döngüsü", id = 27},
            {name = "Yıldızlı Bayrak 1", id = 28},
            {name = "Yıldızlı Bayrak 2", id = 29},
            {name = "Yıldızlı Bayrak 3", id = 30},
            {name = "Yıldızlı Bayrak 4", id = 31},
            {name = "Klasik Korna 8 Döngüsü", id = 32},
            {name = "Klasik Korna 9 Döngüsü", id = 33},
            {name = "Klasik Korna 10 Döngüsü", id = 34},
            {name = "Klasik Korna 8", id = 35},
            {name = "Klasik Korna 9", id = 36},
            {name = "Klasik Korna 10", id = 37},
            {name = "Cenaze Döngüsü", id = 38},
            {name = "Cenaze", id = 39},
            {name = "Ürkütücü Döngüsü", id = 40},
            {name = "Ürkütücü", id = 41},
            {name = "San Andreas", id = 42},
            {name = "San Andreas", id = 43},
            {name = "Liberty City ", id = 44},
            {name = "Liberty City", id = 45},
            {name = "Festival 1", id = 46},
            {name = "Festival 1", id = 47},
            {name = "Festival 2", id = 48},
            {name = "Festival 2", id = 49},
            {name = "Festival 3", id = 50},
            {name = "Festival 3", id = 51}
        }
    }
}

-- COLORS

-- MAIN COMPONENTS

vehicleCustomisation = {
    {category = "Spoiler", id = 0}, 
    {category = "Ön Tampon", id = 1},
    {category = "Arka Tampon", id = 2},
    {category = "Yan Etek", id = 3},
    {category = "Egzoz", id = 4},
    {category = "Kafes", id = 5},
    {category = "Izgara", id = 6},
    {category = "Kaput", id = 7},
    {category = "Sol Çamurluk", id = 8},
    {category = "Sağ Çamurluk", id = 9},
    {category = "Araç Tavanı",id = 10},
    {category = "Motor Yükseltmesi", id = 11},
    {category = "Fren Yükseltmesi", id = 12},
    {category = "Vites Yükseltmesi", id = 13},
    {category = "Süspansiyon Yükseltmesi", id = 15},
    {category = "Zırh Yükseltmesi", id = 16},
    {category = "Turbo Yükseltmesi", id = 18},
    {category = "Plaka Modelleri",id = 25},
    {category = "İç Döşeme", id = 27},
    {category = "Ornaments", id = 28},
    {category = "Araç İçi Süs", id = 29},
    {category = "Göstergeler", id = 30},
    {category = "Kapı Hoparlörü", id = 31},
    {category = "Koltuklar", id = 32},
    {category = "Direksiyon Modelleri", id = 33},
    {category = "Vites Kolu", id = 34},
    {category = "Plaka Çerçeveleri", id = 35},
    {category = "Hoparlör", id = 36},
    {category = "Bagaj İçi", id = 37},
    {category = "Hidrolik", id = 38},
    {category = "Motor bloğu", id = 39},
    {category = "Hava Filtresi", id = 40},
    {category = "Yay", id = 41},
    {category = "Tekerlek Üstü Etek", id = 42},
    {category = "Anten", id = 43},
    {category = "Direk Kaplaamsı", id = 44},
    {category = "Yakıt Tankı", id = 45},
    {category = "Camlar", id = 46},
    {category = "Kaplamalar", id = 48},
    {category = "Kornalar", id = 14, 
        
        hornNames = {
            {name = "Kamyon Korna", id = 0},
            {name = "Polis Korna", id = 1},
            {name = "Palyaço Korna", id = 2},
            {name = "Müzikli Korna 1", id = 3},
            {name = "Müzikli Korna 2", id = 4},
            {name = "Müzikli Korna 3", id = 5},
            {name = "Müzikli Korna 4", id = 6},
            {name = "Müzikli Korna 5", id = 7},
            {name = "Üzgün Trompet", id = 8},
            {name = "Klasik Korna 1", id = 9},
            {name = "Klasik Korna 2", id = 10},
            {name = "Klasik Korna 3", id = 11},
            {name = "Klasik Korna 4", id = 12},
            {name = "Klasik Korna 5", id = 13},
            {name = "Klasik Korna 6", id = 14},
            {name = "Klasik Korna 7", id = 15},
            {name = "Gam - Do", id = 16},
            {name = "Gam - Re", id = 17},
            {name = "Gam - Mi", id = 18},
            {name = "Gam - Fa", id = 19},
            {name = "Gam - Sol", id = 20},
            {name = "Gam - La", id = 21},
            {name = "Gam - Si", id = 22},
            {name = "Gam - Do", id = 23},
            {name = "Caz Korna 1", id = 24},
            {name = "Caz Korna 2", id = 25},
            {name = "Caz Korna 3", id = 26},
            {name = "Caz Korna Döngüsü", id = 27},
            {name = "Yıldızlı Bayrak 1", id = 28},
            {name = "Yıldızlı Bayrak 2", id = 29},
            {name = "Yıldızlı Bayrak 3", id = 30},
            {name = "Yıldızlı Bayrak 4", id = 31},
            {name = "Klasik Korna 8 Döngüsü", id = 32},
            {name = "Klasik Korna 9 Döngüsü", id = 33},
            {name = "Klasik Korna 10 Döngüsü", id = 34},
            {name = "Klasik Korna 8", id = 35},
            {name = "Klasik Korna 9", id = 36},
            {name = "Klasik Korna 10", id = 37},
            {name = "Cenaze Döngüsü", id = 38},
            {name = "Cenaze", id = 39},
            {name = "Ürkütücü Döngüsü", id = 40},
            {name = "Ürkütücü", id = 41},
            {name = "San Andreas", id = 42},
            {name = "San Andreas", id = 43},
            {name = "Liberty City ", id = 44},
            {name = "Liberty City", id = 45},
            {name = "Festival 1", id = 46},
            {name = "Festival 1", id = 47},
            {name = "Festival 2", id = 48},
            {name = "Festival 2", id = 49},
            {name = "Festival 3", id = 50},
            {name = "Festival 3", id = 51}
        }
    }
}

-- COLORS

vehicleResprayOptions = {
    {category = "Klasik", id = 0,
        colours = {
            {name = "Siyah", id = 0},
            {name = "Karbon Siyah", id = 147},
            {name = "Grafit", id = 1},
            {name = "Antrasit Siyah", id = 11},
            {name = "Çelik", id = 11},
            {name = "Koyu Çelik", id = 3},
            {name = "Gümüş", id = 4},
            {name = "Mavimsi Gümüş", id = 5},
            {name = "Haddelenmiş Çelik", id = 6},
            {name = "Gölge Gümüş", id = 7},
            {name = "Taş Gümüş", id = 8},
            {name = "Gece Yarısı Gümüş", id = 9},
            {name = "Dökme Demir Gümüş", id = 10},
            {name = "Kırmızı", id = 27},
            {name = "Torino Kırmızısı", id = 28},
            {name = "Formula Kırmızısı", id = 29},
            {name = "Lav Kırmızısı", id = 150},
            {name = "Ateş Red", id = 30},
            {name = "LutüfKırmızısı", id = 31},
            {name = "Granat Kırmızısı", id = 32},
            {name = "Gün Batımı Red", id = 33},
            {name = "Cabernet Red", id = 34},
            {name = "Şarap Kırmızısı", id = 143},
            {name = "Şeker Kırmızısı", id = 35},
            {name = "Sıcak Pembe", id = 135},
            {name = "Pfsiter Pembe", id = 137},
            {name = "Somon Pembesi", id = 136},
            {name = "Gündoğumu Turuncu", id = 36},
            {name = "Turuncu", id = 38},
            {name = "Parlak Turuncu", id = 138},
            {name = "Altın", id = 99},
            {name = "Bronz", id = 90},
            {name = "Sarı", id = 88},
            {name = "Yarış Sarısı", id = 89},
            {name = "Çiğ Sarı", id = 91},
            {name = "Koyu Yeşil", id = 49},
            {name = "Yarış Yeşili", id = 50},
            {name = "Deniz Grisi", id = 51},
            {name = "Zeytin Yeşili", id = 52},
            {name = "Parlak Yeşil", id = 53},
            {name = "Benzin Yeşili", id = 54},
            {name = "Limon Yeşili", id = 92},
            {name = "Gece Mavisi", id = 141},
            {name = "Galaxy Mavisi", id = 61},
            {name = "Karanlık Mavi", id = 62},
            {name = "Saks Mavisi", id = 63},
            {name = "Mavi", id = 64},
            {name = "Denizci Mavisi", id = 65},
            {name = "Liman Mavisi", id = 66},
            {name = "Elmas Mavisi", id = 67},
            {name = "Sörf Mavisi", id = 68},
            {name = "Deniz Mavisi", id = 69},
            {name = "Yarış Mavisi", id = 73},
            {name = "Ultra Mavi", id = 70},
            {name = "Açık Mavi", id = 74},
            {name = "Çikolata Kahve", id = 96},
            {name = "Bizon Kahve", id = 101},
            {name = "Creeen Kahve", id = 95},
            {name = "Keçe Kahve", id = 94},
            {name = "Akçaağaç Kahve", id = 97},
            {name = "Kayın Ağacı Kahve", id = 103},
            {name = "Siyah Kahve", id = 104},
            {name = "Eyer Kahve", id = 98},
            {name = "Yosun Kahve", id = 100},
            {name = "Kayın Kahve", id = 102},
            {name = "Saman Kahve", id = 99},
            {name = "Kumlu Kahve", id = 105},
            {name = "Ağartılmış Kahve", id = 106},
            {name = "Schafter Mor", id = 71},
            {name = "Fırıldak Mor", id = 72},
            {name = "Gece Yarısı Mor", id = 142},
            {name = "Parlak Mor", id = 145},
            {name = "Krem", id = 107},
            {name = "Buz Beyaz", id = 111},
            {name = "Parlak Beyaz", id = 112}
        }
    }, 
    {category = "Metalik", id = 1,
        colours = {{name = "Siyah", id = 0},
            {name = "Karbon Siyah", id = 147},
            {name = "Grafit", id = 1},
            {name = "Antrasit Siyah", id = 11},
            {name = "Black Steel", id = 11},
            {name = "Çelik", id = 3},
            {name = "Gümüş", id = 4},
            {name = "Mavimsi Gümüş", id = 5},
            {name = "Haddelenmiş Çelik", id = 6},
            {name = "Gölge Gümüş", id = 7},
            {name = "Taş Gümüş", id = 8},
            {name = "Gece Yarısı Gümüş", id = 9},
            {name = "Dökme Demir Gümüş", id = 10},
            {name = "Kırmızı", id = 27},
            {name = "Torino Kırmızı", id = 28},
            {name = "Formula Kırmızı", id = 29},
            {name = "Lav Kırmızı", id = 150},
            {name = "Ateş Kırmızı", id = 30},
            {name = "LutüfKırmızısı", id = 31},
            {name = "Granat Kırmızısı", id = 32},
            {name = "Gün Batımı Red", id = 33},
            {name = "Cabernet Red", id = 34},
            {name = "Şarap Kırmızsı", id = 143},
            {name = "Candy Red", id = 35},
            {name = "Şeker Kırmızısı", id = 135},
            {name = "Pfsiter Pembe", id = 137},
            {name = "Somon Pembesi", id = 136},
            {name = "Gündoğumu Turuncu", id = 36},
            {name = "Turuncu", id = 38},
            {name = "Parlak Turuncu", id = 138},
            {name = "Altın", id = 99},
            {name = "Kahverengi", id = 90},
            {name = "Sarı", id = 88},
            {name = "Yarış Sarısı", id = 89},
            {name = "Çiğ Sarısı", id = 91},
            {name = "Koyu Yeşil", id = 49},
            {name = "Yarış Yeşili", id = 50},
            {name = "Deniz Yeşili", id = 51},
            {name = "Zeytin Yeşili", id = 52},
            {name = "Parlak Yeşil", id = 53},
            {name = "Benzin Yeşili", id = 54},
            {name = "Limon Yeşili", id = 92},
            {name = "Gece Mavisi", id = 141},
            {name = "Galaxy Mavisi", id = 61},
            {name = "Karanlık Mavi", id = 62},
            {name = "Saks Mavisi", id = 63},
            {name = "Mavi", id = 64},
            {name = "Denizci Mavisi", id = 65},
            {name = "Liman Mavisi", id = 66},
            {name = "Elmas Mavisi", id = 67},
            {name = "Sörf Mavisi", id = 68},
            {name = "Deniz Mavisi", id = 69},
            {name = "Yarış Mavisi", id = 73},
            {name = "Ultra Mavi", id = 70},
            {name = "Parlak Mavi", id = 74},
            {name = "Çikolata Kahve", id = 96},
            {name = "Bizon Kahve", id = 101},
            {name = "Keçe Kahve", id = 95},
            {name = "Akçaağaç Kahve", id = 94},
            {name = "Kayın Ağacı Kahve", id = 97},
            {name = "Siyah Kahve", id = 103},
            {name = "Eyer Kahve", id = 104},
            {name = "Yosun Kahve", id = 98},
            {name = "Kayın Kahve", id = 100},
            {name = "Saman Kahve", id = 102},
            {name = "Koyu Kahve", id = 99},
            {name = "Kumlu Kahve", id = 105},
            {name = "Ağartılmış Kahve", id = 106},
            {name = "Schafter Mor", id = 71},
            {name = "Fırıldak Mor", id = 72},
            {name = "Gece Yarısı Mor", id = 142},
            {name = "Parlak Mor", id = 145},
            {name = "Krem", id = 107},
            {name = "Buz Beyaz", id = 111},
            {name = "Parlak Beyaz", id = 112}
        }
    },
    {category = "Mat", id = 2,
        colours = {{name = "Siyah", id = 12},
            {name = "Gri", id = 13},
            {name = "Açık Gri", id = 14},
            {name = "Buz Beyaz", id = 131},
            {name = "Mavi", id = 83},
            {name = "Koyu Mavi", id = 82},
            {name = "Gece Yarısı Mavisi", id = 84},
            {name = "Gece Yarısı Mor", id = 149},
            {name = "Schafter Mor", id = 148},
            {name = "Kırmızı", id = 39},
            {name = "Koyu Kırmızı", id = 40},
            {name = "Turuncu", id = 41},
            {name = "Sarı", id = 42},
            {name = "Limon Yeşili", id = 55},
            {name = "Yeşil", id = 128},
            {name = "Orman Yeşili", id = 151},
            {name = "Yoğun Yeşil", id = 155},
            {name = "Zeytin Yol", id = 152},
            {name = "Karanlık Dünya", id = 153},
            {name = "Çöl Bronzu", id = 154}
        }
    },
    {category = "Metal", id = 3,
            colours = {{name = "Fırçalanmış Çelik", id = 117},
            {name = "Fırçalanmış Siyah Çelik", id = 118},
            {name = "Fırçalanmış Alümnyum", id = 119},
            {name = "Saf Altın", id = 158},
            {name = "Fırçalanmış Altın", id = 159},
            {name = "Krom", id = 120}
        }
    }
}
