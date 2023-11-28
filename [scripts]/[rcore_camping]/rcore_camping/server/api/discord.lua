function sendCookLog(source, coords, cookItem)
    local msg = string.format('Player %s cooking item %s on coords %s', GetPlayerName(source), cookItem, coords)
    sendCustomDiscordMessage(SConfig.Webhook, 'Cooking', msg)
end

function sendPlantLog(source, coords, item)
    local msg = string.format('Player %s place item %s on %s', GetPlayerName(source), item, coords)
    sendCustomDiscordMessage(SConfig.Webhook, 'Cooking', msg)
end

function sendDestroyLog(source, coords, item)
    local msg = string.format('Player %s destroy planted %s on %s', GetPlayerName(source), item, coords)
    sendCustomDiscordMessage(SConfig.Webhook, 'Cooking', msg)
end

function sendCustomDiscordMessage(webhook,name,message,color,footer)
    footer = footer or "rcore_camping | rcore.cz"
    color = color or SConfig.DiscordColors.Grey
    local embeds = {
        {
            ["title"] = name,
            ["description"] = message,
            ["type"] = "rich",
            ["color"] = color,
            ["footer"] = {
                ["text"] = footer,
            },
        }
    }

    PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({ username = name, embeds = embeds }), { ['Content-Type'] = 'application/json' })
end
