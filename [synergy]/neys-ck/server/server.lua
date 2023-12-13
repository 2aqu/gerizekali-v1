local QBCore = exports['qb-core']:GetCoreObject()

CreateThread(function()
    for _, allias in pairs(Config.command_alliases) do
        QBCore.Commands.Add(allias, Lang:t("command.info"),{{name = 'id', help = Lang:t("command.playerid")}}, true, function(source, args)
            local src = source
            local playerId = args[1]
            local Player = QBCore.Functions.GetPlayer(tonumber(playerId))
            if Player then
                local citizenid = Player.PlayerData.citizenid
                DropPlayer(playerId,Lang:t("info.kick_message"))
                CreateThread(function()
                    Wait(200)
        
                    exports.oxmysql:execute('DELETE FROM players WHERE citizenid = ?', { citizenid })
                    exports.oxmysql.execute('DELETE FROM playerskins WHERE citizenid =?', { citizenid })
                    exports.oxmysql:execute('DELETE FROM player_vehicles WHERE citizenid = ?', { citizenid })
                    exports.oxmysql:execute('DELETE FROM player_outfits WHERE citizenid = ?', { citizenid })
                    exports.oxmysql.execute('DELETE FROM tgiann_house WHERE owner =?', { citizenid })
                    TriggerClientEvent("QBCore:Notify",src,Lang:t("info.command_executed"))
                    Config.finish_function(src,playerId)
                end)
            else
                TriggerClientEvent('QBCore:Notify', src, Lang:t("command.player_not_found"), 'error')
            end
        end, 'god')
    end
end)


QBCore.Commands.Add("cklicense", "CK atar", {{name="license", help="License ID"},{name="citizenid", help="Citizen ID"}}, false, function(source, args)

    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
        if args[1] then
            local kisisorgu = exports.oxmysql:executeSync("SELECT license FROM players WHERE license = @license", {
                ['@license'] = args[1]
            })
            if kisisorgu[1] then
                exports.oxmysql:execute("DELETE FROM players WHERE license=@license", {
                    ['@license'] = args[1]
                }) 
                TriggerClientEvent("QBCore:Notify", src, ""..args[1].." License ID'si CKlandı.", "success")
                TriggerEvent("qb-log:server:CreateLog", "neysck", "CK Atıldı", "red", "**"..GetPlayerName(source).."** (CitizenID: "..Player.PlayerData.citizenid.." | ID: "..source..")".." CK **attı!** Cklanan License ID: **"..args[1].."**")
            elseif args[1] == "no" and args[2] then
                local kisisorgu2 = exports.oxmysql:executeSync("SELECT citizenid FROM players WHERE citizenid = @citizenid", {
                    ['@citizenid'] = args[2]
                })
                if kisisorgu2[1] then
                    exports.oxmysql:execute("DELETE FROM players WHERE citizenid=@citizenid", {
                        ['@citizenid'] = args[2]
            
                    }) 
                    TriggerClientEvent("QBCore:Notify", src, ""..args[2].." Citizen ID'si CKlandı.", "success")
                    TriggerEvent("qb-log:server:CreateLog", "neysck", "CK Atıldı", "red", "**"..GetPlayerName(source).."** (CitizenID: "..Player.PlayerData.citizenid.." | ID: "..source..")".." CK **attı!** Cklanan Citizen ID: **"..args[2].."**")
                else
                    TriggerClientEvent("QBCore:Notify", src, "Karakter bulunamadı!", "error")
    
                end

            end
        else
            TriggerClientEvent("QBCore:Notify", src, "Database içersinde bilgiye ulaşılamadı veya geçersiz değer", "error")
        end
end, "god")


QBCore.Commands.Add("ck", "CK atar", {{name="license", help="License ID"},{name="citizenid", help="Citizen ID"}}, false, function(source, args)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    
    if args[1] then
        local kisisorgu = exports.oxmysql:executeSync("SELECT citizenid FROM players WHERE citizenid = @citizenid", {
            ['@citizenid'] = args[1]
        })
        if kisisorgu[1] then
            print("İF Geçti")
            exports.oxmysql:execute("DELETE FROM players WHERE citizenid=@citizenid", {
                ['@citizenid'] = args[1]
            }) 
            TriggerClientEvent("QBCore:Notify", src, ""..args[1].." citizenid ID'si CKlandı.", "success")
            TriggerEvent("qb-log:server:CreateLog", "neysck", "CK Atıldı", "red", "**"..GetPlayerName(source).."** (CitizenID: "..Player.PlayerData.citizenid.." | ID: "..source..")".." CK **attı!** Cklanan License ID: **"..args[1].."**")
        end
    else
        TriggerClientEvent("QBCore:Notify", src, "Database içersinde bilgiye ulaşılamadı veya geçersiz değer", "error")
    end
end, "god")


QBCore.Commands.Add("evsil", "Ev Siler", {{name="citizenid", help="Citizen ID"}}, false, function(source, args)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if args[1] then
        local kisisorgu = exports.oxmysql:executeSync("SELECT owner FROM tgiann_house WHERE owner = @owner", {
            ['@owner'] = args[1]
        })
        if kisisorgu[1] then
            print("İF Geçti")
            exports.oxmysql:execute("DELETE FROM tgiann_house WHERE owner=@owner", {
                ['@owner'] = args[1]
            }) 
            TriggerClientEvent("QBCore:Notify", src, ""..args[1].." citizenid ID'li kişinin evi silindi.", "success")
            TriggerEvent("qb-log:server:CreateLog", "neysevck", "Ev Silindi", "red", "**"..GetPlayerName(source).."** (CitizenID: "..Player.PlayerData.citizenid.." | ID: "..source..")".." Ev **Silindi!** Silinnen License ID: **"..args[1].."**")
        end
    else
        TriggerClientEvent("QBCore:Notify", src, "Database içersinde bilgiye ulaşılamadı veya geçersiz değer", "error")
    end
end, "god")

QBCore.Commands.Add("aracsil", "Girilen Plakalı Aracı Siler", {{name="plaka", help="Araç Plakası"}}, false, function(source, args)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if args[1] then
        local plakasorgu = exports.oxmysql:executeSync("SELECT plate FROM player_vehicles WHERE plate = @plate", {
            ['@plate'] = args[1]
        })
        if plakasorgu[1] then
            exports.oxmysql:execute("DELETE FROM player_vehicles WHERE plate=@plate", {
                ['@plate'] = args[1]
    
            }) 
            TriggerClientEvent("QBCore:Notify", src, "Plaka başarıyla silindi: "..args[1], "success")
            TriggerEvent("qb-log:server:CreateLog", "neyscardel", "Plaka sildi", "green", "**"..GetPlayerName(source).."** (CitizenID: "..Player.PlayerData.citizenid.." | ID: "..source..")".." Plaka **sildi**. Silinen Plaka: **"..args[1].."**")
        else
            TriggerClientEvent("QBCore:Notify", src, "Plaka bulunamadı.", "error")
        end

    else
        TriggerClientEvent("QBCore:Notify", src, "Geçersiz Değer", "error")
    end
end, "god")