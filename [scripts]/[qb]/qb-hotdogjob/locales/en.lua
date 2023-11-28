local Translations = {
    error = {
        no_money = 'Yetersiz Para',
        too_far = 'Sosisli Sandviç Standınızdan çok uzaktasınız',
        no_stand = 'Sosisli sandviç standınız yok',
        cust_refused = 'Müşteriyi Reddettin!',
        no_stand_found = 'Sosisli sandviç standınız hiçbir yerde görünmüyordu, Depozitonuzu geri alamayacaksınız!',
        no_more = 'Konsey önünde bununla ilgili daha fazla %{value} hakkınız yok',
        deposit_notreturned = 'Sosisli Sandviç Standınız yoktu',
        no_dogs = 'Sosisli sandviçin yok',
    },
    success = {
        deposit = '%{deposit}$ tutarında bir depozito ödediniz!',
        deposit_returned = '%{deposit}$ depozitonuz iade edildi!',
        sold_hotdogs = '%{value} x Hotdog %{value2}$ karşılığında satıldı',
        made_hotdog = '%{value} Sosisli Sandviç yaptınız',
        made_luck_hotdog = '%{value} x %{value2} Sosisli Sandviç yaptınız',
    },
    info = {
        command = "Standı Sil (Admin Only)",
        blip_name = 'Sosisli tezgahı',
        start_working = '[E] İşe Başla',
        start_work = 'İşe Başla',
        stop_working = '[E] İşi Bırak',
        stop_work = 'İşi Bırak',
        grab_stall = '[~g~G~s~] Aracı kullan',
        drop_stall = '[~g~G~s~] Aracı Bırak',
        grab = 'Aracı kullan',
        prepare = 'Sosisli Hazırla',
        toggle_sell = 'Satış Başlat / Satışı Durdur',
        selling_prep = '[~g~E~s~] Sosisli Hazırla [Satıs: ~g~Yapılıyor~w~]',
        not_selling = '[~g~E~s~] Sosisli Hazırla [Satıs: ~r~Yapılmıyor~w~]',
        sell_dogs = '[~g~7~s~] Sell %{value} x HotDogs for $%{value2} / [~g~8~s~] Reject',
        sell_dogs_target = '%{value} x HotDog %{value2} $',
        admin_removed = "Hot Dog Standı Kaldırıldı",
        label_a = "Mükemmel (A)",
        label_b = "Nadir (B)",
        label_c = "Yaygın (C)"
    },
        keymapping = {
        gkey = 'Sosisli standını bırak',
        
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
