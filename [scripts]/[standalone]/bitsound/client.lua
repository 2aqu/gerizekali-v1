globalOptionsCache = {}
isPlayerCloseToMusic = false
disableMusic = false

function getDefaultInfo()
    return {
        volume = 1.0,
        url = "",
        id = "",
        position = nil,
        distance = 0,
        playing = false,
        paused = false,
        loop = false,
        isDynamic = false,
        timeStamp = 0,
        maxDuration = 0,
        destroyOnFinish = true,
    }
end

-- updating position on html side so we can count how much volume the sound needs.
CreateThread(function()
    local refresh = 100
    local ped = PlayerPedId()
    local pos = GetEntityCoords(ped)
    local changedPosition = false
    while true do
        Wait(refresh)
        if not disableMusic and isPlayerCloseToMusic then
            ped = PlayerPedId()
            pos = GetEntityCoords(ped)
            SendNUIMessage({
                status = "position",
                x = pos.x,
                y = pos.y,
                z = pos.z
            })

            if changedPosition then
                SendNUIMessage({ status = "unmuteAll" })
            end
            changedPosition = false
        else
            if not changedPosition then
                changedPosition = true
                SendNUIMessage({ status = "position", x = -900000, y = -900000, z = -900000 })
            end
			
			SendNUIMessage({ status = "muteAll" })			
            Wait(1000)
        end
    end
end)

-- checking if player is close to sound so we can switch bool value to true.
CreateThread(function()
    local ped = PlayerPedId()
    local playerPos = GetEntityCoords(ped)
    while true do
        Wait(500)
        ped = PlayerPedId()
        playerPos = GetEntityCoords(ped)
        isPlayerCloseToMusic = false
        for k, v in pairs(soundInfo) do
            if v.position ~= nil and v.isDynamic then
                if #(v.position - playerPos) < v.distance + 40 then
                    isPlayerCloseToMusic = true
                    break
                end
            end
        end
    end
end)

-- updating timeStamp
CreateThread(function()
    Wait(1100)
    while true do
        Wait(1000)
        for k, v in pairs(soundInfo) do
            if v.playing then
                if getInfo(v.id).timeStamp ~= nil and getInfo(v.id).maxDuration ~= nil then
                    if getInfo(v.id).timeStamp < getInfo(v.id).maxDuration then
                        getInfo(v.id).timeStamp = getInfo(v.id).timeStamp + 1
                    end
                end
            end
        end
    end
end)

function fadeIn(name, time, volume_)
    if soundExists(name) then
        volumeType(name, 0)

        local addVolume = (volume_ / time) * 100
        local called = 0
        local volume = volume_

        while true do
            volume = volume - addVolume
            if volume < 0 then volume = 0 end
            if volume == 0 then break end
            called = called + 1
        end

        volume = getVolume(name)
        while true do
            Citizen.Wait(time / called)
            volume = volume + addVolume
            if volume > volume_ then
                volume = volume_
                volumeType(name, volume)
                break
            end
            volumeType(name, volume)
        end
    end
end

exports('fadeIn', fadeIn)

function fadeOut(name, time)
    if soundExists(name) then
        local volume = getVolume(name)

        local addVolume = (volume / time) * 100
        local called = 0

        while true do
            volume = volume - addVolume
            if volume < 0 then volume = 0 end
            if volume == 0 then break end
            called = called + 1
        end

        volume = getVolume(name)
        while true do
            Citizen.Wait(time / called)
            volume = volume - addVolume
            if volume < 0 then
                volume = 0
                volumeType(name, volume)
                break
            end
            volumeType(name, volume)
        end
    end
end

exports('fadeOut', fadeOut)

function volumeType(name, volume)
    if isDynamic(name) then
        setVolumeMax(name,volume)
        setVolume(name,volume)
    else
        setVolume(name,volume)
    end
end

-- i recommend to NOT change the command name. it will make easier for people to use this command
-- when ever is this library.. so please keep this command name on "streamermode" command
--[[RegisterCommand("streamermode", function(source, args, rawCommand)
    disableMusic = not disableMusic
    TriggerEvent("bitsound:streamerMode", disableMusic)
    if disableMusic then
        TriggerEvent('chat:addMessage', { args = { "^1[xSound]", config.Messages["streamer_on"] } })

        for k, v in pairs(soundInfo) do
            Destroy(v.id)
        end

    else
        TriggerEvent('chat:addMessage', { args = { "^1[xSound]", config.Messages["streamer_off"] } })
    end
end, false)]]

