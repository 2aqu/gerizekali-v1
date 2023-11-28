discord_adjust = {  -- 
    ['bottoken'] = "MTA1MTg2MjY2NDQ1MzgyMDQ3OA.GwRA36.2MtIcJBfKX84ZamdyMQjiApZOyhaJWHiEvyDPY", -- How to create a bot token https://www.youtube.com/watch?v=-m-Z7Wav-fM | For a photo of the users 
    ['photo'] = "https://discord.com/api/webhooks/1142723473983144016/CKhYaFiiPq4W-6tQFjTdPV41DUWBo1jLQ_ZRwUdC2IKRadmTn8xoi1dNYGHq_bRZrumi", -- To take a photo
    ['profiles'] = "https://discord.com/api/webhooks/1142723473983144016/CKhYaFiiPq4W-6tQFjTdPV41DUWBo1jLQ_ZRwUdC2IKRadmTn8xoi1dNYGHq_bRZrumi",
    ['incident'] = "https://discord.com/api/webhooks/1145267260752154624/F2mEx_xyXZmNCMyQIYQn2XEnj42MbuSu1Fn7v75KeUGLmtbjUNV5OGYzqoIilns95y-o",
    ['warrant'] = "https://discord.com/api/webhooks/1145267260752154624/F2mEx_xyXZmNCMyQIYQn2XEnj42MbuSu1Fn7v75KeUGLmtbjUNV5OGYzqoIilns95y-o",
    ['vehicleGallery'] = "https://discord.com/api/webhooks/1145267260752154624/F2mEx_xyXZmNCMyQIYQn2XEnj42MbuSu1Fn7v75KeUGLmtbjUNV5OGYzqoIilns95y-o",
    ['evidence'] = "https://discord.com/api/webhooks/1145267260752154624/F2mEx_xyXZmNCMyQIYQn2XEnj42MbuSu1Fn7v75KeUGLmtbjUNV5OGYzqoIilns95y-o",
    ['charges'] = "https://discord.com/api/webhooks/1145267260752154624/F2mEx_xyXZmNCMyQIYQn2XEnj42MbuSu1Fn7v75KeUGLmtbjUNV5OGYzqoIilns95y-o",
    ['chat'] = "https://discord.com/api/webhooks/1145267260752154624/F2mEx_xyXZmNCMyQIYQn2XEnj42MbuSu1Fn7v75KeUGLmtbjUNV5OGYzqoIilns95y-o",
}   

function profileLog(bool, source, identifier, gallery, licenses, info, image)
    local status = bool == 'create' and 'Created' or (bool == 'update' and 'Updated' or 'Unknown')
    local color = bool == 'create' and 65280 or (bool == 'update' and 16776960 or 16711680)
    local ids = ExtractIdentifiers(source)
    local _discordID = " <@" .. ids.discord:gsub("discord:", "") .. ">"
    
    local profileLogMessage = string.format(
        "**PROFILES**\n\n:man_bald: Personal: %s **ID: **%s\n\n:man_bald: Personal Name: %s\n\n:hammer_pick: %s %s\n\n",
        _discordID,
        source,
        GetPlayerRoleplayName(source),
        "**"..status.."**",
        GetRPName(identifier)
    )

    if gallery then
        profileLogMessage = profileLogMessage .. ":frame_photo: Gallery:\n"
        for i, g in ipairs(gallery) do
            profileLogMessage = profileLogMessage .. string.format("[%d]: %s\n", i, g)
        end
        profileLogMessage = profileLogMessage .. "\n"
    else
        profileLogMessage = profileLogMessage .. ":frame_photo: Gallery: N/A\n\n"
    end

    if licenses then
        profileLogMessage = profileLogMessage .. ":scroll: Licenses:\n"
        for i, l in ipairs(licenses) do
            profileLogMessage = profileLogMessage .. string.format("[%d]: %s\n", i, l)
        end
        profileLogMessage = profileLogMessage .. "\n"
    else
        profileLogMessage = profileLogMessage .. ":scroll: Licenses: N/A\n\n"
    end

    if info then
        profileLogMessage = profileLogMessage .. ":information_source: Information: " .. info .. "\n\n"
    else
        profileLogMessage = profileLogMessage .. ":information_source: Information: N/A\n\n"
    end

    if image then
        local previewImage = image .. "?width=200"
        profileLogMessage = profileLogMessage .. ":frame_photo: Image:\n" .. previewImage .. "\n\n"
    else
        profileLogMessage = profileLogMessage .. ":frame_photo: Image: N/A\n\n"
    end

    discordLog(discord_adjust.profiles, profileLogMessage, color)
