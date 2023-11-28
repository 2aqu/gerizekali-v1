# ESX DEFAULT 
```SQL
    INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES ('pigeonmeat', 'Pigeon Meat', 1, 0, 1);
    INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES ('pigeonfeather', 'Pigeon Feather', 1, 0, 1);
    INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES ('crowmeat', 'Crow Meat', 1, 0, 1);
    INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES ('crowfeather', 'Crow Feather', 1, 0, 1);
    INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES ('seagullmeat', 'Seagull Meat', 1, 0, 1);
    INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES ('seagullfeather', 'Seagull Feather', 1, 0, 1);
    INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES ('cormorantmeat', 'Cormorant Meat', 1, 0, 1);
    INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES ('cormorantbeak', 'Cormorant Beak', 1, 0, 1);
    INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES ('deermeat', 'Deer Meat', 1, 0, 1);
    INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES ('deerhorn', 'Deer Horn', 1, 0, 1);
    INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES ('rabbitmeat', 'Rabbit Meat', 1, 0, 1);
    INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES ('rabbitskin', 'Rabbit Skin', 1, 0, 1);
    INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES ('ratmeat', 'Rat Meat', 1, 0, 1);
    INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES ('pigmeat', 'Pig Meat', 1, 0, 1);
    INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES ('pigskin', 'Pig Skin', 1, 0, 1);
    INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES ('coyotemeat', 'Coyote Meat', 1, 0, 1);
    INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES ('coyoteskin', 'Coyote Skin', 1, 0, 1);
    INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES ('coguarmeat', 'Cougarmeat', 1, 0, 1);
    INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES ('coguarskin', 'Cougar Skin', 1, 0, 1);
    INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES ('boarmeat', 'Boar Meat', 1, 0, 1);
    INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES ('boarskin', 'Boar Skin', 1, 0, 1);
    INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES ('snakemeat', 'Snake Meat', 1, 0, 1);
    INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES ('boarhorn', 'Boar Horn', 1, 0, 1);
    INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES ('snakeskin', 'Snake Skin', 1, 0, 1);
    INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES ('hawkmeat', 'Hawk Meat', 1, 0, 1);
    INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES ('hawkskin', 'Hawk Skin', 1, 0, 1);
    INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES ('hawkpeak', 'Hawk Peak', 1, 0, 1);
```

