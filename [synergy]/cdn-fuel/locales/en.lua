local Translations = {
    -- Yakıt
    set_fuel_debug = "Yakıt ayarı:",
    cancelled = "İptal edildi.",
    not_enough_money = "Yeterli paranız yok!",
    not_enough_money_in_bank = "Bankanızda yeterli para yok!",
    not_enough_money_in_cash = "Cebinizde yeterli para yok!",
    more_than_zero = "En az 0L yakıt almalısınız!",
    emergency_shutoff_active = "Acil durum kapama sistemi aracılığıyla pompalar şu anda kapatılmış durumda.",
    nozzle_cannot_reach = "Nozul bu kadar uzağa ulaşamıyor!",
    station_no_fuel = "Bu istasyonda yakıt yok!",
    station_not_enough_fuel = "Bu istasyonda bu kadar yakıt yok!",
    show_input_key_special = "Araç yakıt almak için yanına geldiğinizde [G] tuşuna basın!",
    tank_cannot_fit = "Depo bu miktarı alamaz!",
    tank_already_full = "Araç deposu zaten dolu!",
    need_electric_charger = "Bir elektrik şarj cihazına gitmem gerekiyor!",
    cannot_refuel_inside = "Araç içinden yakıt alamazsınız!",

    -- 2.1.2 -- Rezerv Alma ---
    fuel_order_ready = "Yakıt siparişiniz alınmaya hazır! Almak için GPS'inize bakın!",
    draw_text_fuel_dropoff = "[E] Kamyonu Boşalt",
    fuel_pickup_success = "Rezervleriniz dolduruldu: %sL",
    fuel_pickup_failed = "Ron Oil yeni yakıtı istasyonunuza bıraktı!",
    trailer_too_far = "Römork kamyonla bağlı değil veya çok uzakta!",

    -- 2.1.0
    no_nozzle = "Nozulunuz yok!",
    vehicle_is_damaged = "Araç çok hasarlı, yakıt alamazsınız!",
    vehicle_too_far = "Bu aracın yakıtını alacak kadar yakınsınız!",
    inside_vehicle = "Araç içinden yakıt alamazsınız!",
    you_are_discount_eligible = "Görevdeyseniz, %s indirim alabilirsiniz!",
    no_fuel = "Yakıt yok..",

    -- Elektrik
    electric_more_than_zero = "En az 0KW şarj etmelisiniz!",
    electric_vehicle_not_electric = "Araç elektrikli değil!",
    electric_no_nozzle = "Araç elektrikli değil!",

    -- Telefon --
    electric_phone_header = "Elektrik Şarj Cihazı",
    electric_phone_notification = "Toplam Elektrik Maliyeti: $",
    fuel_phone_header = "Benzin İstasyonu",
    phone_notification = "Toplam Maliyet: $",
    phone_refund_payment_label = "Benzin İstasyonunda İade!",

    -- İstasyonlar
    station_per_liter = " / Litre!",
    station_already_owned = "Bu konum zaten sahip olunan bir konum!",
    station_cannot_sell = "Bu konumu satamazsınız!",
    station_sold_success = "Bu konumu başarıyla sattınız!",
    station_not_owner = "Bu konum size ait değil!",
    station_amount_invalid = "Miktar geçersiz!",
    station_more_than_one = "En az 1L satın almalısınız!",
    station_price_too_high = "Bu fiyat çok yüksek!",
    station_price_too_low = "Bu fiyat çok düşük!",
    station_name_invalid = "Bu isim geçersiz!",
    station_name_too_long = "İsim %s karakterden uzun olamaz.",
    station_name_too_short = "İsim %s karakterden kısa olmalıdır.",
    station_withdraw_too_much = "İstasyondan sahip olduğundan daha fazlasını çekemezsin!",
    station_withdraw_too_little = "1 dolardan daha az çekemezsiniz!",
    station_success_withdrew_1 = "Bu istasyonun hesabından başarıyla $",
    station_success_withdrew_2 = " çektiniz!", -- Başında boşluk bırakın!
    station_deposit_too_much = "Sahip olduğundan daha fazlasını yatıramazsın!",
    station_deposit_too_little = "1 dolardan daha az yatıramazsınız!",
    station_success_deposit_1 = "Bu istasyonun hesabına başarıyla $",
    station_success_deposit_2 = " yatırdınız!", -- Başında boşluk bırakın!
    station_cannot_afford_deposit = "Yatırmak için $%s ödeyemezsiniz.",
    station_shutoff_success = "Bu konum için acil durum vanasının durumu başarıyla değiştirildi!",
    station_fuel_price_success = "Yakıt fiyatı başarıyla $%s olarak değiştirildi.",
    station_reserve_cannot_fit = "Rezervler bunu alamaz!",
    station_reserves_over_max = "Bu miktardan daha fazlasını satın alamazsınız, çünkü maksimum %s litre olacak.",
    station_name_change_success = "Başarıyla isim değiştirildi: ", -- Sonunda boşluk bırakın!
    station_purchased_location_payment_label = "Bir Benzin İstasyonu Konumu Satın Alındı: ",
    station_sold_location_payment_label = "Bir Benzin İstasyonu Konumu Satıldı: ",
    station_withdraw_payment_label = "Benzin İstasyonundan para çekildi. Konum: ",
    station_deposit_payment_label = "Benzin İstasyonuna para yatırıldı. Konum: ",
    -- Tüm İlerleme Çubukları
    prog_refueling_vehicle = "Araç Yakıt Alıyor...",
    prog_electric_charging = "Şarj Ediliyor...",
    prog_jerry_can_refuel = "Benzin Bidonu Yakıt Alıyor...",
    prog_syphoning = "Yakıt Çalınıyor...",

    -- Menüler
    
    menu_header_cash = "Nakit",
    menu_header_bank = "Banka",
    menu_header_close = "İptal",
    menu_pay_with_cash = "Nakit ile öde.  \nBakiyeniz: $",
    menu_pay_with_bank = "Banka hesabı ile öde.",
    menu_refuel_header = "Benzin İstasyonu",
    menu_refuel_accept = "Yakıt satın almak istiyorum.",
    menu_refuel_cancel = "Aslında daha fazla yakıt istemiyorum.",
    menu_pay_label_1 = "Benzin @ ",
    menu_pay_label_2 = " / L",
    menu_header_jerry_can = "Benzin Bidonu",
    menu_header_refuel_jerry_can = "Benzin Bidonuna Yakıt Al",
    menu_header_refuel_vehicle = "Araca Yakıt Al",

    menu_electric_cancel = "Aslında aracımı şarj etmek istemiyorum.",
    menu_electric_header = "Elektrik Şarj Cihazı",
    menu_electric_accept = "Elektrik için ödeme yapmak istiyorum.",
    menu_electric_payment_label_1 = "Elektrik @ ",
    menu_electric_payment_label_2 = " / KW",


    -- İstasyon Menüleri

    menu_ped_manage_location_header = "Bu Konumu Yönet",
    menu_ped_manage_location_footer = "Eğer sahipseniz, bu konumu yönetebilirsiniz.",

    menu_ped_purchase_location_header = "Bu Konumu Satın Al",
    menu_ped_purchase_location_footer = "Eğer bu konu sahipsizse, satın alabilirsiniz.",

    menu_ped_emergency_shutoff_header = "Acil Durum Kapama Sistemini Değiştir",
    menu_ped_emergency_shutoff_footer = "Acil durumda yakıtı kapat.   \n Pompalar şu anda ",

    menu_ped_close_header = "Konuşmayı İptal Et",
    menu_ped_close_footer = "Aslında hiçbir şey hakkında konuşmak istemiyorum.",

    menu_station_reserves_header = "Rezerv Satın Al ",
    menu_station_reserves_purchase_header = "Rezerv satın al: $",
    menu_station_reserves_purchase_footer = "Evet, rezerv için $",
    menu_station_reserves_cancel_footer = "Aslında daha fazla rezerv satın almak istemiyorum!",
    
    menu_purchase_station_header_1 = "Toplam maliyet: $",
    menu_purchase_station_header_2 = " vergiler dahil.",
    menu_purchase_station_confirm_header = "Onayla",
    menu_purchase_station_confirm_footer = "Bu konumu $",
    menu_purchase_station_cancel_footer = "Aslında bu konuyu satın almak istemiyorum. O fiyat çok yüksek!",

    menu_sell_station_header = "Sat ",
    menu_sell_station_header_accept = "Benzin İstasyonunu Sat",
    menu_sell_station_footer_accept = "Evet, bu konumu $",
    menu_sell_station_footer_close = "Aslında daha fazla şey konuşacak bir şeyim yok.",

    menu_manage_header = "Yönetim: ",
    menu_manage_reserves_header = "Yakıt Rezervleri  \n",
    menu_manage_reserves_footer_1 =  " Litre / ",
    menu_manage_reserves_footer_2 =  " Litre  \nDaha fazla rezerv satın alabilirsiniz aşağıda!",
    
    menu_manage_purchase_reserves_header = "Daha Fazla Rezerv Satın Al",
    menu_manage_purchase_reserves_footer = "Daha fazla yakıt rezervi için ödeme yapmak istiyorum $",
    menu_manage_purchase_reserves_footer_2 = " / L!",

    menu_alter_fuel_price_header = "Yakıt Fiyatını Değiştir",
    menu_alter_fuel_price_footer_1 = "Benzin fiyatını istiyorum değiştirmek.   \nŞu anda fiyatı: $",
    
    menu_manage_company_funds_header = "Şirket Fonlarını Yönet",
    menu_manage_company_funds_footer = "Bu konumun fonlarını yönetmek istiyorum.",
    menu_manage_company_funds_header_2 = "Fonlar Yönetimi: ",
    menu_manage_company_funds_withdraw_header = "Fon Çek",
    menu_manage_company_funds_withdraw_footer = "Konumun hesabından para çek.",
    menu_manage_company_funds_deposit_header = "Fon Yatır",
    menu_manage_company_funds_deposit_footer = "Konumun hesabına para yatır.",
    menu_manage_company_funds_return_header = "Geri Dön",
    menu_manage_company_funds_return_footer = "Aslında başka bir şey hakkında konuşmak istiyorum!",

    menu_manage_change_name_header = "Konum Adını Değiştir",
    menu_manage_change_name_footer = "Konum adını değiştirmek istiyorum.",

    menu_manage_sell_station_footer = "Benzin istasyonunuzu $",

    menu_manage_close = "Aslında daha fazla şey konuşacak bir şeyim yok!", 

    -- Jerry Can
    menu_jerry_can_purchase_header = "Benzin Bidonu Satın Al: $",
    menu_jerry_can_footer_full_gas = "Benzin Bidonu'unuz dolu!",
    menu_jerry_can_footer_refuel_gas = "Benzin Bidonunuzu yakıtla doldurun!",
    menu_jerry_can_footer_use_gas = "Çaldığınız benzinle aracı doldurun!",
    menu_jerry_can_footer_no_gas = "Benzin Bidonunuzda benzin yok!",
    menu_jerry_can_footer_close = "Aslında daha fazla Benzin Bidonu istemiyorum.",
    menu_jerry_can_close = "Aslında bunu kullanmak istemiyorum.",

    -- Yakıt Çalma Kiti
    menu_syphon_kit_full = "Yakıt Çalma Kiti dolu! Sadece " .. Config.SyphonKitCap .. "L sığar!",
    menu_syphon_vehicle_empty = "Bu aracın yakıt deposu boş.",
    menu_syphon_allowed = "Dikkatsiz bir kurbandan yakıt çal!",
    menu_syphon_refuel = "Çaldığınız benzinle aracı doldurun!",
    menu_syphon_empty = "Çaldığınız benzinle aracı doldurun!",
    menu_syphon_cancel = "Aslında daha fazla kullanmak istemiyorum. Yeni bir yaprak çevirdim!",
    menu_syphon_header = "Yakıt Çalma",
    menu_syphon_refuel_header = "Doldur",


    -- Girişler
    input_select_refuel_header = "Ne kadar benzin almak istediğinizi seçin.",
    input_refuel_submit = "Araca Yakıt Doldur",
    input_refuel_jerrycan_submit = "Benzin Bidonuna Yakıt Al",
    input_max_fuel_footer_1 = "En fazla ",
    input_max_fuel_footer_2 = "L benzin alabilirsiniz.",
    input_insert_nozzle = "Pompayı takın", -- Aynı zamanda Hedef için de kullanılır!

    input_purchase_reserves_header_1 = "Rezerv satın al   \nMevcut fiyat: $",
    input_purchase_reserves_header_2 = Config.FuelReservesPrice .. " / Litre  \nMevcut Rezervler: ",
    input_purchase_reserves_header_3 = " Litre  \nTam Rezerv Maliyeti: $",
    input_purchase_reserves_submit_text = "Rezerv Satın Al",
    input_purchase_reserves_text = 'Yakıt Rezervleri Satın Al.',

    input_alter_fuel_price_header_1 = "Yakıt Fiyatını Değiştir   \nMevcut fiyat: $",
    input_alter_fuel_price_header_2 = " / Litre",
    input_alter_fuel_price_submit_text = "Yakıt Fiyatını Değiştir",

    input_change_name_header_1 = "Değiştir ",
    input_change_name_header_2 = " adını. ",
    input_change_name_submit_text = "İsim Değiştirme Gönder",
    input_change_name_text = "Yeni İsim..",

    input_withdraw_funds_header = "Fon Çek   \nMevcut Bakiye: $",
    input_withdraw_submit_text = "Çek",
    input_withdraw_text = "Fon Çek",

    input_deposit_funds_header = "Fon Yatır   \nMevcut Bakiye: $",
    input_deposit_submit_text = "Yatır",
    input_deposit_text = "Fon Yatır",

    -- Hedef
    grab_electric_nozzle = "Elektrik Pompasını Al",
    insert_electric_nozzle = "Elektrik Pompasını Tak",
    grab_nozzle = "Pompayı Al",
    return_nozzle = "Pompayı Geri Ver",
    grab_special_nozzle = "Özel Pompayı Al",
    return_special_nozzle = "Özel Pompayı Geri Ver",
    buy_jerrycan = "Benzin Bidonu Satın Al",
    station_talk_to_ped = "Benzin İstasyonuyla Konuş",

    -- Jerry Can
    jerry_can_full = "Benzin Bidonu dolu!",
    jerry_can_refuel = "Benzin Bidonunuzu doldurun!",
    jerry_can_not_enough_fuel = "Benzin Bidonu bu kadar yakıt alamaz!",
    jerry_can_not_fit_fuel = "Benzin Bidonu bu kadar yakıtı alamaz!",
    jerry_can_success = "Benzin Bidonu başarıyla dolduruldu!",
    jerry_can_success_vehicle = "Benzin Bidonu ile aracınız başarıyla dolduruldu!",
    jerry_can_payment_label = "Benzin Bidonu Satın Alındı.",

    -- Yakıt Çalma Kiti
    syphon_success = "Araçtan başarıyla yakıt çalındı!",
    syphon_success_vehicle = "Araç Benzin Bidonu ile başarıyla dolduruldu!",
    syphon_electric_vehicle = "Bu araç elektrikli!",
    syphon_no_syphon_kit = "Yakıt çalmak için bir şeye ihtiyacınız var.",
    syphon_inside_vehicle = "Araçtan içeriden yakıt çalınamaz!",
    syphon_more_than_zero = "En az 0L çalmalısınız!",
    syphon_kit_cannot_fit_1 = "Bu kadar yakıt çalamazsınız, kutunuz sığmaz! Sadece ",
    syphon_kit_cannot_fit_2 = " Litre sığar.",
    syphon_not_enough_gas = "Bu kadar yakıtınız yok!",
    syphon_dispatch_string = "(10-90) - Yakıt Hırsızlığı",
}
Lang = Locale:new({phrases = Translations, warnOnMissing = true})
