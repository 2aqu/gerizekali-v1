Config = {}

Config.useModernUI = true               -- In March 2023 the jobs have passed huge rework, and the UI has been changed. Set it to false, to use OLD no longer supported UI.

Config.UseTarget = true                -- Set to true if you want to use Target System. You can configure your target under /client/target.lua file.
Config.UseBuiltInNotifications = true   -- Set to false if you want to use ur framework notification style. Otherwise, the built in modern notifications will be used.=
Config.RequiredJob = "none"             -- Set to "none" if you dont want using jobs. If you are using target, you have to set "job" parameter inside every export in target.lua
Config.RequireJobAlsoForFriends = true          -- If it's false, then only host needs to have the job, if it's true then everybody from group needs to have the Config.RequiredJob
Config.EnableVehicleTeleporting = true  -- If its true, then the script will teleport the host to the company vehicle. If its false, then the company vehicle will apeear, but the whole squad need to go enter the car manually
Config.GiveKeysToAllLobby = true                -- Set to false if you want to give keys only for group creator while starting job
Config.ProgressBarOffset = "25px"                   -- Value in px of counter offset on screen
Config.ProgressBarAlign = "bottom-right"            -- Align of the progressbar

-- ^ Options: top-left, top-center, top-right, bottom-left, bottom-center, bottom-right

Config.MinimumCoursesToMedium = 15      -- One course will give player one point. So if Config.MinimumCoursesToMedium = 15, then player will need to make first 15 easy courses
Config.MinimumCoursesToHard = 30        -- Same as above but with hard level :D
Config.EnableRedArrowMarker = true      -- Set to false to hide big red arrow over a target location
Config.ElectrocuteDamage = 10           -- How many dmg failed minigame will took 

Config.letBossSplitReward = true                    -- If it's true, then boss can manage whole party rewards percent in menu. If you'll set it to false, then everybody will get same amount.
Config.multiplyRewardWhileWorkingInGroup = true     -- If it's false, then reward will stay by default. For example $1000 for completing whole job. If you'll set it to true, then the payout will depend on how many players is there in the group. For example, if for full job there's $1000, then if player will work in 4 member group, the reward will be $4000. (baseReward * partyCount)

Config.RequireWorkClothes = false                   -- Set it to true, to change players clothes everytime when they're starting job.

Config.VehicleDeposit = 500           -- Deposit for the car collected at the time of pulling out, and refunded when returning the car

Config.DeleteVehicleWithPenalty = false         -- Delete Vehicle even if its not company veh

Config.RequiredItem = "none"                        -- Set it to anything you want, to require players to have some item in their inventory before they start the job
Config.RequireItemFromWholeTeam = true              -- If it's false, then only host needs to have the required item, otherwise all team needs it.

Config.RestrictBlipToRequiredJob = false            -- Set to true, to hide job blip for players, who dont have RequiredJob. If requried job is "none", then this option will not have any effect.
Config.Blips = {                        -- Here you can configure Job Blip
    [1] = {
        Sprite = 590,
        Color = 26,
        Scale = 0.8,
        Pos = vector3(751.06, 222.85, 87.42),
        Label = 'Elektrik Teknisyenliği'
    },
}

Config.Payments = {                    -- Reward for completing one level with a given difficulty level
    ["easy"] = 3000,
    ["medium"] = 4500,
    ["hard"] = 8000,
}

Config.RewardItemsToGive = {
    -- {
    --     item_name = "water",
    --     chance = 100,
    --     amountPerFix = 1,
    -- },
}


Config.MarkerSettings = {              -- used only when Config.UseTarget = false. Colors of the marker. Active = when player stands inside the marker.
    Active = {
        r = 132, 
        g = 64,
        b = 248,
        a = 200,
    },
    UnActive = {
        r = 17,
        g = 0,
        b = 247,
        a = 200,
    }
}

Config.SpawnPoint = vector4(804.57, 206.54, 81.2, 239.12)       -- Job Vehicle spawnpoint
Config.VehicleModel = "17mov_ElectricianCar"                    -- Job Vehicle model
Config.Locations = {                                            -- Here you can configure Markers Locations :D
    DutyToggle = {
        Coords = {
            vector3(751.06, 222.85, 87.42),
        },
        CurrentAction = 'open_dutyToggle',
        CurrentActionMsg = 'Press ~INPUT_CONTEXT~ to ~y~start/finish~s~ work.',
        type = 'duty',
        scale = {x = 1.0, y = 1.0, z = 1.0}
    },
    StoreVeh = {
        Coords = {
            vector3(804.57, 206.54, 81.2),
        },
        CurrentAction = 'finish_job',
        CurrentActionMsg = 'Press ~INPUT_CONTEXT~ to ~y~store ~s~car.',
        scale = {x = 3.0, y = 3.0, z = 3.0}
    },
}


