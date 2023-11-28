local QBCore = exports['qb-core']:GetCoreObject()


RegisterCommand("pedver", function(source, args, rawCommand)
    local src = source
    local playerId = args[1]
    local pedName = args[2]
    local Player = QBCore.Functions.GetPlayer(tonumber(playerId))
    
    if playerId == nil or pedName == nil then
        QBCore.Functions.Notify("Id veya ped ismi hatalı girdiniz.")
        return
    end
    if Player then
        local citizenid = Player.PlayerData.citizenid
        -- modeli yapıştır knk
        MySQL.Async.execute("UPDATE playerskins SET model = @model WHERE citizenid = @citizenid", {['@citizenid'] = citizenid, ['@model'] = pedName}, function()
            --print("Oyuncu modeli veritabanında güncellendi.")
        end)

        MySQL.Async.fetchScalar("SELECT skin FROM playerskins WHERE citizenid = @citizenid", {['@citizenid'] = citizenid}, function(skinData)
            if skinData then
            -- Deserialize skin
                local skinData = json.decode(skinData)

                -- Update the model data
                skinData.model = pedName

                -- Serialize skin data
                local skinData = json.encode(skinData)

                -- Update player skin data in the database
                MySQL.Async.execute("UPDATE playerskins SET skin = @skin WHERE citizenid = @citizenid", {['@citizenid'] = citizenid, ['@skin'] = skinData}, function()
                --print("Oyuncu skin verileri veritabanında güncellendi.")
                end)
            end
        end)
    end
    TriggerClientEvent('changePlayerPed', playerId, pedName)
end, "admin")


QBCore.Functions.CreateCallback('checkpedif', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local result = MySQL.Sync.fetchAll('SELECT * FROM playerskins WHERE citizenid = ?', { Player.PlayerData.citizenid })
    if result ~= nil and #result > 0 then
        cb(result[1].model)
    else
        print("Kişinin karakteri bulunamadı ID: ", src)
    end
end)



RegisterServerEvent("changeped", function(pedname)
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)
  --  MySQL.Async.execute('UPDATE players SET pedname = ? WHERE citizenid = ?', {pedname, Player.PlayerData.citizenid } )
    discordLog(Player.PlayerData.charinfo.firstname .." ".. Player.PlayerData.charinfo.lastname .." ".. 'Changed the Ped'.. " "..pedname )

end)



function discordLog(name, message)
    local data = {
        {
            ["color"] = '3553600',
            ["title"] = "**".. name .."**",
            ["description"] = message,
        }
    }
    PerformHttpRequest(Config.discord['webhook'], function(err, text, headers) end, 'POST', json.encode({username = Config.discord['name'], embeds = data, avatar_url = Config.discord['image']}), { ['Content-Type'] = 'application/json' })
end

QBCore.Functions.CreateCallback('smallresources:server:GetCurrentPlayersxa', function(source, cb)
    local TotalPlayers = 0
    for k, v in pairs(QBCore.Functions.GetPlayers()) do
        TotalPlayers = TotalPlayers + 1
    end
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)
    if Player then
        local PlayerName = Player.PlayerData.charinfo.firstname.." "..Player.PlayerData.charinfo.lastname
        cb(TotalPlayers,PlayerName,src)
    end
end)


