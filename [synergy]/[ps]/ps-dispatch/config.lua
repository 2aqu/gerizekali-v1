Config = {}

Config.Enable = {}
Config.Timer = {}

Config.PoliceJob = { "police", "state", "sheriff", "davison", "ranger", "doj", "vpd" }


-- Enable if you only want to send alerts to onDuty officers
Config.OnDutyOnly = true

Config.PoliceAndAmbulance = { "police", "state", "sheriff", "davison", "ranger", "doj", "vpd" }
Config.PhoneModel = 'prop_npc_phone_02'

-- sets report chance to 100%
Config.DebugChance = true

-- Explosion Alert Types (Gas Pumps by default)
-- Ex.  Config.ExplosionTypes = {1, 2, 3, 4, 5}
Config.ExplosionTypes = {9}

-- enable default alerts
Config.Enable.Speeding = true
Config.Enable.Shooting = true
Config.Enable.Autotheft = true
Config.Enable.Melee = true
Config.Enable.PlayerDowned = true
---------------------------------------------------------------
Config.Locale = 'en'

-- enable alerts when cops break the law and print to console
Config.Debug = true

-- changes the min and max offset for the radius
Config.MinOffset = 1
Config.MaxOffset = 120
---------------------------------------------------------------
Config.ChatMessages = true



Config.Kodlar = {
    maxKod = 100,
    Kodlar = {
        ["0"] = {
            baslik = "Memur Yaralandı",
            kod = "Kod 0",
            blip = 41,
        },
        ["1"] = {
            baslik = "Çakarsız Sirensiz Destek Talebi",
            kod = "Kod 1",
            blip = 41,
        },
        ["2"] = {
            baslik = "Çakarlı Destek Talebi",
            kod = "Kod 2",
            blip = 41,
        },
        ["3"] = {
            baslik = "Çakarlı Sirenli Destek Talebi",
            kod = "Kod 3",
            blip = 41,
        },
        ["4"] = {
            baslik = "Bölge Kontrol Altında - Devam Edin",
            kod = "Kod 4",
            blip = 41,
        },
        ["12"] = {
            baslik = "Asılsız İhbar",
            kod = "Kod 12",
            blip = 41,
        },
        ["50"] = {
            baslik = "Kaza Durumu",
            kod = "Kod 50",
            blip = 41,
        },
        ["60"] = {
            baslik = "Soyguna Destek Birim Gerekli",
            kod = "Kod 60",
            blip = 41,
        },
        ["77"] = {
            baslik = "Pusu!",
            kod = "Kod 77",
            blip = 41,
        },
        ["90"] = {
            baslik = "Soygun Anı Çatışma",
            kod = "Kod 90",
            blip = 41,
        },
        ["95"] = {
            baslik = "Soygunda Personel Yaralandı",
            kod = "Kod 95",
            blip = 41,
        },
        ["99"] = {
            baslik = "Acil Destek Talebi",
            kod = "Kod 99",
            blip = 41,
        },
        ["100"] = {
            baslik = "Soygundaki Çatışma Sonlandı",
            kod = "Kod 100",
            blip = 41,
        }
    },
}


---------------------------------------------------------------

