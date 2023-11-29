local QBCore = exports['qb-core']:GetCoreObject()
gps, blips = false, {}
code = ""
--


function closeGps()

end

RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
    gps = false
    closeGps()
    TriggerServerEvent('qb:gps:server:closeGPS')
end)
--
RegisterNetEvent('qb:gps:client:Used')
AddEventHandler('qb:gps:client:Used', function()
    print("e")
    local dialog = exports['qb-input']:ShowInput({
        header = "GPS",
        submitText = "Ayarla",
        inputs = {
            {
                text = "GPS Aç / Kapat",
                name = "gps",
                type = "select",
                options = {
                    { value = "on",  text = "GPS Aç" },
                    { value = "off", text = "Gps Kapat" },
                }
            }
        },
    })

    if dialog.gps == "on" then
        if not gps then
            QBCore.Functions.Notify('GPS\'te görünmesini istediğiniz kodunuzu giriniz!')

            local dialog = exports['qb-input']:ShowInput({
                header = "Kod Giriniz",
                submitText = "Onayla",
                inputs = {
                    {
                        text = "Kod",
                        name = "code",
                        type = "text",
                        isRequired = true
                    },
                },
            })
            code = dialog.code
            gps = true
            QBCore.Functions.Notify('GPS\'iniz açıldı!')
        else
            QBCore.Functions.Notify('GPS\'iniz zaten açık!', 'error')
        end
    elseif dialog.gps == "off" then
        if gps then
            gps = false
            TriggerServerEvent('qb:gps:server:closeGPS')
            QBCore.Functions.Notify('GPS\'iniz kapatıldı!')
        else
            QBCore.Functions.Notify('GPS\'iniz zaten kapalı!', 'error')
        end
    end
end)
--
function setBlip(bliptable)
    if GetPlayerServerId(PlayerId()) ~= bliptable.src then
        if DoesBlipExist(blips[bliptable.src]) then
            SetBlipCoords(blips[bliptable.src], bliptable.coord.x, bliptable.coord.y, bliptable.coord.z)
        else
            blips[bliptable.src] = AddBlipForCoord(bliptable.coord.x, bliptable.coord.y, bliptable.coord.z)
        end
        SetBlipSprite(blips[bliptable.src], 1)
        if bliptable.job == 'police' then
            SetBlipColour(blips[bliptable.src], 57)
        elseif bliptable.job == 'state' then
            SetBlipColour(blips[bliptable.src], 40)
        elseif bliptable.job == 'fbi' then
            SetBlipColour(blips[bliptable.src], 29)
        elseif bliptable.job == 'sheriff' then
            SetBlipColour(blips[bliptable.src], 60)
        elseif bliptable.job == 'ranger' then
            SetBlipColour(blips[bliptable.src], 25)
        elseif bliptable.job == 'davison' then
            SetBlipColour(blips[bliptable.src], 21)
        elseif bliptable.job == 'ambulance' then
            SetBlipColour(blips[bliptable.src], 49)
        elseif bliptable.job == 'doj' then
            SetBlipColour(blips[bliptable.src], 5)
        elseif bliptable.job == 'vpd' then
            SetBlipColour(blips[bliptable.src], 2)
        elseif bliptable.job == 'dppd' then
            SetBlipColour(blips[bliptable.src], 44)
        end
        SetBlipScale(blips[bliptable.src], 0.85)
        SetBlipAsShortRange(blips[bliptable.src], true)
        BeginTextCommandSetBlipName('STRING')
        AddTextComponentString(bliptable.text)
        EndTextCommandSetBlipName(blips[bliptable.src])
    end
end

--
RegisterNetEvent('qb:gps:client:removeBlip')
AddEventHandler('qb:gps:client:removeBlip', function(src)
    if (blips[src]) then
        RemoveBlip(blips[src])
        blips[src] = nil
    end
end)
--
RegisterNetEvent('qb:gps:client:forceCloseAllRemoveBlip')
AddEventHandler('qb:gps:client:forceCloseAllRemoveBlip', function()
    gps = false
    for k, v in pairs(blips) do
        if DoesBlipExist(v) then
            RemoveBlip(v)
            blips[k] = nil
        end
        Wait(0)
    end
end)

CreateThread(function()
    while true do
        Wait(10000)
        if LocalPlayer.state.isLoggedIn and gps then
            QBCore.Functions.TriggerCallback('qb-gps:server:GetItem', function(hasItem)
                if not hasItem then
                    gps = false
                    TriggerServerEvent('qb:gps:server:closeGPS')
                    QBCore.Functions.Notify('GPS\'iniz kapatıldı!')
                end
            end, "gps")
        end
    end
end)
local playerjob = QBCore.Functions.GetPlayerData().job.name
local fullname = QBCore.Functions.GetPlayerData().charinfo.firstname ..
    " " .. QBCore.Functions.GetPlayerData().charinfo.lastname
local plid = GetPlayerServerId(PlayerId())
--{"location":"{\"z\":42.51223373413086,\"x\":264.79766845703127,\"y\":-566.8057861328125}","id":3,"action":"sendLocation","job":"police"}
RegisterNUICallback("locationFetched", function(e, cb)
    if gps then
        local blipdata = e
        local playerId = blipdata.id
        local job = blipdata.job
        if job == playerjob then
            local location = json.decode(e.location)
            setBlip { src = playerId, coord = location, job = job, text = blipdata.name }
        end
        cb("e")
    end
end)


Citizen.CreateThread(function()
    while true do
        Wait(5000)
        playerjob = QBCore.Functions.GetPlayerData().job.name
        fullname = QBCore.Functions.GetPlayerData().charinfo.firstname ..
            " " .. QBCore.Functions.GetPlayerData().charinfo.lastname .. " [" .. code .. "]"
        plid = GetPlayerServerId(PlayerId())
    end
end)



Citizen.CreateThread(function()
    while true do
        Wait(250)
        if gps then
            local x, y, z = table.unpack(GetEntityCoords(PlayerPedId()))
            SendNUIMessage({
                action = "sendLocation",
                location = json.encode({ x = x, y = y, z = z }),
                job = playerjob,
                name = fullname,
                id = plid
            })
        end
    end
end)
