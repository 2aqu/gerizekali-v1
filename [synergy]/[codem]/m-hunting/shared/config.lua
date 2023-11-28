Config = {}
Config.Framework = "new-qb" -- new-qb, old-qb, esx
Config.NewESX = false       -- if you are using esx legacy set this to true
Config.WeaponAsItem = true  -- if you want to use weapon as item set this to true (for default esx inventory set this to false)
Config.Inventory = 'ox_inventory'                        -- qb , esx , ox_inventory (if you are using a different inventory you can write your default framework e.g QBCore qs-inventory 'qb' or ESX qs-inventory 'esx')
Config.UseCharacterName = true
Config.PedProtection = true -- If true, players cannot harm each other with Config.WeaponHash, but the client resmon value is increased when players have weapons in their hands
Config.ServerImage = "https://cdn.discordapp.com/attachments/1116058928044843028/1135970581053968485/mrp.png"
Config.CarSpawnCoord = vector4(-771.86, 5578.4, 33.49, 85.42)
Config.WeaponHash = "weapon_sniperrifle"
Config.VehicleHash = "kamacho"
Config.MySQL = "oxmysql" -- oxmysql, mysql-async , ghmattimysql
Config.PedCoords = vector4(-773.34, 5598.67, 33.61 - 0.98, 170.53)
Config.RandomXPForKillAnimal = { min = 5, max = 20 }
Config.PedSpawnCount = 80
Config.AmmoItem = {
    item = "ammo-sniper",
    count = 250
}

Config.Action = {
    actiontype = 'drawtext', -- or "drawtext"
    target = 'qb-target'     -- "qb-target" or "ox_target"
}

Config.Ped = "cs_hunter"
Config.HuntingBlip = {
    sprite = 141,
    color = 3,
    name = "Hunting",
    scale = 0.7,
}
Config.Blip = {
    sprite = 141,
    color = 3,
    name = "Av Alanın",
    scale = 0.7,

}

Config.RequiredXP = { -- do not touch
    [1] = 1000,
    [2] = 1500,
    [3] = 2000,
    [4] = 2500,
    [5] = 3000,
    [6] = 3500,
    [7] = 4000,
    [8] = 4500,
    [9] = 5000,
    [10] = 5500,
    [11] = 6000,
    [12] = 6500,
    [13] = 7000,
    [14] = 7500,
    [15] = 8000,
    [16] = 8500,
    [17] = 9000,
    [18] = 9500,
    [19] = 10000,
    [20] = 10500,
    [21] = 11000,
    [22] = 11500,
    [23] = 12000,
    [24] = 12500,
    [25] = 13000,
    [26] = 13500,
    [27] = 14000,
    [28] = 14500,
    [29] = 15000,
    [30] = 15500,
    [31] = 16000,
    [32] = 16500,
    [33] = 17000,
    [34] = 17500,
    [35] = 18000,
    [36] = 18500,
    [37] = 19000,
    [38] = 19500,
    [39] = 20000,
    [40] = 20500,
    [41] = 21000,
    [42] = 21500,
    [43] = 22000,
    [44] = 22500,
    [45] = 23000,
    [46] = 23500,
    [47] = 24000,
    [48] = 24500,
    [49] = 25000,
    [50] = 25800,
    [51] = 25500,
    [52] = 26000,
    [53] = 26500,
    [54] = 27000,
    [55] = 27500,
    [56] = 28000,
    [57] = 28500,
    [58] = 29000,
    [59] = 29500,
    [60] = 30000,
    [61] = 30500,
    [62] = 31000,
    [63] = 31500,
    [64] = 32000,
    [65] = 32500,
    [66] = 33000,
    [67] = 33500,
    [68] = 34000,
    [69] = 34500,
    [70] = 35000,
    [71] = 35500,
    [72] = 36000,
    [73] = 36500,
    [74] = 37000,
    [75] = 37500,
    [76] = 38000,
}

