local inventory, clothing
local jsondecode, jsonencode = json.decode, json.encode

if GetResourceState('ox_inventory') == 'started' then inventory = 'ox_inventory' end
if GetResourceState('qb-inventory') == 'started' then inventory = 'qb-inventory' end
if GetResourceState('lj-inventory') == 'started' then inventory = 'qb-inventory' end
if GetResourceState('qs-inventory') == 'started' then inventory = 'qb-inventory' end
if GetResourceState('inventory') == 'started' then inventory = 'chezza_inventory' end

if GetResourceState('qb-clothing') == 'started' then clothing = 'qb-clothing' end
if GetResourceState('rcore_clothes') == 'started' then clothing = 'rcore_clothes' end
if GetResourceState('renzu_clothes') == 'started' then clothing = 'renzu_clothes' end
if GetResourceState('illenium-appearance') == 'started' then clothing = 'illenium-appearance' end
if GetResourceState('ak47_clothing') == 'started' then clothing = 'ak47_clothing' end


if not IsDuplicityVersion() then --client
    openHotelWardrobe = function()
        if clothing == 'qb-clothing' then
            TriggerServerEvent('InteractSound_SV:PlayOnSource', 'Clothes1', 0.4)
            TriggerEvent('qb-clothing:client:openOutfitMenu')
        elseif clothing == 'rcore_clothes' then
            TriggerEvent('rcore_clothes:openOutfits')
        elseif clothing == 'renzu_clothes' then
            exports.renzu_clothes:OpenClotheInventory(true)
        elseif clothing == 'vms_clothestore' then
            exports['vms_clothestore']:OpenWardrobe()
        elseif clothing == 'illenium-appearance' then
            TriggerEvent('illenium-appearance:client:openOutfitMenu')
        elseif clothing == 'ak47_clothing' then
            exports.ak47_clothing:openOutfit()
        end
    end

    openHotelInventory = function(stashID, slots, capacity)
        if inventory == 'ox_inventory' then
            sh.triggerCallback('sh-hotels:server:registerOXStash', function(state)
                if state then
                    exports.ox_inventory:openInventory('stash', { id = stashID, owner = stashID })
                end
            end, stashID, 'Stash' .. stashID, slots, capacity, stashID)
        elseif inventory == 'qb-inventory' then
            TriggerServerEvent('inventory:server:OpenInventory', 'stash', 'Stash' .. stashID, { maxweight = capacity * 1000, slots = slots })
            TriggerEvent('inventory:client:SetCurrentStash', 'Stash' .. stashID)
        elseif inventory == 'chezza_inventory' then
            TriggerEvent('inventory:openInventory', {
                type = 'stash',
                id = tostring(stashID),
                title = 'Hotel Stash',
                weight = capacity,
                delay = 0,
                save = true,
            })
        end
    end

    removeCollisionOfAttachedObjects = function()
        local playerPed = PlayerPedId()
        local objects = sh.getObjects()
        for i = 1, #objects, 1 do
            local objectCoords = GetEntityCoords(objects[i])
            local distance = #(objectCoords - GetEntityCoords(playerPed))
            if distance <= 2 then
                if IsEntityAttachedToAnyPed(objects[i]) and GetEntityAttachedTo(objects[i]) == playerPed then
                    SetEntityCompletelyDisableCollision(objects[i], false, true)
                end
            end
        end
    end

    if framework == 'qb' then
        AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
            TriggerServerEvent('sh-hotels:server:joined')
        end)
        RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
            TriggerServerEvent('sh-hotels:server:unloaded')
        end)
    elseif framework == 'esx' then
        RegisterNetEvent('esx:playerLoaded', function()
            TriggerServerEvent('sh-hotels:server:joined')
        end)
    end
