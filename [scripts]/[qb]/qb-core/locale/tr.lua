local Translations = {
    error = {
        not_online = 'Oyuncu aktif değil.',
        wrong_format = 'Geçersiz format',
        missing_args = 'Tüm alanlar doldurulmalıdır. (x, y, z)',
        missing_args2 = 'Tüm alanlar doldurulmalıdır.',
        no_access = 'Bu komuta erişiminiz yok.',
        company_too_poor = 'Şirketin hiç parası yok.',
        item_not_exist = 'Item mevcut değil.',
        too_heavy = 'Evanter tamamen dolu.',
        location_not_exist = 'Konum mevcut değil.',
        duplicate_license = 'Yinelenen Rockstar Lisansı Bulundu.',
        no_valid_license  = 'Geçerli Rockstar Lisansı Bulunamadı.',
        not_whitelisted = 'Bu sunucu için whitelistte değilsiniz.',
        server_already_open = 'Sunucu zaten açık.',
        server_already_closed = 'Sunucu zaten kapalı.',
        no_permission = 'Bunun için izniniz yok.',
        no_waypoint = 'Lokasyon belirlenmedi.',
        tp_error = 'Işınlanırken hata oluştu.',
    },
    success = {
        server_opened = 'Sunucu açıldı.',
        server_closed = 'Sunucu kapatıldı.',
        teleported_waypoint = 'Belirlenen lokasyona ışınlandın.',
    },
    info = {
        received_paycheck = '$%{value} tutarındaki maaşınızı aldınız.',
        job_info = 'Meslek: %{value} | Rütbe: %{value2} | Mesai: %{value3}',
        gang_info = 'Çete: %{value} | Rütbe: %{value2}',
        on_duty = 'Artık mesaidesiniz!',
        off_duty = 'Artık mesaide değilsiniz!',
        checking_ban = 'Merhaba %s. Yasaklanıp yasaklanmadığınızı kontrol ediyoruz...',
        join_server = 'Aramıza hoşgeldin, %s.',
        checking_whitelisted = 'Merhaba %s. Whitelist durumunuzu kontrol ediyoruz...',
        exploit_banned = 'Hile kullandığınız için banlandınız. Daha fazla bilgi için discord sunucumuza uğrayın.',
        exploit_dropped = 'Hile kullandığınız için sunucudan atıldınız.',
    },
    command = {
        tp = {
            help = 'Oyuncuya veya koordinata ışınlan (Sadece Yönetici)',
            params = {
                x = { name = 'id/x', help = 'Oyuncu ID veya X pozisyonu'},
                y = { name = 'y', help = 'Y pozisyonu'},
                z = { name = 'z', help = 'Z pozisyonu'},
            },
        },
        tpm = { help = 'İşaretlenen noktaya ışınlan (Sadece Yönetici)' },
        togglepvp = { help = 'Sunucuda PVPyi aç/kapat (Sadece Yönetici)' },
        addpermission = {
            help = 'Oyuncuya yetki ver (Sadece Yönetici)',
            params = {
                id = { name = 'ID', help = 'Oyuncu ID' },
                permission = { name = 'Yetki', help = 'Yetki Seviyesi' },
            },
        },
        removepermission = {
            help = 'Oyuncudan yetki al (Sadece Yönetici)',
            params = {
                id = { name = 'ID', help = 'Oyuncu ID' },
                permission = { name = 'Yetki', help = 'Yetki Seviyesi' },
            },
        },
        openserver = { help = 'Sunucuyu herkes için açın (Sadece Yönetici)' },
        closeserver = {
            help = 'İzinsiz kişiler için sunucuyu kapatın (Sadece Yönetici)',
            params = {
                reason = { name = 'Sebep', help = 'Kapanış için sebep belirtin (opsiyenel)' },
            },
        },
        car = {
            help = 'Araç çıkart (Sadece Yönetici)',
            params = {
                model = { name = 'Model', help = 'Araç Modeli' },
            },
        },
        dv = { help = 'Araç sil (Sadece Yönetici)' },
        givemoney = {
            help = 'Oyuncuya para ver (Sadece Yönetici)',
            params = {
                id = { name = 'ID', help = 'Oyuncu ID' },
                moneytype = { name = 'Para Tipi', help = 'Para Tipi Belirtin (cash, bank, crypto)' },
                amount = { name = 'Miktar', help = 'Para Miktarı' },
            },
        },
        setmoney = {
            help = 'Oyuncunun para miktarını belirle (Sadece Yönetici)',
            params = {
                id = { name = 'ID', help = 'Oyuncu ID' },
                moneytype = { name = 'Para Tipi', help = 'Para Tipi Belirtin (cash, bank, crypto)' },
                amount = { name = 'Miktar', help = 'Para Miktarı' },
            },
        },
        job = { help = 'Mesleğinizi kontrol edin' },
        setjob = {
            help = 'Oyuncunun mesleğini değiştirin (Sadece Yönetici)',
            params = {
                id = { name = 'ID', help = 'Oyuncu ID' },
                job = { name = 'Meslek', help = 'Meslek İsmi' },
                grade = { name = 'Rütbe', help = 'Meslek Rütbesi' },
            },
        },
        gang = { help = 'Çetenizi kontrol edin' },
        setgang = {
            help = 'Oyuncunun çetesini değiştirin (Sadece Yönetici)',
            params = {
                id = { name = 'ID', help = 'Oyuncu ID' },
                gang = { name = 'Çete', help = 'Çete İsmi' },
                grade = { name = 'Rütbe', help = 'Çete Rütbesi' },
            },
        },
        ooc = { help = 'OOC Mesaj' },
        me = {
            help = 'Me mesajı gönderir',
            params = {
                message = { name = 'Mesaj', help = 'Bir mesaj yazın' }
            },
        },
    },
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
