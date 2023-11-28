Config = {}
Config.Locale = 'en'
Config.Debug = false
Config.DebugLevel = {
    'INFO',
    'CRITICAL',
    'SUCCESS',
    'ERROR',
    'DEBUG',
}
Config.NearObjects = 2.0

Frameworks = {
    ESX = 'ESX', --ESX with weight system
    QBCORE = 'QBCORE',
}
Config.Framework = Frameworks.QBCORE

-- if you use ESX as your framework and you renamed the folder with the script change the name here
Config.ESXResourceName = 'es_extended'
-- if you use export instead of event to getSharedObject set this to `true`
Config.ESXUseExport = true
-- if you use QBCore as your framework and you renamed the folder with the script change the name here
Config.QBCoreResourceName = 'qb-core'

TargetingSystems = {
    RCORE = 'rcore-camping', -- already included in rcore_camping, no need to install anything
    QTARGET = 'qtarget',
    QBTARGET = 'qb-target',
    OXTARGET = 'ox_target',
}
-- check https://documentation.rcore.cz/paid-resources/rcore_camping/installation#targeting-systems
Config.TargetingSystem = TargetingSystems.RCORE

Config.Events = {
    ['esx:getSharedObject'] = 'esx:getSharedObject', -- ESX only with events
    ['getSharedObject'] = 'getSharedObject', -- ESX only with export
    ['GetCoreObject'] = 'GetCoreObject', -- QBCore only
}

-- check https://documentation.rcore.cz/paid-resources/rcore_camping/ox_inventory
Config.ox_inventory = true

--For admin commands
Config.AllowedGroups = {
    'superadmin', --ESX
    'god', --QBCore
}

--Name for command thats delete all existing spawned props
Config.DeleteAllCommandName = 'campingdelall'

-- works only with TargetingSystems.RCORE targeting system
-- Hides all prompts for item interactions while player is sitting on chair
Config.DisablePromptWhileSitting = true

Config.AllowedDistance = { --Biggest distance to work with item
    [Types.TENT] = 4.0,
    [Types.CHAIR] = 4.0,
    [Types.FIREPLACE] = 1.5,
    [Types.GAZEBO] = 4.0,
    [Types.BEER] = 4.0,
}
Config.HeadingSpeed = 5.0
    --https://docs.fivem.net/docs/game-references/controls/
Config.Controls = {
    [Controls.PLACE] = 51, --INPUT_CONTEXT
    [Controls.CANCEL] = 52, --INPUT_CONTEXT_SECONDARY
    [Controls.ROT_LEFT] = 14,
    [Controls.ROT_RIGHT] = 15,
}

Config.ChanceToBrokeFlint = 10
--Items that can be used to light fire
Config.LightItems = {
    Items.FLINT, --flint
}

Config.HealInTent = false
Config.HealingInterval = 5 * SECONDS
Config.HealthPerRestore = 5 -- 1-100%

Config.AllowDestroyableObjects = false
-- 0-100%
-- 0 to disable
-- 100 always success
Config.DestroyChance = {
    UNARMED = 5,
    MELEE_WEAPONS = 5,
    RANGED_WEAPONS = 5,
    THROWABLE_WEAPONS = 5,
    EXPLOSION = 100,
    VEHICLE = 100,
    FIRE = 100,
}
Config.DestroyableObjects = {
    'ba_prop_battle_tent_01',
    'ba_prop_battle_tent_02',
    'prop_skid_chair_01',
    'prop_skid_chair_02',
    'prop_skid_chair_03',
    'prop_gazebo_01',
    'prop_gazebo_02',
    'prop_gazebo_03',
}

Config.Animations = {
    [AnimationTypes.PLACE] = {
        [Types.TENT] = {dict = 'mp_arresting', anim = 'a_uncuff'},
        [Types.CHAIR] = {dict = 'mp_arresting', anim = 'a_uncuff'},
        [Types.GAZEBO] = {dict = 'mp_arresting', anim = 'a_uncuff'},
    },
    [AnimationTypes.CLEAR] = {
        [Types.TENT] = {dict = 'mp_arresting', anim = 'a_uncuff'},
        [Types.CHAIR] = {dict = 'mp_arresting', anim = 'a_uncuff'},
        [Types.GAZEBO] = {dict = 'mp_arresting', anim = 'a_uncuff'},
    },
}

-- Player will only see himself, other players in tent will still be invisible
Config.ShowPlayerPedInTent = false

local beerContainedOptions = {
    ['3_3'] = 'beerkeg',
    ['2_3'] = 'beerkeg_2_3',
    ['1_3'] = 'beerkeg_1_3',
    ['0_3'] = 'beerkeg_0_3',
}

--Placeable objects
Config.PlaceableObjects = {
    {
        object = 'rcore_wood_fire',
        --object = 'prop_beach_fire',
        usableItem = 'fireplace',
        type = Types.FIREPLACE,
        options = {
            inFireObject = 'prop_beach_fire',
        }
    },
    {
        object = 'ba_prop_battle_tent_01',
        usableItem = 'tent_1',
        type = Types.TENT,
    },
    {
        object = 'ba_prop_battle_tent_02',
        usableItem = 'tent_2',
        type = Types.TENT,
    },
    {
        object = 'prop_skid_chair_01',
        usableItem = 'chair_1',
        type = Types.CHAIR,
    },
    {
        object = 'prop_skid_chair_02',
        usableItem = 'chair_2',
        type = Types.CHAIR,
    },
    {
        object = 'prop_skid_chair_03',
        usableItem = 'chair_3',
        type = Types.CHAIR,
    },
    {
        object = 'prop_gazebo_01',
        usableItem = 'gazebo_1',
        type = Types.GAZEBO,
    },
    {
        object = 'prop_gazebo_02',
        usableItem = 'gazebo_2',
        type = Types.GAZEBO,
    },
    {
        object = 'prop_gazebo_03',
        usableItem = 'gazebo_3',
        type = Types.GAZEBO,
    },
    {
        object = 'prop_keg_01',
        usableItem = 'beerkeg',
        type = Types.BEER,
        beerContained = 30.0, --In liters
        full = 30.0,
        containerItemOptions = beerContainedOptions,
    },
    {
        object = 'prop_keg_01',
        usableItem = 'beerkeg_2_3',
        type = Types.BEER,
        beerContained = 20.0, --In liters
        full = 30.0,
        containerItemOptions = beerContainedOptions,
    },
    {
        object = 'prop_keg_01',
        usableItem = 'beerkeg_1_3',
        type = Types.BEER,
        beerContained = 10.0, --In liters
        full = 30.0,
        containerItemOptions = beerContainedOptions,
    },
    {
        object = 'prop_keg_01',
        usableItem = 'beerkeg_0_3',
        type = Types.BEER,
        beerContained = 0.0, --In liters
        full = 30.0,
        containerItemOptions = beerContainedOptions,
    },
}

Config.ObjectOffset = {
    ['rcore_wood_fire'] = vector3(0.0, 0.0, 0.1),
    ['prop_beach_fire'] = vector3(0.0, 0.0, 0.1),
    ['prop_skid_chair_01'] = vector3(0.0, 0.0, 0.4),
    ['prop_skid_chair_02'] = vector3(0.0, 0.0, 0.4),
    ['prop_skid_chair_03'] = vector3(0.0, 0.0, 0.4),
    ['prop_keg_01'] = vector3(0.0, 0.0, 0.4),
}

Config.FireCraftable = {
    {
        name = 'raw_chicken',
        result = 'cooked_chicken',
        time = 60 * SECONDS,
        anim = Animation.CHICKEN,
    }
}