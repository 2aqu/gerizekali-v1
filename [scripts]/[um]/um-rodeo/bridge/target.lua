if not Config.Target.status then return end


local targetType = Config.Target.type
local lang = Config.Lang

local function IsDeadPed()
    return IsEntityDead(PlayerPedId())
end

function AddTargetEntityF(id,entity)
    if targetType == 'qb' then
        exports['qb-target']:AddTargetEntity(entity, { -- The specified entity number
        options = {
            {
                icon = 'fas fa-medal',
                label = lang.lang_target_leaderboard,
                action = function()
                if IsDeadPed() then return false end
                    GetScoreNui()
                end,
            },
            {
                icon = 'fas fa-cow',
                label = lang.lang_target_rodeo,
                action = function()
                if IsDeadPed() then return false end
                    SetPlayerToBulls(id)
                end,
            },
        },
        distance = 2.5,
    })
    elseif targetType == 'ox' then
        exports.ox_target:addLocalEntity(entity, {
            {
                icon = 'fas fa-cow',
                label = lang.lang_target_rodeo,
                onSelect = function()
                if IsDeadPed() then return false end
                    SetPlayerToBulls(id)
                end,
            },
            {
                icon = 'fas fa-medal',
                label = lang.lang_target_leaderboard,
                onSelect = function()
                if IsDeadPed() then return false end
                    GetScoreNui()
                end,
            },
        })
    else
        print('No target found | Standalone')
    end
end

function RemoveTargetEntity(id)
    if targetType == 'qb' then
        exports['qb-target']:RemoveTargetEntity(id)
    elseif targetType == 'ox' then
        exports.ox_target:removeLocalEntity(id)
    else
        print('No target found | Standalone')
    end
end