Config.DefaultPicture =
'https://www.gitbook.com/cdn-cgi/image/width=40,dpr=2,height=40,fit=contain,format=auto/https%3A%2F%2F3253843082-files.gitbook.io%2F~%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252FMRUfpMzIuVWlJ1CkzDbb%252Ficon%252FD3wjQp0cCyS6MkqdCs1C%252Fimage_2022-09-06_182033969.png%3Falt%3Dmedia%26token%3D662e0ec6-bb96-40d2-87e0-3e74d4061566'
Config.Wiki = {
    [1] = {
        label = "Güvercinler",
        description =
        "Şehir kuşları, uyum sağlayabilen, genellikle şehir yaşamıyla ilişkilendirilen, çeşitli renklere sahip ve çeşitli ortamlarda insanlarla birlikte yaşarlar.",
        image = "pigeon.png",
        scientificname = "Columba livia domestica",
        species = "Kuşlar",
        habitat = "Los Santos'un her yerinde",
        size = "Küçük",
        items = "Güvercin Eti, Güvercin Tüyü"
    },
    [2] = {
        label = "Kargalar",
        description =
        "Kargalar, genellikle Sandy Shores çevresinde, Mount Chiliad etrafında ve daha az ölçüde Ludendorff'ta, özellikle çöl bölgelerinde uçan Amerikan kargalarıdır. Son derece zeki kargagiller, sosyal kuşlar, problem çözme yetenekleriyle bilinir, siyah tüyleri vardır ve çeşitli habitatlarda yaygın olarak bulunurlar.",
        image = "crow.png",
        scientificname = "Corvus brachyrhynchos",
        species = "Kuşlar",
        habitat = "Los Santos'un her yerinde",
        size = "Küçük",
        items = "Karga Eti, Karga Tüyü"
    },
    [3] = {
        label = "Martılar",
        description =
        "Kıyı ve iç kesim kuşları, belirgin beyaz ve gri tüyleri olan, leşçil, çevik uçucular, genellikle su kenarlarında görülürler.",
        image = "seagul.png",
        scientificname = "Larus smithsonianus",
        species = "Kuşlar",
        habitat = "Paleto Beach Side",
        size = "Küçük",
        items = "Martı Eti, Martı Tüyü"
    },
    [4] = {
        label = "Büyük Karabataklar",
        description =
        "Kıyı ve tatlı su kuşları, siyah tüyleriyle, becerikli dalıcılar olarak bilinir, genellikle kanatlarını açarak kurumaya bırakıldıkları yerde görülürler.",
        image = "greatcormorant.png",
        scientificname = "Larus smithsonianus",
        species = "Kuşlar",
        habitat = "Paleto Beach Side",
        size = "Küçük",
        items = "Karabatak Eti, Karabatak Gagası"
    },
    [5] = {
        label = "Geyikler",
        description =
        " Genellikle Blaine County'nin ormanlık alanlarında bulunabilirler, ancak Grand Senora Çölü istisna olmak üzere tüm kırsal alanlarda da görülebilirler. Geyikler, Otobur memeliler, zarif ve hızlı koşucular, erkelerin boynuzları bulunur, dünya çapında çeşitli ekosistemlerde bulunurlar ve folklorde önemlidirler.",
        image = "deer.png",
        scientificname = "Odocoileus virginianus",
        species = "Memeliler",
        habitat = "Paleto Forest",
        size = "Büyük",
        items = "Geyik Eti, Geyik Tüyü"
    },
    [6] = {
        label = "Tavşanlar",
        description =
        "Küçük memeliler, verimli üreyen, otoburlar, çeviklik ve uzun kulakları ile bilinirler, arkadaşlık ve evcil hayvan olarak evcilleştirilmişlerdir.",
        image = "rabbit.png",
        scientificname = "Leporidae",
        species = "Yabani tavşan",
        habitat = "Paleto Forest",
        size = "Küçük",
        items = "Tavşan Eti, Tavşan Derisi"
    },
    [7] = {
        label = "Fareler",
        description =
        "Kemirgenler, uyum sağlayabilen, verimli üreyen, leşçil, genellikle şehir ortamlarıyla ilişkilendirilir ve hastalık taşıyıcılarıdır.",
        image = "rat.png",
        scientificname = "Rattus",
        species = "Siyah fare",
        habitat = "Paleto Forest",
        size = "Minik",
        items = "Fare Eti, Fare Derisi"
    },
    [8] = {
        label = "Domuzlar",
        description =
        "Evcil memeliler, son derece zeki, otoburlar, et için yetiştirilen, bataklıklarda yuvarlanma, sosyal davranışları ve belirgin sesleri ile bilinirler.",
        scientificname = "Sus scrofa domesticus",
        species = "Evcil Domuz",
        image = "pig.png",
        habitat = "Paleto Forest",
        size = "Orta",
        items = "Domuz Eti, Domuz Derisi"
    },
    [9] = {
        label = "Kurtlar",
        description =
        "Yabanıl köpekgiller, uyum sağlayabilen omnivorlar, sesli iletişimciler.",
        image = "coyote.png",
        scientificname = "Canis latrans",
        species = "Kanid",
        habitat = "Kanid",
        size = "Orta",
        items = "Kurt Eti, Kurt Derisi"
    },
    [10] = {
        label = "Pumalar",
        description =
        "Pumalar San Andreas'ın ormanlık ve engebeli bölgelerinde, Vinewood Tepeleri'nden Mount Chiliad'e kadar, şehire oldukça yakın olabilir, çünkü bu hayvanlar şehre oldukça yakın yerlerde, özellikle Kortz Center ve Banham Kanyonu çevresinde geliştirilmemiş alanlarda görülebilir. Yakındaysa, Cougar'un ilk verdiği işaret genellikle yüksek gürültülü kükremesidir. Bölge kalabalıksa, yayalar genellikle kaçarken ve çığlık atarken görülecektir. Saldırdığında, bir cougar kurbanına karşı acımasızca şarj edecek, onun üzerine atlayacak ve boğaz ısırığıyla anında öldürecektir. Hızlı hızı, pounce yapmadan önce birini öldürme gerekliliği nedeniyle ondan önce birini öldürme gereksinimini ve refleksleri gerektirir.",
        image = "coguar.png",
        scientificname = "Puma concolor",
        species = "Felinae",
        habitat = "Kanid",
        size = "Orta",
        items = "Puma Eti, Puma Derisi"
    },
    [11] = {
        label = "Yaban Domuzları",
        description = "Yaban Domuzları, Grand Theft Auto V ve Grand Theft Auto Online'da yer alan vahşi hayvanlar.",
        image = "boar.png",
        scientificname = "Sus scrofa",
        species = "Yabani domuz",
        habitat = "Kanid",
        size = "Orta/Büyük",
        items = "Yaban Domuzu Eti, Yaban Domuzu Derisi, Yaban Domuzu Boynuzu"
    },
    [12] = {
        label = "Yılanlar",
        description =
        "Yaban domuzu, dişileriyle çene altında sivri uzantılara sahip omnivor vahşi domuzlardır, ormanlarda ve otlaklarda beslenir, tarım alanlarında zararlı olabilirler.",
        image = "snake.png",
        scientificname = "Boa constrictor",
        species = "Sürüngen",
        habitat = "Paleto Forest",
        size = "Küçük",
        items = "Yılan Eti, Yılan Derisi"
    },
    [13] = {
        label = "Şahinler",
        description =
        "Bacaksız sürüngenler, çeşitli türleri bulunan, zehirli ve zehirsiz olan, ekosistemlerde önemli roller oynayan, genellikle korkulan ve yanlış anlaşılan hayvanlardır.",
        image = "hawk.png",
        scientificname = "Buteo jamaicensis",
        species = "Birds",
        habitat = "Paleto Forest",
        size = "Küçük/Orta",
        items = "Şahin Eti, Şahin Derisi, Şahin Gagası"
    },
}

