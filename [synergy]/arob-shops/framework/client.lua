RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    PlayerLoaded()
end)

RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    PlayerLoaded()
end)

RegisterCommand('marketload', function()
	PlayerLoaded()
end)

function FrameworkNotify(text)
    if MIKI.Framework == "esx" or MIKI.Framework == "newEsx" then
        ESX.ShowNotification(text)
    else
        QBCore.Functions.Notify(text)
    end
end

function DrawText3Ds(x,y,z, text)
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

RegisterCommand(MIKI.FixCommand, function()
    TriggerEvent('miki-Shops:CloseShop')
end)

-- ekleme
function GetPlayerJob()
    if MIKI.Framework == "esx" or MIKI.Framework == "newEsx" then
        return ESX.GetPlayerData().job.name
    else
        return QBCore.Functions.GetPlayerData().job.name
    end
end