----------------------------------------------------------------------------------------------
-------------------------------------| BRUTAL BOXING :) |-------------------------------------
----------------------------------------------------------------------------------------------

--[[
Hi, thank you for buying our script, We are very grateful!

For help join our Discord server:     https://discord.gg/85u2u5c8q9
More informations about the script:   https://docs.brutalscripts.com
--]]

Config = {
    Core = 'QBCORE',  -- 'ESX' / 'QBCORE' | Other core setting on the 'core' folder.
    TextUI = 'ox_lib', -- 'ox_lib' / 'okokTextUI' / 'ESXTextUI' / 'QBDrawText' // Custom can be add in the cl_utils.lua!!!
    BrutalNotify = false, -- Buy here: (4€+VAT) https://store.brutalscripts.com | Or set up your own notify >> cl_utils.lua
    SteamName = false, -- true = Steam name | false = character name

    Marker = {use = true, marker = 20, bobUpAndDown = true, rotate = false, size = {0.3, 0.2, 0.2}, rgb = {15, 100, 210}},
    DisableControls = {22}, -- These controls will blocked during the boxing match.
    DemageModifier = {Use = true, Basic = 0.25, Glove = 0.15},
    TimeToBet = 30, -- After the start there is this time to bet.

    Areas = {
        -- INFO: The ring names can't be same. Each one should have a different name.--

       --[[ ['TEQUILA BOXING'] = { -- MLO [FREE]: https://www.gta5-mods.com/maps/mlo-underground-box-ring-at-tequilala-sp-fivem
            Time = 60,
            Blip = {use = true, color = 1, sprite = 546, size = 0.7},
            Start = vector3(-561.2779, 283.9954, 77.6763),
            Player1 = vector4(-554.7122, 281.7168, 78.5265, 38.8104),
            Player2 = vector4(-558.6957, 286.1812, 78.5265, 221.8874),
        },]]

        ['PLAJ BOXU'] = { -- MLO [FREE]: https://gta5mod.net/gta-5-mods/maps/fight-ring-add-on-sp-fivem-1-0/
            Time = 60,
            Blip = {use = true, color = 1, sprite = 546, size = 0.7},
            Start = vector3(-1270.3046, -1531.9347, 4.3136),
            Player1 = vector4(-1276.4449, -1527.9060, 5.1541, 209.7522),
            Player2 = vector4(-1272.9108, -1533.9976, 5.1541, 26.2116),
        },
    },
   
    -----------------------------------------------------------
    -----------------------| TRANSLATE |-----------------------
    -----------------------------------------------------------

    MoneyForm = '$', -- Money form

    Locales = {
        Male = 'Erkek',
        Female = 'Kadın',
    },

    MenuOpen = {'[E] - Box Menüsü', 38}, -- Label, control1
    
    -- Notify function EDITABLE >> cl_utils.lua
    Notify = { 
        [1] = {"Boxing", "Zaten katıldın!", 5000, "error"},
        [2] = {"Boxing", "Rakip partyden ayrıldı.", 5000, "info"},
        [3] = {"Boxing", "Zaten bahis yaptın!", 5000, "error"},
        [4] = {"Boxing", "Başarıyla bahis yaptın: <b>", 5000, "success"},
        [5] = {"Boxing", "Bahis tutarını geri aldınız:", 5000, "info"},
        [6] = {"Boxing", "Yeterli paran yok.", 5000, "error"},
        [7] = {"Boxing", "Kazandın:", 5000, "success"},
        [8] = {"Boxing", "Kaybettin.", 5000, "error"},
    }
}
