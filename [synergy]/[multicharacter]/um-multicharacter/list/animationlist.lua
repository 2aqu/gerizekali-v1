Animation = {}

Animation.List = {
    "uwu",
    "smoke2",
    "bekle13",
    "bookc",
}

Animation.ScenarioList = {
    "WORLD_HUMAN_SMOKING",
    "WORLD_HUMAN_DRINKING"
}

Animation.Export = function(emoteName)
    Wait(100)
    TriggerEvent('animations:client:EmoteCommandStart',{emoteName})
    -- -- -- or
    -- exports["rpemotes"]:EmoteCommandStart(emoteName, 0)
end

Animation.Stop = function()
    if Config.AnimationMenu == 'rpemotes' then
        exports["rpemotes"]:EmoteCancel(true)
    elseif Config.AnimationMenu == 'scully' then
        exports.scully_emotemenu:cancelEmote()
    else
        ClearPedTasks(cache.ped)
    end
end