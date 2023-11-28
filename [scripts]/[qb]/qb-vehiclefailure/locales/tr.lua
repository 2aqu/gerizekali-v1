local Translations = {
    error = {
        ["failed_notification"] = "Hata oluştu!",
        ["not_near_veh"] = "Bir aracın yakınında değilsiniz!",
        ["out_range_veh"] = "Araçtan çok uzaktasınız!",
        ["inside_veh"] = "Bir aracın motorunu içeriden tamir edemezsiniz!",
        ["healthy_veh"] = "Araç çok iyi durumda!",
        ["inside_veh_req"] = "Tamir etmek için bir araçta olmalısınız!",
        ["roadside_avail"] = "Telefonunuzdan aranabilir yol yardımı mevcuttur!",
        ["no_permission"] = "Araçları tamir etme izniniz yok!",
        ["fix_message"] = "%{message}, ve şimdi bir garaja gidin!",
        ["veh_damaged"] = "Aracınız çok hasarlı!",
        ["nofix_message_1"] = "Yağ seviyenize baktınız ve bu normal görünüyor.",
        ["nofix_message_2"] = "Bisikletine baktın ve hiçbir şey yanlış görünmüyor.",
        ["nofix_message_3"] = "Yağ hortumundaki baktın ve iyi görünüyor.",
        ["nofix_message_4"] = "Radyoyu açtın. Garip motor sesi şimdi gitti.",
        ["nofix_message_5"] = "Kullandığın pas sökücünün etkisi olmadı.",
        ["nofix_message_6"] = "Birşeyler yapmayı deneme. Bu bozuk değil.",
    },
    success = {
        ["cleaned_veh"] = "Araç temizlendi!",
        ["repaired_veh"] = "Araç tamir edildi!",
        ["fix_message_1"] = "Yağ seviyesini kontrol ettiniz.",
        ["fix_message_2"] = "Petrol sızıntısını kapattın.",
        ["fix_message_3"] = "Yağ hortumunu bantla kapattın.",
        ["fix_message_4"] = "Yağ sızıntısını geçici olarak durdurdunuz.",
        ["fix_message_5"] = "Bisiklete tekme attın ve tekrar çalışıyor.",
        ["fix_message_6"] = "Biraz pas çıkardın.",
        ["fix_message_7"] = "Aracına bağırdın ve tekrar çalışıyor.",
    },
    progress = {
        ["clean_veh"] = "Araç temizleniyor...",
        ["repair_veh"] = "Araç tamir ediliyor...",

    }
}
Lang = Locale:new({phrases = Translations, warnOnMissing = true})