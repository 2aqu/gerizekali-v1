Config = {}
Config.Framework = 'newqb' -- newesx, oldesx, newqb, oldqb, standalone, autodetect
Config.ChatOpenKey = 245 --https://docs.fivem.net/docs/game-references/controls/
Config.ShowJoins = false -- If set to false chat will not display who is joined the server.
Config.ShowQuits = false -- If set to false chat will not display who is quited from the server.
Config.BlacklistedWords = {
    "cunt",
    "pig",
    "fuck",
    "allah",
}




Config.SettingsLogo = 'https://i.imgur.com/n6hqdDS.png' -- recommended size 173x54
Config.EnableDiscordRoles = false



Config.AutoMessages = {
    enable = false,
    timeout = 5, -- in minutes
    messages = {
       "discord.gg/coastv",
       "Hoşgeldiniz Bro",
    },
}

--[[
    if Config.Framework is set to standalone you need to fill here with admins' Rockstar License IDs
    
    -EXAMPLE 
    Config.Admins = {
        "license:299055de10756b9de64a546e74309416fc77059f"
    }

    if Config.Framework is set to esx or qb you need to type here permissions
    
    -EXAMPLE    
    Config.Admins = {
        "god",
        "admin",
        "mod",
    }
]]

Config.Admins = {
    "admin"
}

Config.ShowID = true -- Determines displaying id in chat when someone write something 
Config.EnableAdminTag = false -- if is true and player is admin adds "admin" tag before name
Config.EnableAdminChat = true -- if is true enables chat tab between admins

Config.EnableJobTags = true -- if is true and job_name written in Config.Tags adds job_label tag before player name
Config.EnableJobChats = false -- if is true enables chat tab between players that has the same job written in Config.Tags

Config.EnableOOCCommand = false -- if set to false players can write messages without /ooc command
Config.EnableOOCTag = false -- if set to true adds "ooc" tag when player send a message in "all" or "ooc" channels

Config.EnableOOCProximity = false -- (require onesync) if set to true only players near to message sender can see the message 
Config.OOCProximityDist = 20.0 

Config.EnableMECommand = true
Config.EnableMEProximity = true -- (require onesync) if set to true only players near to message sender can see the message 
Config.MEProximityDist = 20.0

Config.EnableDOCommand = true
Config.EnableDOProximity = true -- (require onesync) if set to true only players near to message sender can see the message 
Config.DOProximityDist = 20.0

Config.FloatMessage = 20.0 -- This Change distance for ME/DO Floating Messages


Config.EnableAnonymousCommand = false

Config.EnableRPNames = true -- if set to true displays rp names 

--[[
    if Config.Framework is set to standalone you can add tags and people here with this example
    
    Config.Tags = {
        ["ballas"] = {
            shadow = '0px 0px 11px rgba(0, 209, 255, 0.25)',
            bg = 'rgba(0, 209, 255, 0.33)',
            borderColor = '2px solid rgba(0, 209, 255, 0.37)',
            textColor = '#00D1FF',            
            label = 'BLS',     
            members = {
                "license:299055de10756b9de64a546e74309416fc77059f",
            },
        }
    }

    if Config.Framework is set to esx or qb you need to type here job name and tag labels also you can leave members empty 
    (if tag key is not a job you still need to fill members table)

    Config.Tags = {
        ["ballas"] = {            
            shadow = '0px 0px 11px rgba(0, 209, 255, 0.25)',
            bg = 'rgba(0, 209, 255, 0.33)',
            borderColor = '2px solid rgba(0, 209, 255, 0.37)',
            textColor = '#00D1FF',            
            label = 'BLS',     
            members = {},
        },
    }
]]

