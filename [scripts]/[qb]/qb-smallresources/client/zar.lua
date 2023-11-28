local QBCore = exports['qb-core']:GetCoreObject()

RegisterCommand('zarat', function(source, args, raw) 
    local number = 0
    number = math.random(1,12)

    loadAnimDict("anim@mp_player_intcelebrationmale@wank")
    TaskPlayAnim(PlayerPedId(), "anim@mp_player_intcelebrationmale@wank", "wank", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
    Wait(1500)
    ClearPedTasks(PlayerPedId())
    ExecuteCommand("do 🎲 Attığı zar "..number.." gelmiştir. ("..number.."/12)")
end)

RegisterCommand('zarat50', function(source, args, raw)
    local number = 0
    number = math.random(1,50)

    loadAnimDict("anim@mp_player_intcelebrationmale@wank")
    TaskPlayAnim(PlayerPedId(), "anim@mp_player_intcelebrationmale@wank", "wank", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
    Wait(1500)
    ClearPedTasks(PlayerPedId())
    ExecuteCommand("do 🎲 Attığı zar "..number.." gelmiştir. ("..number.."/50)")
end)

function loadAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        RequestAnimDict( dict )
        Wait(5)
    end
end