Config.Lang = {

    -- Here you can changea all translations used in client.lua, and server.lua. Dont forget to translate it also under the HTML and JS file.

    -- Client
    ["keybind"] = 'Elektrikçi İşaretleme Etkileşimi',
    ["hostSuccess"] = "Tebrikler! Şimdi partnerinizin arızayı tamir etmesini bekleyin.",
    ["wrongCar"] = "Teminatı geri almak için bir şirket aracında olmalısınız!",
    ["AlreadyTaken"] = "Siz veya takımdan biri önce şirket aracını çıkardı!",
    ["nobodyAround"] = "Etrafında kimse yok!",
    ["cantInvite"] = "Daha fazla kişiyi davet edebilmek için önce işi bitirmeniz gerekiyor",
    ["kicked"] = "%s kişisini ekipten attınız",
    ["plyIsBusy"] = "Önceki siparişi tamamlayın.",
    ["leftTeam"] = "Ekipten ayrıldınız!",
    ["tooFar"] = "Ekip işe başladı, ancak siz merkezden çok uzaktasınız.",
    ["cantSpawn"] = "Kamyonun doğuş noktası meşgul.",
    ["waitingForReady"] = "Bir ortağın hazır olmasını bekliyor....",
    ["failedHostSide"] = "Ortağınız arızayı tamir edemedi. Başka bir sipariş almak için üsse gidin!",
    ["failedClientSide"] = "Arızayı tamir edemediniz. Başka bir sipariş almak için üsse gidin!",
    ["doneHostSide"] = "Ortağınız arızayı başarıyla tamir etti.",
    ["doneClientSide"] = "Arızayı başarıyla tamir ettiniz. İş tamamlandı.",
    ["dontGiveVehicle2ndTime"] = "Önceki arabayı iade etmedin, bu yüzden sana başka bir tane vermiyoruz!",
    ["turnOffVoltage"] = "Gerilimi kapat",
    ["FixFault"] = "Arızayı düzelt",
    ["no_permission"] = "Bunu sadece takım sahibi yapabilir",
    ["Leave"] = "Ayrıl",
    ["walkedAway"] = "Ortağınız gerilimi kapattı, ancak siz yerden uzaklaştınız. Devam etmek için yere geri dönün",
    ["spawnpointOccupied"] = "Aracın doğuş noktası meşgul",
    ["easyLevel"] = "Kolay",
    ["mediumLevel"] = "Orta",
    ["hardLevel"] = "Zor",
    ["notADriver"] = "İşi bitirmek için bir araç sürücüsü olmanız gerekiyor",
    ["inviteSent"] = "Davet Gönderildi!",
    ["wrongReward1"] = "Ödeme yüzdesi 0 ile 100 arasında olmalıdır",
    ["wrongReward2"] = "Tüm ödeme yüzdelerinin toplamı 100%'den fazla",
    ["partyIsFull"] = "Davet gönderilemedi, grubunuz dolu",
    ["cantLeaveLobby"] = "Çalışırken lobiden ayrılamazsınız. Önce işi bitirin.",
    

    -- Server
    ['PromotionMedium'] = 'Tebrikler! Patron sizi şirkette terfi ettirdi. Artık Orta zorluktaki siparişleri alabilirsiniz!',
    ['PromotionHard'] = 'Tebrikler! Patron sizi şirkette terfi ettirdi. Artık Zor siparişleri alabilirsiniz!',
    ['Promotion'] = 'Tebrikler! Patron sizi şirkette terfi ettirdi. Artık Zorlu siparişleri alabilirsiniz!',
    ['ReturnDeposit'] = 'Araç sahibinin depozitosu iade edildi!',
    ['Deposit'] = '$500 depozit toplandı',
    ["isAlreadyHost"] = "Bu oyuncu kendi ekibini yönetiyor.",
    ["isBusy"] = "Bu oyuncu zaten başka bir ekibe ait.",
    ["hasActiveInvite"] = "Bu oyuncunun zaten birinden aktif bir davetiyesi var.",
    ["HaveActiveInvite"] = "Zaten katılma davetiniz var.",
    ["InviteDeclined"] = "Davetiniz reddedildi.",
    ["InviteAccepted"] = "Davetiniz kabul edildi!",
    ["error"] = "Bir ekibe katılma konusunda bir problem oluştu. Lütfen daha sonra tekrar deneyin.",
    ["kickedOut"] = "Ekipten atıldınız!",
    ["reward"] = "Sizden $ miktarında bir ödeme alındı.",
    ["RequireOneFriend"] = "Bu iş için bir ekip üyesine ihtiyaç var",
    ["dontHaveReqItem"] = "Siz veya ekibinizden biri, işe başlamak için gerekli öğeye sahip değil.",
    ["penalty"] = "Bir ceza ödediniz, miktar: ",
    ["notEverybodyHasRequiredJob"] = "Arkadaşlarınızın her birinin gerekli işe sahip olmadığından emin olun.",
    ["dontHaveMoney"] = "Depozit ödemek için paranız yok",    
}