Config.Tags = {
    -- These tags automaticly handled by the script
    ["vip"] = {
        shadow = '0px 0px 11px rgba(255, 168, 0, 0.25)',
        bg = 'rgba(255, 168, 0, 0.33)',
        borderColor = '2px solid rgba(255, 168, 0, 0.37)',
        textColor = '#FFA800',
        label = 'VIP',
        members = {
            -- "1068681439446564964", Discord role id
            -- "license:299055de10756b9de64a546e74309416fc77059f"
        }, 
    },

    ["police"] = {
        shadow = '0px 0px 11px rgba(0, 209, 255, 0.25)',
        bg = 'rgba(0, 209, 255, 0.33)',
        borderColor = '2px solid rgba(0, 209, 255, 0.37)',
        textColor = '#00D1FF',
        
        label = 'PD',
        members = {}, 
    },
    
    ["admin"] = {
        shadow = '0px 0px 11px rgba(255, 90, 90, 0.25)',
        bg = 'rgba(255, 90, 90, 0.33',
        borderColor = '2px solid rgba(255, 90, 90, 0.37)',
        textColor = '#FF5A5A',
        label = 'ADMIN',
        members = {}, 
    },

    ["mechanic"] = {
        shadow = '0px 0px 11px rgba(170, 67, 255, 0.25)',
        bg = 'rgba(170, 67, 255, 0.33)',
        borderColor = '2px solid rgba(170, 67, 255, 0.37)',
        textColor = '#AA43FF',
        label = 'LSC',        
        members = {}, 
    },
    ["taxi"] = {
        shadow = '0px 0px 11px rgba(255, 180, 67, 0.25)',
        bg = 'rgba(255, 180, 67, 0.33)',
        borderColor = '2px solid rgba(255, 180, 67, 0.37)',
        textColor = '#FFB443',
        label = 'TAXI',        
        members = {}, 
    },
    -- ["ooc"] = {
    --     shadow = '0px 0px 11px rgba(0, 209, 255, 0.25)',
    --     bg = 'rgba(0, 209, 255, 0.33)',
    --     borderColor = '2px solid rgba(0, 209, 255, 0.37)',
    --     textColor = '#00D1FF',
    --     label = 'OOC',        
    -- },
    ["anonymous"] = {
        shadow = '0px 0px 11px rgba(0, 0, 0, 0.25)',
        bg = 'rgba(0, 0, 0, 0.33)',
        borderColor = '2px solid rgba(0, 0, 0, 0.37)',
        textColor = '#FFFFFF',
        label = 'ANON',        
    },
    
    -- To make it work these tags you need to make some edits check documentation for more detailed information
    ["twitter"] = {
        shadow = '0px 0px 11px rgba(0, 209, 255, 0.25)',
        bg = 'rgba(0, 209, 255, 0.33)',
        borderColor = '2px solid rgba(0, 209, 255, 0.37)',
        textColor = '#00D1FF',
        label = 'TWT',        
    },
    ["yellowpages"] = {
        shadow = '0px 0px 11px rgba(255, 245, 0, 0.25)',
        bg = 'rgba(255, 245, 0, 0.33)',
        borderColor = '2px solid rgba(255, 245, 0, 0.37)',
        textColor = '#FFF500',
        label = 'YPAGES',        
    },
    ["do"] = {
        shadow = '0px 0px 11px rgba(255, 122, 0, 0.25)',
        bg = 'rgba(255, 122, 0, 0.33)',
        borderColor = '2px solid rgba(255, 122, 0, 0.37)',
        textColor = '#FF7A00',
        label = 'DO',   
    },
    ["me"] = {
        shadow = '0px 0px 11px rgba(255, 0, 245, 0.25)',
        bg = 'rgba(255, 0, 245, 0.33)',
        borderColor = '2px solid rgba(255, 0, 245, 0.37)',
        textColor = '#FF00F5',
        label = 'ME',        
    },
    ["server"] = {
        shadow = '0px 0px 11px rgba(0, 255, 163, 0.25)',
        bg = 'rgba(0, 255, 163, 0.33)',
        borderColor = '2px solid rgba(0, 255, 163, 0.37)',
        textColor = '#00FFA3',
        label = 'SERVER',        
    },
    ["pm"] = {
        shadow = '0px 0px 11px rgba(143, 0, 255, 0.25)',
        bg = 'rgba(143, 0, 255, 0.33)',
        borderColor = '2px solid rgba(143, 0, 255, 0.37)',
        textColor = '#8F00FF',
        label = 'PM',        
    },    
}



Config.EnableTypingIndicator = true -- if true enable "..." over player head when typing to chat
Config.DotText = 'dot' -- dot or any text you want
Config.DotScale = 0.5
Config.DotOffset = {x = 0.33, y = 0.0, z = 0.0} -- Useful if you want to move text overhead somewhere else
Config.Dot1Color = {r = 255, g = 255, b = 255} -- dot color when there is just one "." displaying
Config.Dot2Color = {r = 255, g = 255, b = 255} -- dot color when there are two ".." displaying
Config.Dot3Color = {r = 255, g = 255, b = 255} -- dot color when there are three "..." displaying
Config.CustomDotTextColor = {r = 255, g = 255, b = 255} -- Dot color if Config.DotText is set to other than 'dot'