QBCore = exports['qb-core']:GetCoreObject()

Config = {}
Steam = {}

-- Set this to 'steam' if u want to use Steam verification / Set this to 'license' if u want to use Rockstar License verification.
Config.VerificationMethod = 'license' -- or 'license'
Config.VerifyBoth = false -- Set to true if u want to verify Steam and Rockstar License "Config.VerificationMethod" will be ignored in this case.

-- Discord Logs
Config.DiscordWebhookLink =
    'https://discord.com/api/webhooks/1168645202819428492/fptM11O38j15qKy9L6lE6R6LUe5ICtuY-3KG6Uo7VJCsMmM4-qcT6_ijJIse2tfpS3yv'
Config.DiscordColor = '6749952'
Config.DiscordUserName = 'neys-guard'
Config.DiscordTitle = 'Sunucuya çift license ile giriş yapmaya çalıştı'
Config.EnableDiscordLogs = true

Steam = {}

-- Set this to 'steam' if u want to use Steam verification / Set this to 'license' if u want to use Rockstar License verification.
Steam.VerificationMethod = 'steam' -- or 'license'
Steam.VerifyBoth = true -- Set to true if u want to verify Steam and Rockstar License "Steam.VerificationMethod" will be ignored in this case.

-- Discord Logs
Steam.DiscordWebhookLink =
    'https://discord.com/api/webhooks/1168645389277220945/XgWcJcSfQPpPOq7b-U6M8blWWwSey__L2KWR_wqlSVq4WRIPtSV9YmpyCJ3Y5hA9sNtD'
Steam.DiscordColor = '6749952'
Steam.DiscordUserName = 'neys-guard'
Steam.DiscordTitle = 'Sunucuya çift steam ile giriş yapmaya çalıştı'
Steam.EnableDiscordLogs = true

local function OnPlayerConnecting(name, _, deferrals)
    local player = source
    local isIdtypeAlreadyInUse = false
    local isIdtypeAlreadyInUse2 = false
    local idtype
    if Config.VerifyBoth then
        local idtype2
    end
    local identifiers = GetPlayerIdentifiers(player)

    deferrals.defer()

    Wait(0)

    deferrals.update(string.format('Bağlantın Kontrol Ediliyor...', name))

    if Config.VerifyBoth then
        for _, v in pairs(identifiers) do
            if string.find(v, 'steam') then
                idtype = v
                break
            end
        end
        for _, v in pairs(identifiers) do
            if string.find(v, 'license') then
                idtype2 = v
                break
            end
        end
    else
        for _, v in pairs(identifiers) do
            if string.find(v, Config.VerificationMethod) then
                idtype = v
                break
            end
        end
    end

    Wait(0)

    deferrals.update(string.format('Sunucu verileri kontrol ediliyor...', name))

    if Config.VerifyBoth then
        isIdtypeAlreadyInUse = IsIdtypeInUse(idtype, 'steam')
        isIdtypeAlreadyInUse2 = IsIdtypeInUse(idtype2, 'license')
    else
        isIdtypeAlreadyInUse = IsIdtypeInUse(idtype, Config.VerificationMethod)
    end

    Wait(0)

    if Config.VerifyBoth then
        if isIdtypeAlreadyInUse or isIdtypeAlreadyInUse2 then
            deferrals.done('Sunucuya Giriş Yapamazsın Aroba ulaş - license!..')

            if Config.EnableDiscordLogs then
                local dcsend = {{
                    ['title'] = Config.DiscordTitle,
                    ['color'] = Config.DiscordColor,
                    ['description'] = 'Oyuncu Bilgileri: **' .. idtype .. ' / ' .. idtype2 .. '**',
                    ['footer'] = {
                        ['text'] = 'bulgar_dconnect_block'
                    }
                }}
                PerformHttpRequest(Config.DiscordWebhookLink, function(err, text, headers)
                end, 'POST', json.encode({
                    username = Config.DiscordUserName,
                    embeds = dcsend
                }), {
                    ['Content-Type'] = 'application/json'
                })
            end
        else
            deferrals.done()

            -- Add any additional defferals here you may need for example queue system!
        end
    else
        if isIdtypeAlreadyInUse then
            deferrals.done('Sunucuya Giriş Yapamazsın Aroba ulaş - license!!')

            if Config.EnableDiscordLogs then
                local dcsend = {{
                    ['title'] = Config.DiscordTitle,
                    ['color'] = Config.DiscordColor,
                    ['description'] = 'Player Identifier: **' .. idtype .. '**',
                    ['footer'] = {
                        ['text'] = 'bulgar_dconnect_block'
                    }
                }}
                PerformHttpRequest(Config.DiscordWebhookLink, function(err, text, headers)
                end, 'POST', json.encode({
                    username = Config.DiscordUserName,
                    embeds = dcsend
                }), {
                    ['Content-Type'] = 'application/json'
                })
            end
        else
            deferrals.done()

            -- Add any additional defferals here you may need for example queue system!
        end
    end
end

AddEventHandler('playerConnecting', OnPlayerConnecting)

function IsIdtypeInUse(idtype, vmethod)
    local players = GetPlayers()
    for _, player in pairs(players) do
        local identifiers = GetPlayerIdentifiers(player)
        for _, id in pairs(identifiers) do
            if string.find(id, vmethod) then
                local playerIdtype = id
                if playerIdtype == idtype then
                    return true
                end
            end
        end
    end
    return false
end

RegisterNetEvent('spy-bb:check', function(source, cb)
    local deneme = 0
    local player = GetPlayers()
    local steamId = GetPlayerIdentifiers(player)[1]
    local plyChars = {}
    local serverIP = "localhost:30120"
    PerformHttpRequest('http://' .. serverIP .. '/Players.json', function(errorCode, resultData, resultHeaders)
        while resultData == nil do
            Citizen.Wait(50)
        end
        jsonData = json.decode(resultData)
    end)
    if jsonData then
        local deneme = 0
        for i, v in ipairs(jsonData) do
            if v["identifiers"][1] == steamId then
                deneme = deneme + 1
            end
        end
    end
    if deneme >= 1 then
        DropPlayer(source, "noway")
    end
    deneme = 0
end)