end

function incidentLog(bool, src, name, desc, involved, cops, vehicles, evidences, fines, id)
    local status = bool == 'create' and 'Created' or (bool == 'update' and 'Updated') or 'Deleted'
    local color = bool == 'create' and 65280 or (bool == 'update' and 16776960 or 16711680)
    local ids = ExtractIdentifiers(src)
    local _discordID = " <@" .. ids.discord:gsub("discord:", "") .. ">"

    local incident = string.format(
        "**INCIDENT LOG**\n\n:man_bald: **Personal:** %s **ID:** %s\n\n:man_bald: **Personal Name:** %s\n\n:label: **Status:** %s\n\n:clipboard: **Incident Name:** %s\n\n:page_with_curl: **Description:** %s\n\n",
        _discordID,
        src,
        GetPlayerRoleplayName(src),
        status,
        name,
        desc
    )

    if involved and #involved > 0 then
        incident = incident .. ":busts_in_silhouette: Involved:\n"
        for i, person in ipairs(involved) do
            local identifier = person.identifier or "Unknown"
            local name = person.name or "Unknown"
            incident = incident .. string.format("[%d]: %s - %s\n", i, identifier, name)
        end
        incident = incident .. "\n"
    else
        incident = incident .. ":busts_in_silhouette: Involved: N/A\n\n"
    end

    if cops and #cops > 0 then
        incident = incident .. ":police_car: Cops Involved:\n"
        for i, cop in ipairs(cops) do
            incident = incident .. string.format("[%d]: %s\n", i, cop)
        end
        incident = incident .. "\n"
    else
        incident = incident .. ":police_car: Cops Involved: N/A\n\n"
    end

    if vehicles and #vehicles > 0 then
        incident = incident .. ":blue_car: Vehicles Involved:\n"
        for i, vehicle in ipairs(vehicles) do
            incident = incident .. string.format("[%d]: %s\n", i, vehicle)
        end
        incident = incident .. "\n"
    else
        incident = incident .. ":blue_car: Vehicles Involved: N/A\n\n"
    end

    if evidences and #evidences > 0 then
        incident = incident .. ":mag_right: Evidences:\n"
        for i, evidence in ipairs(evidences) do
            incident = incident .. string.format("[%d]: %s\n", i, evidence)
        end
        incident = incident .. "\n"
    else
        incident = incident .. ":mag_right: Evidences: N/A\n\n"
    end

    if fines and #fines > 0 then
        incident = incident .. ":money_with_wings: Fines:\n"
        for i, fine in ipairs(fines) do
            incident = incident .. string.format("[%d]: %s\n", i, fine)
        end
        incident = incident .. "\n"
    else
        incident = incident .. ":money_with_wings: Fines: N/A\n\n"
    end

    discordLog(discord_adjust.incident, incident, color) 
end

