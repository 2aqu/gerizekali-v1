Config = {}

Config.useModernUI = true               -- In March 2023 the jobs have passed huge rework, and the UI has been changed. Set it to false, to use OLD no longer supported UI.
Config.splitReward = false          -- This option work's only when useModernUI is false. If this option is true, the payout is: (Config.OnePercentWorth * Progress ) / PartyCount, if false then: (Config.OnePercentWorth * Progress)
Config.UseBuiltInNotifications = true   -- Set to false if you want to use ur framework notification style. Otherwise, the built in modern notifications will be used.=

Config.letBossSplitReward = true                    -- If it's true, then boss can manage whole party rewards percent in menu. If you'll set it to false, then everybody will get same amount.
Config.multiplyRewardWhileWorkingInGroup = true     -- If it's false, then reward will stay by default. For example $1000 for completing whole job. If you'll set it to true, then the payout will depend on how many players is there in the group. For example, if for full job there's $1000, then if player will work in 4 member group, the reward will be $4000. (baseReward * partyCount)

Config.MailboxRenewalTime = 45000 * 60      -- Only one letter can be taken from one box. This is global, so if one player takes from one mailbox, then the next player can no longer take from it. This is the renewal time, in this case after 45 minutes you will be able to take letters from that particular mailbox again
Config.SyncMailboxStatus = true        -- If it's true, then when one player will collect letters from one box, then the second player will see information about the box is empty. If it's false, then every player has his own mailbox status. 
Config.Props = {
    --Props from which letters can be collected
    
    `prop_postbox_01a`,
    -- Add more if u want!
}

Config.UseTarget = true                        -- Change it to true if you want to use a target system. All setings about the target system are under target.lua file.
Config.RequiredJob = "none"                     -- Set to "none" if you dont want using jobs. If you are using target, you have to set "job" parameter inside every export in target.lua
Config.RequireJobAlsoForFriends = true          -- If it's false, then only host needs to have the job, if it's true then everybody from group needs to have the Config.RequiredJob
Config.RequiredItem = "none"                    -- Required Item needed to start the job. Set to "none", if you dont want to use RequiredItem
Config.RequireOneFriendMinimum = false          -- Set to true if you want to force players to create teams
Config.Scenario = "prop_human_parking_meter"    -- An animation that plays while searching a crate. Note: this must be a Scenario, not an animation
Config.JobVehicleModel = "17mov_PostmanCar"              -- Vehicle Job Model
Config.Price = 2                                -- 2$ per one letter

Config.RequireWorkClothes = false                   -- Set it to true, to change players clothes everytime when they're starting job.
Config.RequireItemFromWholeTeam = true              -- If it's false, then only host needs to have the required item, otherwise all team needs it.