-- Locations for the Hunting Zones and No Dispatch Zones( Label: Name of Blip // Radius: Radius of the Alert and Blip)
Config.Locations = {
    ["hunting"] = {
        [1] = {label = "Hunting Zone", radius = 250.0, coords = vector3(-1339.05, -3044.38, 13.94)},
    },
    ["NoDispatch"] = {
        [1] = {label = "Ammunation 1", coords = vector3(13.53, -1097.92, 29.8), length = 14.0, width = 5.0, heading = 70, minZ = 28.8, maxZ = 32.8},
        [2] = {label = "Ammunation 2", coords = vector3(821.96, -2163.09, 29.62), length = 14.0, width = 5.0, heading = 270, minZ = 28.62, maxZ = 32.62},
    },
}

Config.AuthorizedJobs = {
    LEO = { -- this is for job checks which should only return true for police officers
        Jobs = {['police'] = true, ['state'] = true, ['sheriff'] = true},
        Types = {['police'] = true, ['leo'] = true},
        Check = function(PlyData)
            PlyData = PlyData or QBCore.Functions.GetPlayerData()
            if not PlyData or (PlyData and (not PlyData.job or not PlyData.job.type))  then return false end
            local job, jobtype = PlyData.job.name, PlyData.job.type
            if Config.AuthorizedJobs.LEO.Jobs[job] or Config.AuthorizedJobs.LEO.Types[jobtype] then return true end
        end
    },
    EMS = { -- this if for job checks which should only return true for ems workers
        Jobs = {['ambulance'] = true, ['fire'] = true},
        Types = {['ambulance'] = true, ['fire'] = true, ['ems'] = true},
        Check = function(PlyData)
            PlyData = PlyData or QBCore.Functions.GetPlayerData()
            if not PlyData or (PlyData and (not PlyData.job or not PlyData.job.type))  then return false end
            local job, jobtype = PlyData.job.name, PlyData.job.type
            if Config.AuthorizedJobs.EMS.Jobs[job] or Config.AuthorizedJobs.EMS.Types[jobtype] then return true end
        end
    },
    FirstResponder = { -- do not touch, this is a combined job checking function for emergency services (police and ems)
        Check = function(PlyData)
            PlyData = PlyData or QBCore.Functions.GetPlayerData()
            if not PlyData or (PlyData and (not PlyData.job or not PlyData.job.type))  then return false end
            local job, jobtype = PlyData.job.name, PlyData.job.type
            if Config.AuthorizedJobs.LEO.Check(PlyData, jobtype, job) or Config.AuthorizedJobs.EMS.Check(PlyData, jobtype, job) then return true end            
        end
    }
}

for k, v in pairs(Config.Enable) do
    print(k, v, json.encode(v))
    if Config.Enable[k] then
        Config[k] = {}
        Config.Timer[k] = 0 -- Default to 0 seconds
        Config[k].Success = 30 -- Default to 30 seconds
        Config[k].Fail = 2 -- Default to 2 seconds
    end
end

-- If you want to set specific timers, do it here
if Config.Shooting then
    Config.Shooting.Success = 10 -- 10 seconds
    Config.Shooting.Fail = 0 -- 0 seconds
end

if Config.PlayerDowned then
    Config.PlayerDowned.Success = 5 -- 5 seconds 
    Config.Shooting.Fail = 0 -- 0 seconds
end

    Config.WeaponBlacklist = {
        'WEAPON_GRENADE',
        'WEAPON_BZGAS',
        'WEAPON_MOLOTOV',
        'WEAPON_STICKYBOMB',
        'WEAPON_PROXMINE',
        'WEAPON_SNOWBALL',
        'WEAPON_PIPEBOMB',
        'WEAPON_BALL',
        'WEAPON_SMOKEGRENADE',
        'WEAPON_FLARE',
        'WEAPON_PETROLCAN',
        'WEAPON_FIREEXTINGUISHER',
        'WEAPON_HAZARDCAN',
        'WEAPON_RAYCARBINE',
        'WEAPON_STUNGUN_MP',
        'WEAPON_SNIPERRIFLE',
        'WEAPON_STUNGUN'
    }

    Config.Colours = {
        ['0'] = "Metalik Siyah",
        ['1'] = "Metalik Grafit Siyah",
        ['2'] = "Metalik Siyah Çelik",
        ['3'] = "Metalik Koyu Gümüş",
        ['4'] = "Metalik Gümüş",
        ['5'] = "Metalik Mavi Gümüş",
        ['6'] = "Metalik Çelik Gri",
        ['7'] = "Metalik Gölge Gümüş",
        ['8'] = "Metalik Taş Gümüş",
        ['9'] = "Metalik Gece Gümüşü",
        ['10'] = "Metalik Silah Metali",
        ['11'] = "Metalik Antrasit Gri",
        ['12'] = "Mat siyah",
        ['13'] = "Mat Gri",
        ['14'] = "Mat Açık Gri",
        ['15'] = "Faydalı Siyah",
        ['16'] = "Kullanım Siyah Poli",
        ['17'] = "Kullanışlı Koyu gümüş",
        ['18'] = "Faydalı Gümüş",
        ['19'] = "Kullanışlı Silah Metali",
        ['20'] = "Kullanışlı Gölge Gümüş",
        ['21'] = "Aşınmış Siyah",
        ['22'] = "Aşınmış Grafit",
        ['23'] = "Aşınmış Gümüş Gri",
        ['24'] = "Aşınmış Gümüş",
        ['25'] = "Aşınmış Mavi Gümüş",
        ['26'] = "Aşınmış Gölge Gümüş",
        ['27'] = "metalik Kırmızı",
        ['28'] = "Metalik Torino Kırmızısı",
        ['29'] = "Metalik Formula Kırmızısı",
        ['30'] = "Metalik Alev Kırmızısı",
        ['31'] = "Metalik Zarif Kırmızı",
        ['32'] = "Metalik Lal Kırmızısı",
        ['33'] = "Metalik Çöl Kırmızısı",
        ['34'] = "Metalik Cabernet Kırmızısı",
        ['35'] = "Metalik Şeker Kırmızısı",
        ['36'] = "Metalik Gündoğumu Turuncusu",
        ['37'] = "Metalik Klasik Altın",
        ['38'] = "Metalik Turuncu",
        ['39'] = "Mat Kırmızı",
        ['40'] = "Mat Koyu Kırmızı",
        ['41'] = "Mat Turuncu",
        ['42'] = "Mat Sarı",
        ['43'] = "Kullanışlı Kırmızı",
        ['44'] = "Kullanım Parlak Kırmızı",
        ['45'] = "Kullan Garnet Kırmızısı",
        ['46'] = "Aşınmış Kırmızı",
        ['47'] = "Aşınmış Altın Kırmızı",
        ['48'] = "Aşınmış Koyu Kırmızı",
        ['49'] = "Metalik Koyu Yeşil",
        ['50'] = "Metalik Yarış Yeşili",
        ['51'] = "Metalik Deniz Yeşili",
        ['52'] = "Metalik Zeytin Yeşili",
        ['53'] = "Metalik Yeşil",
        ['54'] = "Metalik Benzinli Mavi Yeşil",
        ['55'] = "Mat Kireç Yeşili",
        ['56'] = "Kullanışlı Koyu Yeşil",
        ['57'] = "Kullanışlı Yeşil",
        ['58'] = "Aşınmış Koyu Yeşil",
        ['59'] = "Yıpranmış Yeşil",
        ['60'] = "Aşınmış Deniz Yıkama",
        ['61'] = "Metalik Gece Mavisi",
        ['62'] = "Metalik Koyu Mavi",
        ['63'] = "Metalik Sakson Mavisi",
        ['64'] = "Metalik Mavi",
        ['65'] = "Metalik Denizci Mavisi",
        ['66'] = "Metalik Liman Mavisi",
        ['67'] = "Metalik Elmas Mavisi",
        ['68'] = "Metalik Sörf Mavisi",
        ['69'] = "Metalik Deniz Mavisi",
        ['70'] = "Metalik Parlak Mavi",
        ['71'] = "Metalik Mor Mavi",
        ['72'] = "Metalik Balon Mavi",
        ['73'] = "Metalik Ultra Mavi",
        ['74'] = "Metalik Parlak Mavi",
        ['75'] = "Kullanışlı Lacivert",
        ['76'] = "Kullanışlı Gece Mavisi",
        ['77'] = "Kullanışlı Mavi",
        ['78'] = "Kullanışlı Deniz Köpüğü Mavi",
        ['79'] = "Uil Şimşek mavisi",
        ['80'] = "Kullanışlı Mavi",
        ['81'] = "Kullanım Parlak Mavi",
        ['82'] = "Mat Lacivert",
        ['83'] = "Mat Mavi",
        ['84'] = "Mat Gece Mavisi",
        ['85'] = "Aşınmış Mavi",
        ['86'] = "Aşınmış Mavi",
        ['87'] = "Aşınmış Açık mavi",
        ['88'] = "Metalik Taksi Sarı",
        ['89'] = "Metalik Yarış Sarısı",
        ['90'] = "Metalik Bronz",
        ['91'] = "Metalik Sarı Kuş",
        ['92'] = "Metalik Lime",
        ['93'] = "Metalik Şampanya",
        ['94'] = "Metalik Pueblo Bej",
        ['95'] = "Metalik Koyu Fildişi",
        ['96'] = "Metalik Choco Kahve",
        ['97'] = "Metalik Altın Kahverengi",
        ['98'] = "Metalik Açık Kahve",
        ['99'] = "Metalik Hasır Bej",
        ['100'] = "Metalik Yosun Kahvesi",
        ['101'] = "Metalik Biston Kahve",
        ['102'] = "Metalik Kayın Ağacı",
        ['103'] = "Metalik Koyu Kayın Ağacı",
        ['104'] = "Metalik Choco Turuncu",
        ['105'] = "Metalik Sahil Kumu",
        ['106'] = "Metalik Güneş Ağartılmış Kum",
        ['107'] = "Metalik Krem",
        ['108'] = "Kullanışlı Kahverengi",
        ['109'] = "Kullanışlı Orta Kahverengi",
        ['110'] = "Kullanışlı Açık Kahve",
        ['111'] = "Metalik Beyaz",
        ['112'] = "Metalik Buz Beyazı",
        ['113'] = "Eskimiş Bal Beji",
        ['114'] = "Yıpranmış Kahverengi",
        ['115'] = "Aşınmış Koyu Kahverengi",
        ['116'] = "Az Kullanılmış Saman Beji",
        ['117'] = "Fırçalanmış çelik",
        ['118'] = "Fırçalanmış Siyah Çelik",
        ['119'] = "Fırçalanmış Alüminyum",
        ['120'] = "Krom",
        ['121'] = "Kırık Beyaz",
        ['122'] = "Kirli Beyaz Kullanın",
        ['123'] = "Aşınmış Turuncu",
        ['124'] = "Aşınmış Açık Turuncu",
        ['125'] = "Metalik Securicor Yeşil",
        ['126'] = "Eskimiş Taksi Sarı",
        ['127'] = "Polis Arabası Mavisi",
        ['128'] = "Mat Yeşil",
        ['129'] = "Mat Kahverengi",
        ['130'] = "Aşınmış Turuncu",
        ['131'] = "Mat Beyaz",
        ['132'] = "Aşınmış Beyaz",
        ['133'] = "Zeytin Kuvvet Yeşili",
        ['134'] = "Saf Beyaz",
        ['135'] = "Sıcak pembe",
        ['136'] = "Somon Pembesi",
        ['137'] = "Metalik Vermilyon Pembesi",
        ['138'] = "Turuncu",
        ['139'] = "Yeşil",
        ['140'] = "Mavi",
        ['141'] = "Metalik Siyah Mavi",
        ['142'] = "Metalik Siyah Mor",
        ['143'] = "Metalik Siyah Kırmızı",
        ['144'] = "Avcı yeşili",
        ['145'] = "Metalik Mor",
        ['146'] = "Metalik Koyu Mavi",
        ['147'] = "Siyah",
        ['148'] = "Mat Mor",
        ['149'] = "Mat Koyu Mor",
        ['150'] = "Metalik Lav Kırmızısı",
        ['151'] = "Mat Orman Yeşili",
        ['152'] = "Mat Zeytin",
        ['153'] = "Mat Çöl Kahvesi",
        ['154'] = "Mat Çöl Tan",
        ['155'] = "Mat Folyo Yeşili",
        ['156'] = "Varsayılan Alaşım Rengi",
        ['157'] = "Epsilon Mavisi",
        ['158'] = "Saf altın",
        ['159'] = "Fırçalanmış Altın",
        ['160'] = "MP100"
    }

