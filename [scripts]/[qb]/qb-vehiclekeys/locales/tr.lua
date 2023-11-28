local Translations = {
    notify = {
        ydhk = 'Bu aracın anahtarları sizde yok.',
        nonear = 'Yakınlarda anahtarları teslim edecek kimse yok.',
        vlock = 'Araç kilitli!',
        vunlock = 'Araç kilitli değil!',
        vlockpick = 'Kapı kilidini açmayı başardın!',
        fvlockpick = 'Anahtarları bulamıyorsun ve sinirleniyor gibisin.',
        vgkeys = 'Anahtarları teslim ediyorsun.',
        vgetkeys = 'Aracın anahtarlarını aldınız!',
        fpid = 'Oyuncu kimliğini ve plaka argümanlarını doldurun.',
        cjackfail = 'Araba hırsızlığı başarısız oldu!',
    },
    progress = {
        takekeys = 'Anahtar alınıyor...',
        hskeys = 'Anahtar aranıyor...',
        acjack = 'Araba hırsızlığına teşebbüs...',
    },
    info = {
        skeys = '~g~[H]~w~ - Anahtarları Ara',
        tlock = 'Araç Kilitlerini Aç/Kapat',
        palert = 'Araç hırsızlığı devam ediyor. Tip: ',
        engine = 'Motoru Aç/Kapat',
    },
    addcom = {
        givekeys = 'Anahtarları birine teslim edin. Kimlik yoksa en yakın kişiye veya araçtaki herkese verir.',
        givekeys_id = 'id',
        givekeys_id_help = 'Oyuncu ID',
        addkeys = 'Birisi için bir araca anahtar ekler.',
        addkeys_id = 'id',
        addkeys_id_help = 'Oyuncu ID',
        addkeys_plate = 'plaka',
        addkeys_plate_help = 'Plaka',
        rkeys = 'Birisi için bir aracın anahtarlarını alın.',
        rkeys_id = 'id',
        rkeys_id_help = 'Oyuncu ID',
        rkeys_plate = 'plaka',
        rkeys_plate_help = 'Plaka',
    }

}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