Config.Translate = {
    ['welcome'] = "AVCILIK KULÜBÜ'NE HOŞGELDİNİZ",
    ['welcomedesc'] =
    "Sorumlu avcılar hayvanların refahını ön planda tutar ve acıyı en aza indirmeye çalışır. Doğru ekipman kullanımı, örneğin doğru ve insancıl mühimmatla donatılmış tüfekler, hızlı ve insancıl öldürmeyi sağlar. Etik avcılar, nişancılık becerilerini geliştirmek için uygun eğitim alır, bu da temiz ve etkili bir öldürme şansını artırır. Av trofesi, etik ve sorumlu bir şekilde gerçekleştirildiğinde, koruma çabalarına finansman sağlayabilir ve yerel toplulukları destekleyebilir. Sorumlu av trofesi, olgun hayvanların dikkatlice seçilmesini içerir ve elde edilen gelir, koruma girişimlerine, yasa dışı avlanma karşı önlemlere ve yerel geçim kaynaklarına katkıda bulunur. Bu yaklaşım, vahşi yaşam popülasyonlarının korunması ve sürdürülebilir yönetimini vurgular. Tüfekle yapılan etik av, doğaya, vahşi yaşama ve çevreye derin bir saygıyı temsil eder. Hukuki düzenlemelere uymak, seçici avlanma, insancıl avlanma tekniklerini kullanma ve sorumlu av trofesini destekleme ile avcılar, ekosistemlerin ve biyoçeşitliliğin korunmasına katkıda bulunarak hobilerinin tadını çıkarabilirler. Her zaman yasal sınırlar içinde avlanmanın önemli olduğunu hatırlamak esastır.",
    ['huntcheck'] = "Yukarıdakileri anladım.",
    ['letshunt'] = "Avcılığa Başla",
    ['nopersonelgun'] = "KİŞİSEL SİLAHLARA İZİN VERİLMEZ",
    ['gunddesc'] =
    "Avcılığa başlamak için silahlarınızı Avcılık Kulübü'nün kilitli dolaplarına teslim etmeniz gerekmektedir. Silahlarınızı avlanma sona erdiğinde geri alabilirsiniz.",
    ['noguntext'] = "KİŞİSEL SİLAHLAR YASAK",
    ["dropweapons"] = "Silahlarınızı Teslim Edin",
    ["takebadge"] = "ROZETİNİZİ ALIN",
    ["takebadgedesc"] =
    "Ayrıca, avcı olarak Avcılık Kulübü'nden tanınmak için avcılık kulübü rozetinizi yanınızda taşımanız gerekmektedir. Bu rozet, avda olduğunuzu belirleyecek ve acil durum hizmetlerine bilgi verecektir.",
    ["takebadgelower"] = "Rozet Al",
    ["mainhunt"] = "Avcılık",
    ["maincoop"] = "İşbirliği",
    ["mainwiki"] = "Wiki",
    ["mainleaderboard"] = "Sıralama",
    ["mainstats"] = "İstatistikler",
    ["mainmarket"] = "Pazar",
    ["mainexit"] = "Çıkış",
    ["category"] = "BİR AVCILIK KATEGORİSİ SEÇİN",
    ["birds"] = "KUŞLAR",
    ["animals"] = "HAYVANLAR",
    ["predators"] = "YIYICILAR",
    ["birdsdesc"] = "Güvercin, Şahin, Karga, Martı ve Büyük Karabatak avlayabilirsiniz.",
    ["animalsdesc"] = "Geyik, Domuz, Tavşan ve Sıçan avlayabilirsiniz.",
    ["predatorsdesc"] = "Yaban Domuzu, Puma, Çakal, Panter ve Yılan avlayabilirsiniz.",
    ["required"] = "Gerekli",
    ["select"] = "SEÇ",
    ["goback"] = "Geri Dön",
    ["getvehicle"] = "Araç Al",
    ["kamacho"] = "Canis Kamacho",
    ["descriptionvehicle"] =
    "Bu araç, Avcılık Kulübü üyelerine ücretsiz verilecek, ancak rozetinizi teslim ettiğinizde kulüp aracı geri alacaktır. Kendi aracınız varsa bu seçeneği atlayabilirsiniz.",
    ["vehiclestitle"] = "BİR SÜRÜŞE İHTİYACINIZ MI VAR?",
    ["mainmenu"] = "Ana Menü",
    ["skip"] = "Atla",
    ["getgeartitle"] = "EŞYALARINIZI ALIN",
    ["rifleandknife"] = "Avcılık Tüfeği ve Bıçak",
    ["gearsdescription"] =
    "Bu ürünler, Avcılık Kulübü üyelerine ücretsiz verilecek, ancak rozetinizi teslim ettiğinizde kulüp aynı zamanda dişliyi de alacaktır.",
    ["getgears"] = "Dişli Al",
    ["areatitlebird"] = "BİR HAYVAN ALANI SEÇİN",
    ["neighbourhoodbirds"] = "MAHALLE KUŞLARI",
    ["neighbirdsdesc"] =
    "Bu alanda Güvercin ve Kargaları avlayabilirsiniz. Konum, otomatik olarak gezinmenize ayarlanacaktır.",
    ["beachsidebird"] = "SAHİL KUŞLARI",
    ["beachsidebirddesc"] =
    "Bu alanda Martı ve Büyük Karabatak avlayabilirsiniz. Konum, otomatik olarak gezinmenize ayarlanacaktır.",
    ["contracts"] = "SÖZLEŞMELER",
    ["catchpigeons"] = "GÜVERCİN YAKALA",
    ["pigeonsdesc"] = "10 Güvercin yakala ve onları Avcılık Kulübü'ne teslim et.",
    ["catchcrows"] = "KARGA YAKALA",
    ["crowsdesc"] = "10 Karga yakala ve onları Avcılık Kulübü'ne teslim et.",
    ["catchpigeonf"] = "GÜVERCİN TÜYLERİ",
    ["pigeonfdesc"] = "Tek bir avda 30 Güvercin avla ve tüylerini pazar da sat.",
    ["catchcrowfeathers"] = "KARGA TÜYLERİ",
    ["crowfeathersdesc"] = "Tek bir avda 30 Karga avla ve tüylerini pazarda sat.",
    ["takecontracts"] = "Sözleşmeleri Al",
    ["contractsdescription"] =
    "Daha hızlı seviye atlamak ve daha fazla para kazanmak için Avcılık Kulübü'nün sözleşmelerini tamamlayın.",
    ["letshunt"] = "HER ŞEY HAZIR, AVLANMAYA BAŞLA",
    ["hunt"] = "AVLANMA",
    ["selectedtext"] = "seçildi, av tüfeği ve bıçak oyuncuya verildi, oyuncu aynı zamanda araç anahtarlarını da aldı.",
    ["contracttaken"] = "Bir sözleşme alındı. Hadi gidelim!",
    ["nocontract"] = "Sözleşme Yok",
    ["animalspaleto"] = "PALETO KÖYÜ ORMANI",
    ["animalscarddesc"] =
    "Bu alanda Geyik, Domuz, Tavşan ve Sıçan avlayabilirsiniz. Konum, otomatik olarak gezinmenize ayarlanacaktır.",
    ["huntdeers"] = "GEYİK AVI",
    ["huntdeersdescription"] = "10 Geyik avla ve etlerini, derisini ve boynuzlarını Avcılık Kulübü Pazarı'na sat.",
    ["huntpigs"] = "DOMUZ AVI",
    ["huntpigsdescription"] = "10 Domuz avla ve etlerini, derisini ve yağını Avcılık Kulübü Pazarı'na sat.",
    ["huntrabbits"] = "TAVŞAN AVI",
    ["huntrabbitsdescription"] = "10 Tavşan avla ve etlerini ve derisini Avcılık Kulübü Pazarı'na sat.",
    ["huntrats"] = "SIRÇA AVI",
    ["huntratsdescription"] = "10 Sıçan avla ve etlerini ve derisini Avcılık Kulübü Pazarı'na sat.",
    ["areatitlepredator"] = "BİR YIYICI ALANI SEÇİN",
    ["sandypredators"] = "KUM TARAFLAR YIYICILARI",
    ["sandypredatorsdesc"] =
    "Bu alanda Çakalları, Pumaları ve Yaban Domuzları avlayabilirsiniz. Konum, otomatik olarak gezinmenize ayarlanacaktır.",
    ["militarypredators"] = "ASKERİ BATAKLIK YIYICILARI",
    ["militarypredatorsdesc"] =
    "Bu alanda Yılanları ve Şahinleri avlayabilirsiniz. Konum, otomatik olarak gezinmenize ayarlanacaktır.",
    ["huntcoyotes"] = "ÇAKAL AVI",
    ["huntcoyotesdesc"] = "10 Çakal avla ve etlerini ve derisini Avcılık Kulübü Pazarı'na sat.",
    ["huntcougars"] = "PUMA AVI",
    ["huntcougarsdesc"] = "10 Puma avla ve etlerini ve derisini Avcılık Kulübü Pazarı'na sat.",
    ["huntboars"] = "YABAN DOMUZU AVI",
    ["huntboarsdesc"] = "10 Yaban Domuzu avla ve etlerini ve derisini Avcılık Kulübü Pazarı'na sat.",
    ["huntpredators"] = "YIYICILAR AVI",
    ["huntpredatorsdesc"] = "10 Çakal, Puma, Yaban Domuzu avla ve etlerini ve derisini Avcılık Kulübü Pazarı'na sat.",
    ["wiki"] = "WIKI",
    ["scientificname"] = "Bilimsel Adı",
    ["species"] = "Tür",
    ["habitat"] = "Yaşam Alanı",
    ["items"] = "Bırakılacak Öğeler",
    ["size"] = "Boyut",
    ["level"] = "Seviye",
    ["leaderboardtitle"] = "SIRALAMA",
    ["stats"] = "İSTATİSTİKLER",
    ["recenthunts"] = "Son Avlar",
    ["huntedanimals"] = "Avlanan Hayvanlar",
    ["market"] = "PAZAR",
    ["sell"] = "SAT",
    ["itemsyouhave"] = "Sahip Olduğunuz Eşyalar",
    ["card"] = "Kart",
    ["coop"] = "ARKADAŞLARINIZLA AVLAN",
    ["joincoop"] = "İşbirliği Lobilerine Katılın",
    ["joincoopdesc"] =
    'Arkadaşlarınla avlanabilirsin, tüm işbirliği lobilerini seç ve görüntüle. Şu anda %s avcı avda.',
    ["createlobby"] = "Lobinizi Oluşturun",
    ["createlobbydesc"] = "Lobinizi oluşturun, böylece arkadaşlarınız veya yeni arkadaşlarınız size katılabilir.",
    ["cooplobbies"] = "İŞBİRLİĞİ LOBİLERİ",
    ["searchlobby"] = "Lobileri Ara...",
    ["huntersonline"] = "Avcılar Çevrimiçi",
    ["lobby"] = "Lobi",
    ["lobbys"] = "Lobi'nin",
    ["join"] = "KATIL",
    ["party"] = "Parti",
    ["host"] = "Ev Sahibi",
    ["hunter"] = "Avcı",
    ["huntdetails"] = "Avcılık Detayları",
    ["location"] = "Konum",
    ["vehicle"] = "Araç",
    ["contractstaken"] = "Alınan Sözleşmeler",
    ["lobbytype"] = "Lobi Türü",
    ["unk"] = "Bilinmiyor",
    ["private"] = "Özel",
    ["public"] = "Genel",
    ["hunttype"] = "Avcılık Türü",
    ["lobbydetails"] = "Lobi Detayları",
    ["lobbysize"] = "Lobi Boyutu",
    ["yes"] = "Evet",
    ["no"] = "Hayır",
    ["getcamachovehicle"] = "Camacho Araç Al",
    ["password"] = "Parola",
    ["set"] = "Ayarla",
    ["typepassword"] = "Parolayı yazın...",
    ["createlobby"] = "LOBI OLUŞTUR",
    ["contractsfor"] = "İçin Sözleşmeler",
    ["leavelobby"] = "Lobiyi Terk Et",
    ["xp"] = "EXP",
    ["action"] = "~g~ [E] ~g~Avcılık Sayfasını Aç",
    ["finish"] = "İşini bitirdin!",
    ["huntingstarted"] = "Avcılık işin başladı, konum haritanıza ayarlandı!",
    ["claimitems"] = "Talep etmek için [~g~E~s~] tuşuna basın",
    ["itemsclaiming"] = "Öğeler talep ediliyor...",
    ["finishedcontract"] = "Sözleşmeyi çok iyi tamamladın!",

}

