local dot = ""
local players = {}
RegisterNetEvent("mChat:SyncTypingIndicator")
AddEventHandler("mChat:SyncTypingIndicator", function(source, toggle)
    source = tonumber(source)
    local sonid = GetPlayerFromServerId(source)
    local monid = PlayerId()
    
    if sonid == -1 then
      return
    end

    if toggle then
      players[source] = {shouldOpen = toggle, monId = monid, sonId = sonid, inDist = false, dot = 0, lastUpdate = nil, lastUpdate2 = nil}
    else
      players[source] = nil
    end
end)

local defaultScale = Config.DotScale -- Text scale
function DrawText3D(coords, text, color)
    local camCoords = GetGameplayCamCoord()
    local dist = #(coords - camCoords)
    local scale = 200 / (GetGameplayCamFov() * dist)
    SetTextColour(color.r, color.g, color.b, 255)
    SetTextFont(4)
    SetTextScale(0.0, defaultScale * scale)
    SetTextDropshadow(0, 0, 0, 0, 55)
    SetTextDropShadow()
    SetTextCentre(true)
    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringPlayerName(text)
    SetDrawOrigin(coords, 0)
    EndTextCommandDisplayText(0.0, 0.0)
    ClearDrawOrigin()
end

if Config.EnableTypingIndicator then

    CreateThread(function()
        while true do
            for k , v in pairs(players) do
                if v then
                    v.dot = v.dot + 1
                    if v.dot > 3 then
                      v.dot = 0
                    end
                end
            end
            Wait(750)
        end
    end)
    
    CreateThread(function()
        while true do
            for k, v in pairs(players) do
                if v then
                    local target = GetPlayerPed(v.sonId)
                    local coords = GetPedBoneCoords(target, 0x796E, Config.DotOffset.x, Config.DotOffset.y, Config.DotOffset.z)
                    if Config.DotText == 'dot' then
                        if v.dot == 1 then
                            DrawText3D(coords,".", Config.Dot1Color)
                        end
                        if v.dot == 2 then
                            DrawText3D(coords,"..", Config.Dot2Color)
                        end
                        if v.dot == 3 then
                            DrawText3D(coords,"...", Config.Dot3Color)
                        end
                    else
                        DrawText3D(coords, Config.DotText, Config.CustomDotTextColor)                        
                    end
                end
            end
            Wait(0)
        end
    end)
end

RegisterNetEvent("mChat:OnChatOpen")
AddEventHandler("mChat:OnChatOpen", function()
    if Config.EnableTypingIndicator then
        dot = ""
        TriggerServerEvent('mChat:SyncTypingIndicator', true)
    end
end)


RegisterNetEvent("mChat:OnChatClose")
AddEventHandler("mChat:OnChatClose", function()
    if Config.EnableTypingIndicator then
        dot = ""
        TriggerServerEvent('mChat:SyncTypingIndicator', false)
    end
end)
