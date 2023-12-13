Config = Config or {}
Config.Debug = false

Config.UseCustomUi = true
Config.UseResetTimer = true
Config.RaceResetTimer = 300000
Config.ShowMechToolOption = false -- set to false if you dont use cw-mechtool
Config.DoOffsetGps = true -- Set to true if you want the gps to slighlty offset the point (helps with route)
Config.Inventory = 'ox' -- set to 'ox' if you want ox inventory support. Only 'ox' or 'qb' works. 
Config.UseRenewedCrypto = false -- set to true if you use Renewed crypto
Config.UseRenewedBanking = false -- set this to true if you use Renewed Banking
Config.UseNameValidation = true -- set to true if you use the name validation - HAVING THIS ON MEANS UNIQUE RACERNAMES
Config.MaxRacerNames = 2 -- Maximum allowed amount of unique names per character

Config.CustomAmounts = { -- custom max amout of racer names
    ['QBQ16539'] = 100,
    ['FMN22732'] = 100,
    ['SYY99260'] = 100,
}

Config.LimitTracks = false -- set to true to limit tracks per citizenid. Below two fields are irrelevent if this is false
Config.MaxCharacterTracks = 10 -- Amount of tracks allowed per citizenid
Config.CustomAmountsOfTracks = { -- custom max amout of tracks per citizenid
    ['QBQ16539'] = 100,
    ['FMN22732'] = 100,
    ['SYY99260'] = 100,
}


Config.Permissions = {
    ['fob_racing_basic'] = {
        ['join'] = true,
        ['records'] = true,
        ['setup'] = false,
        ['create'] = false,
    },
    ['fob_racing_master'] = {
        ['join'] = true,
        ['records'] = true,
        ['setup'] = true,
        ['create'] = true,
    }
}

Config.FlareTime = 10000 -- How long the flares are lit
Config.KickTime = 10*60*1000 -- How long (in ms) until you get kicked if not being at race
Config.StartAndFinishModel = `prop_beachflag_le`
Config.CheckpointPileModel = `xm_prop_base_tripod_lampa` --`prop_flare_01b`

Config.Classes = {
    ['C'] = true,
    ['B'] = true,
    ['A'] = true,
    ['S'] = true
} -- These classes can be used (notice X missing for example). Only use classes from cw-performance here.

Config.MinRacerNameLength = 3
Config.MaxRacerNameLength = 24

Config.MinimumCheckpoints = 10 -- Minimum Checkpoints required for a race

Config.MinTireDistance = 2.0 -- Min distance between checkpoint tire piles
Config.MaxTireDistance = 30.0 -- Max distance between checkpoint tire piles

Config.MinTrackNameLength = 3 -- Min track name length to submit
Config.MaxTrackNameLength = 24 -- Max track name length to submit

Config.JoinDistance = 200

Config.Blips = {
    Generic = { Size = 1.0, Color = 38 },
    Next = { Size = 1.3, Color = 47 },
    Passed = { Size = 0.6, Color = 62 }
}

-- Colors for blips: https://docs.fivem.net/docs/game-references/blips/


Config.AllowedJobs = {  -- Wont matter unless you activate "jobRequirement in Config.Trader/Config.Laptop"
    ['mechanic15'] = { basic = 2, master = 4},
    ['mechanic8'] = { basic = 1, master = 1 },
}

Config.Options = {
    Laps = {
        { value = 0, text = 'Sprint' },
        { value = 1, text = 1 },
        { value = 2, text = 2 },
        { value = 3, text = 3 },
        { value = 4, text = 4 },
        { value = 5, text = 5 },
        { value = 6, text = 6 },
        { value = 7, text = 7 },
        { value = 8, text = 8 },
        { value = 9, text = 9 },
        { value = 10, text = 10 },
    },
    BuyIns = {
        { value = 0, text = 'Nothing' },
        { value = 10, text = 10 },
        { value = 20, text = 20 },
        { value = 50, text = 50 },
        { value = 100, text = 100 },
        { value = 200, text = 200 },
        { value = 500, text = 500 },
        { value = 1000, text = 1000 }
    },
    MoneyType = 'cash', --Determines buyins and payouts. cash/bank/crypto
    cryptoType = 'cdc' -- rname of your crypto
}

