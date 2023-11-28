RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    while not chatLoaded do
        Wait(500)
    end
    TriggerServerEvent('mChat:CheckPlayerPermissions')
end)

RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    while not chatLoaded do
        Wait(500)
    end
    TriggerServerEvent('mChat:CheckPlayerPermissions')

end)

AddEventHandler('onClientResourceStart', function(resName)
    if resName ~= GetCurrentResourceName() then
        return
    end
    while not chatLoaded do
      Wait(500)
    end
    if Config.Framework == 'standalone' then
        TriggerServerEvent('mChat:CheckPlayerPermissions')

    end
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function()
    TriggerServerEvent('mChat:CheckPlayerPermissions')
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate')
AddEventHandler('QBCore:Client:OnJobUpdate', function()
    TriggerServerEvent('mChat:CheckPlayerPermissions')
end)