# QBCORE DEFAULT 
```lua
    ['pigeonmeat']                      = {['name'] = 'pigeonmeat',                        ['label'] = 'Pigeon Meat',               ['weight'] = 1000,          ['type'] = 'item',        ['image'] = 'pigeonmeat.png',              ['unique'] = true,        ['useable'] = false,      ['shouldClose'] = false,     ['combinable'] = nil,   ['description'] = 'Delicious pigeon meat for your culinary adventures.'},
    ['pigeonmeat']                      = {['name'] = 'pigeonmeat',                        ['label'] = 'Pigeon Meat',               ['weight'] = 1000,          ['type'] = 'item',        ['image'] = 'pigeonmeat.png',              ['unique'] = true,         ['useable'] = false,      ['shouldClose'] = false,     ['combinable'] = nil,   ['description'] = 'Delicious pigeon meat for your culinary adventures.'},
    ['pigeonfeather']                   = {['name'] = 'pigeonfeather',                     ['label'] = 'Pigeon Feather',            ['weight'] = 1000,          ['type'] = 'item',        ['image'] = 'pigeonfeather.png',           ['unique'] = true,         ['useable'] = false,      ['shouldClose'] = false,     ['combinable'] = nil,   ['description'] = 'A soft and lightweight feather from a pigeon.'},
    ['crowmeat']                        = {['name'] = 'crowmeat',                          ['label'] = 'Crow Meat',                 ['weight'] = 1000,          ['type'] = 'item',        ['image'] = 'crowmeat.png',                ['unique'] = true,         ['useable'] = false,      ['shouldClose'] = false,     ['combinable'] = nil,   ['description'] = 'Tasty crow meat, perfect for daring gourmets.'},
    ['crowfeather']                     = {['name'] = 'crowfeather',                       ['label'] = 'Crow Feather',              ['weight'] = 1000,          ['type'] = 'item',        ['image'] = 'crowfeather.png',             ['unique'] = true,         ['useable'] = false,      ['shouldClose'] = false,     ['combinable'] = nil,   ['description'] = 'A sleek and dark feather from a crow.'},
    ['seagullmeat']                     = {['name'] = 'seagullmeat',                       ['label'] = 'Seagull Meat',              ['weight'] = 1000,          ['type'] = 'item',        ['image'] = 'seagullmeat.png',             ['unique'] = true,         ['useable'] = false,      ['shouldClose'] = false,     ['combinable'] = nil,   ['description'] = 'Savory seagull meat, a delicacy among fishermen.'},
    ['seagullfeather']                  = {['name'] = 'seagullfeather',                    ['label'] = 'Seagull Feather',           ['weight'] = 1000,          ['type'] = 'item',        ['image'] = 'seagullfeather.png',          ['unique'] = true,         ['useable'] = false,      ['shouldClose'] = false,     ['combinable'] = nil,   ['description'] = 'A A graceful and light feather from a seagull.'},
    ['cormorantmeat']                   = {['name'] = 'cormorantmeat',                     ['label'] = 'Cormorant Meat',            ['weight'] = 1000,          ['type'] = 'item',        ['image'] = 'cormorantmeat.png',           ['unique'] = true,         ['useable'] = false,      ['shouldClose'] = false,     ['combinable'] = nil,   ['description'] = 'Meaty cormorant meat, a rare find for adventurous eaters.'},
    ['cormorantbeak']                   = {['name'] = 'cormorantbeak',                     ['label'] = 'Cormorant Beak',            ['weight'] = 1000,          ['type'] = 'item',        ['image'] = 'cormorantbeak.png',           ['unique'] = true,         ['useable'] = false,      ['shouldClose'] = false,     ['combinable'] = nil,   ['description'] = 'A sturdy and pointed beak from a cormorant.'},
    ['deermeat']                        = {['name'] = 'deermeat',                          ['label'] = 'Deer Meat',                 ['weight'] = 1000,          ['type'] = 'item',        ['image'] = 'deermeat.png',                ['unique'] = true,         ['useable'] = false,      ['shouldClose'] = false,     ['combinable'] = nil,   ['description'] = 'Succulent deer meat, a favorite among hunters.'},
    ['deerhorn']                        = {['name'] = 'deerhorn',                          ['label'] = 'Deer Horn',                 ['weight'] = 1000,          ['type'] = 'item',        ['image'] = 'deerhorn.png',                ['unique'] = true,         ['useable'] = false,      ['shouldClose'] = false,     ['combinable'] = nil,   ['description'] = 'A majestic horn from a deer, prized for its beauty.'},
    ['rabbitmeat']                      = {['name'] = 'rabbitmeat',                        ['label'] = 'Rabbit Meat',               ['weight'] = 1000,          ['type'] = 'item',        ['image'] = 'rabbitmeat.png',              ['unique'] = true,         ['useable'] = false,      ['shouldClose'] = false,     ['combinable'] = nil,   ['description'] = 'Tender rabbit meat, perfect for stews and roasts.'},
    ['rabbitskin']                      = {['name'] = 'rabbitskin',                        ['label'] = 'Rabbit Skin',               ['weight'] = 1000,          ['type'] = 'item',        ['image'] = 'rabbitskin.png',              ['unique'] = true,         ['useable'] = false,      ['shouldClose'] = false,     ['combinable'] = nil,   ['description'] = 'A soft and supple skin from a rabbit, ideal for crafting.'},
    ['ratmeat']                         = {['name'] = 'ratmeat',                           ['label'] = 'Rat Meat',                  ['weight'] = 1000,          ['type'] = 'item',        ['image'] = 'ratmeat.png',                 ['unique'] = true,         ['useable'] = false,      ['shouldClose'] = false,     ['combinable'] = nil,   ['description'] = 'Edible rat meat, a survivalists choice in desperate times.'},
    ['pigmeat']                         = {['name'] = 'pigmeat',                           ['label'] = 'Pig Meat',                  ['weight'] = 1000,          ['type'] = 'item',        ['image'] = 'pigmeat.png',                 ['unique'] = true,         ['useable'] = false,      ['shouldClose'] = false,     ['combinable'] = nil,   ['description'] = 'Juicy pig meat, a staple in many hearty meals.'},
    ['pigskin']                         = {['name'] = 'pigskin',                           ['label'] = 'Pig Skin',                  ['weight'] = 1000,          ['type'] = 'item',        ['image'] = 'pigskin.png',                 ['unique'] = true,         ['useable'] = false,      ['shouldClose'] = false,     ['combinable'] = nil,   ['description'] = 'Thick and durable pig skin, useful for crafting leather goods.'},
    ['coyotemeat']                      = {['name'] = 'coyotemeat',                        ['label'] = 'Coyote Meat',               ['weight'] = 1000,          ['type'] = 'item',        ['image'] = 'coyotemeat.png',              ['unique'] = true,         ['useable'] = false,      ['shouldClose'] = false,     ['combinable'] = nil,   ['description'] = 'Lean and gamey coyote meat, favored by wilderness enthusiasts.'},
    ['coyoteskin']                      = {['name'] = 'coyoteskin',                        ['label'] = 'Coyote Skin',               ['weight'] = 1000,          ['type'] = 'item',        ['image'] = 'coyoteskin.png',              ['unique'] = true,         ['useable'] = false,      ['shouldClose'] = false,     ['combinable'] = nil,   ['description'] = 'Tough and weather-resistant coyote skin, perfect for outdoor gear.'},
    ['coguarmeat']                      = {['name'] = 'coguarmeat',                        ['label'] = 'Cougarmeat',                ['weight'] = 1000,          ['type'] = 'item',        ['image'] = 'coguarmeat.png',              ['unique'] = true,         ['useable'] = false,      ['shouldClose'] = false,     ['combinable'] = nil,   ['description'] = 'Exotic cougarmeat, a delicacy for adventurous palates.'},
    ['coguarskin']                      = {['name'] = 'coguarskin',                        ['label'] = 'Cougar Skin',               ['weight'] = 1000,          ['type'] = 'item',        ['image'] = 'coguarskin.png',              ['unique'] = true,         ['useable'] = false,      ['shouldClose'] = false,     ['combinable'] = nil,   ['description'] = 'Supple cougar skin, highly valued in the fashion industry.'},
    ['boarmeat']                        = {['name'] = 'boarmeat',                          ['label'] = 'Boar Meat',                 ['weight'] = 1000,          ['type'] = 'item',        ['image'] = 'boarmeat.png',                ['unique'] = true,         ['useable'] = false,      ['shouldClose'] = false,     ['combinable'] = nil,   ['description'] = 'Hearty boar meat, a popular choice among hunters and chefs.'},
    ['boarskin']                        = {['name'] = 'boarskin',                          ['label'] = 'Boar Skin',                 ['weight'] = 1000,          ['type'] = 'item',        ['image'] = 'boarskin.png',                ['unique'] = true,         ['useable'] = false,      ['should Close'] = false,    ['combinable'] = nil,   ['description'] = 'Tough boar skin, excellent for crafting rugged goods.'},
    ['snakemeat']                       = {['name'] = 'snakemeat',                         ['label'] = 'Snake Meat',                ['weight'] = 1000,          ['type'] = 'item',        ['image'] = 'snakemeat.png',               ['unique'] = true,         ['useable'] = false,      ['should Close'] = false,    ['combinable'] = nil,   ['description'] = 'Savory snake meat, a delicacy in some cultures.'},
    ['boarhorn']                        = {['name'] = 'boarhorn',                          ['label'] = 'Boar Horn',                 ['weight'] = 1000,          ['type'] = 'item',        ['image'] = 'boarhorn.png',                ['unique'] = true,         ['useable'] = false,      ['should Close'] = false,    ['combinable'] = nil,   ['description'] = 'A large and impressive horn from a boar.'},
    ['snakeskin']                       = {['name'] = 'snakeskin',                         ['label'] = 'Snake Skin',                ['weight'] = 1000,          ['type'] = 'item',        ['image'] = 'snakeskin.png',               ['unique'] = true,         ['useable'] = false,      ['should Close'] = false,    ['combinable'] = nil,   ['description'] = 'Smooth and patterned snake skin, used for various crafts.'},
    ['hawkmeat']                        = {['name'] = 'hawkmeat',                          ['label'] = 'Hawk Meat',                 ['weight'] = 1000,          ['type'] = 'item',        ['image'] = 'hawkmeat.png',                ['unique'] = true,         ['useable'] = false,      ['should Close'] = false,    ['combinable'] = nil,   ['description'] = 'Lean and gamey hawk meat, a rare delicacy among hunters.'},
    ['hawkskin']                        = {['name'] = 'hawkskin',                          ['label'] = 'Hawk Skin',                 ['weight'] = 1000,          ['type'] = 'item',        ['image'] = 'hawkskin.png',                ['unique'] = true,         ['useable'] = false,      ['should Close'] = false,    ['combinable'] = nil,   ['description'] = 'Beautiful hawk skin, prized for its unique markings.'},
    ['hawkpeak']                        = {['name'] = 'hawkpeak',                          ['label'] = 'Hawk Peak',                  ['weight'] = 1000,         ['type'] = 'item',        ['image'] = 'hawkpeak.png',                ['unique'] = true,         ['useable'] = false,      ['should Close'] = false,    ['combinable'] = nil,   ['description'] = 'A majestic feather from a hawk\'s peak, a symbol of freedom.'},

# OX Items 
```lua
    ["pigeonmeat"] = {
    label = "Güvercin Eti",
    weight = 1000,
    stack = true,
    close = true,
    description = "Mutfak maceralarınız için lezzetli güvercin eti.",
},
["pigeonfeather"] = {
    label = "Güvercin Tüyü",
    weight = 1000,
    stack = true,
    close = true,
    description = "Bir güvercinden yumuşak ve hafif bir tüy.",
},
["crowmeat"] = {
    label = "Karga Eti",
    weight = 1000,
    stack = true,
    close = true,
    description = "Cesur gurmelere uygun lezzetli karga eti.",
},
["crowfeather"] = {
    label = "Karga Tüyü",
    weight = 1000,
    stack = true,
    close = true,
    description = "Bir kargadan şık ve koyu renkli bir tüy.",
},
["seagullmeat"] = {
    label = "Martı Eti",
    weight = 1000,
    stack = true,
    close = true,
    description = "Balıkçılar arasında bir şölen malzemesi olan lezzetli martı eti.",
},
["seagullfeather"] = {
    label = "Martı Tüyü",
    weight = 1000,
    stack = true,
    close = true,
    description = "Bir martıdan zarif ve hafif bir tüy.",
},
["cormorantmeat"] = {
    label = "Karabatak Eti",
    weight = 1000,
    stack = true,
    close = true,
    description = "Macera sevenler için nadir bulunan etli karabatak eti.",
},
["cormorantbeak"] = {
    label = "Karabatak Gagası",
    weight = 1000,
    stack = true,
    close = true,
    description = "Bir karabataktan sağlam ve sivri bir gagaa.",
},
["deermeat"] = {
    label = "Geyik Eti",
    weight = 1000,
    stack = true,
    close = true,
    description = "Avcıların favorisi olan lezzetli geyik eti.",
},
["deerhorn"] = {
    label = "Geyik Boynuzu",
    weight = 1000,
    stack = true,
    close = true,
    description = "Bir geyikten muhteşem bir boynuz, güzelliğiyle öne çıkıyor.",
},
["rabbitmeat"] = {
    label = "Tavşan Eti",
    weight = 1000,
    stack = true,
    close = true,
    description = "Güveç ve fırın için mükemmel olan narin tavşan eti.",
},
["rabbitskin"] = {
    label = "Tavşan Derisi",
    weight = 1000,
    stack = true,
    close = true,
    description = "Bir tavşandan yumuşak ve esnek bir deri, zanaat için ideal.",
},
["ratmeat"] = {
    label = "Fare Eti",
    weight = 1000,
    stack = true,
    close = true,
    description = "Yenilebilir fare eti, çaresiz zamanlarda bir hayatta kalma uzmanının tercihi.",
},
["pigmeat"] = {
    label = "Domuz Eti",
    weight = 1000,
    stack = true,
    close = true,
    description = "Sulu domuz eti, birçok sağlam yemekte temel malzeme.",
},
["pigskin"] = {
    label = "Domuz Derisi",
    weight = 1000,
    stack = true,
    close = true,
    description = "Kalın ve dayanıklı domuz derisi, deri ürünleri için kullanışlı.",
},
["coyotemeat"] = {
    label = "Koyote Eti",
    weight = 1000,
    stack = true,
    close = true,
    description = "İnce ve oyunlu koyote eti, vahşi doğa severler tarafından tercih ediliyor.",
},
["coyoteskin"] = {
    label = "Koyote Derisi",
    weight = 1000,
    stack = true,
    close = true,
    description = "Sağlam ve hava koşullarına dayanıklı koyote derisi, açık hava malzemeleri için mükemmel.",
},
["coguarmeat"] = {
    label = "Puma Eti",
    weight = 1000,
    stack = true,
    close = true,
    description = "Exotic puma eti, maceraperest damaklar için bir delikanlılık.",
},
["coguarskin"] = {
    label = "Puma Derisi",
    weight = 1000,
    stack = true,
    close = true,
    description = "Esnek puma derisi, moda endüstrisinde oldukça değerli.",
},
["boarmeat"] = {
    label = "Yaban Domuzu Eti",
    weight = 1000,
    stack = true,
    close = true,
    description = "Sağlıklı yaban domuzu eti, avcılar ve şefler arasında popüler bir tercih.",
},
["boarskin"] = {
    label = "Yaban Domuzu Derisi",
    weight = 1000,
    stack = true,
    close = true,
    description = "Sağlam yaban domuzu derisi, sert ürünler için harika.",
},
["snakemeat"] = {
    label = "Yılan Eti",
    weight = 1000,
    stack = true,
    close = true,
    description = "Lezzetli yılan eti, bazı kültürlerde bir zarafet meselesi.",
},
["boarhorn"] = {
    label = "Yaban Domuzu Boynuzu",
    weight = 1000,
    stack = true,
    close = true,
    description = "Bir yaban domuzundan büyük ve etkileyici bir boynuz.",
},
["snakeskin"] = {
    label = "Yılan Derisi",
    weight = 1000,
    stack = true,
    close = true,
    description = "Pürüzsüz ve desenli yılan derisi, çeşitli zanaatlar için kullanılır.",
},
["hawkmeat"] = {
    label = "Şahin Eti",
    weight = 1000,
    stack = true,
    close = true,
    description = "İnce ve oyunlu şahin eti, avcılar arasında nadir bir lezzet.",
},
["hawkskin"] = {
    label = "Şahin Derisi",
    weight = 1000,
    stack = true,
    close = true,
    description = "Görünüşü benzersiz işaretleri nedeniyle değerli olan güzel şahin derisi.",
},
["hawkpeak"] = {
    label = "Şahin Tüyü",
    weight = 1000,
    stack = true,
    close = true,
    description = "Bir şahinin zirvesinden gelen görkemli bir tüy, özgürlüğün sembolü.",
},

```