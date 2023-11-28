Config = {}

Config.useModernUI = true               -- In March 2023 the jobs have passed huge rework, and the UI has been changed. Set it to false, to use OLD no longer supported UI.
Config.splitReward = false          --


Config.UseBuiltInNotifications = true   -- Set to false if you want to use ur framework notification style. Otherwise, the built in modern notifications will be used.=
Config.letBossSplitReward = true                    -- If it's true, then boss can manage whole party rewards percent in menu. If you'll set it to false, then everybody will get same amount.
Config.multiplyRewardWhileWorkingInGroup = true     -- If it's false, then reward will stay by default. For example $1000 for completing whole job. If you'll set it to true, then the payout will depend on how many players is there in the group. For example, if for full job there's $1000, then if player will work in 4 member group, the reward will be $4000. (baseReward * partyCount)
Config.Price = 35            -- Price per one bag inside trashmaster. 100 is maximum so full trash = 200$ / partyCount

Config.UseTarget = true                 -- Change it to true if you want to use a target system. All setings about the target system are under target.lua file.
Config.RequiredJob = "none"             -- Set to "none" if you dont want using jobs. If you are using target, you have to set "job" parameter inside every export in target.lua
Config.RequireJobAlsoForFriends = true          -- If it's false, then only host needs to have the job, if it's true then everybody from group needs to have the Config.RequiredJob
Config.RequireOneFriendMinimum = false  -- Set to true if you want to force players to create teams
Config.EnableGamePoolDeleting = true    -- Set to false only when using old versions of FXServer. May cause bag removal errors

