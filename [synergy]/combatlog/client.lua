local QBCore = exports['qb-core']:GetCoreObject()
local combatlog = false
local sure = true

RegisterNetEvent('combatlog')
AddEventHandler('combatlog', function(location, players, clock, discord,reason)
    CreateThread(function()
        Wait(300000)
        sure = false
    end)
    CreateThread(function()
        sure = true
        while sure do
            local dist = #(GetEntityCoords(PlayerPedId()) - location)
            if dist < 20.0 then
                if combatlog then
                DrawMarker(32, location.x, location.y, location.z, 0, 0, 0, 0, 0, 0, 0.7, 0.7, 0.7, 32, 236, 54, 100, 0, 0, 0, 1, 0, 0, 0)
                if dist < 3 then
                    DrawText3Ds(location.x, location.y, location.z + 0.5, "~r~ "..players.steamid.. "- ~g~"..clock.. " ~w~]")
                    DrawText3Ds(location.x, location.y, location.z + 0.7, "~g~[E] ~w~" ..discord.." ~y~~w~] report için kopyala | Sebep:" ..reason)
                    if IsControlJustReleased(0, 38) then
						CopyToClipboard(discord)
                        QBCore.Functions.Notify("Discord adresi kopyalandı")
					end
                end
            end
            end
            Wait(5)
        end
    end)
end)




RegisterCommand("combatlog", function(_, args)
    if not combatlog then
        combatlog = true
        QBCore.Functions.Notify("Artık combatlogları görebilirsin, Kapatmak için /combatlog", "success")
    else
        combatlog = false
        QBCore.Functions.Notify("Artık combatlogları görmeyeceksin, Açmak için /combatlog", "error")
    end
end)

 function DrawText3Ds(x, y, z, text)
	SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end

function CopyToClipboard(discord)
    SendNUIMessage({
        string = string.format(discord)
    })
end