function warrantLog(bool, src, reason, types, involved, address, name, involvedcops, involvedvehicles)
    local status = bool == 'create' and 'Created' or (bool == 'update' and 'Updated') or 'Deleted'
    local color = bool == 'create' and 65280 or (bool == 'update' and 16776960 or 16711680)
    local ids = ExtractIdentifiers(src)
    local _discordID = " <@" .. ids.discord:gsub("discord:", "") .. ">"
    local warrant = string.format(
        "**WARRANT LOG**\n\n:man_bald: **Personal:** %s **ID:** %s\n\n:man_bald: **Personal Name:** %s\n\n:label: **Status:** %s\n\n:page_facing_up: **Warrant Reason:** %s\n\n:label: **Warrant Type:** %s\n\n:clipboard: **Involved Person:** %s\n\n:house_with_garden: **Address:** %s\n\n",
        _discordID,
        src,
        GetPlayerRoleplayName(src),
        status,
        reason,
        types,
        name,
        address
    )

    if involved and #involved > 0 then
        warrant = warrant .. ":busts_in_silhouette: Involved:\n"
        for i, person in ipairs(involved) do
            warrant = warrant .. string.format("[%d]: %s\n", i, person)
        end
        warrant = warrant .. "\n"
    else
        warrant = warrant .. ":busts_in_silhouette: Involved: N/A\n\n"
    end

    if involvedcops and #involvedcops > 0 then
        warrant = warrant .. ":police_car: Involved Cops:\n"
        for i, cop in ipairs(involvedcops) do
            warrant = warrant .. string.format("[%d]: %s\n", i, cop)
        end
        warrant = warrant .. "\n"
    else
        warrant = warrant .. ":police_car: Involved Cops: N/A\n\n"
    end

    if involvedvehicles and #involvedvehicles > 0 then
        warrant = warrant .. ":car: Involved Vehicles:\n"
        for i, vehicle in ipairs(involvedvehicles) do
            warrant = warrant .. string.format("[%d]: %s\n", i, vehicle)
        end
        warrant = warrant .. "\n"
    else
        warrant = warrant .. ":blue_car: Involved Vehicles: N/A\n\n"
    end

    discordLog(discord_adjust.warrant, warrant, color) 
end

function vehicleGalleryLog(bool, src, plate, photos)
    local status = bool == 'create' and 'Created' or (bool == 'update' and 'Updated') or 'Deleted'
    local color = bool == 'create' and 65280 or (bool == 'update' and 16776960 or 16711680)
    local ids = ExtractIdentifiers(src)
    local _discordID = " <@" .. ids.discord:gsub("discord:", "") .. ">"
    
    local galleryLog = string.format(
        "**VEHICLE GALLERY LOG**\n\n:man_bald: **Personal:** %s **ID:** %s\n\n:man_bald: **Personal Name:** %s\n\n:label: **Vehicle Plate:** %s\n\n:label: **Status:** %s\n\n",
        _discordID,
        src,
        GetPlayerRoleplayName(src),
        plate,
        status
    )

    if photos and #photos > 0 then
        galleryLog = galleryLog .. ":frame_photo: Vehicle Photos:\n"
        for i, photo in ipairs(photos) do
            galleryLog = galleryLog .. string.format("[%d]: %s\n", i, photo)
        end
        galleryLog = galleryLog .. "\n"
    else
        galleryLog = galleryLog .. ":frame_photo: Vehicle Photos: N/A\n\n"
    end

    discordLog(discord_adjust.vehicleGallery, galleryLog, color)
end

function evidenceLog(bool, src, involved, images, name, desc)
    local ids = ExtractIdentifiers(src)
    local status = bool == 'create' and 'Created' or (bool == 'update' and 'Updated') or 'Deleted'
    local color = bool == 'create' and 65280 or (bool == 'update' and 16776960 or 16711680)
    local _discordID = " <@" .. ids.discord:gsub("discord:", "") .. ">"
    local evidence = string.format(
        "**EVIDENCE LOG**\n\n:man_bald: **Personal:** %s **ID:** %s\n\n:man_bald: **Personal Name:** %s\n\n:label: **Status:** %s\n\n:clipboard: **Evidence Name:** %s\n\n:page_with_curl: **Description:** %s\n\n",
        _discordID,
        src,
        GetPlayerRoleplayName(src),
        status,
        name,
        desc
    )
    
    if involved and #involved > 0 then
        evidence = evidence .. ":busts_in_silhouette: Involved:\n"
        for i, person in ipairs(involved) do
            evidence = evidence .. string.format("[%d]: %s\n", i, person)
        end
        evidence = evidence .. "\n"
    else
        evidence = evidence .. ":busts_in_silhouette: Involved: N/A\n\n"
    end

    if images and #involved > 0 then
        evidence = evidence .. ":frame_photo: Evidence Images:\n"
        for i, image in ipairs(images) do
            evidence = evidence .. string.format("[%d]: %s\n", i, image)
        end
        evidence = evidence .. "\n"
    else
        evidence = evidence .. ":frame_photo: Evidence Images: N/A\n\n"
    end

    discordLog(discord_adjust.evidence, evidence, color) 
