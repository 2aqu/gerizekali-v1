Config = {}
Config.DebugPoly = false

Config.IsletmePatronTarget = {
}

Config.YemekTarget = {
    [1] = {
        {loc = vec3(-2978.46, 37.54, 7.85), genislik = 0.6, name = "serendipity-yemek", job = "serendipity"}
    },
    [2] = {
        {loc = vec3(299.11978149414,-925.8515625,58.56188583374), genislik = 0.6, name = "tpc-yemek", job = "tpc"}
    },
    [3] = {
        {loc = vec3(-587.84582519531,-1059.7263183594,22.26192855835), genislik = 0.6, name = "uwu-yemek", job = "uwu"}
    },
    [4] = {
        {loc = vec3(809.18737792969,-761.18493652344,26.727725982666), genislik = 0.6, name = "pizzeria-yemek", job = "pizzeria"}
    },
    [5] = {
        {loc = vec3(-1186.4797363281,-900.66375732422,14.088788032532), genislik = 0.6, name = "burgershot-yemek", job = "burgershot"}
    },
    [6] = {
        {loc = vec3(-1845.15625,-1196.423828125,14.271260261536), genislik = 0.6, name = "pearls-yemek", job = "pearls"}
    },
}

Config.IcecekTarget = {
    [1] = {
        {loc = vec3(-2974.17, 34.5, 8.06), genislik = 0.6, name = "serendipity-icecek", job = "serendipity"}
    },
    [2] = {
        {loc = vec3(301.07238769531,-924.00122070313,58.645027160645), genislik = 0.6, name = "tpc-icecek", job = "tpc"}
    },
    [3] = {
        {loc = vec3(-591.09729003906,-1055.6125488281,22.215766906738), genislik = 0.6, name = "uwu-icecek", job = "uwu"}
    },
    [4] = {
        {loc = vec3(811.26312255859,-764.53167724609,26.750059127808), genislik = 0.6, name = "pizzeria-icecek", job = "pizzeria"}
    },
    [5] = {
        {loc = vec3(-1191.4777832031,-897.83648681641,14.019136428833), genislik = 0.6, name = "burgershot-icecek", job = "burgershot"}
    },
    [6] = {
        {loc = vec3(-1844.4974365234,-1199.71875,14.483790397644), genislik = 0.6, name = "pearls-icecek", job = "pearls"}
    },
}

Config.Tezgah = {
    [1] = {
        {loc = vec3(-2976.61, 35.41, 7.94), genislik = 0.6, tezgah = "serendipitytezgah"}
    },
    [2] = {
        {loc = vec3(301.4670715332,-927.20361328125,58.513740539551), genislik = 0.6, tezgah = "tpctezgah"}
    },
    [3] = {
        {loc = vec3(-583.93157958984,-1060.5008544922,22.379222869873), genislik = 0.6, tezgah = "uwutezgah"}
    },
    [4] = {
        {loc = vec3(810.64898681641,-752.80950927734,26.977275848389), genislik = 0.6, tezgah = "pizzeria"}
    },
    [5] = {
        {loc = vec3(-1189.9693603516,-895.18182373047,13.946274757385), genislik = 0.6, tezgah = "burgershot"}
    },
    [6] = {
        {loc = vec3(-1834.2531738281,-1190.3922119141,14.324607849121), genislik = 0.6, tezgah = "pearls"}
    },
}
		