Config.Trader = {
    active = true,
    jobRequirement = { basic = false, master = true},
    requireToken = false,
    model = 'csb_paige',
    animation = 'WORLD_HUMAN_STAND_MOBILE',
    location = vector4(818.6, -2365.15, 29.14, 262.83), 
    moneyType = 'cash', -- cash/bank/crypto
    -- cryptoType = 'cdc', -- name of your crypto
    racingFobCost = 10000,
    racingFobMasterCost = 100000,
    profiteer = { job = 'tuner', cut = 0.9 }, -- if you use Renewed Banking you can set this to allow money to go to businesses, wont work with crypto (yet), UseRenewedBanking in top of this file NEEDS TO BE TRUE
    useSlimmed = true -- set to true if you want menu to cut out cid input
}

Config.Laptop = {
    active = false,
    jobRequirement = { basic = true, master = true},
    requireToken = false,
    model = 'xm_prop_x17_laptop_mrsr',
    location = vector4(938.56, -1549.8, 34.37, 163.59),
    moneyType = 'crypto', -- cash/bank/crypto
    cryptoType = 'cdc', -- name of your crypto
    racingFobCost = 10,
    racingFobMasterCost = 100,
}

Config.Ghosting = {
    Enabled = true, --adding ability to toggle per started race soon
    NearestDistanceLimit = 20, -- Distance (in meters) a racer needs to be to a non-racer for the ghosting to turn off
    Timer = 0, -- Default timer, in milliseconds. SET TO 0 TO HAVE ON FOR ENTIRE RACE. This is what's used if you leave the field blank when setting up a race
    DistanceLoopTime = 1000, -- in ms. Time until the ghosting script rechecks positions. Higher will be less accurate but will be more performance friendly.
    Options = {
        { value = -1, text = 'Off' },
        { value = 0, text = 'Always' },
        { value = 10*1000, text = "10 s" },
        { value = 30*1000, text = "30 s" },
        { value = 60*1000, text = "60 s" },
        { value = 120*1000, text = "120 s" },
    }
}

-- Splits work as follows: [x] = y means position x gets y % of the profit
Config.Splits = {
    three = { [1] = 0.7, [2] = 0.3 }, -- If three racers
    more = { [1] = 0.6, [2] = 0.3, [3] = 0.1 } -- If more than 3 
}

Config.ParticpationTrophies = {
    requireCurated = false, -- Only give out particpation money if track is marked as curated (admin command '/racingappcurated "<race-id>" true/false')
    requireBuyIns = false, -- If this is true, participation money will only be handed out if the race had a buyin
    buyInMinimum = 50, -- If the above is true, this will be the minimum limit of when participation money is handed out
    enabled = true, -- false if you dont want players getting particpation trophies
    minimumOfRacers = 6, -- minimum of racers to hand out particpation trophies
    type = 'bank', -- cash, bank or crypto
    amount = { [1] = 60, [2] = 40, [3] = 20, [4] = 10,  [5] = 5 }, -- [<position>] = <amount>
    cryptoType = 'cdc', -- name of your crypto
    minumumRaceLength = 3000
}

Config.UseOxLibForKeybind = false -- YOU HAVE TO ENABLE OXLIB IN FXMANIFEST TO USE THIS!!!!!!!!!!!!!!!!!!!!!!!!! Use oxlib for keybinds instead of natives.
Config.Buttons = {
    AddCheckpoint = 'INSERT',
    DeleteCheckpoint = 'DELETE',
    MoveCheckpoint = 'HOME',
    SaveRace = '0',
    IncreaseDistance = 'PAGEUP',
    DecreaseDistance = 'PAGEDOWN',
    Exit = '9'
}

Config.ItemYetki = { --citizenid girilecek
    ["JWR84986"] = true,
    ["HLC16604"] = true,
    ["KPK44894"] = true,
}