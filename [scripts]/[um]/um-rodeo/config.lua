Config = {}

Config.Key = {
    -- https://docs.fivem.net/docs/game-references/controls/#controls
    playKey = 38, -- E
    leaderboardKey = 47, -- G
}

Config.Target = {
    status = false, -- [Optional] If you set this value to true, the target will works. (true or false)
    type = "" -- ox, qb, other // example: type = "ox"
}

Config.LaunchSpeed = 7 -- Increase this value to increase the launch power

Config.Payment = {
    status = false, -- If you set this value to false, the rodeo will be free. (true or false)
    price = 500,
}

Config.Blips = {
    status = true, -- If you set this value to false, the blips will not be displayed. (true or false)
    sprite = 409,
    color = 17,
    scale = 0.9,
}

Config.Coords = {
    -- When you add a new location make sure the id is uniq 3,4,5 etc
    -- If the prop top in your location, decrease the z value by 1 or 2

    [1] = {
        coords = vector4(-1623.46, -1059.01, 13.12, 47.27),
        models = {
            baseModel ='rodeoarena',
            bullModel = 'bull',
        },
    },

    [2] = {
        coords = vector4(1628.54, 3786.94, 34.67, 123.27),
        models = {
            baseModel ='rodeoarena',
            bullModel = 'bull',
        },
    },
}

Config.Lang = {
    lang_drawtext = '~INPUT_CONTEXT~ Play Rodeo ~n~~INPUT_DETONATE~ Leaderboard',
    lang_nomoney = 'You do not have enough cash',
    lang_truebull = 'This is currently in use, please wait for it to finish',
    lang_score = 'Rodeo Score: ',
    lang_blipname = 'Rodeo',
    lang_target_rodeo = "Play Rodeo",
    lang_target_leaderboard = "Leaderboard",
}