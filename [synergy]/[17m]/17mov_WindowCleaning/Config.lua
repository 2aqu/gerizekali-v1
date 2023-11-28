Config = {}

Config.useModernUI = true              -- In March 2023 the jobs have passed huge rework, and the UI has been changed. Set it to false, to use OLD no longer supported UI.
    Config.splitReward = true          -- This option work's only when useModernUI is false. If this option is true, the payout is: (Config.OnePercentWorth * Progress ) / PartyCount, if false then: (Config.OnePercentWorth * Progress)

Config.UseBuiltInNotifications = true   -- Set to false if you want to use ur framework notification style. Otherwise, the built in modern notifications will be used.=

Config.letBossSplitReward = true                    -- If it's true, then boss can manage whole party rewards percent in menu. If you'll set it to false, then everybody will get same amount.
Config.multiplyRewardWhileWorkingInGroup = true     -- If it's false, then reward will stay by default. For example $1000 for completing whole job. If you'll set it to true, then the payout will depend on how many players is there in the group. For example, if for full job there's $1000, then if player will work in 4 member group, the reward will be $4000. (baseReward * partyCount)

Config.DefaultBucket = 0                        -- Set here default bucket for your server. If you dont know what's it, leave it as 0.
Config.UseTarget = true                        -- Change it to true if you want to use a target system. All setings about the target system are under target.lua file.
Config.RequiredJob = "none"                     -- Set to "none" if you dont want using jobs. If you are using target, you have to set "job" parameter inside every export in target.lua
Config.RequireJobAlsoForFriends = true          -- If it's false, then only host needs to have the job, if it's true then everybody from group needs to have the Config.RequiredJob
Config.RequireOneFriendMinimum = false          -- Set to true if you want to force players to create teams

