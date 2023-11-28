RegisterServerEvent('chat:init')
RegisterServerEvent('chat:addMessage')
RegisterServerEvent('_chat:messageEntered')
RegisterServerEvent('chat:clear')

-- this is a built-in event, but somehow needs to be registered
RegisterNetEvent('playerJoining')


function CheckPlayerAllTags(source)
    local tags = {}
    if Config.EnableOOCTag  then
        if Config.Tags["ooc"] then
            tags[#tags+1] = "ooc"
        end
    end
    
    local job = CheckPlayerJob(source)
    if job and Config.EnableJobTags then
        tags[#tags+1] = job[2]
    end

    local license = GetLicense(source)
    local roles = {} 
    if Config.EnableDiscordRoles then
        roles = GetDiscordRoles(source)
    end
    for _,v in pairs(Config.Tags) do
        if v.members then
            for __,vv in pairs(v.members) do
                if vv == license then
                    tags[#tags+1] = _
                end 
            end
            if Config.EnableDiscordRoles and roles then
                for __,vv in pairs(v.members) do
                    for key, role in pairs(roles) do
                        if tonumber(vv) == tonumber(role) then
                            tags[#tags+1] = _
                        end
                    end
                end    
            end
        end
    end    
    local admin = CheckIsAdmin(source)
    if admin and Config.EnableAdminTag then
        tags[#tags+1] = "admin"
    end
    return tags
end


function CheckPlayerJob(source)
    if Config.Framework == 'standalone' then
        local license = GetLicense(source)
        for _,v in pairs(Config.Tags) do
            if v.members then
                for __,vv in pairs(v.members) do
                    if vv == license then
                        return {v, _}
                    end 
                end
            end
        end    
    elseif Config.Framework == 'newesx' or Config.Framework == 'oldesx'  then
        local Player = Core.GetPlayerFromId(source)
        if Player then
            local data = Config.Tags[Player.getJob().name]
            return data and {data, Player.getJob().name} or false
        else
            return false
        end
    elseif Config.Framework == 'newqb' or Config.Framework == 'oldqb' then
        local Player = Core.Functions.GetPlayer(source)
        if Player then
            local data = Config.Tags[Player.PlayerData.job.name]
            return data and {data, Player.PlayerData.job.name} or false
        else
            return false
        end
    end

    if Config.EnableDiscordRoles then
        local roles = GetDiscordRoles(source)
        if roles then
            for _,v in pairs(Config.Tags) do
                if v.members then
                    for __,vv in pairs(v.members) do
                        for key, role in pairs(roles) do
                            if tonumber(vv) == tonumber(role) then
                                return {v, _}
                            end
                        end
                    end    
                end
            end
        end 
    end
    return false
end

function CheckIsAdmin(source)
    if source == 0 then
        return false
    end
    if Config.Framework == 'standalone' then
        for _,v in pairs(Config.Admins) do
            if GetLicense(source) == v then
                return true
            end
        end
    elseif Config.Framework == 'newesx' or Config.Framework == 'oldesx'  then
        local Player = Core.GetPlayerFromId(source)
        if Player then
            for _,v in pairs(Config.Admins) do
                if Player.getGroup() == v then
                    return true
                end
            end
        end
    elseif Config.Framework == 'newqb' then
        for _, v in pairs(Config.Admins) do
            if Core.Functions.HasPermission(source, v) or IsPlayerAceAllowed(source, 'command') then
                return true
            end
        end
    elseif Config.Framework == 'oldqb' then
        for _,v in pairs(Config.Admins) do
            if Core.Functions.GetPermission(source) == v then                
                return true 
            end
        end
    end
    return false
end

function GetPlayerRoleplayName(source)
    while not Core do
        Citizen.Wait(0)
    end
    local playerName
    if (Config.Framework == "newesx" or Config.Framework == 'oldesx') and Config.EnableRPNames then
        local Player = Core.GetPlayerFromId(source)
        if Player then
            playerName = Player.getName()
        else
            playerName = GetPlayerName(source)
        end
    elseif (Config.Framework == "newqb" or Config.Framework == 'oldqb') and Config.EnableRPNames then
        local Player = Core.Functions.GetPlayer(source)
        if Player then
            playerName = Player.PlayerData.charinfo.firstname .. " ".. Player.PlayerData.charinfo.lastname
        else
            playerName = GetPlayerName(source)
        end
    else
        playerName = GetPlayerName(source)
    end
    return playerName
end


RegisterServerEvent("mChat:CheckPlayerPermissions")
AddEventHandler("mChat:CheckPlayerPermissions", function()
    local src = source
    local admin = CheckIsAdmin(src)
    if Config.EnableAdminChat then
        if admin then
            TriggerClientEvent('mChat:ToggleCustomChatAccess', src, {
                name = 'admin',
                label = "ADMIN",
                show = true,
            })
        else
            TriggerClientEvent('mChat:ToggleCustomChatAccess', src, {
                name = 'admin',
                show = false,
            })
        end
    end
    if Config.EnableJobChats then
        local job = CheckPlayerJob(src)
        local lastJob = lastJobs[src]
        if lastJob then
            TriggerClientEvent('mChat:ToggleCustomChatAccess', src, {
                name = lastJob,
                show = false,
            })
            lastJobs[src] = nil
        end
        if job then
            lastJobs[src] = job[2]
            TriggerClientEvent('mChat:ToggleCustomChatAccess', src, {
                name = job[2],
                label = job[1].label,
                show = true,
            })
        end
    end
end)

exports('addMessage', function(target, message)
    if not message then
        message = target
        target = -1
    end

    if not target or not message then return end
    TriggerClientEvent('chat:addMessage', target, message)
end)

function routeMessage(source, author, message, fromConsole, tags, channel)
    if source >= 1 then
        author = GetPlayerRoleplayName(source)
    end
    local reply = CheckIsReply(message)
    for _,v in pairs(reply) do
        if IsSourceOnline(v) then
            message = message:gsub("@"..v, "<span style='color:#00D1FF'>@"..v.."</span>")    
            TriggerClientEvent('mChat:PlayTagSound', v)               
        end
    end
    if not channel or channel == 'all' then
        channel = 'ooc'
    end

    local outMessage = {
        tags = tags,   
        channel = channel,
        playerId = source,
        args = { message },
    }
    if author ~= "" then
        outMessage.args = { author, message }
    end
    TriggerEvent('chatMessage', source, #outMessage.args > 1 and outMessage.args[1] or '', outMessage.args[#outMessage.args])
    if not WasEventCanceled() then
        if type(routingTarget) ~= 'table' then
            local players = CheckIsPrivateChannel(source, channel)
            if players then
                for _,v in pairs(players) do
                    TriggerClientEvent('chat:addMessage', v, outMessage)                           
                end
            else

                if Config.EnableOOCCommand and source > 0 then
                    return
                end
                if channel == 'ooc' and Config.EnableOOCProximity then
                    local myCoords = GetEntityCoords(GetPlayerPed(source))
                    for _,v in pairs(GetPlayers()) do
                        local playerCoords = GetEntityCoords(GetPlayerPed(tonumber(v)))
                        local dist = #(myCoords - playerCoords)
                        if dist < Config.OOCProximityDist then
                            TriggerClientEvent('chat:addMessage', v, outMessage)                              
                        end
                    end
                else
                    TriggerClientEvent('chat:addMessage', -1, outMessage)               
                end
            end
        end
    end
end

AddEventHandler('chatMessage', function(source, name, message)
    if DiscordLogs.enable then
        chatLog("** Chat  Log ** \n  " .. GetPlayerName(source) .. " : "..message)
    end
end)

function chatLog(message)
    PerformHttpRequest(DiscordLogs.webhook, function(err, text, headers)
        end,
        "POST",
        json.encode(
            {
                username = DiscordLogs.servername,
                embeds = {
                    {
                        ["author"] = {["name"] = DiscordLogs.servername, ["icon_url"] = DiscordLogs.logo},
                        ["description"] = message,
                        ["footer"] = {
                            ["text"] = DiscordLogs.servername.." - " .. os.date("%x %X %p"),
                            ["icon_url"] = DiscordLogs.logo
                        }
                    }
                },
                avatar_url = DiscordLogs.logo
            }
        ),
        {["Content-Type"] = "application/json"}
    )
end

AddEventHandler('_chat:messageEntered', function(author, color, message, channel)
    if not message or not author then
        return
    end

    local src = source
    local tags = RemoveDuplicate(CheckPlayerAllTags(src))
    routeMessage(src, author, message, false, tags, channel)
end)


-- player join messages
-- AddEventHandler('playerJoining', function()
--     if not Config.ShowJoins then
--         return
--     end

--     TriggerClientEvent('chat:addMessage', -1, {
--         tags = {"server"},
--         channel = 'server',
--         args = {'^2* ' .. GetPlayerRoleplayName(source) .. ' joined.'}
--     })
-- end)

-- AddEventHandler('playerDropped', function(reason)
--     if not Config.ShowQuits then
--         return
--     end
    
--     TriggerClientEvent('chat:addMessage', -1, {
--         tags = {"server"},
--         channel = 'server',
--         args = {'^2* ' .. GetPlayerRoleplayName(source) ..' left (' .. reason .. ')'}
--     })
-- end)

RegisterCommand('say', function(source, args, rawCommand)
    routeMessage(source, (source == 0) and 'console' or GetPlayerRoleplayName(source), rawCommand:sub(5), false, {"server"}, 'server')
end)




if Config.EnableOOCCommand  then
    RegisterCommand('ooc', function(source, args)
        local message = table.concat(args, " ")  
        if #message == 0 then
            return            
        end
        local tags = RemoveDuplicate(CheckPlayerAllTags(source))
        local reply = CheckIsReply(message)
        for _,v in pairs(reply) do
            if IsSourceOnline(v) then
                message = message:gsub("@"..v, "<span style='color:#00D1FF'>@"..v.."</span>")    
                TriggerClientEvent('mChat:PlayTagSound', v)               
            end
        end
        local messageData = {
            args = {GetPlayerRoleplayName(source), message},
            tags = tags,  
            playerId = source,
            channel = 'ooc',
        }
        TriggerEvent('chatMessage', source, #messageData.args > 1 and messageData.args[1] or '', messageData.args[#messageData.args])
        if Config.EnableOOCProximity then
            local myCoords = GetEntityCoords(GetPlayerPed(source))
            for _,v in pairs(GetPlayers()) do
                local playerCoords = GetEntityCoords(GetPlayerPed(tonumber(v)))
                local dist = #(myCoords - playerCoords)
                if dist < Config.OOCProximityDist then
                    TriggerClientEvent('chat:addMessage', v, messageData)                              
                end
            end
        else
            TriggerClientEvent('chat:addMessage', -1, messageData)               
        end
    end)
end
if Config.EnableMECommand then
    RegisterCommand('me', function(source, args)
        local message = table.concat(args, " ")  
        if #message == 0 then
            return            
        end 
        local reply = CheckIsReply(message)
        for _,v in pairs(reply) do
            if IsSourceOnline(v) then
                message = message:gsub("@"..v, "<span style='color:#00D1FF'>@"..v.."</span>")    
                TriggerClientEvent('mChat:PlayTagSound', v)               
            end
        end
        local messageData = {
            args = {GetPlayerRoleplayName(source), message},
            tags = {"me"},  
            playerId = source,
            channel = 'me',
        }
        TriggerClientEvent('3dme:shareDisplay', -1, message, source)
        --TriggerClientEvent('mchat:me:event', -1, message, source)
        TriggerEvent('chatMessage', source, #messageData.args > 1 and messageData.args[1] or '', messageData.args[#messageData.args])
        if Config.EnableMEProximity then
            local myCoords = GetEntityCoords(GetPlayerPed(source))
            for _,v in pairs(GetPlayers()) do
                local playerCoords = GetEntityCoords(GetPlayerPed(tonumber(v)))
                local dist = #(myCoords - playerCoords)
                if dist < Config.MEProximityDist then
                    TriggerClientEvent('chat:addMessage', v, messageData)                              
                end
            end
        else
            TriggerClientEvent('chat:addMessage', -1, messageData)               
        end
    end)
end

if Config.EnableDOCommand then
    RegisterCommand('do', function(source, args)
        local message = table.concat(args, " ")  
        if #message == 0 then
            return            
        end
        local reply = CheckIsReply(message)
        for _,v in pairs(reply) do
            if IsSourceOnline(v) then
                message = message:gsub("@"..v, "<span style='color:#00D1FF'>@"..v.."</span>")    
                TriggerClientEvent('mChat:PlayTagSound', v)               
            end
        end
        local messageData = {
            args = {GetPlayerRoleplayName(source), message},
            tags = {"do"},  
            playerId = source,
            channel = 'do',
        }
        --TriggerClientEvent('mchat:do:event', -1, message, source)
        TriggerClientEvent('3dme:shareDisplayDo', -1, message, source)
        TriggerEvent('chatMessage', source, #messageData.args > 1 and messageData.args[1] or '', messageData.args[#messageData.args])
        if Config.EnableDOProximity then
            local myCoords = GetEntityCoords(GetPlayerPed(source))
            for _,v in pairs(GetPlayers()) do
                local playerCoords = GetEntityCoords(GetPlayerPed(tonumber(v)))
                local dist = #(myCoords - playerCoords)
                if dist < Config.DOProximityDist then
                    TriggerClientEvent('chat:addMessage', v, messageData)                              
                end
            end
        else
            TriggerClientEvent('chat:addMessage', -1, messageData)               
        end
    end)
end

if Config.EnableAnonymousCommand then
    RegisterCommand("anonymous", function(source, args)
        local message = table.concat(args, " ")  
        if #message == 0 then
            return            
        end
        local police = false
        if Config.Framework == 'newesx' or Config.Framework == 'oldesx'  then
            local Player = Core.GetPlayerFromId(tonumber(source))
            if Player and Player.getJob().name == 'police' then
                police = true
            end
        elseif Config.Framework == 'newqb' or Config.Framework == 'oldqb' then
            local Player = Core.Functions.GetPlayer(tonumber(source))
            if Player and Player.PlayerData.job.name == 'police' then
                police = true
            end
        end
        if not police then
            local reply = CheckIsReply(message)
            for _,v in pairs(reply) do
                if IsSourceOnline(v) then
                    message = message:gsub("@"..v, "<span style='color:#00D1FF'>@"..v.."</span>")    
                    TriggerClientEvent('mChat:PlayTagSound', v)               
                end
            end
            local messageData = {
                args = {"*****", message},
                tags = {"anonymous"},  
                playerId = false,
                channel = 'all',
            }
            TriggerEvent('chatMessage', source, #messageData.args > 1 and messageData.args[1] or '', messageData.args[#messageData.args])
            for _,v in pairs(GetPlayers()) do
                local isPolice = false
                if Config.Framework == 'newesx' or Config.Framework == 'oldesx'  then
                    local Player = Core.GetPlayerFromId(tonumber(v))
                    if Player and Player.getJob().name == 'police' then
                        isPolice = true
                    end
                elseif Config.Framework == 'newqb' or Config.Framework == 'oldqb' then
                    local Player = Core.Functions.GetPlayer(tonumber(v))
                    if Player and Player.PlayerData.job.name == 'police' then
                        isPolice = true
                    end
                end
                if not isPolice then
                    TriggerClientEvent('chat:addMessage', tonumber(v), messageData)                       
                end
            end
        end
    end)
end

RegisterCommand('clearall', function(source)
    local admin = CheckIsAdmin(source)
    if admin then
        TriggerClientEvent('chat:clear', -1)
    end
end)

RegisterCommand('pm', function(source, args)
    local target = tonumber(args[1])
    local errMessageData = {
        args = {"Message is empty"},
        tags = {'server'},  
        channel = 'server',
    }
    if target then
        local message = table.concat(args, " ",2)  
    
        if #message == 0 then
            TriggerClientEvent('chat:addMessage', source, errMessageData)               
            return            
        end
        if target == source then
            errMessageData.args[1] = "You can't send message to yourself"
            TriggerClientEvent('chat:addMessage', source, errMessageData)               
            return
        end
        local isOnline = IsSourceOnline(target)
        if not isOnline then
            errMessageData.args[1] = "Target("..target..") is not online"
            TriggerClientEvent('chat:addMessage', source, errMessageData)               
            return
        end
        local messageData = {
            args = {GetPlayerRoleplayName(source), message},
            tags = {'pm'},  
            playerId = source,
            channel = 'pm',
        }
        TriggerClientEvent('chat:addMessage', target, messageData)
        TriggerClientEvent('chat:addMessage', source, messageData)               
    else

        errMessageData.args[1] = "Invalid format. (/pm playerId message)"
        TriggerClientEvent('chat:addMessage', source, errMessageData)               
    end
end)


-- command suggestions for clients
local function refreshCommands(player)
    if GetRegisteredCommands then
        local registeredCommands = GetRegisteredCommands()
        local suggestions = {}
        for _, command in ipairs(registeredCommands) do
            if IsPlayerAceAllowed(player, ('command.%s'):format(command.name)) then
                table.insert(suggestions, {
                    name = '/' .. command.name,
                    help = ''
                })
            end
        end
      
        TriggerClientEvent('chat:addSuggestions', player, suggestions)
    end
end

AddEventHandler('chat:init', function()
    local source = source

    refreshCommands(source)
end)

AddEventHandler('onServerResourceStart', function(resName)
    Wait(500)
    for _, player in ipairs(GetPlayers()) do
        refreshCommands(player)
    end
end)

-- AddEventHandler('__cfx_internal:commandFallback', function(command)
--     local name = GetPlayerName(source)
--     routeMessage(source, name, '/' .. command, nil, true)
--     CancelEvent()
-- end)

if Config.AutoMessages.enable then
    CreateThread(function()
        while true do
            if #GetPlayers() > 0 then
                for _,message in pairs(Config.AutoMessages.messages) do
                    Wait(Config.AutoMessages.timeout * 1000 * 60)        
                    TriggerClientEvent('chat:addMessage', -1, {
                        tags = {"server"},
                        channel = 'server',
                        args = {message}
                    })
                end    
            end
            Wait(2000)
        end
    end)
end

AddEventHandler('chatMessage', function(playerId, author, message)
    if message:sub(1, 1) == '/' and playerId > 0 then
      CancelEvent()
    end
end)
  