Config.ItemPrices = {
    ["pigeonmeat"] = { type = "bird", price = 150 }, ---
    ["pigeonfeather"] = { type = "bird", price = 150 },
    ["crowmeat"] = { type = "bird", price = 150 },
    ["crowfeather"] = { type = "bird", price = 150 },
    ["seagullmeat"] = { type = "bird", price = 150 },
    ["seagullfeather"] = { type = "bird", price = 150 },
    ["cormorantmeat"] = { type = "bird", price = 150 },
    ["cormorantbeak"] = { type = "bird", price = 150 },
    ["deermeat"] = { type = "animal", price = 150 },
    ["deerhorn"] = { type = "animal", price = 150 },
    ["rabbitmeat"] = { type = "animal", price = 150 },
    ["rabbitskin"] = { type = "animal", price = 150 },
    ["ratmeat"] = { type = "animal", price = 150 },
    ["pigmeat"] = { type = "animal", price = 150 },
    ["pigskin"] = { type = "animal", price = 150 },
    ["coyotemeat"] = { type = "predator", price = 150 },
    ["coyoteskin"] = { type = "predator", price = 150 },
    ["coguarmeat"] = { type = "predator", price = 150 },
    ["coguarskin"] = { type = "predator", price = 150 },
    ["boarmeat"] = { type = "predator", price = 150 },
    ["boarskin"] = { type = "predator", price = 150 },
    ["boarhorn"] = { type = "predator", price = 150 },
    ["snakemeat"] = { type = "predator", price = 150 },
    ["snakeskin"] = { type = "predator", price = 150 },
    ["hawkmeat"] = { type = "predator", price = 150 },
    ["hawkskin"] = { type = "predator", price = 150 },
    ["hawkpeak"] = { type = "predator", price = 150 },
}


