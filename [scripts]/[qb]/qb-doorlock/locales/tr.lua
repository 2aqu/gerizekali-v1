local Translations = {
    error = {
        lockpick_fail = "Başarısız.",
        door_not_found = "Bir model hash almadınız, kapı şeffafsa, kapının çerçevesini hedeflediğinizden emin olun.",
        same_entity = "Her iki kapı da aynı varlık olamaz.",
        door_registered = "Bu kapı zaten kayıtlı.",
        door_identifier_exists = "Yapılandırmada bu tanımlayıcıya sahip bir kapı zaten var. (%s)",
    },
    success = {
        lockpick_success = "Başarılı."
    },
    general = {
        locked = "Kilitli",
        unlocked = "Kilidi Açıldı",
        locked_button = "[E] - Kilitli",
        unlocked_button = "[E] - Açık",
        keymapping_description = "Kapı kilitleri ile etkileşim.",
        keymapping_remotetriggerdoor = "Kapıyı uzaktan tetikle.",
        locked_menu = "Kilit",
        pickable_menu = "Kilitlenebilir",
        cantunlock_menu = 'Kilit açılamaz.',
        hidelabel_menu = 'Kapı Açıklamasını Gizle',
        distance_menu = "Maksimum Uzaklık",
        item_authorisation_menu = "Item Yetkisi",
        citizenid_authorisation_menu = "CitizenID Yetkisi",
        gang_authorisation_menu = "Çete Yetkisi",
        job_authorisation_menu = "Meslek Yetkisi",
        doortype_title = "Kapı Türü",
        doortype_door = "Tek kapı",
        doortype_double = "Çift Kapı",
        doortype_sliding = "Tek Kayar Kapı",
        doortype_doublesliding = "Çift Kayar Kapı",
        doortype_garage = "Garaj",
        dooridentifier_title = "Benzersiz tanımlayıcı",
        doorlabel_title = "Kapı Açıklaması",
        configfile_title = "Config Dosya İsmi",
        submit_text = "Onayla",
        newdoor_menu_title = "Yeni kapı ekle",
        newdoor_command_description = "Yeni bir kapı ekleyin",
        doordebug_command_description = "debug modu etkinleştir",
        warning = "Uyarı",
        created_by = "Oluşturan",
        warn_no_permission_newdoor = "%{player} (%{license}) izinsiz yeni bir kapı eklemeye çalıştı (source: %{source})",
        warn_no_authorisation = "%{player} (%{license}) izinsiz bir kapıyı açmaya çalıştı (Sent: %{doorID})",
        warn_wrong_doorid = "%{player} (%{license}) geçersiz kapıyı güncellemeye çalıştı (Sent: %{doorID})",
        warn_wrong_state = "%{player} (%{license}) geçersiz bir duruma güncellemeye çalıştı (Sent: %{state})",
        warn_wrong_doorid_type = "%{player} (%{license}) uygun bir kapı kimliği göndermedi (Sent: %{doorID})",
        warn_admin_privilege_used = "%{player} (%{license}) yönetici ayrıcalıklarını kullanarak bir kapı açtı."
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})