Config.EnableCloakroom = true                                 -- Set to false if you want to hide the "CLoakroom" button under WorkMenu
Config.Clothes = {
    male = {
        ["mask"] = {clotheId = 0, variation = 0},
        ["arms"] = {clotheId = 64, variation = 0},
        ["pants"] = {clotheId = 9, variation = 7},
        ["bag"] = {clotheId = 0, variation = 0},
        ["shoes"] = {clotheId = 25, variation = 0},
        ["t-shirt"] = {clotheId = 15, variation = 0},
        ["torso"] = {clotheId = 54, variation = 0},
        ["decals"] = {clotheId = 0, variation = 0},
        ["kevlar"] = {clotheId = 0, variation = 0},
    },

    female = {
        ["mask"] = {clotheId = 0, variation = 0},
        ["arms"] = {clotheId = 75, variation = 0},
        ["pants"] = {clotheId = 30, variation = 0},
        ["bag"] = {clotheId = 0, variation = 0},
        ["shoes"] = {clotheId = 25, variation = 0},
        ["t-shirt"] = {clotheId = 15, variation = 0},
        ["torso"] = {clotheId = 47, variation = 0},
        ["decals"] = {clotheId = 0, variation = 0},
        ["kevlar"] = {clotheId = 0, variation = 0},
    }
}

