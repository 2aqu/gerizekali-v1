local Translations = {
    error = {
        no_deposit = "$%{value} depozito gerekli.",
        cancelled = "İptal edildi.",
        vehicle_not_correct = "Bu ticari bir araç değil!",
        no_driver = "Bunu yapmak için sürücü olmalısınız..",
        no_work_done = "Henüz bir iş yapmadınız...",
        backdoors_not_open = "Aracın arka kapıları açık değil.",
        get_out_vehicle = "Bu eylemi gerçekleştirmek için araçtan çıkmanız gerekiyor.",
        too_far_from_trunk = "Kutuları aracınızın bagajından almanız gerekiyor.",
        too_far_from_delivery = "Teslimat noktasına daha yakın olmanız gerekiyor."
    },
    success = {
        paid_with_cash = "$%{value} Depozitoyu nakit olarak öde.",
        paid_with_bank = "$%{value} Deposit banka hesabından öde.",
        refund_to_cash = "$%{value} depozito nakit olarak iade edildi",
        you_earned = "$%{value} kazandın.",
        payslip_time = "Bütün dükkanlara gittin. Maaş Zamanı!",
    },
    menu = {
        header = "Mevcut Kamyonlar",
        close_menu = "⬅ Menüyü Kapat",
    },
    mission = {
        store_reached = "Mağazaya ulaşıldı, [E] ile bagajdan bir kutu alın ve işaretli yere teslim edin.",
        take_box = "Bir kutu ürün al.",
        deliver_box = "Kutuyu teslim et.",
        another_box = "Başka bir kutu al.",
        goto_next_point = "Tüm ürünleri teslim ettiniz, sonraki noktaya ilerleyin.",
        return_to_station = "Tüm ürünleri teslim ettiniz, istasyona dönün.",
        job_completed = "Rotanızı tamamladınız, lütfen ödemenizi alın."
    },
    info = {
        deliver_e = "~g~E~w~ - Ürünleri Teslim Et",
        deliver = "Ürünleri Teslim Et",
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
