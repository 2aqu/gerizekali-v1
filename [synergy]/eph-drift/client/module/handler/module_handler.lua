Modules = {}

exports('GetModules', function()
    return Modules
end)

exports('IsDrifting', function()
    return Modules.DriftCounter.IsDrifting or false
end)