else --server
    getCitizenID = function(src)
        if framework == 'esx' then
            local xPlayer = ESX.GetPlayerFromId(src);
            if not xPlayer then return end
            return xPlayer.getIdentifier()
        elseif framework == 'qb' then
            local Player = QBCore.Functions.GetPlayer(src);
            if not Player then return end
            return Player.PlayerData.citizenid
        end
    end

    getPlayerRPName = function(src)
        if framework == 'esx' then
            local xPlayer = ESX.GetPlayerFromId(src);
            if not xPlayer then return end
            local firstName = xPlayer.get('firstName')
            local lastName = xPlayer.get('lastName')
            return firstName .. ' ' .. lastName
        elseif framework == 'qb' then
            local Player = QBCore.Functions.GetPlayer(src);
            if not Player then return end
            return Player.PlayerData.charinfo.firstname .. ' ' .. Player.PlayerData.charinfo.lastname
        end
    end

    setHotelLevel = function(src, level)
        if framework == 'esx' then
            updateIndexedData(getCitizenID(src), 'level', level)
        elseif framework == 'qb' then
            local Player = QBCore.Functions.GetPlayer(src);
            if not Player then return end
            Player.Functions.SetMetaData('hotellevel', level)
        end
    end

    setHotelInteriorDesign = function(src, design)
        if framework == 'esx' then
            updateIndexedData(getCitizenID(src), 'design', design)
        elseif framework == 'qb' then
            local Player = QBCore.Functions.GetPlayer(src);
            if not Player then return end
            Player.Functions.SetMetaData('hoteldesign', design)
        end
    end

    getHotelLevel = function(src)
        if framework == 'esx' then
            local level = getIndexedData(getCitizenID(src), 'level')
            if level == nil then
                level = 1
                updateIndexedData(getCitizenID(src), 'level', level)
            end
            return level
        elseif framework == 'qb' then
            local Player = QBCore.Functions.GetPlayer(src);
            if not Player then return end
            local level = Player.PlayerData.metadata['hotellevel']
            if level == nil then
                setHotelLevel(src, 1)
                level = 1
            end
            return level
        end
    end

    getHotelInteriorDesign = function(src)
        if framework == 'esx' then
            local design = getIndexedData(getCitizenID(src), 'design')
            if design == nil then
                design = 'normal'
                updateIndexedData(getCitizenID(src), 'design', design)
            end
            return design
        elseif framework == 'qb' then
            local Player = QBCore.Functions.GetPlayer(src);
            if not Player then return end
            local design = Player.PlayerData.metadata['hoteldesign']
            if design == nil then
                setHotelInteriorDesign(src, 'normal')
                design = 'normal'
            end
            return design
        end
    end

    removeMoney = function(src, count)
        if framework == 'esx' then
            local xPlayer = ESX.GetPlayerFromId(src);
            if not xPlayer then return end
            xPlayer.removeMoney(count)
        elseif framework == 'qb' then
            local Player = QBCore.Functions.GetPlayer(src);
            if not Player then return end
            Player.Functions.RemoveMoney('cash', count, 'sh-hotels')
        end
    end

    getMoney = function(src)
        if framework == 'esx' then
            local xPlayer = ESX.GetPlayerFromId(src);
            if not xPlayer then return end
            return xPlayer.getMoney()
        elseif framework == 'qb' then
            local Player = QBCore.Functions.GetPlayer(src);
            if not Player then return end
            return Player.Functions.GetMoney('cash')
        end
    end

    removeItem = function(src, name, count)
        if framework == 'esx' then
            local xPlayer = ESX.GetPlayerFromId(src);
            if not xPlayer then return end
            xPlayer.removeInventoryItem(name, count)
        elseif framework == 'qb' then
            local Player = QBCore.Functions.GetPlayer(src);
            if not Player then return end
            Player.Functions.RemoveItem(name, count)
        end
    end

    getItemCount = function(src, name)
        if framework == 'esx' then
            local xPlayer = ESX.GetPlayerFromId(src);
            if not xPlayer then return end
            return xPlayer.getInventoryItem(name).count
        elseif framework == 'qb' then
            local Player = QBCore.Functions.GetPlayer(src);
            if not Player then return end
            return Player.Functions.GetItemByName(name).amount
        end
    end

    updateIndexedData = function(citizenid, index, data)
        local cid = tostring(citizenid)
        local file = LoadResourceFile(GetCurrentResourceName(), 'data.json')
        if file then
            local table = jsondecode(file)
            if table[cid] then
                table[cid][index] = data
            else
                table[cid] = { [index] = data }
            end
            SaveResourceFile(GetCurrentResourceName(), 'data.json', jsonencode(table), -1)
        end
    end

    getIndexedData = function(citizenid, index)
        local cid = tostring(citizenid)
        local file = LoadResourceFile(GetCurrentResourceName(), 'data.json')
        if file then
            local table = jsondecode(file)
            if table[cid]?[index] then
                return table[cid][index]
            else
                return nil
            end
        end
    end

    setPlayerInsideHotel = function(citizenid, state)
        local cid = tostring(citizenid)
        local file = LoadResourceFile(GetCurrentResourceName(), 'inside.json')
        if file then
            local table = jsondecode(file)
            table[cid] = state
            SaveResourceFile(GetCurrentResourceName(), 'inside.json', jsonencode(table), -1)
        end
    end

    isPlayerInsideHotel = function(citizenid)
        local cid = tostring(citizenid)
        local file = LoadResourceFile(GetCurrentResourceName(), 'inside.json')
        if file then
            local table = jsondecode(file)
            if table[cid] then
                return table[cid]
            else
                return false
            end
        end
    end
end
