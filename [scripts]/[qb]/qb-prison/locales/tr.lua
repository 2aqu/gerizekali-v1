local Translations = {
    error = {
        ["missing_something"] = "Bir şeyi kaçırıyor gibisin...",
        ["not_enough_police"] = "Yeterli polis yok.",
        ["door_open"] = "Kapı zaten açık.",
        ["cancelled"] = "İşlem iptal edildi.",
        ["didnt_work"] = "İşe yaramadı...",
        ["emty_box"] = "Bu kutu boş gözüküyor...",
        ["injail"] = "%{Time} aylık hapis cezasına çarptırıldınız...",
        ["item_missing"] = "Eksik eşya var gibi gözüküyor...",
        ["escaped"] = "Hapisten kaçtın... Defol buradan!",
        ["do_some_work"] = "Biraz çalışarak hapis süreni azalt, alınan iş: %{currentjob} ",
        ["security_activated"] = "En yüksek güvenlik seviyesi aktif, hücre bloklarıyla kalın!"
    },
    success = {
        ["found_phone"] = "Bir telefon buldun.",
        ["time_cut"] = "Cezan için biraz çalıştın.",
        ["free_"] = "Özgürsün! Tadını çıkar! :)",
        ["timesup"] = "Süren doldu! Ziyaretçi merkezinde kendinizi kontrol edin.",
    },
    info = {
        ["timeleft"] = "Cezanın bitmesine %{JAILTIME} ay kaldı.",
        ["lost_job"] = "Şuanda işsizsin.",
        ["job_interaction"] = "[E] Elektrik İşleri",
        ["job_interaction_target"] = "%{job} İşinde Çalışın",
        ["received_property"] = "Mallarını geri aldın...",
        ["seized_property"] = "Mallarınıza el konuldu, süreniz dolduğunda her şeyi geri alacaksınız...",
        ["cells_blip"] = "Hücreler",
        ["freedom_blip"] = "Hapishane Ön Büro",
        ["canteen_blip"] = "Kantin",
        ["work_blip"] = "Hapishane İşi",
        ["target_freedom_option"] = "Zamanı Kontrol Et",
        ["target_canteen_option"] = "Yiyecek Al",
        ["police_alert_title"] = "Yeni Çağrı",
        ["police_alert_description"] = "Hapishaneden Firar",
        ["connecting_device"] = "Bağlantı Cihazı",
        ["working_electricity"] = "Kabloları Düzenliyorsun"
    }
}
Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