RegisterNUICallback("data_status", function(data)
    if soundInfo[data.id] ~= nil then
        if data.type == "finished" then
            if not soundInfo[data.id].loop then
                soundInfo[data.id].playing = false
            end
            TriggerEvent("bitsound:songStopPlaying", data.id)
        end
        if data.type == "maxDuration" then
            soundInfo[data.id].timeStamp = 0
            soundInfo[data.id].maxDuration = data.time
        end
    end
end)

RegisterNUICallback("events", function(data)
    local id = data.id
    local type = data.type
    if type == "resetTimeStamp" then
        if soundInfo[id] then
            soundInfo[id].timeStamp = 0
            soundInfo[id].maxDuration = data.time
            soundInfo[id].playing = true
        end
    end
    if type == "onPlay" then
        if globalOptionsCache[id] then
            if globalOptionsCache[id].onPlayStart then
                globalOptionsCache[id].onPlayStart(getInfo(id))
            end
        end
    end
    if type == "onEnd" then
        if globalOptionsCache[id] then
            if globalOptionsCache[id].onPlayEnd then
                globalOptionsCache[id].onPlayEnd(getInfo(id))
            end
        end
        if soundInfo[id] then
            if soundInfo[id].loop then
                soundInfo[id].timeStamp = 0
            end
            if soundInfo[id].destroyOnFinish and not soundInfo[id].loop then
                Destroy(id)
            end
        end
    end
    if type == "onLoading" then
        if globalOptionsCache[id] then
            if globalOptionsCache[id].onLoading then
                globalOptionsCache[id].onLoading(getInfo(id))
            end
        end
    end
end)

RegisterNetEvent("bitsound:stateSound")
AddEventHandler("bitsound:stateSound", function(state, data)
    local soundId = data.soundId

    if state == "destroyOnFinish" then
        if soundExists(soundId) then
            destroyOnFinish(soundId, data.value)
        end
    end

    if state == "timestamp" then
        if soundExists(soundId) then
            setTimeStamp(soundId, data.time)
        end
    end

    if state == "texttospeech" then
        TextToSpeech(soundId, data.lang, data.url, data.volume, data.loop or false)
    end

    if state == "texttospeechpos" then
        TextToSpeechPos(soundId, data.lang, data.url, data.volume, data.position, data.loop or false)
    end

    if state == "play" then
        PlayUrl(soundId, data.url, data.volume, data.loop or false)
    end

    if state == "playpos" then
        PlayUrlPos(soundId, data.url, data.volume, data.position, data.loop or false)
    end

    if state == "position" then
        if soundExists(soundId) then
            Position(soundId, data.position)
        end
    end

    if state == "distance" then
        if soundExists(soundId) then
            Distance(soundId, data.distance)
        end
    end

    if state == "destroy" then
        if soundExists(soundId) then
            Destroy(soundId)
        end
    end

    if state == "pause" then
        if soundExists(soundId) then
            Pause(soundId)
        end
    end

    if state == "resume" then
        if soundExists(soundId) then
            Resume(soundId)
        end
    end

    if state == "volume" then
        if soundExists(soundId) then
            if isDynamic(soundId) then
                setVolumeMax(soundId, data.volume)
            else
                setVolume(soundId, data.volume)
            end
        end
    end
end)



RegisterNetEvent('InteractSound_CL:PlayOnOne')
AddEventHandler('InteractSound_CL:PlayOnOne', function(soundFile, soundVolume)
    PlayUrl("./sounds/" .. soundFile, "./sounds/" .. soundFile .. "." .. "ogg", soundVolume)
end)

RegisterNetEvent('InteractSound_CL:PlayOnAll')
AddEventHandler('InteractSound_CL:PlayOnAll', function(soundFile, soundVolume)
    PlayUrl("./sounds/" .. soundFile, "./sounds/" .. soundFile .. "." .. "ogg", soundVolume)
end)

