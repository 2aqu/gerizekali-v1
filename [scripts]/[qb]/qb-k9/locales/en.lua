local Translations = {
    error = {
        ["k9_alert"] = "Köpek tehdit bulamadı.",
        ["k9_toofar"] = " Köpeğe çok uzaksın!",
        ["k9_locaterror"] = " Aranacak kişiye yaklaşmalısın..",
        ["k9_vehlocate"] = " Aranacak araca yaklaşmalısın..",
        ["k9_returnerror"] = "Köpek geri döndü!",
    },
    success = {
        ["k9_alert"] = "Köpek Tehdit Buldu!",
    },
    info = {
        ["k9_name"] = "K9",
        ["k9_searching"] = " arıyor..",
        ["k9_scent"] = " bir koku buldu..",
        ["k9_nofollow"] = " artık takip etmiyor..",
        ["k9_lostscent"] = " kokuyu kaybetti..",
        ["k9_purchase"] = "K9 Köpeği",
        ["k9_return"] = "K9 Geri Döndü",
    },
    menu = {
        ["purchase_header"] = "🐶 | Polis K9 Menü",
        ["k9_takeout"] = "🐕‍🦺 | K9 Çıkar",
        ["takeout_txt"] = "Mevcut köpeklerden birini çıkarabilirsiniz.",
        ["k9_return"] = "🐕 | Departmana Geri Gönder",
        ["return_txt"] = "Köpeği K9 Unit'e geri gönderebilirsiniz.",
        ["k9_commands"] = "Polis K9 Komutları",
        ["k9_sit"] = "🔈| K9 Otur",
        ["k9_sittxt"] = "Köpeği oturtabilirsiniz.",
        ["k9_lay"] = "🔈| K9 Yat",
        ["k9_laytxt"] = "Köpeği yatırabilirsiniz.",
        ["k9_carsearch"] = "🚗 | K9 Aracı Ara",
        ["k9_carsearchtxt"] = "Aracın yakında olduğundan emin olun.",
        ["k9_enterveh"] = "🚘 | K9 Araca Bin",
        ["k9_entervehtxt"] = "Köpeğe araca binmesini söylersiniz.",
        ["k9_searchp"] = "🧍 | K9 Kişiyi Ara",
        ["k9_searchptxt"] = "Kişinin yakında olduğundan emin olun.",
        ["k9_area"] = "🌍 | K9 Bölgeyi Ara",
        ["k9_areatxt"] = "K9 Bölgeyi Arar",
    }
}
Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})