Config.JobVehicleModel = "17mov_WindowCar"                 -- Model of the company car
Config.EnableVehicleTeleporting = true          -- If its true, then the script will teleport the host to the company vehicle. If its false, then the company vehicle will apeear, but the whole squad need to go enter the car manually
Config.PenaltyAmount = 500                      -- Penalty that is levied when a player finishes work without a company vehicle
Config.DeleteVehicleWithPenalty = false         -- Delete Vehicle even if its not company veh
Config.DontPayRewardWithoutVehicle = false      -- Set to true if you want to dont pay reward to players who want's to end without company vehicle (accepting the penalty)
Config.JobCooldown = 0 * 60 -- 10 * 60            -- 0 minutes cooldown between making jobs (in brackets there's example for 10 minutes)
Config.GiveKeysToAllLobby = true                -- Set to false if you want to give keys only for group creator while starting job
Config.ProgressBarOffset = "25px"                   -- Value in px of counter offset on screen
Config.ProgressBarAlign = "bottom-right"            -- Align of the progressbar

-- ^ Options: top-left, top-center, top-right, bottom-left, bottom-center, bottom-right

Config.RewardItemsToGive = {
    -- {
    --     item_name = "water",
    --     chance = 100,
    --     amountPerWindow = 1,
    -- },
}

Config.HamperGoUpControl = 188                  -- Button with which the platform rises. See https://docs.fivem.net/docs/game-references/controls/ for more info
Config.HamperGoDownControl = 187                -- Button with which the platform lowers. ^^ 

Config.RequireWorkClothes = false                   -- Set it to true, to change players clothes everytime when they're starting job.
Config.RequiredItem = "none"                        -- Set it to anything you want, to require players to have some item in their inventory before they start the job
Config.RequireItemFromWholeTeam = true              -- If it's false, then only host needs to have the required item, otherwise all team needs it.

Config.RestrictBlipToRequiredJob = false            -- Set to true, to hide job blip for players, who dont have RequiredJob. If requried job is "none", then this option will not have any effect.
Config.Blips = { -- Here you can configure Company blip.
    [1] = {
        Sprite = 177,
        Color = 7,
        Scale = 0.8,
        Pos = vec3(-1243.98, -1240.71, 11.03),
        Label = 'Cam Temizliği'
    },
}

Config.MarkerSettings = {   -- used only when Config.UseTarget = false. Colors of the marker. Active = when player stands inside the marker.
    Active = {
        r = 13, 
        g = 227,
        b = 255,
        a = 200,
    },
    UnActive = {
        r = 13,
        g = 106,
        b = 255,
        a = 200,
    }
}


Config.WindowMarkerSetting = {
    -- 
    -- Here you can configure marker that is displaying on platform to clean window
    -- 
    unActiveColor = {163, 21, 21, 150},
    acviteColor = {255, 153, 20, 150},
    scale = {0.3, 0.3, 0.3},
    type = 2
}

Config.Locations = {       -- Here u can change all of the base job locations. 
    DutyToggle = {
        Coords = {
            vec3(-1243.98, -1240.71, 11.03),
        },
        CurrentAction = 'open_dutyToggle',
        CurrentActionMsg = 'Press ~INPUT_CONTEXT~ to ~y~start/finish~s~ work.',
        type = 'duty',
        scale = {x = 1.0, y = 1.0, z = 1.0}
    },
    FinishJob = {
        Coords = {
            vec3(-1231.34, -1225.93, 6.9),
        },
        CurrentAction = 'finish_job',
        CurrentActionMsg = 'Press ~INPUT_CONTEXT~ to ~y~end ~s~working.',
        scale = {x = 3.0, y = 3.0, z = 3.0}
    },

}

Config.SpawnPoint = vec4(-1231.34, -1225.93, 6.9, 73.52)  -- Company car spawn point

Config.Price = 15            -- Means $5 per one window, so the full reward depends on current location

Config.EnableCloakroom = true                                 -- if false, then you can't see the Cloakroom button under Work Menu
Config.Clothes = {
    male = {
        ["mask"] = {clotheId = 0, variation = 0},
        ["arms"] = {clotheId = 64, variation = 0},
        ["pants"] = {clotheId = 38, variation = 2},
        ["bag"] = {clotheId = 0, variation = 0},
        ["shoes"] = {clotheId = 25, variation = 0},
        ["t-shirt"] = {clotheId = 15, variation = 0},
        ["torso"] = {clotheId = 65, variation = 2},
        ["decals"] = {clotheId = 0, variation = 0},
        ["kevlar"] = {clotheId = 0, variation = 0},
    },
    
    female = {
        ["mask"] = {clotheId = 0, variation = 0},
        ["arms"] = {clotheId = 75, variation = 0},
        ["pants"] = {clotheId = 38, variation = 3},
        ["bag"] = {clotheId = 0, variation = 0},
        ["shoes"] = {clotheId = 25, variation = 0},
        ["t-shirt"] = {clotheId = 15, variation = 0},
        ["torso"] = {clotheId = 59, variation = 3},
        ["decals"] = {clotheId = 0, variation = 0},
        ["kevlar"] = {clotheId = 0, variation = 0},
    }
}

Config.Lang = {

    -- Here you can change all translations used in client.lua, and server.lua. Dont forget to translate it also under the HTML and JS file.

    -- Client
    ["no_permission"] = "Sadece parti sahibi bunu yapabilir!",
    ["keybind"] = 'Cam Temizleyici İşaretleme Etkileşimi',
    ["too_far"] = "Partiniz işe başladı, ancak merkezden çok uzaksınız.",
    ["kicked"] = "%s'yi partiden attınız",
    ["alreadyWorking"] = "Önceki görevi tamamlayın.",
    ["quit"] = "Takımdan ayrıldınız",
    ["nobodyNearby"] = "Etrafta kimse yok",
    ["enterPlatform"] = "Platforma gir ve işe başla",
    ["exitPlatform"] = "Platformdan çık",
    ["cleanWindowInfo"] = "Temizlemeye başlamak için ~INPUT_CONTEXT~ tuşuna basın",
    ["spawnpointOccupied"] = "Aracın doğuş noktası meşgul",
    ["notADriver"] = "İşi bitirmek için bir araç sürücüsü olmalısınız",
    ["someoneIsAlreadyCleaning"] = "Bu pencereyi zaten birisi temizliyor",
    ["cantInvite"] = "Daha fazla kişiyi davet etmek için önce işi bitirmelisiniz",
    ["wrongReward1"] = "Ödeme yüzdesi 0 ile 100 arasında olmalıdır",
    ["wrongReward2"] = "Tüm ödemelerin toplam yüzdesi 100%'ü aştı",
    ["tutorial1"] = "İş, apartman binalarının pencerelerini temizlemek. Mevcut işinizin konumu belirlendi. Siteye gidin ve orada işe başlayın. Çatıya çıktığınızda pencereleri temizlemeye başlayın. Ne zaman isterseniz işi bitirebilirsiniz, ödemeniz temizlediğiniz pencere sayısına bağlıdır. İşi bitirmek istediğinizde, ana üsse dönün ve şirket aracını geri verin. Tüm pencereleri temizledikten sonra maaşınızı almak için ana üsse gitmeniz gerekiyor",
    ["tutorial2"] = "Platformdasınız! Göreviniz, alttaki pencereleri temizlemektir. Takım sahibi klavyedeki ok tuşlarıyla platformu hareket ettirebilir. En üstte, platformdan inmek için kullanabileceğiniz bir metin var. Bu aynı zamanda takım üyelerinden biri düşerse acil çıkıştır. Bu düğmeyi bir kişi kullanarak tüm ekibi aşağı taşıyacaktır. Pencerenin temizlenmiş sayılabilmesi için yüzeyin en az %95'ini silmeniz gerekmektedir",
    ["partyIsFull"] = "Davet gönderilemedi, grup dolu",
    ["inviteSent"] = "Davet Gönderildi!",
    ["youCanControl"] = "Parti liderinizle bir sorun yaşandı. Bundan sonra sepeti kontrol edebilirsiniz",
    ["cantLeaveLobby"] = "İşte çalışırken lobiden ayrılamazsınız. Önce işi bitirin.",
    

    -- Server
    ["isAlreadyHost"] = "Bu oyuncu takımını yönetiyor.",
    ["isBusy"] = "Bu oyuncu zaten başka bir takıma aittir.",
    ["hasActiveInvite"] = "Bu Oyuncunun zaten birinden aktif bir davetiyesi var.",
    ["HaveActiveInvite"] = "Zaten aktif bir davetiniz var.",
    ["InviteDeclined"] = "Davetiniz reddedildi.",
    ["InviteAccepted"] = "Davetiniz kabul edildi!",
    ["error"] = "Bir takıma katılma konusunda bir sorun oluştu. Lütfen daha sonra tekrar deneyin.",
    ["kickedOut"] = "Takımdan atıldınız!",
    ["reward"] = "Ödeme olarak $ alındı.",
    ["RequireOneFriend"] = "Bu iş için en az bir takım üyesi gerekiyor.",
    ["penalty"] = "Miktarında bir ceza ödediniz ",
    ["clientsPenalty"] = "Takım lideri cezayı kabul etti. Ödemenizi alamadınız.",
    ["emergencyStop"] = "Takımın bir üyesi yaralandı. Sizi aşağı taşıdık.",
    ["tooFar"] = "Oyunculardan biri platformdan çok uzaklaştı. Sizi aşağı taşıdık.",
    ["dontHaveReqItem"] = "Sizde veya takımınızda gerekli eşya yok işe başlamak için",
    ["notEverybodyHasRequiredJob"] = "Arkadaşlarınızın her birinin gerekli işi yok",
    ["someoneIsOnCooldown"] = "Siz veya takımınızdaki birisi şu anda işi yapamaz (bekleme süresi: %s)",
    ["hours"] = "saat",
    ["minutes"] = "dakika",
    ["seconds"] = "saniye",    
}

Config.JobLocations = {
    {
        enterCoords = vec3(-664.21, 314.0, 83.09),              -- "[E] | To Enter Platform", coords of where people can get teleported to platform
        exitCoords = vec3(-643.98, 305.26, 140.23),             -- coords where people can get teleported back to enter coords
        hamperModel = "prop_bmu_02_ld",
        handleModel = "prop_bmu_02_ld_sup",
        hamperForwardOffsetFromHandle = 2.95,                   -- How long should be gap between handle and hamper. Leave default if you didnt change handle or hamper model
        handleCoords = vec3(-643.7225, 308.202667, 137.838364), -- Handle coords (somehere on roof)
        handleRotation = {
            x = 0.0,
            y = 0.0,
            z = -185.0,
        },
        hamperMaxZ = 140,                                       -- Maximum Z coord that hamper can go
        hamperMinZ = 95.3,                                      -- ^^ Same but minimum
        windowsLocations = {
            [1] = { coords = vector3(-646.47, 306.12, 138.6), dirty = true},
            [2] = { coords = vector3(-644.49, 305.84, 138.6), dirty = true},
            [3] = { coords = vector3(-640.55, 305.41, 138.6), dirty = true},
            [4] = { coords = vector3(-646.47, 306.12, 135.5), dirty = true},
            [5] = { coords = vector3(-642.5, 305.68, 135.5), dirty = true},
            [6] = { coords = vector3(-640.55, 305.41, 135.5), dirty = true},
            [7] = { coords = vector3(-646.47, 306.12, 132.2), dirty = true},
            [8] = { coords = vector3(-644.49, 305.84, 132.2), dirty = true},
            [9] = { coords = vector3(-642.5, 305.68, 132.2), dirty = true},
            [10] = { coords = vector3(-646.47, 306.12, 128.9), dirty = true},
            [11] = { coords = vector3(-644.49, 305.84, 128.9), dirty = true},
            [12] = { coords = vector3(-642.5, 305.68, 128.9), dirty = true},
            [13] = { coords = vector3(-646.47, 306.12, 125.6), dirty = true},
            [14] = { coords = vector3(-642.5, 305.68, 125.6), dirty = true},
            [15] = { coords = vector3(-640.55, 305.41, 125.6), dirty = true},
            [16] = { coords = vector3(-646.47, 306.12, 122.3), dirty = true},
            [17] = { coords = vector3(-644.49, 305.84, 122.3), dirty = true},
            [18] = { coords = vector3(-642.5, 305.68, 122.3), dirty = true},
            [19] = { coords = vector3(-644.49, 305.84, 119.0), dirty = true},
            [20] = { coords = vector3(-642.5, 305.68, 119.0), dirty = true},
            [21] = { coords = vector3(-640.55, 305.41, 119.0), dirty = true},
            [22] = { coords = vector3(-646.47, 306.12, 115.7), dirty = true},
            [23] = { coords = vector3(-642.5, 305.68, 115.7), dirty = true},
            [24] = { coords = vector3(-640.55, 305.41, 115.7), dirty = true},
            [25] = { coords = vector3(-644.49, 305.84, 112.4), dirty = true},
            [26] = { coords = vector3(-642.5, 305.68, 112.4), dirty = true},
            [27] = { coords = vector3(-640.55, 305.41, 112.4), dirty = true},
            [28] = { coords = vector3(-644.49, 305.84, 109.1), dirty = true},
            [29] = { coords = vector3(-642.5, 305.68, 109.1), dirty = true},
            [30] = { coords = vector3(-640.55, 305.41, 109.1), dirty = true},
            [31] = { coords = vector3(-646.47, 306.12, 105.8), dirty = true},
            [32] = { coords = vector3(-644.49, 305.84, 105.8), dirty = true},
            [33] = { coords = vector3(-640.55, 305.41, 105.8), dirty = true},
            [34] = { coords = vector3(-644.49, 305.84, 102.5), dirty = true},
            [35] = { coords = vector3(-642.5, 305.68, 102.5), dirty = true},
            [36] = { coords = vector3(-640.55, 305.41, 102.5), dirty = true},
            [37] = { coords = vector3(-646.47, 306.12, 99.2), dirty = true},
            [38] = { coords = vector3(-644.49, 305.84, 99.2), dirty = true},
            [39] = { coords = vector3(-640.55, 305.41, 99.2), dirty = true},
            [40] = { coords = vector3(-646.47, 306.12, 95.9), dirty = true},
            [41] = { coords = vector3(-644.49, 305.84, 95.9), dirty = true},
            [42] = { coords = vector3(-640.55, 305.41, 95.9), dirty = true},
        }
    },
    {
        enterCoords = vector3(375.37, -688.21, 29.26),             -- "[E] | To Enter Platform", coords of where people can get teleported to platform
        exitCoords = vector3(389.19, -687.66, 86.95),             -- coords where people can get teleported back to enter coords
        hamperModel = "prop_bmu_02_ld",
        handleModel = "prop_bmu_02_ld_sup",
        hamperForwardOffsetFromHandle = 2.95,                   -- How long should be gap between handle and hamper. Leave default if you didnt change handle or hamper model
        handleCoords = vec3(389.2303, -690.096863, 84.5583344),   -- Handle coords (somehere on roof)
        handleRotation = {
            x = 0.0,
            y = 0.0, 
            z = -5.0,
        },
        hamperMaxZ = 86.7896652,                                     -- Maximum Z coord that hamper can go
        hamperMinZ = 56.2210464,                                      -- ^^ Same but minimum
        windowsLocations = {
            [1] = { coords = vector3(387.47, -687.52, 76.03), dirty = true},
            [2] = { coords = vector3(389.46, -687.68, 76.03), dirty = true},
            [3] = { coords = vector3(391.45, -687.92, 76.03), dirty = true},
            [4] = { coords = vector3(387.47, -687.52, 72.23), dirty = true},
            [5] = { coords = vector3(389.46, -687.68, 72.23), dirty = true},
            [6] = { coords = vector3(391.45, -687.92, 72.23), dirty = true},
            [7] = { coords = vector3(387.47, -687.52, 68.43), dirty = true},
            [8] = { coords = vector3(389.46, -687.68, 68.43), dirty = true},
            [9] = { coords = vector3(391.45, -687.92, 68.43), dirty = true},
            [10] = { coords = vector3(387.47, -687.52, 64.63), dirty = true},
            [11] = { coords = vector3(389.46, -687.68, 64.63), dirty = true},
            [12] = { coords = vector3(391.45, -687.92, 64.63), dirty = true},
            [13] = { coords = vector3(387.47, -687.52, 60.83), dirty = true},
            [14] = { coords = vector3(389.46, -687.68, 60.83), dirty = true},
            [15] = { coords = vector3(391.45, -687.92, 60.83), dirty = true},
            [16] = { coords = vector3(387.47, -687.52, 57.03), dirty = true},
            [17] = { coords = vector3(389.46, -687.68, 57.03), dirty = true},
            [18] = { coords = vector3(391.45, -687.92, 57.03), dirty = true},
            [19] = { coords = vector3(391.04, -687.83, 80.86), dirty = true},
            [20] = { coords = vector3(389.51, -687.67, 80.86), dirty = true},
            [21] = { coords = vector3(387.71, -687.55, 80.86), dirty = true},
        }
    },

    {
        enterCoords = vector3(328.71, -994.45, 29.32),             -- "[E] | To Enter Platform", coords of where people can get teleported to platform
        exitCoords = vector3(338.23, -963.71, 80.83),             -- coords where people can get teleported back to enter coords
        hamperModel = "prop_bmu_02_ld",
        handleModel = "prop_bmu_02_ld_sup",
        hamperForwardOffsetFromHandle = 2.95,                   -- How long should be gap between handle and hamper. Leave default if you didnt change handle or hamper model
        handleCoords = vec3(337.035553, -966.0, 77.71907),   -- Handle coords (somehere on roof)
        handleRotation = {
            x = 0.0,
            y = 0.0, 
            z = -2.0,
        },
        hamperMaxZ = 79.92822,                                     -- Maximum Z coord that hamper can go
        hamperMinZ = 50.18641,                                      -- ^^ Same but minimum
        windowsLocations = {
            [1] = { coords = vector3(340.36, -963.55, 74.22), dirty = true},
            [2] = { coords = vector3(337.56, -963.6, 74.22), dirty = true},
            [3] = { coords = vector3(334.8, -963.49, 74.22), dirty = true},
            [4] = { coords = vector3(340.36, -963.55, 70.2), dirty = true},
            [5] = { coords = vector3(337.56, -963.6, 70.2), dirty = true},
            [6] = { coords = vector3(334.8, -963.49, 70.2), dirty = true},
            [7] = { coords = vector3(340.36, -963.55, 66.18), dirty = true},
            [8] = { coords = vector3(337.56, -963.6, 66.18), dirty = true},
            [9] = { coords = vector3(334.8, -963.49, 66.18), dirty = true},
            [10] = { coords = vector3(340.36, -963.55, 62.16), dirty = true},
            [11] = { coords = vector3(337.56, -963.6, 62.16), dirty = true},
            [12] = { coords = vector3(334.8, -963.49, 62.16), dirty = true},
            [13] = { coords = vector3(340.36, -963.55, 58.14), dirty = true},
            [14] = { coords = vector3(337.56, -963.6, 58.14), dirty = true},
            [15] = { coords = vector3(334.8, -963.49, 58.14), dirty = true},
            [16] = { coords = vector3(340.36, -963.55, 54.12), dirty = true},
            [17] = { coords = vector3(337.56, -963.6, 54.12), dirty = true},
            [18] = { coords = vector3(334.8, -963.49, 54.12), dirty = true},
            [19] = { coords = vector3(340.36, -963.55, 50.1), dirty = true},
            [20] = { coords = vector3(337.56, -963.6, 50.1), dirty = true},
            [21] = { coords = vector3(334.8, -963.49, 50.1), dirty = true},
        }
    },

    {
        enterCoords = vector3(-197.32, -831.39, 30.75),             -- "[E] | To Enter Platform", coords of where people can get teleported to platform
        exitCoords = vector3(-199.7, -858.87, 119.0),             -- coords where people can get teleported back to enter coords
        hamperModel = "prop_bmu_02_ld",
        handleModel = "prop_bmu_02_ld_sup",
        hamperForwardOffsetFromHandle = 2.95,                   -- How long should be gap between handle and hamper. Leave default if you didnt change handle or hamper model
        handleCoords = vec3(-202.228485, -857.9096, 116.418671),   -- Handle coords (somehere on roof)
        handleRotation = {
            x = 0.0,
            y = 0.0, 
            z = -110.0,
        },
        hamperMaxZ = 118.661781,                                     -- Maximum Z coord that hamper can go
        hamperMinZ = 77.2183151,                                      -- ^^ Same but minimum
        windowsLocations = {
            [1] = { coords = vector3(-200.64, -860.57, 116.06), dirty = true},
            [2] = { coords = vector3(-199.91, -858.61, 116.06), dirty = true},
            [3] = { coords = vector3(-198.44, -854.83, 116.06), dirty = true},
            [4] = { coords = vector3(-201.19, -862.31, 112.56), dirty = true},
            [5] = { coords = vector3(-199.91, -858.61, 112.56), dirty = true},
            [6] = { coords = vector3(-199.23, -856.74, 112.56), dirty = true},
            [7] = { coords = vector3(-199.91, -858.61, 109.06), dirty = true},
            [8] = { coords = vector3(-199.23, -856.74, 109.06), dirty = true},
            [9] = { coords = vector3(-198.44, -854.83, 109.06), dirty = true},
            [10] = { coords = vector3(-201.19, -862.31, 105.56), dirty = true},
            [11] = { coords = vector3(-200.64, -860.57, 105.56), dirty = true},
            [12] = { coords = vector3(-199.23, -856.74, 105.56), dirty = true},
            [13] = { coords = vector3(-199.91, -858.61, 102.06), dirty = true},
            [14] = { coords = vector3(-199.23, -856.74, 102.06), dirty = true},
            [15] = { coords = vector3(-198.44, -854.83, 102.06), dirty = true},
            [16] = { coords = vector3(-200.64, -860.57, 98.56), dirty = true},
            [17] = { coords = vector3(-199.23, -856.74, 98.56), dirty = true},
            [18] = { coords = vector3(-198.44, -854.83, 98.56), dirty = true},
            [19] = { coords = vector3(-201.19, -862.31, 95.06), dirty = true},
            [20] = { coords = vector3(-199.91, -858.61, 95.06), dirty = true},
            [21] = { coords = vector3(-198.44, -854.83, 95.06), dirty = true},
            [22] = { coords = vector3(-200.64, -860.57, 91.56), dirty = true},
            [23] = { coords = vector3(-199.91, -858.61, 91.56), dirty = true},
            [24] = { coords = vector3(-198.44, -854.83, 91.56), dirty = true},
            [25] = { coords = vector3(-201.19, -862.31, 88.06), dirty = true},
            [26] = { coords = vector3(-200.64, -860.57, 88.06), dirty = true},
            [27] = { coords = vector3(-199.91, -858.61, 88.06), dirty = true}, 
            [28] = { coords = vector3(-199.91, -858.61, 84.56), dirty = true},
            [29] = { coords = vector3(-199.23, -856.74, 84.56), dirty = true},
            [30] = { coords = vector3(-198.44, -854.83, 84.56), dirty = true},
            [31] = { coords = vector3(-201.19, -862.31, 81.06), dirty = true},
            [32] = { coords = vector3(-199.91, -858.61, 81.06), dirty = true},
            [33] = { coords = vector3(-199.23, -856.74, 81.06), dirty = true},
            [34] = { coords = vector3(-201.19, -862.31, 77.56), dirty = true},
            [35] = { coords = vector3(-200.64, -860.57, 77.56), dirty = true},
            [36] = { coords = vector3(-199.91, -858.61, 77.56), dirty = true},
        }
    },

    {
        enterCoords = vector3(-210.8, -723.29, 33.53),             -- "[E] | To Enter Platform", coords of where people can get teleported to platform
        exitCoords = vector3(-189.84, -757.97, 217.54),             -- coords where people can get teleported back to enter coords
        hamperModel = "prop_bmu_02_ld",
        handleModel = "prop_bmu_02_ld_sup",
        hamperForwardOffsetFromHandle = 2.95,                   -- How long should be gap between handle and hamper. Leave default if you didnt change handle or hamper model
        handleCoords = vec3(-189.0472, -755.655762, 215.131927),   -- Handle coords (somehere on roof)
        handleRotation = {
            x = 0.0,
            y = 0.0, 
            z = 160.0,
        },
        hamperMaxZ = 217.31929,                                     -- Maximum Z coord that hamper can go
        hamperMinZ = 160.698044,                                      -- ^^ Same but minimum
        windowsLocations = {
            [1] = { coords = vector3(-193.02, -756.86, 208.89), dirty = true},
            [2] = { coords = vector3(-191.82, -757.21, 208.89), dirty = true},
            [3] = { coords = vector3(-189.37, -758.03, 208.89), dirty = true},
            [4] = { coords = vector3(-193.02, -756.86, 204.89), dirty = true},
            [5] = { coords = vector3(-191.82, -757.21, 204.89), dirty = true},
            [6] = { coords = vector3(-190.65, -757.64, 204.89), dirty = true},
            [7] = { coords = vector3(-191.82, -757.21, 200.89), dirty = true},
            [8] = { coords = vector3(-190.65, -757.64, 200.89), dirty = true},
            [9] = { coords = vector3(-186.58, -759.23, 200.89), dirty = true},
            [10] = { coords = vector3(-191.82, -757.21, 196.89), dirty = true},
            [11] = { coords = vector3(-189.37, -758.03, 196.89), dirty = true},
            [12] = { coords = vector3(-187.84, -758.66, 196.89), dirty = true},
            [13] = { coords = vector3(-193.02, -756.86, 192.89), dirty = true},
            [14] = { coords = vector3(-189.37, -758.03, 192.89), dirty = true},
            [15] = { coords = vector3(-186.58, -759.23, 192.89), dirty = true},
            [16] = { coords = vector3(-193.02, -756.86, 188.89), dirty = true},
            [17] = { coords = vector3(-189.37, -758.03, 188.89), dirty = true},
            [18] = { coords = vector3(-186.58, -759.23, 188.89), dirty = true},
            [19] = { coords = vector3(-191.82, -757.21, 184.89), dirty = true},
            [20] = { coords = vector3(-189.37, -758.03, 184.89), dirty = true},
            [21] = { coords = vector3(-187.84, -758.66, 184.89), dirty = true},
            [22] = { coords = vector3(-191.82, -757.21, 180.89), dirty = true},
            [23] = { coords = vector3(-189.37, -758.03, 180.89), dirty = true},
            [24] = { coords = vector3(-187.84, -758.66, 180.89), dirty = true},
            [25] = { coords = vector3(-190.65, -757.64, 176.89), dirty = true},
            [26] = { coords = vector3(-189.37, -758.03, 176.89), dirty = true},
            [27] = { coords = vector3(-187.84, -758.66, 176.89), dirty = true},
            [28] = { coords = vector3(-191.82, -757.21, 172.89), dirty = true},
            [29] = { coords = vector3(-190.65, -757.64, 172.89), dirty = true},
            [30] = { coords = vector3(-187.84, -758.66, 172.89), dirty = true},
            [31] = { coords = vector3(-191.82, -757.21, 168.89), dirty = true},
            [32] = { coords = vector3(-190.65, -757.64, 168.89), dirty = true},
            [33] = { coords = vector3(-187.84, -758.66, 168.89), dirty = true},
            [34] = { coords = vector3(-193.02, -756.86, 164.89), dirty = true},
            [35] = { coords = vector3(-191.82, -757.21, 164.89), dirty = true},
            [36] = { coords = vector3(-189.37, -758.03, 164.89), dirty = true},
            [37] = { coords = vector3(-191.82, -757.21, 160.89), dirty = true},
            [38] = { coords = vector3(-189.37, -758.03, 160.89), dirty = true},
            [39] = { coords = vector3(-186.58, -759.23, 160.89), dirty = true},
        }
    },
    {
        enterCoords = vector3(109.5653, -637.0887, 44.2441),             -- "[E] | To Enter Platform", coords of where people can get teleported to platform
        exitCoords = vector3(130.1791, -669.6287, 252.4651),             -- coords where people can get teleported back to enter coords
        hamperModel = "prop_bmu_02_ld",
        handleModel = "prop_bmu_02_ld_sup",
        hamperForwardOffsetFromHandle = 2.95,                   -- How long should be gap between handle and hamper. Leave default if you didnt change handle or hamper model
        handleCoords = vec3(126.9280, -666.1933, 250.1501),   -- Handle coords (somehere on roof)
        handleRotation = {
            x = 0.0,
            y = 0.0, 
            z = 170.0,
        },
        hamperMaxZ = 252.21929,                                     -- Maximum Z coord that hamper can go
        hamperMinZ = 197.698044,                                      -- ^^ Same but minimum
        windowsLocations = {
            [1] = { coords = vector3(129.6522, -669.5507, 247.2810), dirty = true},
            [2] = { coords = vector3(127.5557, -669.1326, 247.2810), dirty = true},
            [3] = { coords = vector3(125.6129, -668.8827, 247.2810), dirty = true},
            [4] = { coords = vector3(123.2881, -668.5654, 247.2810), dirty = true},
            [5] = { coords = vector3(127.5557, -669.1326, 243.2810), dirty = true},
            [6] = { coords = vector3(125.6129, -668.8827, 243.2810), dirty = true},
            [7] = { coords = vector3(123.2881, -668.5654, 243.2810), dirty = true},
            [8] = { coords = vector3(129.6522, -669.5507, 239.2810), dirty = true},
            [9] = { coords = vector3(125.6129, -668.8827, 239.2810), dirty = true},
            [10] = { coords = vector3(123.2881, -668.5654, 239.2810), dirty = true},
            [11] = { coords = vector3(129.6522, -669.5507, 235.2810), dirty = true},
            [12] = { coords = vector3(127.5557, -669.1326, 235.2810), dirty = true},
            [13] = { coords = vector3(123.2881, -668.5654, 235.2810), dirty = true},
            [14] = { coords = vector3(127.5557, -669.1326, 231.2810), dirty = true},
            [15] = { coords = vector3(125.6129, -668.8827, 231.2810), dirty = true},
            [16] = { coords = vector3(123.2881, -668.5654, 231.2810), dirty = true},
            [17] = { coords = vector3(129.6522, -669.5507, 227.2810), dirty = true},
            [18] = { coords = vector3(125.6129, -668.8827, 227.2810), dirty = true},
            [19] = { coords = vector3(123.2881, -668.5654, 227.2810), dirty = true},
            [20] = { coords = vector3(127.5557, -669.1326, 223.2810), dirty = true},
            [21] = { coords = vector3(125.6129, -668.8827, 223.2810), dirty = true},
            [22] = { coords = vector3(123.2881, -668.5654, 223.2810), dirty = true},
            [23] = { coords = vector3(127.5557, -669.1326, 219.2810), dirty = true},
            [24] = { coords = vector3(125.6129, -668.8827, 219.2810), dirty = true},
            [25] = { coords = vector3(123.2881, -668.5654, 219.2810), dirty = true},
            [27] = { coords = vector3(129.6522, -669.5507, 215.2810), dirty = true},
            [28] = { coords = vector3(125.6129, -668.8827, 215.2810), dirty = true},
            [29] = { coords = vector3(123.2881, -668.5654, 215.2810), dirty = true},
            [30] = { coords = vector3(127.5557, -669.1326, 211.2810), dirty = true},
            [31] = { coords = vector3(125.6129, -668.8827, 211.2810), dirty = true},
            [32] = { coords = vector3(123.2881, -668.5654, 211.2810), dirty = true},
            [33] = { coords = vector3(129.6522, -669.5507, 207.2810), dirty = true},
            [34] = { coords = vector3(127.5557, -669.1326, 207.2810), dirty = true},
            [35] = { coords = vector3(125.6129, -668.8827, 207.2810), dirty = true},
            [36] = { coords = vector3(123.2881, -668.5654, 207.2810), dirty = true},
            [37] = { coords = vector3(129.6522, -669.5507, 203.2810), dirty = true},
            [38] = { coords = vector3(125.6129, -668.8827, 203.2810), dirty = true},
            [39] = { coords = vector3(123.2881, -668.5654, 203.2810), dirty = true},
            [40] = { coords = vector3(127.5557, -669.1326, 199.2810), dirty = true},
            [41] = { coords = vector3(125.6129, -668.8827, 199.2810), dirty = true},
            [42] = { coords = vector3(123.2881, -668.5654, 199.2810), dirty = true},
        }
    },
    
    {
        enterCoords = vector3(5.7248, -705.5075, 45.9730),              -- "[E] | To Enter Platform", coords of where people can get teleported to platform
        exitCoords = vector3(22.7237, -673.1738, 251.6654),             -- coords where people can get teleported back to enter coords
        hamperModel = "prop_bmu_02_ld",
        handleModel = "prop_bmu_02_ld_sup",
        hamperForwardOffsetFromHandle = 2.95,                   -- How long should be gap between handle and hamper. Leave default if you didnt change handle or hamper model
        handleCoords = vec3(25.2413, -677.2581, 249.4135),   -- Handle coords (somehere on roof)
        handleRotation = {
            x = 0.0,
            y = 0.0, 
            z = 339.0,
        },
        hamperMaxZ = 252.01929,                                     -- Maximum Z coord that hamper can go
        hamperMinZ = 201.698044,                                      -- ^^ Same but minimum
        windowsLocations = {
            [1] = { coords = vector3(24.3302, -673.7035, 247.5607), dirty = true},
            [2] = { coords = vector3(26.1217, -674.4473, 247.5607), dirty = true},
            [3] = { coords = vector3(27.8411, -675.0820, 247.5607), dirty = true},
            [4] = { coords = vector3(28.9976, -675.5509, 247.5607), dirty = true},
            [5] = { coords = vector3(28.9976, -675.5509, 243.5607), dirty = true},
            [6] = { coords = vector3(27.8411, -675.0820, 243.5607), dirty = true},
            [7] = { coords = vector3(24.3302, -673.7035, 243.5607), dirty = true},
            [8] = { coords = vector3(24.3302, -673.7035, 239.5607), dirty = true},
            [9] = { coords = vector3(26.1217, -674.4473, 239.5607), dirty = true},
            [10] = { coords = vector3(28.9976, -675.5509, 239.5607), dirty = true},
            [11] = { coords = vector3(26.1217, -674.4473, 235.5607), dirty = true},
            [12] = { coords = vector3(27.8411, -675.0820, 235.5607), dirty = true},
            [13] = { coords = vector3(28.9976, -675.5509, 235.5607), dirty = true},
            [14] = { coords = vector3(24.3302, -673.7035, 231.5607), dirty = true},
            [15] = { coords = vector3(26.1217, -674.4473, 231.5607), dirty = true},
            [16] = { coords = vector3(28.9976, -675.5509, 231.5607), dirty = true},
            [17] = { coords = vector3(28.9976, -675.5509, 227.5607), dirty = true},
            [18] = { coords = vector3(27.8411, -675.0820, 227.5607), dirty = true},
            [19] = { coords = vector3(24.3302, -673.7035, 227.5607), dirty = true},
            [20] = { coords = vector3(28.9976, -675.5509, 223.5607), dirty = true},
            [21] = { coords = vector3(27.8411, -675.0820, 223.5607), dirty = true},
            [22] = { coords = vector3(24.3302, -673.7035, 223.5607), dirty = true},
            [23] = { coords = vector3(24.3302, -673.7035, 219.5607), dirty = true},
            [24] = { coords = vector3(26.1217, -674.4473, 219.5607), dirty = true},
            [25] = { coords = vector3(28.9976, -675.5509, 219.5607), dirty = true},
            [26] = { coords = vector3(26.1217, -674.4473, 215.5607), dirty = true},
            [27] = { coords = vector3(27.8411, -675.0820, 215.5607), dirty = true},
            [28] = { coords = vector3(28.9976, -675.5509, 215.5607), dirty = true},
            [29] = { coords = vector3(24.3302, -673.7035, 211.5607), dirty = true},
            [30] = { coords = vector3(26.1217, -674.4473, 211.5607), dirty = true},
            [31] = { coords = vector3(28.9976, -675.5509, 211.5607), dirty = true},
            [32] = { coords = vector3(28.9976, -675.5509, 207.5607), dirty = true},
            [33] = { coords = vector3(27.8411, -675.0820, 207.5607), dirty = true},
            [34] = { coords = vector3(24.3302, -673.7035, 207.5607), dirty = true},
            [35] = { coords = vector3(24.3302, -673.7035, 203.5607), dirty = true},
            [36] = { coords = vector3(26.1217, -674.4473, 203.5607), dirty = true},
            [37] = { coords = vector3(27.8411, -675.0820, 203.5607), dirty = true},
            [38] = { coords = vector3(28.9976, -675.5509, 203.5607), dirty = true},
        }
    },
    
    {
        enterCoords = vector3(-875.1889, -2110.3457, 9.9181),              -- "[E] | To Enter Platform", coords of where people can get teleported to platform
        exitCoords = vector3(-860.7228, -2110.9272, 97.2318),             -- coords where people can get teleported back to enter coords
        hamperModel = "prop_bmu_02_ld",
        handleModel = "prop_bmu_02_ld_sup",
        hamperForwardOffsetFromHandle = 2.95,                   -- How long should be gap between handle and hamper. Leave default if you didnt change handle or hamper model
        handleCoords = vec3(-860.0433, -2115.9990, 95.2579),   -- Handle coords (somehere on roof)
        handleRotation = {
            x = 0.0,
            y = 0.0, 
            z = 316.0,
        },
        hamperMaxZ = 97.01929,                                     -- Maximum Z coord that hamper can go
        hamperMinZ = 45.698044,                                      -- ^^ Same but minimum
        windowsLocations = {
            [1] = { coords = vector3(-860.9058, -2111.0933, 86.9263), dirty = true},
            [2] = { coords = vector3(-858.9357, -2112.7170, 86.9263), dirty = true},
            [3] = { coords = vector3(-856.9412, -2114.5820, 86.9263), dirty = true},
            [4] = { coords = vector3(-855.1094, -2116.4478, 82.9263), dirty = true},
            [5] = { coords = vector3(-860.9058, -2111.0933, 82.9263), dirty = true},
            [6] = { coords = vector3(-856.9412, -2114.5820, 82.9263), dirty = true},
            [7] = { coords = vector3(-855.1094, -2116.4478, 78.9263), dirty = true},
            [8] = { coords = vector3(-860.9058, -2111.0933, 78.9263), dirty = true},
            [9] = { coords = vector3(-858.9357, -2112.7170, 78.9263), dirty = true},
            [10] = { coords = vector3(-855.1094, -2116.4478, 74.9263), dirty = true},
            [11] = { coords = vector3(-858.9357, -2112.7170, 74.9263), dirty = true},
            [12] = { coords = vector3(-856.9412, -2114.5820, 74.9263), dirty = true},
            [13] = { coords = vector3(-855.1094, -2116.4478, 70.9263), dirty = true},
            [14] = { coords = vector3(-860.9058, -2111.0933, 70.9263), dirty = true},
            [15] = { coords = vector3(-858.9357, -2112.7170, 70.9263), dirty = true},
            [16] = { coords = vector3(-856.9412, -2114.5820, 66.9263), dirty = true},
            [17] = { coords = vector3(-860.9058, -2111.0933, 66.9263), dirty = true},
            [18] = { coords = vector3(-856.9412, -2114.5820, 66.9263), dirty = true},
            [19] = { coords = vector3(-855.1094, -2116.4478, 62.9263), dirty = true},
            [20] = { coords = vector3(-860.9058, -2111.0933, 62.9263), dirty = true},
            [22] = { coords = vector3(-858.9357, -2112.7170, 62.9263), dirty = true},
            [23] = { coords = vector3(-855.1094, -2116.4478, 58.9263), dirty = true},
            [24] = { coords = vector3(-858.9357, -2112.7170, 58.9263), dirty = true},
            [25] = { coords = vector3(-856.9412, -2114.5820, 58.9263), dirty = true},
            [26] = { coords = vector3(-855.1094, -2116.4478, 54.9263), dirty = true},
            [27] = { coords = vector3(-860.9058, -2111.0933, 54.9263), dirty = true},
            [28] = { coords = vector3(-858.9357, -2112.7170, 54.9263), dirty = true},
            [29] = { coords = vector3(-856.9412, -2114.5820, 50.9263), dirty = true},
            [30] = { coords = vector3(-860.9058, -2111.0933, 50.9263), dirty = true},
            [31] = { coords = vector3(-858.9357, -2112.7170, 50.9263), dirty = true},
            [32] = { coords = vector3(-856.9412, -2114.5820, 46.9263), dirty = true},
            [33] = { coords = vector3(-860.9058, -2111.0933, 46.9263), dirty = true},
            [34] = { coords = vector3(-858.9357, -2112.7170, 46.9263), dirty = true},
        }
    },
}