Config.JobLocations = {

    -- Here you can change, or add some targets locations for given difficulties:

    ["easy"] = {
        [1] = {
            [1] = vector3(195.31, -1476.15, 29.31),
            [2] = vector3(193.72, -1475.4, 29.31),
        },
        [2] = {
            [1] = vector3(58.09, -1433.78, 29.31),
            [2] = vector3(53.94, -1449.04, 29.31),
        },
        [3] = {
            [1] = vector3(-96.01, -1512.71, 33.73),
            [2] = vector3(-95.01, -1511.67, 33.72),
        },
        [4] = {
            [1] = vector3(-115.81, -1553.53, 33.95),
            [2] = vector3(-114.58, -1554.29, 33.91),
        },
        [5] = {
            [1] = vector3(-7.64, -1648.91, 29.32),
            [2] = vector3(-32.07, -1673.6, 29.49),
        },
        [6] = {
            [1] = vector3(-33.5, -1723.18, 29.29),
            [2] = vector3(-32.07, -1722.37, 29.29),
        },
        [7] = {
            [1] = vector3(59.26, -1734.47, 29.31),
            [2] = vector3(41.4, -1755.47, 29.3),
        },
        [8] = {
            [1] = vector3(33.72, -1764.82, 29.32),
            [2] = vector3(23.6, -1777.01, 29.33),
        },
        [9] = {
            [1] = vector3(75.61, -1895.55, 21.89),
            [2] = vector3(74.79, -1896.54, 21.79),
        },
        [10] = {
            [1] = vector3(-88.04, -1750.34, 29.54),
            [2] = vector3(-88.71, -1751.79, 29.76),
        },
        [11] = {
            [1] = vector3(-299.99, -932.17, 31.08),
            [2] = vector3(-301.53, -931.48, 31.08),
        },
        [12] = {
            [1] = vector3(-1182.37, -904.19, 13.46),
            [2] = vector3(-1181.77, -903.82, 13.48),
        },
        [13] = {
            [1] = vector3(-1254.73, -875.22, 12.17),
            [2] = vector3(-1253.91, -874.43, 12.19),
        },
        [14] = {
            [1] = vector3(-1255.61, -866.8, 12.3),
            [2] = vector3(-1267.87, -863.68, 22.28),
        }
    },

    ["medium"] = {
        [1] = {
            [1] = vector3(-1274.09, -850.47, 13.1),
            [2] = vector3(-1286.14, -834.59, 17.1),
        },
        [2] = {
            [1] = vector3(-1263.18, -818.07, 17.1),
            [2] = vector3(-1287.46, -791.12, 17.58),
        },
        [3] = {
            [1] = vector3(-1318.4, -799.73, 17.56),
            [2] = vector3(-1304.59, -803.61, 17.58),
        },
        [4] = {
            [1] = vector3(-1302.11, -775.62, 19.47),
            [2] = vector3(-1313.89, -764.16, 20.31),
        },
        [5] = {
            [1] = vector3(-1317.51, -759.52, 20.42),
            [2] = vector3(-1323.3, -744.39, 31.66),
        },
        [6] = {
            [1] = vector3(-1462.74, -684.9, 26.47),
            [2] = vector3(-1442.32, -690.56, 26.41),
        },
        [7] = {
            [1] = vector3(-1464.25, -683.63, 26.47),
            [2] = vector3(-1439.21, -687.91, 26.41),
        },
        [8] = {
            [1] = vector3(-1426.09, -643.47, 28.67),
            [2] = vector3(-1431.96, -628.8, 38.9),
        },
        [9] = {
            [1] = vector3(-1412.41, -634.54, 28.67),
            [2] = vector3(-1421.1, -618.03, 38.9),
        },
        [10] = {
            [1] = vector3(-7.77, -201.9, 52.61),
            [2] = vector3(2.05, -195.72, 58.64),
        },
        [11] = {
            [1] = vector3(-583.33, 197.39, 71.48),
            [2] = vector3(-583.62, 215.56, 75.74),
        },
        [12] = {
            [1] = vector3(-1163.5, -1551.52, 4.38),
            [2] = vector3(-1148.59, -1566.39, 4.43),
        },
        [13] = {
            [1] = vector3(-736.62, -1505.02, 5),
            [2] = vector3(-757.25, -1514.19, 5),
        },
        [14] = {
            [1] = vector3(209.73, -1854.54, 27.2),
            [2] = vector3(222.77, -1846.47, 31.22),
        },
    },
    ["hard"] = {
        [1] = {
            [1] = vector3(-599.73, 209.54, 74.17),
            [2] = vector3(-618.49, 212.3, 91.87),
        },
        [2] = {
            [1] = vector3(-591.4, 208.74, 74.17),
            [2] = vector3(-600.8, 213.78, 91.42),
        },
        [3] = {
            [1] = vector3(-114.87, -1036.81, 27.35),
            [2] = vector3(-115.31, -1036.52, 69.79),
        },
        [4] = {
            [1] = vector3(131.26, -347.19, 43.35),
            [2] = vector3(130.37, -347.48, 99.08),
        },
        [5] = {
            [1] = vector3(47.01, -463.69, 40.18),
            [2] = vector3(46.97, -462.64, 96.35),
        },
        [6] = {
            [1] = vector3(-252.91, -160.2, 78.34),
            [2] = vector3(-202.52, -232.84, 78.34),
        },
        [7] = {
            [1] = vector3(-1513.79, -887.61, 10.2),
            [2] = vector3(-1499.21, -897.68, 19.23),
        },
        [8] = {
            [1] = vector3(493.5, -937.63, 26.83),
            [2] = vector3(517.02, -970.87, 27.43),
        },
        [9] = {
            [1] = vector3(491.27, -1543.53, 28.28),
            [2] = vector3(489.67, -1537.61, 34.07),
        },
        [10] = {
            [1] = vector3(103.5, -1084.38, 29.19),
            [2] = vector3(118.57, -1093.17, 35.66),
        },
        [11] = {
            [1] = vector3(-322.86, -739.53, 33.96),
            [2] = vector3(-322.86, -739.38, 38.78),
        },
        [12] = {
            [1] = vector3(-139.26, -2496.25, 39.64),
            [2] = vector3(-141.77, -2494.38, 48.07),
        },
        [13] = {
            [1] = vector3(893.83, -1722.09, 32.16),
            [2] = vector3(898.61, -1713.28, 42.46),
        },
        [14] = {
            [1] = vector3(870.65, -1619.98, 30.33),
            [2] = vector3(875.58, -1628.07, 38.01),
        },
    },
}

