local Translations = {
    error = {
        not_your_vehicle = 'Bu senin aracın değil.',
        vehicle_does_not_exist = 'Araç mevcut değil.',
        not_enough_money = 'Yeterli paran yok.',
        finish_payments = 'Bu aracı satmadan önce borcunu ödemelisin.',
        no_space_on_lot = 'Otoparkta aracınız için yer yok!',
        not_in_veh = 'Şuanda araçda değilsin!',
        not_for_sale = 'Bu araç satılık değil!',
    },
    menu = {
        view_contract = 'Sözleşmeyi Görüntüle',
        view_contract_int = '[E] Sözleşmeyi Görüntüle',
        sell_vehicle = 'Aracı Galeride Sergile',
        sell_vehicle_help = 'Araç galeride sergilenir ve vatandaşlar satın alabilir!',
        sell_back = 'Aracı Galeriye Sat',
        sell_back_help = 'Aracı direkt galeriye satabilirsiniz!',
        interaction = '[E] Araç Sat',
    },
    success = {
        sold_car_for_price = 'Aracınızı $%{value} karşılığında sattınız.',
        car_up_for_sale = 'Aracınız satışa çıkarıldı! Fiyat: $%{value}',
        vehicle_bought = 'Araç satın alındı.'
    },
    info = {
        confirm_cancel = '~g~Y~w~ - Onayla / ~r~N~w~ - İptal Et ~g~',
        vehicle_returned = 'Aracınız iade edildi.',
        used_vehicle_lot = 'İkinci El Araç',
        sell_vehicle_to_dealer = '[~g~E~w~] - Aracı Galeriye $%{value} Karşılığında Sat',
        view_contract = '[~g~E~w~] - Araç Sözleşmesini Görüntüle',
        cancel_sale = '[~r~G~w~] - Araç Satışını İptal Et',
        model_price = '%{value}, Fiyat: ~g~$%{value2}',
        are_you_sure = 'Artık aracınızı satmak istemediğinizden emin misiniz?',
        yes_no = '[~g~7~w~] - Evet | [~r~8~w~] - Hayır',
        place_vehicle_for_sale = '[~g~E~w~] - Sahibinden Satılık Aracı Yerleştirin'
    },
    charinfo = {
        firstname = 'veri',
        lastname = 'bilinmiyor',
        account = 'Hesap bilinmiyor...',
        phone = 'Telefon numarası bilinmiyor...',
    },
    mail = {
        sender = 'Sahibinden',
        subject = 'Bir araç sattın!',
        message = '%{value2} satışından $%{value} kazandınız.'
    }
}
Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
