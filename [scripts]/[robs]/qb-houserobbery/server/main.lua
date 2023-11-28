local QBCore = exports['qb-core']:GetCoreObject()

-- Functions

local function ResetHouseStateTimer(house)
    local num = math.random(3333333, 11111111)
    local time = tonumber(num)
    SetTimeout(time, function()
        Config.Houses[house]["opened"] = false
        for _, v in pairs(Config.Houses[house]["furniture"]) do
            v["searched"] = false
        end
        TriggerClientEvent('qb-houserobbery:client:ResetHouseState', -1, house)
    end)
end

-- Callbacks

QBCore.Functions.CreateCallback('qb-houserobbery:server:GetHouseConfig', function(_, cb)
    cb(Config.Houses)
end)

-- Events

RegisterNetEvent('qb-houserobbery:server:SetBusyState', function(cabin, house, bool)
    Config.Houses[house]["furniture"][cabin]["isBusy"] = bool
    TriggerClientEvent('qb-houserobbery:client:SetBusyState', -1, cabin, house, bool)
end)

RegisterNetEvent('qb-houserobbery:server:enterHouse', function(house)
    local src = source
    if not Config.Houses[house]["opened"] then
        ResetHouseStateTimer(house)
        TriggerClientEvent('qb-houserobbery:client:setHouseState', -1, house, true)
    end
    TriggerClientEvent('qb-houserobbery:client:enterHouse', src, house)
    Config.Houses[house]["opened"] = true
end)

RegisterNetEvent('qb-houserobbery:server:searchCabin', function(cabin, house)
    local src = source
    local name = GetPlayerName(src)
    local Player = QBCore.Functions.GetPlayer(src)
    local luck = math.random(1, 10)
    local itemFound = math.random(1, 4)
    local itemCount = 1

    local Tier = 1
    if Config.Houses[house]["tier"] == 1 then
        Tier = 1
    elseif Config.Houses[house]["tier"] == 2 then
        Tier = 2
    elseif Config.Houses[house]["tier"] == 3 then
        Tier = 3
    end

    if itemFound < 4 then
        if luck == 10 then
            itemCount = 3
        elseif luck >= 6 and luck <= 8 then
            itemCount = 2
        end

        for _ = 1, itemCount, 1 do
            local randomItem = Config.Rewards[Tier][Config.Houses[house]["furniture"][cabin]["type"]][math.random(1, #Config.Rewards[Tier][Config.Houses[house]["furniture"][cabin]["type"]])]
            local itemInfo = QBCore.Shared.Items[randomItem]
            if math.random(1, 100) == 69 then
                randomItem = "painkillers"
                itemInfo = QBCore.Shared.Items[randomItem]
                Player.Functions.AddItem(randomItem, 2)
                TriggerClientEvent('inventory:client:ItemBox', src, itemInfo, "add")
                TriggerEvent('qb-log:server:CreateLog', 'houserobbery', 'EV Soygunu', 'green', '**'..name..'** (CitizenID: '..Player.PlayerData.citizenid..' | ID: '..src..') \n**Ev soygunu sonucunda 2 adet '.. itemInfo ..' verildi.**')
            elseif math.random(1, 100) == 35 then
                randomItem = "weed_og-kush_seed"
                itemInfo = QBCore.Shared.Items[randomItem]
                Player.Functions.AddItem(randomItem, 1)
                TriggerClientEvent('inventory:client:ItemBox', src, itemInfo, "add")
                TriggerEvent('qb-log:server:CreateLog', 'houserobbery', 'EV Soygunu', 'green', '**'..name..'** (CitizenID: '..Player.PlayerData.citizenid..' | ID: '..src..') \n**Ev soygunu sonucunda 1 adet '.. (itemInfo or "Bilinmeyen item, " .. randomItem)  ..' verildi.**')
            else
                if not itemInfo["unique"] then
                    local itemAmount = math.random(1, 3)
                    if randomItem == "joint" then
                        itemAmount = math.random(1, 2)
                    elseif randomItem == "joint" then
                        itemAmount = math.random(1, 2)
                    end

                    Player.Functions.AddItem(randomItem, itemAmount)
                    TriggerEvent('qb-log:server:CreateLog', 'houserobbery', 'EV Soygunu', 'green', '**'..name..'** (CitizenID: '..Player.PlayerData.citizenid..' | ID: '..src..') \n**Ev soygunu sonucunda '.. itemAmount ..' adet '.. randomItem ..' verildi.**')
                else
                    Player.Functions.AddItem(randomItem, 1)
                    TriggerEvent('qb-log:server:CreateLog', 'houserobbery', 'EV Soygunu', 'green', '**'..name..'** (CitizenID: '..Player.PlayerData.citizenid..' | ID: '..src..') \n**Ev soygunu sonucunda 1 adet '.. randomItem ..' verildi.**')
                end
                TriggerClientEvent('inventory:client:ItemBox', src, itemInfo, "add")
            end
            Wait(500)
            -- local weaponChance = math.random(1, 100)
        end
    else
        TriggerClientEvent('QBCore:Notify', src, Lang:t("error.emty_box"), 'error')
    end

    Config.Houses[house]["furniture"][cabin]["searched"] = true
    TriggerClientEvent('qb-houserobbery:client:setCabinState', -1, house, cabin, true)
end)

RegisterNetEvent('qb-houserobbery:server:removeAdvancedLockpick', function()
    local Player = QBCore.Functions.GetPlayer(source)

    if not Player then return end

    Player.Functions.RemoveItem('advancedlockpick', 1)
end)

RegisterNetEvent('qb-houserobbery:server:removeLockpick', function()
    local Player = QBCore.Functions.GetPlayer(source)

    if not Player then return end

    Player.Functions.RemoveItem('lockpick', 1)
end)
