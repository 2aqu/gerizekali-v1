-- Add translations by MC
local Translations = {
    headers = {
        ['bsm'] = 'Patron Menüsü - ',
    },
    body = {
        ['manage'] = 'Çalışanları Yönet',
        ['managed'] = 'Çalışan Listesini Kontrol Et',
        ['hire'] = 'Çalışan İşe Al',
        ['hired'] = 'Yakındaki Sivilleri İşe Al',
        ['storage'] = 'Depo Erişimi',
        ['storaged'] = 'Depoyu Aç',
        ['outfits'] = 'Kıyafetler',
        ['outfitsd'] = 'Kaydedilen Kıyafetleri Görüntüle',
        ['money'] = 'Para Yönetimi',
        ['moneyd'] = 'Şirket Bakiyenizi Kontrol Edin',
        ['mempl'] = 'Çalışanları Yönet - ',
        ['mngpl'] = 'Yönet ',
        ['grade'] = 'Derece: ',
        ['fireemp'] = 'Çalışanı Çıkar',
        ['hireemp'] = 'Çalışan İşe Al - ',
        ['cid'] = 'Vatandaş Kimliği: ',
        ['balance'] = 'Bakiye: $',
        ['deposit'] = 'Yatır',
        ['depositd'] = 'Hesaba Para Yatır',
        ['withdraw'] = 'Çek',
        ['withdrawd'] = 'Hesaptan Para Çek',
        ['depositm'] = 'Para Yatır <br> Kullanılabilir Bakiye: $',
        ['withdrawm'] = 'Para Çek <br> Kullanılabilir Bakiye: $',
        ['submit'] = 'Onayla',
        ['amount'] = 'Miktar',
        ['return'] = 'Geri Dön',
        ['exit'] = 'Geri Dön',
    },
    drawtext = {
        ['label'] = '[E] Patron Menüsünü Aç',
    },
    target = {
        ['label'] = 'Paron Menüsü',
    },
    headersgang = {
        ['bsm'] = 'Gang Management  - ',
    },
    bodygang = {
        ['manage'] = 'Manage Gang Members',
        ['managed'] = 'Recruit or Fire Gang Members',
        ['hire'] = 'Recruit Members',
        ['hired'] = 'Hire Gang Members',
        ['storage'] = 'Storage Access',
        ['storaged'] = 'Open Gang Stash',
        ['outfits'] = 'Outfits',
        ['outfitsd'] = 'Change Clothes',
        ['money'] = 'Money Management',
        ['moneyd'] = 'Check your Gang Balance',
        ['mempl'] = 'Manage Gang Members - ',
        ['mngpl'] = 'Manage ',
        ['grade'] = 'Grade: ',
        ['fireemp'] = 'Fire',
        ['hireemp'] = 'Hire Gang Members - ',
        ['cid'] = 'Citizen ID: ',
        ['balance'] = 'Balance: $',
        ['deposit'] = 'Deposit',
        ['depositd'] = 'Deposit Money into account',
        ['withdraw'] = 'Withdraw',
        ['withdrawd'] = 'Withdraw Money from account',
        ['depositm'] = 'Deposit Money <br> Available Balance: $',
        ['withdrawm'] = 'Withdraw Money <br> Available Balance: $',
        ['submit'] = 'Confirm',
        ['amount'] = 'Amount',
        ['return'] = 'Return',
        ['exit'] = 'Exit',
    },
    drawtextgang = {
        ['label'] = '[E] Open Gang Management',
    },
    targetgang = {
        ['label'] = 'Gang Menu',
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