Config.Categories = {
    ["birds"] = {
        requiredLevel = 0,
        [1] = {
            requiredLevel = 0,
            type = "birds", -- do not change
            name = "Neighbourhood Birds",
            image = "neighbourhoodbirds.png",
            location = "Paleto Bay",
            locationcoord = vector3(-647.91, 5927.96, 16.2),
            description = Config.Translate['neighbirdsdesc'],
            hash = {
                ['a_c_pigeon'] = {
                    ['pigeonmeat'] = { chance = 100, amount = { min = 1, max = 3 } },
                    ['pigeonfeather'] = { chance = 100, amount = { min = 1, max = 3 } }
                },
                ['a_c_crow'] = {
                    ['crowmeat'] = { chance = 100, amount = { min = 1, max = 3 } },
                    ['crowfeather'] = { chance = 100, amount = { min = 1, max = 3 } }
                },
            },
            index = 1,
        },
        [2] = {
            requiredLevel = 60,
            type = "birds", -- do not change
            name = "Beach Side Birds",
            image = "beachsidebirds.png",
            location = "Paleto Bay",
            locationcoord = vector3(92.23, 6975.69, 9.89),
            description = Config.Translate['beachsidebirddesc'],
            hash = {
                ['a_c_cormorant'] = {
                    ['cormorantmeat'] = { chance = 100, amount = { min = 1, max = 3 } },
                    ['cormorantbeak'] = { chance = 100, amount = { min = 1, max = 3 } }
                },
                ['a_c_seagull'] = {
                    ['seagullmeat'] = { chance = 100, amount = { min = 1, max = 3 } },
                    ['seagullfeather'] = { chance = 100, amount = { min = 1, max = 3 } }
                },
            },
            index = 2,
        },
    },



    ["animals"] = {
        requiredLevel = 20,
        [1] = {
            requiredLevel = 20,
            type = "animals", -- do not change
            name = "Paleto Bay Forest",
            image = "bg-animals.png",
            location = "Paleto Bay",
            locationcoord = vector3(-753.09, 5117.6, 158.34),
            description = Config.Translate['animalscarddesc'],
            hash = {
                ['a_c_deer'] = {
                    ['deermeat'] = { chance = 100, amount = { min = 1, max = 3 } },
                    ['deerhorn'] = { chance = 100, amount = { min = 1, max = 3 } }
                },
                ['a_c_pig'] = {
                    ["pigmeat"] = { chance = 100, amount = { min = 1, max = 3 } },
                    ["pigskin"] = { chance = 100, amount = { min = 1, max = 3 } }
                },
                ['a_c_rabbit_01'] = {
                    ["rabbitmeat"] = { chance = 100, amount = { min = 1, max = 3 } },
                    ["rabbitskin"] = { chance = 100, amount = { min = 1, max = 3 } },
                },
                ['a_c_rat'] = {
                    ["ratmeat"] = { chance = 100, amount = { min = 1, max = 3 } },
                },
            },
            index = 1,
        },
    },
    ["predators"] = {
        requiredLevel = 40,
        [1] = {
            requiredLevel = 40,
            type = "predators", -- do not change
            name = "Sandy Shores Predators",
            image = "sandy-shores-predators.png",
            location = "Paleto Bay",
            locationcoord = vector3(2472.14, 3374.18, 50.6),
            description = Config.Translate['sandypredatorsdesc'],
            hash = {
                ["a_c_coyote"] = {
                    ["coyotemeat"] = { chance = 100, amount = { min = 1, max = 3 } },
                    ["coyoteskin"] = { chance = 100, amount = { min = 1, max = 3 } },
                },
                ["a_c_mtlion"] = {
                    ["coguarmeat"] = { chance = 100, amount = { min = 1, max = 2 } },
                    ["coguarskin"] = { chance = 100, amount = { min = 1, max = 2 } },
                },
                ["a_c_boar"] = {
                    ["boarmeat"] = { chance = 100, amount = { min = 1, max = 4 } },
                    ["boarskin"] = { chance = 100, amount = { min = 1, max = 4 } },
                    ["boarhorn"] = { chance = 100, amount = { min = 1, max = 4 } },
                }
            },
            index = 1,
        },
        [2] = {
            requiredLevel = 50,
            type = "predators", -- do not change
            name = "Military Swamp Predators",
            image = "military-swamp-predators.png",
            location = "Paleto Bay",
            locationcoord = vector3(-1981.92, 2572.65, 2.67),
            description = Config.Translate['militarypredatorsdesc'],
            hash = {
                ["a_c_chickenhawk"] = {
                    ["hawkmeat"] = { chance = 100, amount = { min = 1, max = 4 } },
                    ["hawkskin"] = { chance = 100, amount = { min = 1, max = 4 } },
                    ["hawkpeak"] = { chance = 100, amount = { min = 1, max = 4 } },
                },
            },
            index = 2,
        },
    },
}