Config.EnableVehicleTeleporting = true          -- If its true, then the script will teleport the host to the company vehicle. If its false, then the company vehicle will apeear, but the whole squad need to go enter the car manually
Config.PenaltyAmount = 500                      -- Penalty that is levied when a player finishes work without a company vehicle
Config.DontPayRewardWithoutVehicle = false      -- Set to true if you want to dont pay reward to players who want's to end without company vehicle (accepting the penalty)
Config.DeleteVehicleWithPenalty = false         -- Delete Vehicle even if its not company veh
Config.JobCooldown = 0 * 60 -- 10 * 60            -- 0 minutes cooldown between making jobs (in brackets there's example for 10 minutes)
Config.GiveKeysToAllLobby = true                -- Set to false if you want to give keys only for group creator while starting job
Config.ProgressBarOffset = "25px"                   -- Value in px of counter offset on screen
Config.ProgressBarAlign = "bottom-right"            -- Align of the progressbar

-- ^ Options: top-left, top-center, top-right, bottom-left, bottom-center, bottom-right

Config.RewardItemsToGive = {
    -- {
    --     item_name = "water",
    --     chance = 100,
    --     amountPerMailbox = 1,
    -- },
}

Config.RestrictBlipToRequiredJob = false            -- Set to true, to hide job blip for players, who dont have RequiredJob. If requried job is "none", then this option will not have any effect.
Config.Blips = {                                -- Here you can configure Company blip.
    [1] = {
        Sprite = 365,
        Color = 44,
        Scale = 0.8,
        Pos = vector3(-232.16, -915.15, 32.31),
        Label = 'Postacılık Mesleği'
    },
}

Config.MarkerSettings = {                       -- used only when Config.UseTarget = false. Colors of the marker. Active = when player stands inside the marker.
    Active = {
        r = 88, 
        g = 105,
        b = 255,
        a = 200,
    },
    UnActive = {
        r = 43,
        g = 57,
        b = 181,
        a = 200,
    }
}

Config.Locations = {                            -- Here u can change all of the base job locations. 
    DutyToggle = {
        Coords = {
            vector3(-232.16, -915.15, 32.31),
        },
        CurrentAction = 'open_dutyToggle',
        CurrentActionMsg = 'Press ~INPUT_CONTEXT~ to ~y~start/finish~s~ work.',
        type = 'duty',
        scale = {x = 1.0, y = 1.0, z = 1.0}
    },
    FinishJob = {
        Coords = {
            vector3(-276.66, -894.68, 31.08),
        },
        CurrentAction = 'finish_job',
        CurrentActionMsg = 'Press ~INPUT_CONTEXT~ to ~y~end ~s~working.',
        scale = {x = 3.0, y = 3.0, z = 3.0}
    },

}

Config.SpawnPoint = vector4(-276.66, -894.68, 31.08, 337.31)  -- Vehicle spawn point
Config.EnableCloakroom = true                                 -- Set to false if you want to hide the "CLoakroom" button under WorkMenu

Config.Clothes = {
    male = {
        ["mask"] = {clotheId = 0, variation = 0},
        ["arms"] = {clotheId = 0, variation = 0},
        ["pants"] = {clotheId = 10, variation = 0},
        ["bag"] = {clotheId = 0, variation = 0},
        ["shoes"] = {clotheId = 36, variation = 0},
        ["t-shirt"] = {clotheId = 15, variation = 0},
        ["torso"] = {clotheId = 250, variation = 0},
        ["decals"] = {clotheId = 0, variation = 0},
        ["kevlar"] = {clotheId = 0, variation = 0},
    },
    
    female = {
        ["mask"] = {clotheId = 0, variation = 0},
        ["arms"] = {clotheId = 14, variation = 0},
        ["pants"] = {clotheId = 6, variation = 0},
        ["bag"] = {clotheId = 0, variation = 0},
        ["shoes"] = {clotheId = 0, variation = 0},
        ["t-shirt"] = {clotheId = 15, variation = 0},
        ["torso"] = {clotheId = 258, variation = 0},
        ["decals"] = {clotheId = 0, variation = 0},
        ["kevlar"] = {clotheId = 0, variation = 0},
    }
}

Config.Lang = {

    -- Here you can changea all translations used in client.lua, and server.lua. Dont forget to translate it also under the HTML and JS file.

    -- Client
    ["no_permission"] = "Sadece parti sahibi bunu yapabilir!",
    ["keybind"] = 'Marker Etkileşimi',
    ["too_far"] = "Partiniz çalışmaya başladı, ama siz merkezden çok uzaksınız. Hala katılabilirsiniz.",
    ["kicked"] = "%s adlı kişiyi partiden attınız",
    ["alreadyWorking"] = "Önceki siparişi tamamlayın.",
    ["quit"] = "Takımdan ayrıldınız",
    ["cantSpawnVeh"] = "Araç spawn noktası dolu.",
    ["nobodyNearby"] = "Kimse etrafınızda değil",
    ["pickLetter"] = "Mektupları topla",
    ["checking"] = "Posta kutusunu kontrol ediyorsunuz",
    ["spawnpointOccupied"] = "Araç spawn noktası dolu",
    ["notADriver"] = "İşi bitirmek için bir araç sürücüsü olmalısınız",
    ["cantInvite"] = "Daha fazla kişiyi davet edebilmek için önce işi bitirmelisiniz",
    ["tutorial"] = "İş, posta kutularından mektup toplamayı içerir. Acele edin, bir posta kutusu belirli bir süre sonra sadece bir kez toplanabilir, rekabetin sizi geçmesine izin vermeyin! Bu posta kutularını ana yolların yakınında bulabilirsiniz.",
    ["wrongReward1"] = "Ödeme yüzdesi 0 ile 100 arasında olmalıdır",
    ["wrongReward2"] = "Tüm ödemelerin toplam yüzdesi 100%'ü aştı",
    ["partyIsFull"] = "Davet gönderilemedi, grup dolu",
    ["inviteSent"] = "Davet Gönderildi!",
    ["cantLeaveLobby"] = "İşteyken lobiden ayrılamazsınız. İlk önce işi bitirin.",
    
    
    -- Server
    ["isAlreadyHost"] = "Bu oyuncu zaten ekibini yönetiyor.",
    ["isBusy"] = "Bu oyuncu zaten başka bir ekibe ait.",
    ["hasActiveInvite"] = "Bu oyuncunun zaten birinden aktif bir davetiye var.",
    ["HaveActiveInvite"] = "Zaten katılmak için aktif bir davetiniz var.",
    ["InviteDeclined"] = "Davetiniz reddedildi.",
    ["InviteAccepted"] = "Davetiniz kabul edildi!",
    ["error"] = "Bir takıma katılma sorunu oluştu. Lütfen daha sonra tekrar deneyin.",
    ["kickedOut"] = "Takımdan atıldınız!",
    ["reward"] = "Ödeme olarak $ aldınız.",
    ["RequireOneFriend"] = "Bu iş için en az bir takım üyesi gerekiyor",
    ["deposit"] = "Araba için depozito toplandı",
    ["depositReturned"] = "Araba için depozito iade edildi",
    ["empty"] = "Bu posta kutusundan mektuplar zaten toplandı, daha sonra tekrar deneyin",
    ["collected"] = "Mektupları topladınız",
    ["broken"] = "Posta kutusu hasar gördü. Mektuplar ondan toplanamaz",
    ["dontHaveReqItem"] = "Sizde veya takımınızdaki bir kişide işe başlamak için gerekli öğe yok",
    ["penalty"] = "Ceza olarak ödeme yaptınız ",
    ["clientsPenalty"] = "Takım lideri cezayı kabul etti. Ödemenizi almadınız",
    ["notEverybodyHasRequiredJob"] = "Arkadaşlarınızın her biri gerekli işe sahip değil",
    ["someoneIsOnCooldown"] = "Siz veya takımınızdaki birisi şu anda işi yapamaz (bekleme süresi: %s)",
    ["hours"] = "s",
    ["minutes"] = "dk",
    ["seconds"] = "sn",    
} 