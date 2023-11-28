QBCore.Functions.CreateCallback('miki-ShopSystem:GetPlayerItems', function(source, cb)
    local src = source
    local Player = GetPlayer(src)
    local items = {}
    local itemlist = {}
    if MIKI.Framework == "esx" or MIKI.Framework == "newEsx" then
        items = Player.inventory
        for k,v in pairs(items) do
            itemlist[v.name] = {
                count = v.count,
                label = v.label,
            }
        end
    else
        items = Player.PlayerData.items
        for k,v in pairs(items) do
            itemlist[v.name] = {
                count = v.count,
                label = v.label,
            }
        end
    end
    cb(itemlist)
end)

function GetPlayer(id)
    if MIKI.Framework == "esx" or MIKI.Framework == "newEsx" then
        return ESX.GetPlayerFromId(id)
    else
        return QBCore.Functions.GetPlayer(id)
    end
end

function AddItem(playerid, itemname, amount)
    if amount == 0 then
        return
    end
    local Player = GetPlayer(playerid)
    if MIKI.Framework == "esx" or MIKI.Framework == "newEsx" then
        Player.addInventoryItem(itemname, amount)
    else
        Player.Functions.AddItem(itemname, amount)
    end
end

function GetAccountMoney(playerid, account)
    local Player = GetPlayer(playerid)
    if MIKI.Framework == "esx" or MIKI.Framework == "newEsx" then
        return Player.getAccount(account).money
    else
        if account == "money" then
            account = "cash"
        end
        return Player.PlayerData.money[account]
    end
end

function RemoveMoney(playerid, account, amount)
    local Player = GetPlayer(playerid)
    if MIKI.Framework == "esx" or MIKI.Framework == "newEsx" then
        Player.removeAccountMoney(account, tonumber(amount))
    else
        if account == "money" then
            account = "cash"
        end
        Player.Functions.RemoveMoney(account, tonumber(amount))
    end
end

function GetIdentifier(playerid)
    local Player = GetPlayer(playerid)
    if MIKI.Framework == "esx" or MIKI.Framework == "newEsx" then
        return Player.identifier
    else
        return Player.PlayerData.citizenid
    end
end

function GetPlayerName(playerid)
    local Player = GetPlayer(playerid)
    if MIKI.Framework == "esx" or MIKI.Framework == "newEsx" then
        return Player.getName()
    else
        return Player.PlayerData.charinfo["firstname"] .. " " .. Player.PlayerData.charinfo["lastname"]
    end
end

function RemoveItem(playerid, itemname, amount)
    local Player = GetPlayer(playerid)
    if MIKI.Framework == "esx" or MIKI.Framework == "newEsx" then
        Player.removeInventoryItem(itemname, amount)
    else
        Player.Functions.RemoveItem(itemname, amount)
    end
end

function AddMoney(playerid, account, amount)
    local Player = GetPlayer(playerid)
    if MIKI.Framework == "esx" or MIKI.Framework == "newEsx" then
        Player.addAccountMoney(account, tonumber(amount))
    else
        if account == "money" then
            account = "cash"
        end
        Player.Functions.AddMoney(account, tonumber(amount))
    end
end

function GetSteamProfilePhoto(playerSteamID)
    local steamAPIURL = "http://api.steampowered.com/ISteamUser/GetPlayerSummaries/v0002/?key=" .. SteamApiKey .. "&steamids=" .. playerSteamID

    local result = nil

    PerformHttpRequest(steamAPIURL, function(statusCode, responseBody, headers)
        if statusCode == 200 then
            local data = json.decode(responseBody)
            local profilePhotoURL = data.response.players[1].avatarfull
            result = profilePhotoURL
        else
            print("Steam API Error: " .. statusCode)
        end
    end, 'GET', '', { ['Content-Type'] = 'application/json' })

    while result == nil do
        Citizen.Wait(0) -- Yanıt gelene kadar bekle
    end

    return result
end