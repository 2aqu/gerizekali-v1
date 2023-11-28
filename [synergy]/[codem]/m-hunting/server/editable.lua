Editable = {}
Framework = nil
Citizen.CreateThread(function()
    Framework = GetFrameworkObject()
end)

Editable.GetUser = function(source)
    local src = source
    if Config.Framework == "new-qb" or Config.Framework == 'old-qb' then
        return Framework.Functions.GetPlayer(src)
    elseif Config.Framework == 'esx' then
        return Framework.GetPlayerFromId(src)
    end
end

Editable.GetUserIdentifier = function(source)
    local Player = Editable.GetUser(source)
    local identifier = false
    if Player then
        if Config.Framework == 'esx' then
            identifier = Player.identifier
        else
            identifier = Player.PlayerData.citizenid
        end
    end
    return identifier
end

Editable.GetUserItemList = function(source) 
    local user = Editable.GetUser(source)
    ItemList = {}
    if Config.Inventory == 'qb' then
        local inventory = user.PlayerData.items
        for k,v in pairs(inventory) do
            if (Config.ItemPrices[v.name] ~= nil) then
                ItemList[#ItemList+1] = {
                    itemname = v.name,
                    count = v.amount or v.count,
                    type = Config.ItemPrices[v.name].type,
                    label = v.label
                }
            end
        end
    elseif Config.Inventory == 'esx' then
        local inventory = user.getInventory()
        for k,v in pairs(inventory) do
            if (Config.ItemPrices[v.name] ~= nil) then
                ItemList[#ItemList+1] = {
                    itemname = v.name,
                    count = v.count or v.amount,
                    type = Config.ItemPrices[v.name].type,
                    label = v.label
                }
            end
        end
    elseif Config.Inventory == "ox_inventory" then
        local inventory = exports.ox_inventory:GetInventory(source, false)
        for k,v in pairs(inventory.items) do
            if (Config.ItemPrices[v.name] ~= nil) then
                ItemList[#ItemList+1] = {
                    itemname = v.name,
                    count = v.count,
                    type = Config.ItemPrices[v.name].type,
                    label = v.label
                }
            end
        end
    end
    return ItemList
end

Editable.AddItem = function(source, item, amount)
    local src = source
    local user = Editable.GetUser(src)
    if Config.Inventory == "qb" then
        if item == Config.WeaponHash then
            info = {
                ammo = Config.AmmoItem.count
            }
            user.Functions.AddItem(item, amount, false, info)
            return
        end
        user.Functions.AddItem(item, amount)
    elseif Config.Inventory == "esx" then
        if item == Config.WeaponHash then
            if Config.WeaponAsItem then
                user.addInventoryItem(item, amount)
            else
                user.addWeapon(item, Config.AmmoItem.count)
            end
            user.addInventoryItem(Config.AmmoItem.name, Config.AmmoItem.count)
            return
        end
        user.addInventoryItem(item, amount)
    elseif Config.Inventory == "ox_inventory" then
        if item == Config.WeaponHash then
            info = {
                ammo = Config.AmmoItem.count
            }
            exports.ox_inventory:AddItem(source, item, 1, info)
            return
        end
        exports.ox_inventory:AddItem(source, item, amount)
    end
end

Editable.RemoveItem = function(source, item, amount)
    local src = source
    local user = Editable.GetUser(src)
    if Config.Inventory == "qb" then
        user.Functions.RemoveItem(item, amount)
    elseif Config.Inventory == "esx" then
        user.removeInventoryItem(item, amount)
        user.removeInventoryItem(Config.AmmoItem.name, Config.AmmoItem.count)
    elseif Config.Inventory == "ox_inventory" then
        exports.ox_inventory:RemoveItem(source, item, amount)
    end
end

Editable.GetName = function(source)
    local Player = Editable.GetUser(source)
    if Config.UseCharacterName then
        if Config.Framework == "new-qb" or Config.Framework == 'old-qb' then
            return Player.PlayerData.charinfo.firstname..' '..Player.PlayerData.charinfo.lastname
        else
            return GetPlayerCharacterNameESX(source) 
        end
    else
        return GetPlayerName(source)
    end 
end

GetPlayerCharacterNameESX = function(source)
    local identifier = Editable.GetUserIdentifier(source)
    local result = ExecuteSql("SELECT * FROM users WHERE identifier = '"..identifier.."'")
    if result[1] then 
        return result[1].firstname..' '..result[1].lastname 
    end
end

SavePlayerDataToSQL = function(identifier, level, xp, huntedanimals, hunts, recenthunts, name, image)
    local result = ExecuteSql("SELECT * FROM m_hunting WHERE identifier = '"..identifier.."'")
    if result[1] == nil then
        ExecuteSql(string.format(
            "INSERT INTO m_hunting (identifier, level, xp, huntedanimals, hunts, recenthunts, name, image) VALUES ('%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s')",
            identifier, level, xp, huntedanimals, hunts, json.encode(recenthunts), name:gsub("'", "''"), image:gsub("'", "''")
        ))
    else
        ExecuteSql(string.format(
            "UPDATE m_hunting SET level = '%s', xp = '%s', huntedanimals = '%s', hunts = '%s', recenthunts = '%s', name = '%s', image = '%s' WHERE identifier = '%s'",
            level, xp, huntedanimals, hunts, json.encode(recenthunts), name:gsub("'", "''"), image:gsub("'", "''"), identifier
        ))
    end
end