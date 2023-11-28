Object = {}
Object.Request = function(model, cb)
    local hash = GetHashKey(model)
    if not IsModelInCdimage(hash) then
        dbg.critical("Cannot found model %s!", model)
        pcall(cb, nil)
        return
    end

    RequestModel(hash)

    local breaker = 0
    while not HasModelLoaded(hash) do
        Wait(0)
        breaker = breaker + 1
        if breaker > 500 then
            dbg.critical("Cannot load model %s", model)
            pcall(cb, nil)
            break
        end
    end

    pcall(cb, hash)
end

Object.Spawn = function(modelName, pos, cb, isNetwork, missionEntity)
    isNetwork = isNetwork or false
    missionEntity = missionEntity or false

    local ok = validate({
        ['required|vector3'] = pos,
        ['required'] = modelName,
        ['required'] = cb,
    })

    if not ok then
        dbg.critical("Wrong parameters to function!");
        pcall(cb, nil)
        return
    end

    Object.Request(modelName, function(hash)
        if hash == nil then
            pcall(cb, nil)
            return
        end

        local obj = CreateObject(hash, pos.x, pos.y, pos.z, isNetwork, missionEntity, false)
        FreezeEntityPosition(obj, true)
        if not DoesEntityExist(obj) then
            dbg.critical("Cannot create object %s", modelName)
            pcall(cb, nil)
            return
        end

        pcall(cb, obj)
    end)
end
