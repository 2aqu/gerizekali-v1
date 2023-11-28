local QBCore = exports['qb-core']:GetCoreObject()
local Cooldown = {}

RegisterServerEvent('mt-ammurobbery:server:getVitrineItems', function(vitrineKey) 
    local src = source
    local Player  = QBCore.Functions.GetPlayer(src)
    local prob = math.random(1, 100)
    local vitrine = Config.ammuVitrines[vitrineKey]
    local itemFound = false
    for i = 1, #vitrine.items do
        if(prob <= vitrine.items[i].maxChance and prob >= vitrine.items[i].minChance) then
            itemFound = true
            local quantity = math.random(vitrine.items[i].minQuantity, vitrine.items[i].maxQuantity)
            if Player.Functions.AddItem(vitrine.items[i].item, quantity) then
                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[vitrine.items[i].item], 'add')
            else
                TriggerClientEvent('QBCore:Notify', src, Lang:t("ammurobbery.error_inventory"), 'error')
            end  
        end
    end

    if not itemFound then
        TriggerClientEvent('QBCore:Notify', src, 'Burası boş...', 'error')
    end
end)

-- Cooldown
RegisterServerEvent('mt-ammurobbery:Server:CooldownVitrines')
AddEventHandler('mt-ammurobbery:Server:CooldownVitrines', function(vitrineKey)
    if not Cooldown[vitrineKey] then
        Cooldown[vitrineKey] = true
        CreateThread(function()
            Wait(Config.cooldownTimer)
            Cooldown[vitrineKey] = false
        end)
    end
end)

QBCore.Functions.CreateCallback("mt-ammurobbery:CooldownVitrines",function(source, cb, vitrineKey)
    cb(Cooldown[vitrineKey])
end)
