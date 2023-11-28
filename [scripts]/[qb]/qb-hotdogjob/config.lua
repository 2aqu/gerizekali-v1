Config = Config or {}
Config.UseTarget = true
-- Config --

Config.StandDeposit = 250

Config.MyLevel = 1
Config.MaxReputation = 200

Config.Locations = {
    ["take"] = {
        coords = vector4(39.31, -1005.54, 29.48, 240.57),
    },
    ["spawn"] = {
        coords = vector4(38.15, -1001.65, 29.44, 342.5),
    },
}

Config.Stock = {
    ["exotic"] = {
        Current = 0,
        Max = {
            [1] = 15,
            [2] = 30,
            [3] = 45,
            [4] = 60,
        },
        Label = Lang:t("info.label_a"),
        Price = {
            [1] = {
                min = 48,
                max = 72,
            },
            [2] = {
                min = 54,
                max = 78,
            },
            [3] = {
                min = 60,
                max = 84,
            },
            [4] = {
                min = 66,
                max = 90,
            },
        }
    },
    ["rare"] = {
        Current = 0,
        Max = {
            [1] = 15,
            [2] = 30,
            [3] = 45,
            [4] = 60,
        },
        Label = Lang:t("info.label_b"),
        Price = {
            [1] = {
                min = 36,
                max = 54,
            },
            [2] = {
                min = 42,
                max = 60,
            },
            [3] = {
                min = 48,
                max = 66,
            },
            [4] = {
                min = 54,
                max = 72,
            },
        }
    },
    ["common"] = {
        Current = 0,
        Max = {
            [1] = 15,
            [2] = 30,
            [3] = 45,
            [4] = 60,
        },
        Label = Lang:t('info.label_c'),
        Price = {
            [1] = {
                min = 24,
                max = 36,
            },
            [2] = {
                min = 30,
                max = 42,
            },
            [3] = {
                min = 36,
                max = 48,
            },
            [4] = {
                min = 42,
                max = 54,
            },
        }
    },
}
