local ena = false
RegisterCommand("allog", function()
    ena= not ena
    TriggerEvent("enable_logger", ena)
end)