RegisterNetEvent('InteractSound_CL:PlayWithinDistance')
AddEventHandler('InteractSound_CL:PlayWithinDistance', function(playerNetId, maxDistance, soundFile, soundVolume)
    if GetPlayerFromServerId(playerNetId) ~= -1 then
        local eCoords = GetEntityCoords(GetPlayerPed(GetPlayerFromServerId(playerNetId)))
        PlayUrlPos("./sounds/" .. soundFile, "./sounds/" .. soundFile .. "." .. "ogg", soundVolume, eCoords)
        Distance("./sounds/" .. soundFile, maxDistance)
    end
end)



function onPlayStart(name, delegate)
    globalOptionsCache[name].onPlayStart = delegate
end

exports('onPlayStart', onPlayStart)

function onPlayEnd(name, delegate)
    globalOptionsCache[name].onPlayEnd = delegate
end

exports('onPlayEnd', onPlayEnd)

function onLoading(name, delegate)
    globalOptionsCache[name].onLoading = delegate
end

exports('onLoading', onLoading)

function onPlayPause(name, delegate)
    globalOptionsCache[name].onPlayPause = delegate
end

exports('onPlayPause', onPlayPause)

function onPlayResume(name, delegate)
    globalOptionsCache[name].onPlayResume = delegate
end

exports('onPlayResume', onPlayResume)

soundInfo = {}

function getLink(name_)
    return soundInfo[name_].url
end

exports('getLink', getLink)

function getPosition(name_)
    return soundInfo[name_].position
end

exports('getPosition', getPosition)

function isLooped(name_)
    return soundInfo[name_].loop
end

exports('isLooped', isLooped)

function getInfo(name_)
    return soundInfo[name_]
end

exports('getInfo', getInfo)

function soundExists(name_)
    if soundInfo[name_] == nil then
        return false
    end
    return true
end

exports('soundExists', soundExists)

function isPlaying(name_)
    return soundInfo[name_].playing
end

exports('isPlaying', isPlaying)

function isPaused(name_)
    return soundInfo[name_].paused
end

exports('isPaused', isPaused)

function getDistance(name_)
    return soundInfo[name_].distance
end

exports('getDistance', getDistance)

function getVolume(name_)
    return soundInfo[name_].volume
end

exports('getVolume', getVolume)

function isDynamic(name_)
    return soundInfo[name_].isDynamic
end

exports('isDynamic', isDynamic)

function getTimeStamp(name_)
    return soundInfo[name_].timeStamp or -1
end

exports('getTimeStamp', getTimeStamp)

function getMaxDuration(name_)
    return soundInfo[name_].maxDuration or -1
end

exports('getMaxDuration', getMaxDuration)

function isPlayerInStreamerMode()
    return disableMusic
end

exports('isPlayerInStreamerMode', isPlayerInStreamerMode)

function getAllAudioInfo()
    return soundInfo
end

exports('getAllAudioInfo', getAllAudioInfo)

function isPlayerCloseToAnySound()
    return isPlayerCloseToMusic
end

exports('isPlayerCloseToAnySound', isPlayerCloseToAnySound)


function Distance(name_, distance_)
    SendNUIMessage({
        status = "distance",
        name = name_,
        distance = distance_,
    })
    soundInfo[name_].distance = distance_
end

exports('Distance', Distance)

function Position(name_, pos)
    SendNUIMessage({
        status = "soundPosition",
        name = name_,
        x = pos.x,
        y = pos.y,
        z = pos.z,
    })
    soundInfo[name_].position = pos
    soundInfo[name_].id = name_
end

exports('Position', Position)

function Destroy(name_)
    SendNUIMessage({
        status = "delete",
        name = name_
    })
    soundInfo[name_] = nil

    if globalOptionsCache[name_] ~= nil and globalOptionsCache[name_].onPlayEnd ~= nil then
        globalOptionsCache[name_].onPlayEnd(getInfo(name_))
    end

    globalOptionsCache[name_] = nil
end

exports('Destroy', Destroy)

function Resume(name_)
    SendNUIMessage({
        status = "resume",
        name = name_
    })
    soundInfo[name_].playing = true
    soundInfo[name_].paused = false

    if globalOptionsCache[name_] ~= nil and globalOptionsCache[name_].onPlayResume ~= nil then
        globalOptionsCache[name_].onPlayResume(getInfo(name_))
    end
end

exports('Resume', Resume)

function Pause(name_)
    SendNUIMessage({
        status = "pause",
        name = name_
    })
    soundInfo[name_].playing = false
    soundInfo[name_].paused = true

    if globalOptionsCache[name_] ~= nil and globalOptionsCache[name_].onPlayPause ~= nil then
        globalOptionsCache[name_].onPlayPause(getInfo(name_))
    end
