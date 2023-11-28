-- To Set This Up visit https://forum.cfx.re/t/how-to-updated-discord-rich-presence-custom-image/157686
local QBCore = exports['qb-core']:GetCoreObject()
CreateThread(function()
    while true do
        Wait(60000)
        if LocalPlayer.state.isLoggedIn then
            local plyData = QBCore.Functions.GetPlayerData()
            -- This is the Application ID (Replace this with you own)
            SetDiscordAppId("1051862664453820478")

            -- Here you will have to put the image name for the "large" icon.
            SetDiscordRichPresenceAsset('logo')
            
            -- (11-11-2018) New Natives:

            -- Here you can add hover text for the "large" icon.
            SetDiscordRichPresenceAssetText('Coast V')
        
            -- Here you will have to put the image name for the "small" icon.
            SetDiscordRichPresenceAssetSmall('logo')

            -- Here you can add hover text for the "small" icon.
            SetDiscordRichPresenceAssetSmallText('Coast V')

            QBCore.Functions.TriggerCallback('smallresources:server:GetCurrentPlayers', function(result)
                name = plyData.charinfo.firstname.. " ".. plyData.charinfo.lastname
                SetRichPresence("[".. GetPlayerServerId(PlayerId()) .."] - ".. name .. ' '.. result .. "/256")
            end)

            -- (26-02-2021) New Native:

            --[[ 
                Here you can add buttons that will display in your Discord Status,
                First paramater is the button index (0 or 1), second is the title and 
                last is the url (this has to start with "fivem://connect/" or "https://") 
            ]]--
            SetDiscordRichPresenceAction(0, "Discord", "https://discord.gg/coastv")
            SetDiscordRichPresenceAction(1, "Web Site", "https://coastv.com.tr/")

            -- It updates every minute just in case.
        end
    end
end)