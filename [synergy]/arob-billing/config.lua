Config = {}

Config.OnDutyToBillEnabled = true           -- If player must be on duty to bill

Config.AllowNearbyBilling = true            -- If players can bill nearby players (rather than just by server ID)

Config.EnableTextNotifications = true       -- If players receive text notifications for bill status changes
Config.EnablePopupNotification = true       -- If players receive pop-up notifications (QBCore Notify) for bill status changes

-- Jobs which can send bills on behalf of their respective establishments' accounts (qb-management)
Config.PermittedJobs = {
    'mechanic',
    'ambulance',
    'realestate',
    'taxi',
    'cardealer',
    'police',
    "state",
    "sheriff",
    "davison",
    'burgershot',
    'uwu',
    "mechanic1",
    "mechanic2",
    "mechanic3",
    "mechanic4",
    "mechanic5",
    "mechanic6",
    "mechanic9",
    "mechanic10",
    "mechanic11",
    "mechanic12",
    "mechanic13",
    "mechanicmc",
    "bahama",
    "ranger",
    "tequila",
    "doj",
    "vpd",
    "dppd",
    "koi",
    "sr",
    "pizzeria",
    "beanmachine",
    "tuner",
    "gmg",
    "pdm2",
    "irishpub",
    "serendipity",
    'luxery',
    'records',
    'japanese',
    'ldv',
    'tpc',
    'casino',
    'redline',
    'galaxy',
    'psikolog',
    'cockatoos',
}

-- Commands --
Config.BillingCommand = 'fatura'