end

exports('Pause', Pause)

function setVolume(name_, vol)
    SendNUIMessage({
        status = "volume",
        volume = vol,
        name = name_,
    })
    soundInfo[name_].volume = vol
end

exports('setVolume', setVolume)

function setVolumeMax(name_, vol)
    SendNUIMessage({
        status = "max_volume",
        volume = vol,
        name = name_,
    })
    soundInfo[name_].volume = vol
end

exports('setVolumeMax', setVolumeMax)

function setTimeStamp(name_, timestamp)
    getInfo(name_).timeStamp = timestamp
    SendNUIMessage({
        name = name_,
        status = "timestamp",
        timestamp = timestamp,
    })
end

exports('setTimeStamp', setTimeStamp)

function destroyOnFinish(id, bool)
    soundInfo[id].destroyOnFinish = bool
end

exports('destroyOnFinish', destroyOnFinish)

function setSoundLoop(name, value)
    SendNUIMessage({
        status = "loop",
        name = name,
        loop = value,
    })
    soundInfo[name].loop = value
end

exports('setSoundLoop', setSoundLoop)

function repeatSound(name)
    if soundExists(name) then
        SendNUIMessage({
            status = "repeat",
            name = name,
        })
    end
end

exports('repeatSound', repeatSound)

function setSoundDynamic(name, bool)
    if soundExists(name) then
        soundInfo[name].isDynamic = bool
        SendNUIMessage({
            status = "changedynamic",
            name = name,
            bool = bool,
        })
    end
end

exports('setSoundDynamic', setSoundDynamic)

function setSoundURL(name, url)
    if soundExists(name) then
        soundInfo[name].url = url
        SendNUIMessage({
            status = "changeurl",
            name = name,
            url = url,
        })
    end
end

exports('setSoundURL', setSoundURL)

function PlayUrl(name_, url_, volume_, loop_, options)
    if disableMusic then return end
    SendNUIMessage({
        status = "url",
        name = name_,
        url = url_,
        x = 0,
        y = 0,
        z = 0,
        dynamic = false,
        volume = volume_,
        loop = loop_ or false,
    })

    if soundInfo[name_] == nil then soundInfo[name_] = getDefaultInfo() end

    soundInfo[name_].volume = volume_
    soundInfo[name_].url = url_
    soundInfo[name_].id = name_
    soundInfo[name_].playing = true
    soundInfo[name_].loop = loop_ or false
    soundInfo[name_].isDynamic = false

    globalOptionsCache[name_] = options or { }
end

exports('PlayUrl', PlayUrl)

function PlayUrlPos(name_, url_, volume_, pos, loop_, options)
    if disableMusic then return end
    SendNUIMessage({
        status = "url",
        name = name_,
        url = url_,
        x = pos.x,
        y = pos.y,
        z = pos.z,
        dynamic = true,
        volume = volume_,
        loop = loop_ or false,
    })
    if soundInfo[name_] == nil then soundInfo[name_] = getDefaultInfo() end

    soundInfo[name_].volume = volume_
    soundInfo[name_].url = url_
    soundInfo[name_].position = pos
    soundInfo[name_].id = name_
    soundInfo[name_].playing = true
    soundInfo[name_].loop = loop_ or false
    soundInfo[name_].isDynamic = true

    globalOptionsCache[name_] = options or { }
end

exports('PlayUrlPos', PlayUrlPos)

function TextToSpeech(name_, lang, text, volume_, loop_, options)
    if disableMusic then return end
    local url = string.format("https://translate.google.com/translate_tts?ie=UTF-8&q=%s&tl=%s&total=1&idx=0&client=tw-ob", text, lang)
    PlayUrl(name_, url, volume_, loop_, options)
end

exports('TextToSpeech', TextToSpeech)

function TextToSpeechPos(name_, lang, text, volume_, pos, loop_, options)
    if disableMusic then return end
    local url = string.format("https://translate.google.com/translate_tts?ie=UTF-8&q=%s&tl=%s&total=1&idx=0&client=tw-ob", text, lang)
    PlayUrlPos(name_, url, volume_, pos, loop_, options)
end

exports('TextToSpeechPos', TextToSpeechPos)