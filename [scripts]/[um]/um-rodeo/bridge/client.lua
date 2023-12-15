if GetResourceState('es_extended') == 'started' then

    ESX = exports.es_extended:getSharedObject()

    AddEventHandler('playerSpawned', function()
        TriggerServerEvent('um-rodeo:server:requestCurrentData')
    end)

    function GetScoreNui()
        ESX.TriggerServerCallback('um-rodeo:server:getScoreNui', function(result)
            SetNuiFocus(true,false)
            SendNUIMessage({action = "leaderboard", result = result})
        end)
    end

    function GetMoney(id)
        ESX.TriggerServerCallback('um-rodeo:server:getMoney', function(result)
            if result >= Config.Payment.price then
                TriggerServerEvent('um-rodeo:server:RemoveMoney', Config.Payment.price)
                SetPlayerToChildBulls(id)
            else
                ShowNotification(Config.Lang.lang_nomoney .. ' $' .. Config.Payment.price)
            end
        end)
    end

    function ShowNotification(text)
        ESX.ShowNotification(text)
    end

elseif GetResourceState('qb-core') == 'started' then

    QBCore = exports['qb-core']:GetCoreObject()

    RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
        TriggerServerEvent('um-rodeo:server:requestCurrentData')
    end)

    function GetScoreNui()
        QBCore.Functions.TriggerCallback('um-rodeo:server:getScoreNui', function(result)
            SetNuiFocus(true,false)
            SendNUIMessage({action = "leaderboard", result = result})
        end)
    end

    function GetMoney(id)
        QBCore.Functions.TriggerCallback('um-rodeo:server:getMoney', function(result)
            if result >= Config.Payment.price then
                TriggerServerEvent('um-rodeo:server:RemoveMoney', Config.Payment.price)
                SetPlayerToChildBulls(id)
            else
                ShowNotification(Config.Lang.lang_nomoney .. ' $' .. Config.Payment.price)
            end
        end)
    end

    function ShowNotification(text)
        QBCore.Functions.Notify(text)
    end

else
    print('No ESX or QB-Core found')
    print('Standalone')
end

