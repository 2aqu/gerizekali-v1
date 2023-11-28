RegisterNetEvent('chatMessage')
-- RegisterNetEvent('__cfx_internal:serverPrint')
RegisterNetEvent('chat:addMessage')
RegisterNetEvent('chat:addSuggestion')
RegisterNetEvent('chat:addSuggestions')
RegisterNetEvent('chat:clear')
RegisterNetEvent('chat:removeSuggestion')

function timestamp()
    local year, month, day, hour, minute, second = GetLocalTime()
    return hour .. ':' .. minute
end

-- deprecated, use chat:addMessage
AddEventHandler('chatMessage', function(author, color, text)
    while not chatLoaded do
        Wait(500)
    end
    local args = {text}
    if author ~= "" then
        table.insert(args, 1, author)
    end
    SendNUIMessage({
        action = 'ON_MESSAGE',
        payload = {
            tags = tags or {},
            args = args,
            time = timestamp(),
            channel = channel or 'all'
        }
    })

end)

CreateThread(function()
    while not chatLoaded do
        Wait(0)
    end
    refreshCommands()
end)

AddEventHandler('chat:addSuggestions', function(suggestions)
    for _, suggestion in ipairs(suggestions) do
        SendNUIMessage({
            action = 'ON_SUGGESTION_ADD',
            payload = suggestion
        })
    end
end)

AddEventHandler('chat:removeSuggestion', function(name)
    SendNUIMessage({
        action = 'ON_SUGGESTION_REMOVE',
        payload = name
    })
end)

AddEventHandler('chat:clear', function()

    SendNUIMessage({
        action = 'ON_CLEAR'
    })
end)

-- AddEventHandler('__cfx_internal:serverPrint', function(msg)
--     if msg and #msg > 0 then
--       print(msg)
--       SendNUIMessage({
--          action = 'ON_MESSAGE',
--          payload = {
--             tags = {'server'},
--             args = { msg },
--             time = timestamp(),
--             channel = 'server'
--          }
--       })
--     end
-- end)

RegisterNUICallback('chatResult', function(data, cb)
    chatOpen = false
    SetNuiFocus(false)
    cursorOpen = false
    local goestoall = false
    ToggleTypingIndicator()
    if not data.canceled then
        print(json.encode(data))
        local id = PlayerId()

        -- deprecated
        local r, g, b = 0, 0x99, 255

        if data.message:sub(1, 1) == '/' then
            ExecuteCommand(data.message:sub(2))
            goestoall = true
        else
            if data.channel == 'me' or data.channel == 'do' then
                if data.channel == "me" then
                    ExecuteCommand("me " .. data.message)
                    goestoall = true
                end
                if data.channel == "do" then
                    ExecuteCommand("do " .. data.message)
                    goestoall = true
                end
                return
            end
            if goestoall then
                TriggerServerEvent('_chat:messageEntered', GetPlayerName(id), {r, g, b}, data.message, data.channel)
            end
        end
    end
    cb('ok')
end)

-- addMessage
function addMessage(message)

    while not chatLoaded do
        Wait(500)
    end
    if type(message) == 'string' then
        message = {
            tags = {},
            args = {message},
            channel = 'all'
        }
    end

    -- tags,  channel playerId
    message.channel = message.channel or 'all'
    message.tags = message.tags or {}
    message.time = timestamp()
    SendNUIMessage({
        action = 'ON_MESSAGE',
        payload = message
    })
end

-- addSuggestion
function addSuggestion(name, help, params)
    SendNUIMessage({
        action = 'ON_SUGGESTION_ADD',
        payload = {
            name = name,
            help = help,
            params = params or nil
        }
    })
end

AddEventHandler('chat:addSuggestion', addSuggestion)
AddEventHandler('chat:addMessage', addMessage)

function refreshCommands()
    if GetRegisteredCommands then
        local registeredCommands = GetRegisteredCommands()

        local suggestions = {}

        for _, command in ipairs(registeredCommands) do
            if IsAceAllowed(('command.%s'):format(command.name)) and command.name ~= 'toggleChat' then
                table.insert(suggestions, {
                    name = '/' .. command.name,
                    help = ''
                })
            end
        end

        TriggerEvent('chat:addSuggestions', suggestions)
    end
end

exports('addSuggestion', addSuggestion)
exports('addMessage', addMessage)

CreateThread(function()
    SetTextChatEnabled(false)
    SetNuiFocus(false)
    while true do
        Wait(0)
        if not chatOpen then
            if IsControlJustPressed(0, Config.ChatOpenKey) then
                ToggleChat(true)
            end
        end
    end
end)
