Config = {}
-- For more info check https://codem.gitbook.io/codem-documentation/

Config.Theme = 'mango' --  sky, blvck, cherry, kush, mango, proxima
Config.Logo = 'https://cdn.discordapp.com/attachments/1173713369920979024/1175822851077586995/coastpng.png?ex=656ca15d&is=655a2c5d&hm=e16c13f4ad609abe60d134caa311534fe39be41d78ab3c1a790bed98a4fa52b0&' -- Default or URL link
Config.BackgroundImage = 'https://wallpapercave.com/wp/wp5334264.jpg' -- default or custom image/video
-- Backgrounds can be found in html/assets/background/
-- Config.BackgroundImage = 'background.png'
Config.PlayMusicByDefault = false -- if true plays the music when loading screen is active

--html\assets\music
Config.Musics = {
    "music.mp3",
    "music-2.mp3",
    "music-3.mp3",

}

-- To display on left menu (must be an image)
-- Supports max 2 images
Config.AlbumsThumbnail = {
    {
        source = 'https://cdn.discordapp.com/attachments/1176191630936657920/1176209996615258202/Ekran_goruntusu_2023-08-22_121909.png?ex=656e09ec&is=655b94ec&hm=c198c3cf656ab6cbadfe9258817e2e3eadb8b54eafd8defbb94e8aae6b2e40fa&', -- Must be a link
    },
    {
        source = 'https://cdn.discordapp.com/attachments/1176191630936657920/1176209904797749289/2.png?ex=656e09d6&is=655b94d6&hm=3aa476c542052b1876600366c51bc85c10dca7f631b0ae7461fa8632ffb2c479&', -- Must be a link
    }
}

Config.Albums = {
    {
        source = 'https://cdn.discordapp.com/attachments/1176191630936657920/1176209958719725628/pd.png?ex=656e09e3&is=655b94e3&hm=7cba2dfb26bdddc33da1f4cbaac82769ad63dcc4f9d11dccb8700d4ed9fa09ba&', -- Must be a link
    },
    {
        source = 'EjaorVlUcn0'  -- Must be a link
    }
}


Config.EnableHintMessages = true
Config.HintMessages = {
    {
        text= ' Yeni arayüzlü ve altyapılı v1.75 güncellemesine hoşgeldiniz.',
        time= 8000,
    },
    {
        text= 'Şehirde sosyalleşmek için motele gidip eğlenebilirsiniz.',
        time= 3000,
    },
    {

        text= ' İllegal ve legal mesleklerden kazanç sağlayabilirsiniz. ',
        time= 1000,
    }
}


Config.ButtonLinks = {
    --["twitter"] = 'https://twitter.com',
   -- ["instagram"] = 'https://www.instagram.com/',
   -- ["reddit"] = 'https://www.reddit.com/',
    ["discord"] = 'https://discord.gg/coastv',
}

Config.ServerName = 'Coast V'

Config.Language = {
    ["WELCOME"] = 'Hoşgeldiniz',
    ["INSIDE_CITY"] = 'Coast V',
    ["FOOTAGES"] = 'Şehirden Son Görüntüler',
    ["PATCH_NOTES"] = 'Yama Notları',
    ["PATCH_NOTES_VERSION"] = 'Yama Notu v1.75',
    ["LATEST_UPDATES"] = 'Son Güncellme...',
    ["FOLLOW_CITY"] = 'Sosyal Medyalar!',


    ["CITY_LOADING"] = 'Lütfen Bekleyin, Giriş Yapılıyor...',
    ["SETTINGS"] = 'Ayarlar',
    ["ENABLE_MUSIC"] = 'Müziği Aç/Kapat',
    ["SHOW_MENU"] = 'Sol Menüyü Aç/Kapat',
    ["SHOW_HINT"] = 'İpuçlarını Aç/Kapat',
    ["SHOW_ALL"] = 'Bütün Göstergeleri Aç/Kapat',



    ["KEYBINDS_INFO"] = 'Sap Paneldeki Atamaları Görmek İçin Parlayan Tuşlara Tıklayınız.',
    ["KEYBINDS_INFO_2"] = 'Bazı tuş atamaları oyun ayarlarından değiştirilebilir. Bunları değiştirmek için',
    ["GO_TO"] = 'Gidin',
    ["FIVEM_SETTINGS"] = 'ESC>Settings>Keybindings>FiveM',
    ["PRESS"] = 'Tıkla',
    ["DOUBLE_PRESS"] = 'Çift Tıklama',
    ["COMBINATIONS"] = 'Kombinasyon',
    ["KEYBINDS_INFO_3"] = 'Bağlamayı görüntülemek için lütfen bir atanmış tuşa tıklayın.',
    ["KEYBINDS_INFO_4"] = 'Bunların ayar komutları olduğunu ve oyunda daha birçok komut olduğunu unutmayın.',

    ["COMMANDS"] = 'Komutlar',
    ["SHOW_ALL_UI"] = 'Bütün Komtları Göster',
    ["SELECT_COMMAND"] = 'Lütfen Bir Komut Seçiniz',
    ["DISPLAY_BINDING"] = 'Görüntü Ata',
    ["COMMANDS_INFO"] = 'Sağ panelde işlevi görmek için lütfen bir tuşa tıklayın.',
    ["HINT"] = 'İpucu',

}