Config.Contracts = {
    ["birds"] = {
        [1] = {
            money = 500,
            xp = 1500,
            text = "10 güvercin yakalayın ve onları av kulübüne geri teslim edin.",
            title = "CATCH PIGEONS",
            hash = {
                ['a_c_pigeon'] = 10,
            },
        },
        [2] = {
            money = 500,
            xp = 1500,
            text = "10 karga yakalayın ve onları av kulübüne geri teslim edin.",
            title = "CATCH CROWS",
            hash = {
                ['a_c_crow'] = 10,
            }
        },
        [3] = {
            money = 500,
            xp = 2500,
            text = "Tek bir avda 30 güvercin avlayın ve tüylerini piyasaya satın.",
            title = "PIGEON FEATHERS",
            hash = {
                ['a_c_pigeon'] = 30
            },
        },
        [4] = {
            money = 500,
            xp = 2500,
            text = "Tek bir avda 30 karga avlayın ve Featherson'u pazar satın.",
            title = "CROW FEATHERS",
            hash = {
                ['a_c_crow'] = 30,
            }
        },
    },
    ["animals"] = {
        [1] = {
            money = 500,
            xp = 2750,
            text = "10 geyik avlayın ve et, cilt ve boynuzlarını av kulübünün pazarına satın.",
            title = "HUNT DEERS",
            hash = {
                ['a_c_deer'] = 10,
            },
        },
        [2] = {
            money = 1500,
            xp = 2750,
            text = "10 domuz avlayın ve et, cilt ve domuz yerini av kulübünün pazarına satın.",
            title = "HUNT PIGS",
            hash = {
                ['a_c_pig'] = 10,
            },
        },
        [3] = {
            money = 1500,
            xp = 2750,
            text = "10 tavşanı avlayın ve et ve cildi av kulübünün pazarına satın.",
            title = "HUNT RABBITS",
            hash = {
                ['a_c_rabbit_01'] = 10,
            },
        },
        [4] = {
            money = 1500,
            xp = 2750,
            text = "10 fareleri avlayın ve et ve cildini av kulübünün pazarına satın.",
            title = "HUNT RATS",
            hash = {
                ['a_c_rat'] = 10,
            }
        },
    },
    ["predators"] = {
        [1] = {
            money = 1500,
            xp = 2500,
            text = "10 çakal avlayın ve et ve cildi av kulübünün pazarına satın.",
            title = "HUNT COYOTES",
            hash = {
                ['a_c_coyote'] = 10,
            },
        },
        [2] = {
            money = 1500,
            xp = 3500,
            text = "10 Cougar'ı avlayın ve et ve cildini av kulübünün pazarına satın.",
            title = "HUNT COUGARS",
            hash = {
                ['a_c_mtlion'] = 10,
            }
        },
        [3] = {
            money = 500,
            xp = 2750,
            text = "10 domuzu avlayın ve et ve cildini av kulübünün pazarına satın.",
            title = "HUNT BOARS",
            hash = {
                ['a_c_boar'] = 10,
            }
        },
        [4] = {
            money = 3500,
            xp = 4500,
            text = "10 çakal, puma, domuz avlayın ve et ve cildini av kulübünün pazarına satın.",
            title = "HUNT PREDATORS",
            hash = {
                ['a_c_boar'] = 10,
                ['a_c_coyote'] = 10
            }
        },
    },
}


