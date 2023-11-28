-- CREDIT : https://github.com/JaredScar/Badger_Discord_API
if Config.EnableDiscordRoles then
    local discordRoles = {
        Guild_ID = '', -- Set to the ID of your guild (or your Primary guild if using Multiguild)
        Bot_Token = '',
        CacheDiscordRoles = true, -- true to cache player roles, false to make a new Discord Request every time
        CacheDiscordRolesTime = 1200, -- if CacheDiscordRoles is true, how long to cache roles before clearing (in seconds)
    }
    
    local FormattedToken = "Bot " .. discordRoles.Bot_Token
    
    
    local error_codes_defined = {
        [200] = 'OK - The request was completed successfully..!',
        [400] = "Error - The request was improperly formatted, or the server couldn't understand it..!",
        [401] = 'Error - The Authorization header was missing or invalid..! Your Discord Token is probably wrong or does not have correct permissions attributed to it.',
        [403] = 'Error - The Authorization token you passed did not have permission to the resource..! Your Discord Token is probably wrong or does not have correct permissions attributed to it.',
        [404] = "Error - The resource at the location specified doesn't exist.",
        [429] = 'Error - Too many requests, you hit the Discord rate limit. https://discord.com/developers/docs/topics/rate-limits',
        [502] = 'Error - Discord API may be down?...'
    };
    
    
    local recent_role_cache = {}
    function GetGuildId ()
        return discordRoles.Guild_ID
    end
    
    function DiscordRequest(method, endpoint, jsondata, reason)
        local data = nil
        PerformHttpRequest("https://discordapp.com/api/"..endpoint, function(errorCode, resultData, resultHeaders)
            data = {data=resultData, code=errorCode, headers=resultHeaders}
        end, method, #jsondata > 0 and jsondata or "", {["Content-Type"] = "application/json", ["Authorization"] = FormattedToken, ['X-Audit-Log-Reason'] = reason})
    
        while data == nil do
            Citizen.Wait(0)
        end
        
        return data
    end
    
    function GetDiscordRoles(user)
        local discordId = nil
        local guildId = GetGuildId()
        for _, id in ipairs(GetPlayerIdentifiers(user)) do
            if string.match(id, "discord:") then
                discordId = string.gsub(id, "discord:", "")
                break;
            end
        end
      
        if discordId then
            if discordRoles.CacheDiscordRoles and recent_role_cache[discordId] and recent_role_cache[discordId][guildId] then
                return recent_role_cache[discordId][guildId]
            end
            local endpoint = ("guilds/%s/members/%s"):format(guildId, discordId)
            local member = DiscordRequest("GET", endpoint, {})
            if member.code == 200 then
                local data = json.decode(member.data)
                local roles = data.roles
                local found = true
                if discordRoles.CacheDiscordRoles then
                    recent_role_cache[discordId] = recent_role_cache[discordId] or {}
                    recent_role_cache[discordId][guildId] = roles
                    Citizen.SetTimeout(((discordRoles.CacheDiscordRolesTime or 60)*1000), function() recent_role_cache[discordId][guildId] = nil end)
                end
                return roles
            else
                print("ERROR: Code 200 was not reached... Returning false. [Member Data NOT FOUND] DETAILS: " .. error_codes_defined[member.code])
                return false
            end
        else
            print("ERROR: Discord was not connected to user's Fivem account...")
            return false
        end
        return false
    end
      
end