Config = {
    NotificationDistance = 10.0,
    PropsToRemove = {
        vector3(-24.86, -1396.11, 30.41),
        vector3(-36.301, 6391.44, 31.6047),
        vector3(550.147, -174.76, 50.6930),
        vector3(-574.17, 288.834, 79.1766),
    },

    --[[
        -- To use custom notifications, implement client event handler, example:

        AddEventHandler('nova_bilardo:notification', function(serverId, message)
            print(serverId, message)
        end)
    ]]
    CustomNotifications = false,

    --[[
        -- To use custom menu, implement following client handlers
        AddEventHandler('nova_bilardo:openMenu', function()
            -- open menu with your system
        end)

        AddEventHandler('nova_bilardo:closeMenu', function()
            -- close menu, player has walked far from table
        end)


        -- After selecting game type, trigger one of the following setupTable events
        TriggerEvent('nova_bilardo:setupTable', 'BALL_SETUP_8_BALL')
        TriggerEvent('nova_bilardo:setupTable', 'BALL_SETUP_STRAIGHT_POOL')
    ]]
    CustomMenu = false,

    --[[
        When you want your players to pay to play pool, set this to true
        AND implement the following server handler in your framework of choice.
        The handler MUST deduct money from the player and then CALL the callback
        if the payment is successful, or inform the player of payment failure.

        This script itself DOES NOT implement ESX/vRP logic, you have to do that yourself.

        AddEventHandler('nova_bilardo:payForPool', function(playerServerId, cb)
            print("This should be replaced by deducting money from " .. playerServerId)
            cb() -- successfuly set balls on table
        end)
    ]]
    PayForSettingBalls = false,
    BallSetupCost = nil, -- for example: "$1" or "$200" - any text

    --[[
        You can integrate pool cue into your system with

        SERVERSIDE HANDLERS
            - nova_bilardo:onReturnCue - called when player takes cue
            - nova_bilardo:onTakeCue   - called when player returns cue

        CLIENTSIDE EVENTS
            - nova_bilardo:takeCue   - forces player to take cue in hand
            - nova_bilardo:removeCue - removes cue from player's hand

        This prevents players from taking cue from cue rack if `false`
    ]]
    AllowTakePoolCueFromStand = true,

    --[[
        This option is for servers whose anticheats prevents
        this script from setting players invisible.

        When player's ped is blocking camera when aiming,
        set this to true
    ]]
    DoNotRotateAroundTableWhenAiming = false,

    MenuColor = {245, 127, 23},
    Keys = {
        BACK = {code = 200, label = 'INPUT_FRONTEND_PAUSE_ALTERNATE'},
        ENTER = {code = 38, label = 'INPUT_PICKUP'},
        SETUP_MODIFIER = {code = 21, label = 'INPUT_SPRINT'},
        CUE_HIT = {code = 179, label = 'INPUT_CELLPHONE_EXTRA_OPTION'},
        CUE_LEFT = {code = 174, label = 'INPUT_CELLPHONE_LEFT'},
        CUE_RIGHT = {code = 175, label = 'INPUT_CELLPHONE_RIGHT'},
        AIM_SLOWER = {code = 21, label = 'INPUT_SPRINT'},
        BALL_IN_HAND = {code = 29, label = 'INPUT_SPECIAL_ABILITY_SECONDARY'},

        BALL_IN_HAND_LEFT = {code = 174, label = 'INPUT_CELLPHONE_LEFT'},
        BALL_IN_HAND_RIGHT = {code = 175, label = 'INPUT_CELLPHONE_RIGHT'},
        BALL_IN_HAND_UP = {code = 172, label = 'INPUT_CELLPHONE_UP'},
        BALL_IN_HAND_DOWN = {code = 173, label = 'INPUT_CELLPHONE_DOWN'},
    },
    Text = {
        BACK = "Geri",
        HIT = "Vur",
        BALL_IN_HAND = "Topu eline al",
        BALL_IN_HAND_BACK = "Geri",
        AIM_LEFT = "Sola çevir",
        AIM_RIGHT = "Sağa çevir",
        AIM_SLOWER = "Yavaş nişan",

        POOL = 'Bilardo',
        POOL_GAME = 'Bilardo',
        POOL_SUBMENU = 'Oyun modu',
        TYPE_8_BALL = 'Tekli',
        TYPE_STRAIGHT = 'İki kişi',

        HINT_SETUP = 'Oyun kur',
        HINT_TAKE_CUE = 'Istaka al.',
        HINT_RETURN_CUE = 'Istakayı geri bırak.',
        HINT_HINT_TAKE_CUE = 'Bilardo oynamak için ıstaka alman gerek.',
        HINT_PLAY = 'Oyna',

        BALL_IN_HAND_LEFT = 'Sol',
        BALL_IN_HAND_RIGHT = 'Sağ',
        BALL_IN_HAND_UP = 'Yukarı',
        BALL_IN_HAND_DOWN = 'Aşağı',
        BALL_POCKETED = '%s Topu deliğe soktun',
        BALL_IN_HAND_NOTIFY = 'Bilardo Topunu Eline Aldın',
        BALL_LABELS = {
            [-1] = 'Beyaz top',
            [1] = '~y~Tek Renk~s~',
            [2] = '~b~Tek Renk~s~',
            [3] = '~r~Tek Renk~s~',
            [4] = '~p~Tek Renk~s~',
            [5] = '~o~Tek Renk~s~',
            [6] = '~g~Tek Renk~s~',
            [7] = '~r~Tek Renk~s~',
            [8] = 'Siyah Top',
            [9] = '~y~Çift Renk~s~',
            [10] = '~b~Çift Renk~s~',
            [11] = '~r~Çift Renk~s~',
            [12] = '~p~Çift Renk~s~',
            [13] = '~o~Çift Renk~s~',
            [14] = '~g~Çift Renk~s~',
            [15] = '~r~Çift Renk~s~',
         }
    },
}