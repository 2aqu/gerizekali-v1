RegisterNetEvent('qb-idcard:client:showCard', function(cardData, mugShotSupport)
    local playerPed = PlayerPedId()
    local playerCoords = GetEntityCoords(playerPed)
    local playersNearby = sh.getPlayersFromCoords(playerCoords, cfg.showDistance)
    local players = {}
    for k, playerNearby in pairs(playersNearby) do
        table.insert(players, GetPlayerServerId(playerNearby))
    end

    if not IsPedInAnyVehicle(playerPed) then
        sh.loadAnimDict('paper_1_rcm_alt1-7', function()
            TaskPlayAnim(playerPed, 'paper_1_rcm_alt1-7', 'player_one_dual-7', 2.0, 2.0, 6000, 48, 0.0, false, false, false)
            CreateThread(function()
                sh.spawnObject('p_ld_id_card_01', playerCoords, false, function(obj)
                    AttachEntityToEntity(obj, playerPed, GetPedBoneIndex(playerPed, 6286), 0.1, 0.064, -0.02, 0.0, 60.0, 120.0, true, true, false, true, 1, true)
                    Wait(6000)
                    DetachEntity(obj)
                    sh.deleteObject(obj)
                end)
            end)
        end)
    end

    if mugShotSupport and cfg.mugShot then
        getBase64Mugshot(playerPed, false, function(mugShotImage)
            cardData.mugshot = mugShotImage
            TriggerServerEvent('qb-idcard:server:showCard', players, cardData)
        end)
    else
        TriggerServerEvent('qb-idcard:server:showCard', players, cardData)
    end
end)

RegisterNetEvent('qb-idcard:client:createCard', function(data)
    SendNUIMessage({
        action = 'createCard',
        cardData = data
    })
end)

RegisterNUICallback('sendCardImage', function(data, cb)
    if cfg.showOn:lower() == 'chat' then
        TriggerEvent(cfg.chatEvent, {
            template = '<img src="{0}">',
            args = {data.image}
        })
        TriggerEvent(cfg.chatEvent, {
            template = '<br>',
        })
    else
        SendNUIMessage({
            action = 'showCard',
            card = data.image,
            positions = cfg.interfacePositons[cfg.interfacePosition],
            timeout = cfg.showTimeout * 1000
        })
    end
    cb({})
end)

-- thanks to baziforyou https://github.com/BaziForYou/MugShotBase64
local b64mugshots = {}
function getBase64Mugshot(ped, transparent, cb)
    if not ped then ped = PlayerPedId() end
    local id = #b64mugshots + 1
    if transparent then
        b64mugshots[id] = RegisterPedheadshotTransparent(ped)
    else
        b64mugshots[id] = RegisterPedheadshot(ped)
    end

    while (not IsPedheadshotReady(b64mugshots[id]) or not IsPedheadshotValid(b64mugshots[id])) do
        Wait(0)
    end

    SendNUIMessage({
        action = 'mugshot',
        txd = GetPedheadshotTxdString(b64mugshots[id]),
        id = id
    })

    UnregisterPedheadshot(b64mugshots[id])
    b64mugshots[id] = 'waiting'

    while b64mugshots[id] == 'waiting' do
        Wait(0)
    end

    local b64mugshot = b64mugshots[id]
    b64mugshots[id] = nil

    if cb then cb(b64mugshot) else return b64mugshot end
end

RegisterNUICallback('returnB64Mugshot', function(data, cb)
    b64mugshots[data.id] = data.b64mugshot
    cb({})
end)