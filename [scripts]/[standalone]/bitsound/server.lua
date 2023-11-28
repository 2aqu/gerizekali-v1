RegisterServerEvent('InteractSound_SV:PlayOnOne')
AddEventHandler('InteractSound_SV:PlayOnOne', function(clientNetId, soundFile, soundVolume)
    TriggerClientEvent('InteractSound_CL:PlayOnOne', clientNetId, soundFile, soundVolume)
end)

RegisterServerEvent('InteractSound_SV:PlayOnSource')
AddEventHandler('InteractSound_SV:PlayOnSource', function(soundFile, soundVolume)
    TriggerClientEvent('InteractSound_CL:PlayOnOne', source, soundFile, soundVolume)
end)

RegisterServerEvent('InteractSound_SV:PlayOnAll')
AddEventHandler('InteractSound_SV:PlayOnAll', function(soundFile, soundVolume)
    TriggerClientEvent('InteractSound_CL:PlayOnAll', -1, soundFile, soundVolume)
end)

RegisterServerEvent('InteractSound_SV:PlayWithinDistance')
AddEventHandler('InteractSound_SV:PlayWithinDistance', function(maxDistance, soundFile, soundVolume)
    TriggerClientEvent('InteractSound_CL:PlayWithinDistance', -1, source, maxDistance, soundFile, soundVolume)
end)

function Position(source, name_, pos)
    TriggerClientEvent("bitsound:stateSound", source, "position", {
        soundId = name_,
        position = pos,
    })
end

exports('Position', Position)

function Distance(source, name_, distance_)
    TriggerClientEvent("bitsound:stateSound", source, "distance", {
        soundId = name_,
        distance = distance_,
    })
end

exports('Distance', Distance)

function Destroy(source, name_)
    TriggerClientEvent("bitsound:stateSound", source, "destroy", {
        soundId = name_,
    })
end

exports('Destroy', Destroy)

function Pause(source, name_)
    TriggerClientEvent("bitsound:stateSound", source, "pause", {
        soundId = name_,
    })
end

exports('Pause', Pause)

function Resume(source, name_)
    TriggerClientEvent("bitsound:stateSound", source, "resume", {
        soundId = name_,
    })
end

exports('Resume', Resume)

function setVolume(source, name_, vol)
    TriggerClientEvent("bitsound:stateSound", source, "volume", {
        soundId = name_,
        volume = vol,
    })
end

exports('setVolume', setVolume)

function setTimeStamp(source, name_, time_)
    TriggerClientEvent("bitsound:stateSound", source, "timestamp", {
        soundId = name_,
        time = time_
    })
end

exports('setTimeStamp', setTimeStamp)

function destroyOnFinish(id, bool)
    TriggerClientEvent("bitsound:stateSound", source, "destroyOnFinish", {
        soundId = id,
        value = bool
    })
end

exports('destroyOnFinish', destroyOnFinish)

function PlayUrl(source, name_, url_, volume_, loop_)
    TriggerClientEvent("bitsound:stateSound", source, "play", {
        soundId = name_,
        url = url_,
        volume = volume_,
        loop = loop_
    })
end

exports('PlayUrl', PlayUrl)

function PlayUrlPos(source, name_, url_, volume_, pos, loop_)
    TriggerClientEvent("bitsound:stateSound", source, "playpos", {
        soundId = name_,
        position = pos,
        url = url_,
        volume = volume_,
        loop = loop_
    })
end

exports('PlayUrlPos', PlayUrlPos)

function TextToSpeech(source, name_, lang, text, volume_, loop_)
    TriggerClientEvent("bitsound:stateSound", source, "texttospeech", {
        soundId = name_,
        url = text,
        lang = lang,
        volume = volume_,
        loop = loop_
    })
end

exports('TextToSpeech', TextToSpeech)

function TextToSpeechPos(source, name_, lang, text, volume_, pos, loop_)
    TriggerClientEvent("bitsound:stateSound", source, "texttospeechpos", {
        soundId = name_,
        lang = lang,
        position = pos,
        url = text,
        volume = volume_,
        loop = loop_
    })
end

exports('TextToSpeechPos', TextToSpeechPos)