Config.JobVehicleModel = "trash"                -- Model of the company car
Config.VehicleBackBone = "seat_dside_r1"        -- Bone used only when Config.UseTarget = false. 3D text is displayed on the coordinates of this bone telling us to put the bag in the trunk
Config.VehicleBackBoneCenter = "brakelight_l"   -- Bone used only when Config.UseTarget = false. On the cords of this bone, a player walks up to throw the bag
Config.PenaltyAmount = 500                      -- Penalty that is levied when a player finishes work without a company vehicle
Config.DeleteVehicleWithPenalty = false         -- Delete Vehicle even if its not company veh
Config.DontPayRewardWithoutVehicle = false      -- Set to true if you want to dont pay reward to players who want's to end without company vehicle (accepting the penalty)
Config.EnableVehicleTeleporting = true          -- If its true, then the script will teleport the host to the company vehicle. If its false, then the company vehicle will apeear, but the whole squad need to go enter the car manually
Config.JobCooldown = 0 * 60 -- 10 * 60            -- 0 minutes cooldown between making jobs (in brackets there's example for 10 minutes)
Config.GiveKeysToAllLobby = true                -- Set to false if you want to give keys only for group creator while starting job
Config.ProgressBarOffset = "25px"                   -- Value in px of counter offset on screen
Config.ProgressBarAlign = "bottom-right"            -- Align of the progressbar

-- ^ Options: top-left, top-center, top-right, bottom-left, bottom-center, bottom-right

Config.RewardItemsToGive = {
    -- {
    --     item_name = "water",
    --     chance = 100,
    --     amountPerBag = 1,
    -- },
}

Config.EnableExploitFix = false                     -- If somebody is close to you, you'll not able to pick up bag. This will prevent exploit of copying bugs but will be also annoying
Config.RequiredItem = "none"                        -- Set it to anything you want, to require players to have some item in their inventory before they start the job
Config.RequireItemFromWholeTeam = true              -- If it's false, then only host needs to have the required item, otherwise all team needs it.

Config.RequireFullJob = false                       -- Set it to true, if you want players first to have 100% of progress, otherwise they'll not be able to end job.
Config.RequireWorkClothes = false                   -- Set it to true, to change players clothes everytime when they're starting job.

Config.RestrictBlipToRequiredJob = false            -- Set to true, to hide job blip for players, who dont have RequiredJob. If requried job is "none", then this option will not have any effect.
Config.Blips = { -- Here you can configure Company blip.
    [1] = {
        Sprite = 318,
        Color = 52,
        Scale = 0.8,
        Pos = vector3(-321.56, -1545.74, 30.01),
        Label = 'Çevre Temizliği'
    },
}

Config.PropsHashes = {      -- Hashes of bags that we can pick up
    `bkr_prop_fakeid_binbag_01`,
	`hei_prop_heist_binbag`,
	`prop_cs_rub_binbag_01`,
	`prop_cs_street_binbag_01`,
	`prop_ld_rub_binbag_01`,
	`prop_rub_binbag_01`,
	`prop_rub_binbag_04`,
	`prop_rub_binbag_05`,
	`prop_rub_binbag_sd_01`,
	`prop_rub_binbag_sd_02`,
	`p_binbag_01_s`,
    `p_rub_binbag_test`,
    `prop_rub_binbag_06`,
	`prop_rub_binbag_08`, 
    `prop_rub_binbag_01b`,
	`prop_rub_binbag_03`,
	`prop_rub_binbag_03b`,
}

Config.Rotations = {       -- Used with the AttachEntityToEntity() function, when you pick up a bag, it will hook onto the specified values:
    [`bkr_prop_fakeid_binbag_01`] = { boneIndex = 6286, xPos = 0.0, yPos = 0, zPos = -0.6, xRot = -90, yRot = 0, zRot = 0, p9 = true, useSoft = true, collision = false, isPed = true, vertexIndex = 1, fixedRot = false, counterValue = 1},
	[`hei_prop_heist_binbag`] = { boneIndex = 6286, xPos = 0.0, yPos = 0, zPos = -0.05, xRot = -90, yRot = 0, zRot = 0, p9 = true, useSoft = true, collision = false, isPed = true, vertexIndex = 1, fixedRot = false, counterValue = 1},
	[`prop_cs_rub_binbag_01`] = { boneIndex = 6286, xPos = 0.0, yPos = 0, zPos = -0.04, xRot = -90, yRot = 0, zRot = 0, p9 = true, useSoft = true, collision = false, isPed = true, vertexIndex = 1, fixedRot = false, counterValue = 1},
	[`prop_cs_street_binbag_01`] = { boneIndex = 6286, xPos = 0.0, yPos = 0, zPos = -0.44, xRot = -90, yRot = 0, zRot = 0, p9 = true, useSoft = true, collision = false, isPed = true, vertexIndex = 1, fixedRot = false, counterValue = 1},
	[`prop_ld_rub_binbag_01`] = { boneIndex = 6286, xPos = 0.0, yPos = 0, zPos = -0.44, xRot = -90, yRot = 0, zRot = 0, p9 = true, useSoft = true, collision = false, isPed = true, vertexIndex = 1, fixedRot = false, counterValue = 1},
	[`prop_rub_binbag_01`] = { boneIndex = 6286, xPos = 0.0, yPos = -0.18, zPos = -0.44, xRot = -90, yRot = 0, zRot = 0, p9 = true, useSoft = true, collision = false, isPed = true, vertexIndex = 1, fixedRot = false, counterValue = 1},
	[`prop_rub_binbag_04`] = { boneIndex = 6286, xPos = 0.0, yPos = 0, zPos = -1.0, xRot = -90, yRot = 0, zRot = 0, p9 = true, useSoft = true, collision = false, isPed = true, vertexIndex = 1, fixedRot = false, counterValue = 1},
	[`prop_rub_binbag_05`] = { boneIndex = 6286, xPos = 0.0, yPos = 0, zPos = -0.64, xRot = -90, yRot = 0, zRot = 0, p9 = true, useSoft = true, collision = false, isPed = true, vertexIndex = 1, fixedRot = false, counterValue = 1},
	[`prop_rub_binbag_sd_01`] = { boneIndex = 6286, xPos = 0.0, yPos = 0, zPos = -0.44, xRot = -90, yRot = 0, zRot = 0, p9 = true, useSoft = true, collision = false, isPed = true, vertexIndex = 1, fixedRot = false, counterValue = 1},
	[`prop_rub_binbag_sd_02`] = { boneIndex = 6286, xPos = 0.0, yPos = -0.12, zPos = -0.44, xRot = -90, yRot = 0, zRot = 0, p9 = true, useSoft = true, collision = false, isPed = true, vertexIndex = 1, fixedRot = false, counterValue = 1},
	[`p_binbag_01_s`] = { boneIndex = 6286, xPos = 0.0, yPos = 0, zPos = -0.44, xRot = -90, yRot = 0, zRot = 0, p9 = true, useSoft = true, collision = false, isPed = true, vertexIndex = 1, fixedRot = false, counterValue = 1},
    [`p_rub_binbag_test`] = { boneIndex = 6286, xPos = 0.0, yPos = 0, zPos = -0.44, xRot = -90, yRot = 0, zRot = 0, p9 = true, useSoft = true, collision = false, isPed = true, vertexIndex = 1, fixedRot = false, counterValue = 1},
    [`prop_rub_binbag_06`] = { boneIndex = 6286, xPos = 0, yPos = -0.10, zPos = -0.44, xRot = -90, yRot = 0, zRot = 0, p9 = true, useSoft = true, collision = false, isPed = true, vertexIndex = 1, fixedRot = false, counterValue = 1},
	[`prop_rub_binbag_08`] = { boneIndex = 6286, xPos = 0, yPos = -0.10, zPos = -0.44, xRot = -90, yRot = 0, zRot = 0, p9 = true, useSoft = true, collision = false, isPed = true, vertexIndex = 1, fixedRot = false, counterValue = 1},
    [`prop_rub_binbag_01b`] = { boneIndex = 6286, xPos = 0, yPos = -0.10, zPos = -0.44, xRot = -90, yRot = 0, zRot = 0, p9 = true, useSoft = true, collision = false, isPed = true, vertexIndex = 1, fixedRot = false, counterValue = 1},
	[`prop_rub_binbag_03`] = { boneIndex = 6286, xPos = 0, yPos = -0.10, zPos = -0.44, xRot = -90, yRot = 0, zRot = 0, p9 = true, useSoft = true, collision = false, isPed = true, vertexIndex = 1, fixedRot = false, counterValue = 1},
	[`prop_rub_binbag_03b`] = { boneIndex = 6286, xPos = 0, yPos = -0.10, zPos = -0.44, xRot = -90, yRot = 0, zRot = 0, p9 = true, useSoft = true, collision = false, isPed = true, vertexIndex = 1, fixedRot = false, counterValue = 1},
}

Config.MarkerSettings = {   -- used only when Config.UseTarget = false. Colors of the marker. Active = when player stands inside the marker.
    Active = {
        r = 89, 
        g = 198,
        b = 100,
        a = 200,
    },
    UnActive = {
        r = 34,
        g = 117,
        b = 42,
        a = 200,
    }
}

Config.Locations = {       -- Here u can change all of the base job locations. 
    DutyToggle = {
        Coords = {
            vector3(-321.64309692383,-1545.8939208984,31.019908905029),
        },
        CurrentAction = 'open_dutyToggle',
        CurrentActionMsg = 'Press ~INPUT_CONTEXT~ to ~y~start/finish~s~ work.',
        type = 'duty',
        scale = {x = 1.0, y = 1.0, z = 1.0}
    },
    FinishJob = {
        Coords = {
            vector3(-329.48321533203,-1522.9837646484,27.534698486328),
        },
        CurrentAction = 'finish_job',
        CurrentActionMsg = 'Press ~INPUT_CONTEXT~ to ~y~end ~s~working.',
        scale = {x = 3.0, y = 3.0, z = 3.0}
    },

}

Config.SpawnPoint = vector4(-316.98, -1537.58, 26.64, 338.0)  -- Company car spawn point
Config.EnableCloakroom = true                                 -- if false, then you can't see the Cloakroom button under Work Menu
Config.Clothes = {

    -- Here you can configure clothes. More information on: https://docs.fivem.net/natives/?_0xD4F7B05C. Under this link you can see what id means what component.

    male = {
        ["mask"] = {clotheId = 0, variation = 0},
        ["arms"] = {clotheId = 30, variation = 0},
        ["pants"] = {clotheId = 36, variation = 0},
        ["bag"] = {clotheId = 0, variation = 0},
        ["shoes"] = {clotheId = 56, variation = 1},
        ["t-shirt"] = {clotheId = 59, variation = 1},
        ["torso"] = {clotheId = 56, variation = 0},
        ["decals"] = {clotheId = 0, variation = 0},
        ["kevlar"] = {clotheId = 0, variation = 0},
    },

    female = {
        ["mask"] = {clotheId = 0, variation = 0},
        ["arms"] = {clotheId = 57, variation = 0},
        ["pants"] = {clotheId = 35, variation = 0},
        ["bag"] = {clotheId = 0, variation = 0},
        ["shoes"] = {clotheId = 59, variation = 1},
        ["t-shirt"] = {clotheId = 36, variation = 1},
        ["torso"] = {clotheId = 49, variation = 1},
        ["decals"] = {clotheId = 0, variation = 0},
        ["kevlar"] = {clotheId = 0, variation = 0},
    }
}

Config.Lang = {

    -- Here you can changea all translations used in client.lua, and server.lua. Dont forget to translate it also under the HTML and JS file.

    -- Client
    ["no_permission"] = "Bunu sadece parti sahibi yapabilir!",
    ["keybind"] = 'Çöp İşareti Etkileşimi',
    ["too_far"] = "Partiniz çalışmaya başladı, ancak ana üsten çok uzaktasınız. Yine de katılabilirsiniz.",
    ["kicked"] = "%s kişisini partiden attınız",
    ["alreadyWorking"] = "İlk önce önceki görevi tamamlayın.",
    ["quit"] = "Takımdan ayrıldınız",
    ["pickGarbage"] = "Çöpü topla",
    ["putGarbage"] = "Çöpü içine at",
    ["cantSpawnVeh"] = "Kamyonun doğma noktası dolu.",
    ["full"] = "Çöp kamyonu zaten dolu!",
    ["wrongCar"] = "Bu senin çöp kamyonun değil",
    ["CarNeeded"] = "İşi bitirmek için çöp kamyonuna ihtiyacın var.",
    ["nobodyNearby"] = "Etrafında kimse yok",
    ["cantInvite"] = "Daha fazla kişiyi davet edebilmek için önce işi bitirmeniz gerekir",
    ["inviteSent"] = "Davet Gönderildi!",
    ["spawnpointOccupied"] = "Aracın doğma noktası dolu",
    ["notFullJob"] = "Bir işi bitirmeden önce %100 ilerleme kaydetmelisin",
    ["notADriver"] = "İşi bitirmek için bir aracın sürücüsü olmalısın",
    ["wrongReward1"] = "Ödeme yüzdesi 0 ile 100 arasında olmalıdır",
    ["wrongReward2"] = "Tüm ödemelerin toplam yüzdesi 100%'ü aştı",
    ["tutorial"] = "İş, şehirden çöp toplamayı içerir. Yerde duran herhangi bir çöp poşetini toplayabilirsiniz. Poşeti aldıktan sonra, çöp kamyonuna koyun. İşi istediğiniz zaman bitirebilirsiniz, bitirmeye karar verdiğinizde sadece ana üsse dönün ve aracı yerine koyun. Ödeme toplanan poşetlerin sayısına bağlıdır. Bazı poşetler belirli oyuncular arasında senkronize olmayabilir",
    ["partyIsFull"] = "Davet gönderme başarısız, grubunuz dolu",
    ["exploit"] = "Biri yakındayken çanta alamazsınız", -- Sadece Config.EnableExploitFix true ise
    ["cantLeaveLobby"] = "Çalışırken lobiyi terk edemezsiniz. İlk önce işi bitirin.",
    
    -- Server
    ["isAlreadyHost"] = "Bu oyuncu zaten kendi ekibini yönetiyor.",
    ["isBusy"] = "Bu oyuncu zaten başka bir ekibe ait.",
    ["hasActiveInvite"] = "Bu oyuncunun zaten bir başka oyuncudan aktif bir davetiyesi var.",
    ["HaveActiveInvite"] = "Zaten aktif bir davetiniz bulunuyor.",
    ["InviteDeclined"] = "Davetiniz reddedildi.",
    ["InviteAccepted"] = "Davetiniz kabul edildi!",
    ["error"] = "Bir takıma katılma sorunu oluştu. Lütfen daha sonra tekrar deneyin.",
    ["kickedOut"] = "Çöp ekibinden atıldınız!",
    ["reward"] = "₺ tutarında bir ödeme aldınız",
    ["RequireOneFriend"] = "Bu iş için en az bir takım üyesi gerekiyor.",
    ["penalty"] = "₺ tutarında bir ceza ödediniz",
    ["clientsPenalty"] = "Takım lideri cezayı kabul etti. Ödeme almadınız",
    ["dontHaveReqItem"] = "Siz veya takımınızdaki biri işe başlamak için gerekli öğeye sahip değil",
    ["notEverybodyHasRequiredJob"] = "Arkadaşlarınızın her biri gerekli işe sahip değil",
    ["someoneIsOnCooldown"] = "Siz veya takımınızdaki biri şu anda işi yapamaz (cooldown: %s)",
    ["hours"] = "s",
    ["minutes"] = "d",
    ["seconds"] = "sn",    
}