Config.YemekListesi = {
    ["pearls"] = {
        ["spagetti"] = {
            ["itemname"] = "spagetti",
            ["label"] = "Spagetti",
        },
        ["bonfile"] = {
            ["itemname"] = "bonfile",
            ["label"] = "Bonfile",
        },
        ["balik"] = {
            ["itemname"] = "balik",
            ["label"] = "Balık",
        },
        ["balik2"] = {
            ["itemname"] = "balik2",
            ["label"] = "Balık Menü",
        },
        ["istakoz"] = {
            ["itemname"] = "istakoz",
            ["label"] = "Istakoz",
        },
        ["kurabiye"] = {
            ["itemname"] = "kurabiye",
            ["label"] = "Kurabiye",
        },
    },
    ["pizzeria"] = {
        ["pvegpizza"] = {
            ["itemname"] = "pvegpizza",
            ["label"] = "Vejeteryan Pizza",
            ["burgershot_curly"] = 1,
            ["burgershot_bread"] = 1,
            ["butter"] = 1,
        },
        ["pmushroomspizza"] = {
            ["itemname"] = "pmushroomspizza",
            ["label"] = "Mantarlı Pizza",
            ["burgershot_curly"] = 1,
            ["burgershot_bread"] = 1,
            ["butter"] = 1,
        },
        ["pnapollitano"] = {
            ["itemname"] = "pnapollitano",
            ["label"] = "Napollitano Pizza",
            ["burgershot_curly"] = 1,
            ["burgershot_bread"] = 1,
            ["butter"] = 1,
        },
        ["pmargharita"] = {
            ["itemname"] = "pmargharita",
            ["label"] = "Margharita Pizza",
            ["burgershot_curly"] = 1,
            ["burgershot_bread"] = 1,
            ["butter"] = 1,
        },
    },
    ["serendipity"] = {
        ["obezburger"] = {
            ["itemname"] = "obezburger",
            ["label"] = "Obez Burger",
            ["burgershot_curly"] = 1,
            ["burgershot_bread"] = 1,
            ["burgershot_meat"] = 1,
        },
        ["burgershot_shotnuggets"] = {
            ["itemname"] = "burgershot_shotnuggets",
            ["label"] = "Nugget",
            ["raw-chicken"] = 1,
        },
        ["burgershot_shotrings"] = {
            ["itemname"] = "burgershot_shotrings",
            ["label"] = "Soğan Halkası",
            ["butter"] = 1,
        },
    },
    ["burgershot"] = {
        ["obezburger"] = {
            ["itemname"] = "obezburger",
            ["label"] = "Obez Burger",
            ["burgershot_curly"] = 1,
            ["burgershot_bread"] = 1,
            ["burgershot_meat"] = 1,
        },
        ["burgershot_shotnuggets"] = {
            ["itemname"] = "burgershot_shotnuggets",
            ["label"] = "Nugget",
            ["raw-chicken"] = 1,
        },
        ["burgershot_shotrings"] = {
            ["itemname"] = "burgershot_shotrings",
            ["label"] = "Soğan Halkası",
            ["butter"] = 1,
        },
        ["kizartma"] = {
            ["itemname"] = "kizartma",
            ["label"] = "Kızartma Tabağı",
            ["butter"] = 1,
            ["burgershot_bigfrozenpotato"] = 1,
        },
    },
    ["tpc"] = {
        ["bchocolatemuffin"] = {
            ["itemname"] = "bchocolatemuffin",
            ["label"] = "Çikolatalı Muffin",
            ["sugar-cubes"] = 1,
            ["barra-chocolate"] = 1,
            ["pacote-natas"] = 1,
        },
        ["bberrymuffin"] = {
            ["itemname"] = "bberrymuffin",
            ["label"] = "Böğürtlenli Muffin",
            ["sugar-cubes"] = 1,
            ["barra-chocolate"] = 1,
            ["pacote-natas"] = 1,
        },
        ["bdonut"] = {
            ["itemname"] = "bdonut",
            ["label"] = "Donut",
            ["butter"] = 1,
            ["sugar-cubes"] = 1,
            ["pacote-natas"] = 1,
        },
        ["kizartma"] = {
            ["itemname"] = "kizartma",
            ["label"] = "Kızartma Tabağı",
            ["butter"] = 1,
            ["burgershot_bigfrozenpotato"] = 1,
        },
    },
    ["uwu"] = {
        ["muffin-chocolate"] = {
            ["itemname"] = "muffin-chocolate",
            ["label"] = "Çikolatalı Muffin",
            ["sugar-cubes"] = 1,
            ["barra-chocolate"] = 1,
            ["pacote-natas"] = 1,
        },
        ["cupcake-morango"] = {
            ["itemname"] = "cupcake-morango",
            ["label"] = "Çilekli Cupkek",
            ["sugar-cubes"] = 1,
            ["pacote-natas"] = 1,
            ["pacote-leite"] = 1,
        },
        ["cupcake-chocolate"] = {
            ["itemname"] = "cupcake-chocolate",
            ["label"] = "Çikolatalı Cupkek",
            ["butter"] = 1,
            ["sugar-cubes"] = 1,
            ["barra-chocolate"] = 1,
        },
        ["cupcake-limao"] = {
            ["itemname"] = "cupcake-limao",
            ["label"] = "Limonlu Cupkek",
            ["butter"] = 1,
            ["sugar-cubes"] = 1,
            ["pacote-leite"] = 1,
        },
        ["gelado-morango"] = {
            ["itemname"] = "gelado-morango",
            ["label"] = "Çilekli Dondurma",
            ["sugar-cubes"] = 1,
            ["pacote-leite"] = 1,
        },
        ["gelado-chocolate"] = {
            ["itemname"] = "gelado-chocolate",
            ["label"] = "Çikolatalı Dondurma",
            ["sugar-cubes"] = 1,
            ["pacote-leite"] = 1,
        },
        ["gelado-baunilha"] = {
            ["itemname"] = "gelado-baunilha",
            ["label"] = "Vanilyalı Dondurma",
            ["sugar-cubes"] = 1,
            ["pacote-leite"] = 1,
        },
        ["panqueca-nutela"] = {
            ["itemname"] = "panqueca-nutela",
            ["label"] = "Nutellalı Pankek",
            ["sugar-cubes"] = 1,
            ["pacote-leite"] = 1,
            ["barra-chocolate"] = 1,
        },
        ["panqueca-oreo"] = {
            ["itemname"] = "panqueca-oreo",
            ["label"] = "Oreolu Pankek",
            ["sugar-cubes"] = 1,
            ["pacote-leite"] = 1,
            ["barra-chocolate"] = 1,
        },
        ["waffle-nutela"] = {
            ["itemname"] = "waffle-nutela",
            ["label"] = "Nutellalı Waffle",
            ["sugar-cubes"] = 1,
            ["pacote-leite"] = 1,
            ["barra-chocolate"] = 1,
        },
    },
}