Config.SendMessage = function(message, isError, part, source)
    if part == nil then part = "client" end
    if part == "client" then
        if Config.Framework == "new-qb" or Config.Framework == "old-qb" then
            local p = nil
            if isError then p = "error" else p = "success" end
            TriggerEvent("QBCore:Notify", message, p)
        else
            TriggerEvent("esx:showNotification", message)
        end
    elseif part == "server" then
        if Config.Framework == "new-qb" or Config.Framework == "old-qb" then
            local p = nil
            if isError then p = "error" else p = "success" end
            TriggerClientEvent('QBCore:Notify', source, message, p)
        else
            TriggerClientEvent("esx:showNotification", source, message)
        end
    end
end

Config.Vehiclekey = true                   -- Do NOT Touch if you have any car lock system
Config.VehicleKeySystem = "qb-vehiclekeys" -- cd_garage / qs-vehiclekeys / wasabi-carlock / qb-vehiclekeys

Config.GiveVehicleKey = function(vehicle)
    local plate = GetVehicleNumberPlateText(vehicle)
    if Config.Vehiclekey then
        TriggerEvent("vehiclekeys:client:SetOwner", plate)
        if Config.VehicleSystem == 'cd_garage' then
            TriggerEvent('cd_garage:AddKeys', exports['cd_garage']:GetPlate(vehicle))
        elseif Config.VehicleSystem == 'qs-vehiclekeys' then
            exports['qs-vehiclekeys']:GiveKeys(plate)
        elseif Config.VehicleSystem == 'wasabi-carlock' then
            exports.wasabi_carlock:GiveKey(plate)
        elseif Config.VehicleSystem == 'qb-vehiclekeys' then
            TriggerServerEvent('qb-vehiclekeys:server:AcquireVehicleKeys', plate)
        end
    end