end

function chargesLog(bool, src, categoryName, data)
    local status = bool == 'create' and 'Created' or (bool == 'update' and 'Updated') or 'Deleted'
    local color = bool == 'create' and 65280 or (bool == 'update' and 16776960 or 16711680)
    local ids = ExtractIdentifiers(src)
    local _discordID = " <@" .. ids.discord:gsub("discord:", "") .. ">"

    local charges = string.format(
        "**CHARGES LOG**\n\n:man_bald: **Personal:** %s **ID:** %s\n\n:man_bald: **Personal Name:** %s\n\n:label: **Status:** %s\n\n:file_folder: **Category:** %s\n\n",
        _discordID,
        src,
        GetPlayerRoleplayName(src),
        status,
        categoryName
    )

    if data and #data > 0 then
        charges = charges .. ":page_facing_up: **Data:**\n"
        for i, item in ipairs(data) do
            local jailtime = item.jailtime or "N/A"
            local money = item.money or "N/A"
            local communityservice = item.communityservice or "N/A"
            local reason = item.reason or "N/A"

            charges = charges .. string.format("[%d]: Jail Time: %s, Money: %s, Community Service: %s, Reason: %s\n", i, jailtime, money, communityservice, reason)
        end
        charges = charges .. "\n"
    else
        charges = charges .. ":page_facing_up: **Data:** N/A\n\n"
    end

    discordLog(discord_adjust.charges, charges, color)
end

function chatLog(messageData)
    local src = messageData.source
    local playerName = messageData.playerName
    local discordimg = messageData.discordimg
    local message = messageData.message

    if discordimg == "./assets/userphoto.png" then
        discordimg = "Unkown"
    end

    local logMessage = string.format(
        "**CHAT LOG**\n\n:man_bald: Personal: %s **ID: **%s\n\n:man_bald: Personal Name: %s\n\n:frame_photo: Discord Avatar: %s\n\n:envelope: Message: %s\n\n",
        GetPlayerIdentifier(src),
        src,
        playerName,
        discordimg,
        message
    )

    discordLog(discord_adjust.chat, logMessage, 255) 
end

function discordLog(webhook, message, color, channel)
    PerformHttpRequest(webhook, function(err, text, headers)
        end,
        "POST",
        json.encode(
            {
                username = Config.BotName,
                embeds = {
                    {
                        ["color"] = color,
                        ["author"] = {["name"] = Config.BotName, ["icon_url"] = Config.AvatarUrl},
                        ["description"] = message,
                        ["footer"] = {
                            ["text"] = "mgnPoliceMDT - " .. os.date("%x %X %p"),
                            ["icon_url"] = Config.AvatarUrl
                        }
                    }
                },
                avatar_url = Config.AvatarUrl
            }
        ),
        {["Content-Type"] = "application/json"}
    )
end

function ExtractIdentifiers(src)
    local identifiers = {
        steam = "",
        ip = "",
        discord = "",
        license = "",
        xbl = "",
        live = ""
    }

    for i = 0, GetNumPlayerIdentifiers(src) - 1 do
        local id = GetPlayerIdentifier(src, i)

        if string.find(id, "steam") then
            identifiers.steam = id
        elseif string.find(id, "ip") then
            identifiers.ip = id
        elseif string.find(id, "discord") then
            identifiers.discord = id
        elseif string.find(id, "license") then
            identifiers.license = id
        elseif string.find(id, "xbl") then
            identifiers.xbl = id
        elseif string.find(id, "live") then
            identifiers.live = id
        end
    end

    return identifiers
end