Config.IcecekListesi = {  
    ["pearls"] = {
        ["raki"] = {
            ["itemname"] = "raki",
            ["label"] = "Rakı",
        },
        ["kokteyl"] = {
            ["itemname"] = "kokteyl",
            ["label"] = "Kokteyl",
        },
        ["kokteyl2"] = {
            ["itemname"] = "kokteyl2",
            ["label"] = "Kokteyl 2",
        },
        ["sarap"] = {
            ["itemname"] = "sarap",
            ["label"] = "Şarap",
        },
        ["sprite"] = {
            ["itemname"] = "sprite",
            ["label"] = "Sprite",
        },
    },
    ["pizzeria"] = {
        ["burgershot_colab"] = {
            ["itemname"] = "burgershot_colab",
            ["label"] = "Kola",
            ["sugar-cubes"] = 1,
            ["carbonated-water"] = 1,
        },
        ["fanta"] = {
            ["itemname"] = "fanta",
            ["label"] = "Fanta",
            ["sugar-cubes"] = 1,
            ["carbonated-water"] = 1,
        },
       
    },
    ["burgershot"] = {
        ["burgershot_colab"] = {
            ["itemname"] = "burgershot_colab",
            ["label"] = "Kola",
            ["sugar-cubes"] = 1,
            ["carbonated-water"] = 1,
        },
        ["fanta"] = {
            ["itemname"] = "fanta",
            ["label"] = "Fanta",
            ["sugar-cubes"] = 1,
            ["carbonated-water"] = 1,
        },
    },
    ["serendipity"] = {
        ["burgershot_colab"] = {
            ["itemname"] = "burgershot_colab",
            ["label"] = "Kola",
            ["sugar-cubes"] = 1,
            ["carbonated-water"] = 1,
        },
        ["fanta"] = {
            ["itemname"] = "fanta",
            ["label"] = "Fanta",
            ["sugar-cubes"] = 1,
            ["carbonated-water"] = 1,
        },
       
    },
    ["tpc"] = {
        ["burgershot_colab"] = {
            ["itemname"] = "burgershot_colab",
            ["label"] = "Kola",
            ["sugar-cubes"] = 1,
            ["carbonated-water"] = 1,
        },
        ["bhotchoc"] = {
            ["itemname"] = "bhotchoc",
            ["label"] = "Sıcak Çikolata",
            ["sugar-cubes"] = 1,
            ["barra-chocolate"] = 1,
        },
        ["bhoneyhazelnutoatlatte"] = {
            ["itemname"] = "bhoneyhazelnutoatlatte",
            ["label"] = "Ballı Fındıklı Latte",  
            ["sugar-cubes"] = 1,
            ["graos-cafe"] = 1,
            ["pacote-leite"] = 1,
        },
        ["bstrawberrycreamfrappuccino"] = {
            ["itemname"] = "bstrawberrycreamfrappuccino",
            ["label"] = "Çilekli Köpüklü Frappuccino",  
            ["sugar-cubes"] = 1,
            ["graos-cafe"] = 1,
        },
        ["bicedcaffelatte"] = {
            ["itemname"] = "bicedcaffelatte",
            ["label"] = "Buzlu Latte",  
            ["sugar-cubes"] = 1,
            ["graos-cafe"] = 1,
            ["pacote-leite"] = 1,
        },
        ["bespresso"] = {
            ["itemname"] = "bespresso",
            ["label"] = "Espresso",  
            ["graos-cafe"] = 1,
        },
        ["bespressomacchiato"] = {
            ["itemname"] = "bespressomacchiato",
            ["label"] = "Espresso Macchiato",  
            ["graos-cafe"] = 1,
            ["sugar-cubes"] = 1,
        },
        ["bcoldbrewlatte"] = {
            ["itemname"] = "bcoldbrewlatte",
            ["label"] = "Cold Brew Latte",  
            ["graos-cafe"] = 1,
            ["sugar-cubes"] = 1,
            ["pacote-leite"] = 1,
        },     
    },

    ["uwu"] = {
        ["cafe-uwu"] = {
            ["itemname"] = "cafe-uwu",
            ["label"] = "Kahve",
            ["graos-cafe"] = 1,
        },
        ["latte-uwu"] = {
            ["itemname"] = "latte-uwu",
            ["label"] = "Latte",
            ["sugar-cubes"] = 1,
            ["graos-cafe"] = 1,
            ["pacote-leite"] = 1,
        },
        ["milkshake-morango"] = {
            ["itemname"] = "milkshake-morango",
            ["label"] = "Çilekli Milkshake",
            ["sugar-cubes"] = 1,
            ["pacote-leite"] = 1,
        },
        ["milkshake-chocolate"] = {
            ["itemname"] = "milkshake-chocolate",
            ["label"] = "Çikolatalı Milkshake",
            ["sugar-cubes"] = 1,
            ["pacote-leite"] = 1,
            ["barra-chocolate"] = 1,
        },
        ["bubble-amora"] = {
            ["itemname"] = "bubble-amora",
            ["label"] = "Böğürtlenli Bubble Tea",
            ["sugar-cubes"] = 1,
            ["pacote-leite"] = 1,
        },
        ["bubble-menta"] = {
            ["itemname"] = "bubble-menta",
            ["label"] = "Naneli Bubble Tea",
            ["sugar-cubes"] = 1,
            ["pacote-leite"] = 1,
        },
        ["bubble-morango"] = {
            ["itemname"] = "bubble-morango",
            ["label"] = "Çilekli Bubble Tea",
            ["sugar-cubes"] = 1,
            ["pacote-leite"] = 1,
        },   
    },
}