end
Config.VehicleRemovekey = true                   -- Do NOT Touch if you have any car lock system
Config.VehicleRemoveKeySystem = "qb-vehiclekeys" -- cd_garage / qs-vehiclekeys / qb-vehiclekeys

Config.RemoveVehicleKey = function(vehicle, plate)
    if Config.VehicleRemovekey then
        if Config.VehicleRemoveKeySystem == 'cd_garage' then
            TriggerServerEvent('cd_garage:RemovePersistentVehicles', exports['cd_garage']:GetPlate(vehicle))
        elseif Config.VehicleRemoveKeySystem == 'qs-vehiclekeys' then
            exports['qs-vehiclekeys']:RemoveKeys(plate)
        elseif Config.VehicleRemoveKeySystem == 'qb-vehiclekeys' then
            TriggerServerEvent('qb-vehiclekeys:client:RemoveKeys', plate)
        end
    end
end

Config.EnableFuel = true                              -- Do NOT Touch if you have any fuel system
Config.FuelSystem =
'cdn-fuel'                                            -- LegacyFuel / ox-fuel / nd-fuel / frfuel / cdn-fuel / hyon_gas_station
Config.SetVehicleFuel = function(vehicle, fuel_level) -- you can change LegacyFuel export if you use another fuel system
    if fuel_level == nil then fuel_level = 90 end
    if Config.EnableFuel then
        if Config.FuelSystem == 'LegacyFuel' then
            return exports["LegacyFuel"]:SetFuel(vehicle, fuel_level)
        elseif Config.FuelSystem == 'ox-fuel' then
            return GetVehicleFuelLevel(vehicle, fuel_level)
        elseif Config.FuelSystem == 'nd-fuel' then
            return exports["nd-fuel"]:SetFuel(vehicle, fuel_level)
        elseif Config.FuelSystem == 'frfuel' then
            return exports.frfuel:setFuel(vehicle, fuel_level)
        elseif Config.FuelSystem == 'cdn-fuel' then
            return exports['cdn-fuel']:SetFuel(vehicle, fuel_level)
        elseif Config.FuelSystem == 'hyon_gas_station' then
            return exports["hyon_gas_station"]:SetFuel(vehicle, fuel_level)
        end
    else
        return SetVehicleFuelLevel(vehicle, fuel_level + 0.0)
    end
end