Config.PatchNotes = {
    "Tüm arayüzler değiştirildi.",
    "Veritabanı altyapısında optimizasyona gidildi.",
    "Mekanik sistemleri değiştirildi.",
    "Araç handlingleri düzenlendi.",
}

Config.Keybinds = {
    ["ESC"] = false,
    ["F1"] = {
        ["pressInfo"] = 'Telefonu Açar',
        ["doublePressInfo"] = false,
    },
    ["F2"] = {
        ["pressInfo"] = 'Envanteri Araç',
        ["doublePressInfo"] = false,
    },
    ["F3"] = {
        ["pressInfo"] = 'İşlem Menüsünü Açar',
        ["doublePressInfo"] = false,
    },
    ["F4"] = {
        ["pressInfo"] = 'Animasyon Menüsünü Açar',
        ["doublePressInfo"] = false,
    },
    ["F5"] = false,
    ["F6"] = false,
    ["F7"] = false,
    ["F8"] = false,
    ["F9"] = false,
    ["F10"] = false,
    ["F11"] = false,
    ["F12"] = false,
    ["“"] = false,
    ["1"] = {
        ["pressInfo"] = 'Envanter Kısa Yolu',
    },
    ["2"] = {
        ["pressInfo"] = 'Envanter Kısa Yolu',

    },
    ["3"] = {
        ["pressInfo"] = 'Envanter Kısa Yolu',

    },
    ["4"] = {
        ["pressInfo"] = 'Envanter Kısa Yolu',

    },
    ["5"] = {
        ["pressInfo"] = 'Envanter Kısa Yolu',

    },
    ["6"] = false,
    ["7"] = false,
    ["8"] = false,
    ["9"] = false,
    ["0"] = false,
    ["-"] = false,
    ["+"] = false,
    ["BACKSPACE"] = false,
    ["TAB"] = false,
    ["Q"] = false,
    ["W"] = false,
    ["E"] = false,
    ["R"] = false,
    ["T"] = {
        ["pressInfo"] = 'Sohbeti Açar',
    },
    ["Y"] = false,
    ["U"] = false,
    ["I"] = false,
    ["O"] = false,
    ["P"] = false,
    ["["] = false,
    ["]"] = false,
    ["ENTER"] = false,
    ["CAPS"] = false,
    ["A"] = false,
    ["S"] = false,
    ["D"] = false,
    ["F"] = false,
    ["G"] = {
        ["pressInfo"]=  'Soyma',
    },
    ["H"] = false,
    ["J"] = false,
    ["K"] = {
        ["pressInfo"]=  'Kemer',
    },
    ["L"] =  {
        ["pressInfo"]=  'Araç Kilitleme',
    },
    [";"] =  false,
    ["@"] =  false,
    ["LSHIFT"] =  {
        ["pressInfo"] = 'Koşma',
        ["doublePressInfo"] = false,
        ["combinations"] = {
            {
                ["key"] = 'E',
                ["info"] = 'Araç İtme',
            },
        },
    },
    ["Z"] =  {
        ["pressInfo"]=  'Ses Seviyesi Değiştirme',
    },
    ["X"] =  {
        ["pressInfo"]=  'El Kaldırma Ve Animasyon İptali',
    },
    ["C"] = {
        ["pressInfo"]=  'Eğilme',
    },
    ["V"] =  {
        ["pressInfo"]=  'Görüş Açısı Değiştirme',
    },
    ["B"] =  false,
    ["N"] =  false,
    ["M"] =  false,
    ["<"] =  false,
    [">"] =  false,
    ["?"] =  false,
    ["RSHIFT"] =  false,
    ["LCTRL"] =  false,
    ["ALT"] =  false,
    ["SPACE"] = false,
    ["ALTGR"] = false,
    ["RCTRL"] = false,
}
-- add only 2 commands here
Config.PreviewCommands = {
    ["hud"]= 'Hud Ayarlarını Açar.',
    --["notify"]= 'Opens notify settings.',
}

Config.Commands = {
    -- ["notify"]= 'Opens notify settings.',
    ["invfix"]= 'Envanter Görünüm Sorununu Çözer.',
    ["f3fix"]= 'İşlem Menüsündeki Görünüm Sorununu Çözer.',
    ["report"]= 'Oyun içi Ticket Sistemi.',
    --["kill"]= 'Kills the player with specified id.',
    --["admin"]= 'Opens admin menu.',
    --["emotes"]= 'Opens emotes menu.',
    --["pet"]= 'Opens pet menu.',
    ["mdt"]= 'Polis Tabletini Açar.',
    --["repair"]= 'Fixes the vehicle you are driving.',
}



