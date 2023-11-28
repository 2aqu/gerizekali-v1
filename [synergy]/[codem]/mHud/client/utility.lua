function WaitPlayer()
    if Config.Framework == "esx" or Config.Framework == 'oldesx' then
        while Core == nil do
            Citizen.Wait(0)
        end
        while Core.GetPlayerData()  == nil do
            Citizen.Wait(0)
        end
        while Core.GetPlayerData().job == nil do
            Citizen.Wait(0)
        end
    else
        while Core == nil do
            Citizen.Wait(0)
        end
        while Core.Functions.GetPlayerData() == nil do

            Citizen.Wait(0)
        end
        while Core.Functions.GetPlayerData().metadata == nil do

            Citizen.Wait(0)
        end
    end
end

function WaitNUI()
    while not nuiLoaded do
        Wait(0)
    end
end

function TriggerCallback(name, data)
    local incomingData = false
    local status = 'UNKOWN'
    local counter = 0
    WaitCore()

    if Config.Framework == 'esx' or Config.Framework == 'oldesx' then
        Core.TriggerServerCallback(name, function(payload)
            status = 'SUCCESS'
            incomingData = payload
        end, data)
    else
        Core.Functions.TriggerCallback(name, function(payload)
            status = 'SUCCESS'
            incomingData = payload
        end, data)
    end
    CreateThread(function()
        while incomingData == 'UNKOWN' do
            Citizen.Wait(1000)
            if counter == 4 then
                status = 'FAILED'
                incomingData = false
                break
            end
            counter = counter + 1
        end
    end)

    while status == 'UNKOWN' do
        Citizen.Wait(0)
    end
    return incomingData
end


