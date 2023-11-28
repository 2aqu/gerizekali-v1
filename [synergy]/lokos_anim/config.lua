Config = {
    Command = {
        ['name'] = 'animPos',
        ['suggestion'] = 'Change the position of your animation'
    },

    ['enableHelpText'] = true, 
    -- Currently the helpText feature is limited to the native functions. 
    -- Support for custom help text solutions may come in future updates.
    ['helpText'] = 'Anim positioning - press\n%s to go ahead, %s to go back\n%s to go left, %s to go right\n%s to rotate left, %s right\n%s to go up, %s to go down\n%s to finish and %s to unfreeze', 

    ['teleportBack'] = true, -- teleports the player to his old position when unfreezing the character

    ['pedAlphaChange'] = true, -- makes the player "a ghost" when using animPos, visible thru other players POV

    distanceLimit = {
        ['enabled'] = true, 
        ['limit'] = 5, -- in GTA units
        ['msg'] = 'The distance limit has been exceeded!'
    },

    defaultKeys = { -- https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/ - CHECK IT before editing!
        ['ahead'] = 'W',
        ['left'] = 'A',
        ['rotateLeft'] = 'LBRACKET', -- [
        ['right'] = 'D',
        ['rotateRight'] = 'RBRACKET', -- ]
        ['back'] = 'S',
        ['down'] = 'E',
        ['up'] = 'Q',
        ['finish'] = 'RETURN',
        ['unfreeze'] = 'X' -- Best option is to make sure it matches your "stop animation" keybind 
    },

    keysLocale = {
        ['ahead'] = 'Go ahead',
        ['left'] = 'Go left',
        ['rotateLeft'] = 'Rotate: left',
        ['right'] = 'Go right',
        ['rotateRight'] = 'Rotate: right',
        ['back'] = 'Go back',
        ['down'] = 'Go down',
        ['up'] = 'Go up',
        ['finish'] = 'Finish',
        ['unfreeze'] = 'Unfreeze'
    }
}

function showNotification(msg) -- This is an editable notification function. It is being used only if distance limit is enabled. 
    -- Example configurations:

    --  GTA (default)
    BeginTextCommandThefeedPost('STRING')
	AddTextComponentSubstringPlayerName(msg)
	EndTextCommandThefeedPostTicker(0,1)

    --  pNotify
    -- exports.pNotify:SendNotification({text = msg})
end 

function isAllowedToChangePosition() -- Please edit this function to cooperate with your animation script. 
    -- If you will leave it as is, players can edit their position not only while playing an animation

    -- If you are having issues with the function, please reach out on our Discord server for support by opening a ticket.

    return true -- COMMENT OR REMOVE THIS IF you are USING ONE OF THE CONFIGURATIONS below

    -- Example configurations - uncomment one of them if you have done everything correctly.

    -- return exports.rpemotes:IsPlayerInAnim() -- rpemotes (out of the box NEWEST VERSION)
    -- return exports['esx_animations']:isInAnim() -- esx_animations (read below)
    -- return exports.dpemotes:isInAnim() -- dpemotes (read below)

    -- IF YOU ARE USING dpemotes: Paste this code uncommented in client/Emote.lua

    -- exports('isInAnim', function()
    --     return IsInAnimation 
    -- end)

    -- IF YOU ARE USING esx_animations: Paste this code uncommented in client/main.lua

    -- exports('isInAnim', function()
    --     return inAnim 
    -- end)
end