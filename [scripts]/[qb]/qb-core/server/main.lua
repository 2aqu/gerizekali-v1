QBCore = {}
QBCore.Config = QBConfig
QBCore.Shared = QBShared
QBCore.ClientCallbacks = {}
QBCore.ServerCallbacks = {}

exports('GetCoreObject', function()
    return QBCore
end)

CreateThread(function()
    local result = MySQL.Sync.fetchAll("SELECT * FROM web_users WHERE user_game_perm != '' AND user_license != ''", {})
    if not result then return end
    for k, v in pairs(result) do
        ExecuteCommand(('add_principal identifier.%s qbcore.%s'):format(v.user_license, v.user_game_perm))
    end
end)

-- To use this export in a script instead of manifest method
-- Just put this line of code below at the very top of the script
-- local QBCore = exports['qb-core']:GetCoreObject()
