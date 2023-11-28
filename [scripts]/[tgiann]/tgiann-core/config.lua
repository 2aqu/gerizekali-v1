--[[ 
    Start tgiann-core script after es_extented/qb-core/mysql/oxmysql script and before tgiann-* scripts
    Adjust the tgiann-core config file according to the framework you are using

    - If you are having any problems, please check the channels on my discord. If your problem is not resolved, open a ticket.
    - Discord: http://discord.gg/9SEg2WNf7Y
    - Docs: https://tgiann.gitbook.io/tgiann
]]

config = {
    coreVersion = 1.1,
    customDeadReviveEvent = { -- U can change event from main/client/editable.lua
        active = false,
        deadEvent = "baseevents:onPlayerDied",
        reviveEvent = "playerSpawned",
    },
    customNotif = {
        active = false,
        notify = function(msg, type, time)
            -- Your custom notif event or export
        end
    },
    oxlib = {
        notifLocation = 'top', -- 'top' or 'top-right' or 'top-left' or 'bottom' or 'bottom-right' or 'bottom-left' (ox notifs will not work if you are using qb or esx)
    },
    tgiannDrawText3D = true,
    test = false, -- Dont touch this
    showPrints = true,
    tgiannServer = false, -- Dont touch this
}

frameworkConfig = {
    --Event Names
    esxGetSharedObjectEvent = "esx:getSharedObject", -- TriggerEvent("esx:getSharedObject", function(obj) ESX = obj end)
    qbGetObjectEvent = "QBCore:GetObject", -- TriggerEvent("QBCore:GetObject", function(obj) QBCore = obj end)

    --Script Names
    esxScriptName = "es_extended", -- https://github.com/esx-framework/esx_core/tree/main/%5Bcore%5D/es_extended
    qbScriptName = "qb-core", -- https://github.com/qbcore-framework/qb-core
    oxlibScriptName = "ox_lib", -- https://github.com/overextended/ox_lib
    oxInventoryScriptName = "ox_inventory", --https://github.com/overextended/ox_inventory
    qsInventoryScriptName = "qs_inventory",
    oxMysqlScriptName = "oxmysql", -- https://github.com/overextended/oxmysql
}

text = {
    alreadyError = "You are already doing something",
    openMenu = "Open Menu",
    showMenu = "Show Closest DrawText Menus",
    js = {
        returnText = "Return",
        chooseAnAction = "Choose an action",
        accept = "Accept",
        cancel = "Cancel",
    }
}

exports("getConfig", function()
    return config
end)