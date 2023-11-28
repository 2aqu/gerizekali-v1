local Translations = {
    error = {
        no_vehicles = "Bu garajda araç yok!",
        not_impound = "Aracınız çekilmişlerde değil!",
        not_owned = "Bu aracı garaja koyamazsın!",
        not_correct_type = "Bu araç kategorisini burada garaja sokamazsın!",
        not_enough = "Yetersiz para",
        no_garage = "Yok",
        too_far_away = "Park etme şeridine çok uzaktasın!",
        occupied = "Garaj zaten dolu!",
        no_house_keys = "Bu evin garajının anahtarları sende yok !",
    },
    success = {
        vehicle_parked = "Park edildi!",
    },
    menu = {
        header = {
            house_garage = "Ev Garajı",
            house_car = "Ev Garajı %{value}",
            public_car = "Garaj %{value}",
            public_sea = "Bot %{value}",
            public_air = "Hangar %{value}",
            job_car = "Meslek Garajı %{value}",
            job_sea = "Meslek Bot %{value}",
            job_air = "Meslek Bot %{value}",
            gang_car = "Olusum Garajı %{value}",
            gang_sea = "Olusum Bot %{value}",
            gang_air = "Olusum Bot %{value}",
            depot_car = "Çekilmişler %{value}",
            depot_sea = "Çekilmişler %{value}",
            depot_air = "Çekilmişler %{value}",
            vehicles = "Mevcut Araçlar",
            depot = "%{value} [ $%{value2} ]",
            garage = "%{value} [ %{value2} ]",
        },
        leave = {
            car = "⬅ Ayrıl",
            sea = "⬅ Ayrıl",
            air = "⬅ Ayrıl",
        },
        text = {
            vehicles = "Garajdaki araçları görüntüle!",
            depot = "Plaka: %{value}<br>Benzin: %{value2} | Motor: %{value3} | Gövde: %{value4}",
            garage = "Plaka: %{value}<br>Benzin: %{value2} | Motor: %{value3} | Gövde: %{value4}",
        }
    },
    status = {
        out = "Dışarıda",
        garaged = "Garaj",
        impound = "Çekilmiş",
    },
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
