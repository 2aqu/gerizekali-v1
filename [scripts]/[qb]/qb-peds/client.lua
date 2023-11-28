local QBCore = exports['qb-core']:GetCoreObject()


local function SetPlayerPed(pedmodel)
    local hash = GetHashKey(pedmodel)
    RequestModel(hash)
    while not HasModelLoaded(hash) or not IsModelInCdimage(hash) do
        RequestModel(hash)
        Citizen.Wait(4)
    end

    SetPlayerModel(PlayerId(), hash)
    SetPedDefaultComponentVariation(PlayerPedId())

    SetModelAsNoLongerNeeded(hash)
end

RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.TriggerCallback('checkpedif', function(cb)
        if cb == "mp_m_freemode_01" or cb == "mp_f_freemode_01" then
            return
        else
            SetPlayerPed(cb)
        end
    end)
end)

RegisterNetEvent('changePlayerPed')
AddEventHandler('changePlayerPed', function(pedName)
    local playerPed = GetPlayerPed(-1)
    local hash = GetHashKey(pedName)
    RequestModel(hash)
    while not HasModelLoaded(hash) or not IsModelInCdimage(hash) do
        RequestModel(hash)
        Citizen.Wait(4)
    end

    SetPlayerModel(PlayerId(), hash)
    SetPedDefaultComponentVariation(PlayerPedId())

    SetModelAsNoLongerNeeded(hash)
end)


-- -- To Set This Up visit https://forum.cfx.re/t/how-to-updated-discord-rich-presence-custom-image/157686

-- CreateThread(function()
--     while true do
--         -- This is the Application ID (Replace this with you own)
-- 	    SetDiscordAppId(1068800430232059965) --o zaman tamam doğru burası

--         -- Here you will have to put the image name for the "large" icon.
-- 	    SetDiscordRichPresenceAsset('logo')
        
--         -- (11-11-2018) New Natives:

--         -- Here you can add hover text for the "large" icon.
--         SetDiscordRichPresenceAssetText('F Roleplay')
       
--         -- Here you will have to put the image name for the "small" icon.
--         SetDiscordRichPresenceAssetSmall('logo')

--         -- Here you can add hover text for the "small" icon.
--        -- SetDiscordRichPresenceAssetSmallText('This is a lsmall icon with text')

--        QBCore.Functions.TriggerCallback('smallresources:server:GetCurrentPlayersxa', function(TotalPlayers,PlayerName,PlayerID)
--         SetRichPresence('['..PlayerID.. '] - ' .. PlayerName .. '\n discord.gg/krarp')
--        end)

  
--         SetRichPresence("Night V Roleplay")


--         -- (26-02-2021) New Native:
--         SetDiscordRichPresenceAction(0, "Discord", "https://discord.gg/krarp")
--         SetDiscordRichPresenceAction(1, "Sunucuya Bağlanmak için!", "fivem://connect/91.151.94.72:30120")

--         -- It updates every minute just in case.
-- 	Wait(60000)
--     end
-- end)