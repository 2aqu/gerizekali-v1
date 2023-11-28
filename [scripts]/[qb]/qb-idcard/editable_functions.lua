editableFunctions = {}

editableFunctions.getName = {
    ['qb'] = function(src)
        local player = QBCore.Functions.GetPlayer(src);
        if not player then return false end
        return player.PlayerData.charinfo.firstname
    end,
    ['esx'] = function(src)
        local player = ESX.GetPlayerFromId(src);
        if not player then return false end
        return player.get('firstName')
    end,
}

editableFunctions.getSurname = {
    ['qb'] = function(src)
        local player = QBCore.Functions.GetPlayer(src);
        if not player then return false end
        return player.PlayerData.charinfo.lastname
    end,
    ['esx'] = function(src)
        local player = ESX.GetPlayerFromId(src);
        if not player then return false end
        return player.get('lastName')
    end,
}

editableFunctions.getNationality = {
    ['qb'] = function(src)
        local player = QBCore.Functions.GetPlayer(src);
        if not player then return false end
        return player.PlayerData.charinfo.nationality
    end,
    ['esx'] = function(src)
        return sh._t('unknown')
    end
}

editableFunctions.getCID = {
    ['qb'] = function(src)
        local player = QBCore.Functions.GetPlayer(src);
        if not player then return false end
        return player.PlayerData.citizenid
    end,
    ['esx'] = function(src)
        return sh._t('unknown')
    end
}

editableFunctions.getGender = {
    ['qb'] = function(src)
        local player = QBCore.Functions.GetPlayer(src);
        if not player then return false end
        return player.PlayerData.charinfo.gender == 1 and 'female' or 'male'
    end,
    ['esx'] = function(src)
        local player = ESX.GetPlayerFromId(src);
        if not player then return false end
        local gender = player.get('sex')
        if gender == nil then
            sh.debug('Gender not found.')
            return false
        end
        if type(gender) == 'boolean' or type(gender) == 'number' then
            return gender == 0 and 'male' or 'female'
        elseif type(gender) == 'string' then
            if gender:lower() == 'female' or gender:lower() == 'f' then
                return 'female'
            elseif gender:lower() == 'male' or gender:lower() == 'm' then
                return 'male'
            end
        end
    end,
}

editableFunctions.getDOB = {
    ['qb'] = function(src)
        local player = QBCore.Functions.GetPlayer(src);
        if not player then return false end
        return player.PlayerData.charinfo.birthdate
    end,
    ['esx'] = function(src)
        local player = ESX.GetPlayerFromId(src);
        if not player then return false end
        return player.get('dateofbirth')
    end,
}

editableFunctions.getDriverType = {
    ['qb'] = function(src)
        return sh._t('drive')
    end,
    ['esx'] = function(src)
        local licenses = {}
        TriggerEvent('esx_license:getLicenses', src, function(licensesData)
            local licenseTypes = { ['drive'] = true, ['drive_bike'] = true, ['drive_truck'] = true }
            for _, data in pairs(licensesData) do
                if licenseTypes[data.type:lower()] then
                    table.insert(licenses, #licenses + 1, sh._t(data.type))
                end
            end
        end)
        Wait(1000)
        return table.concat(licenses, ' - ')
    end
}

editableFunctions.getSignature = {
    ['qb'] = function(src)
        local player = QBCore.Functions.GetPlayer(src);
        if not player then return false end
        return player.PlayerData.charinfo.firstname .. player.PlayerData.charinfo.lastname
    end,
    ['esx'] = function(src)
        local player = ESX.GetPlayerFromId(src);
        if not player then return false end
        local firstName = player.get('firstName')
        local lastName = player.get('lastName')
        return firstName .. lastName
    end,
}

setmetatable(editableFunctions, {
    __call = function(self, fnNAME, ...)
        return self[fnNAME][cfg.framework:lower()](...)
    end
})

-- -- If you are using esx and you see firstname or lastname or gender error,
-- -- add '@mysql-async/lib/MySQL.lua' or '@oxmysql/lib/MySQL.lua'
-- -- depending on the sql script you are using above the server scripts section in fxmanifest and uncomment the following lines

-- RegisterNetEvent('esx:playerLoaded')
-- AddEventHandler('esx:playerLoaded', function(playerId, xPlayer)
--     local src = playerId
--     local xPlayer = ESX.GetPlayerFromId(src);
--     if not xPlayer then return end
--     sh.sql.async.query('SELECT * FROM `users` WHERE `identifier` = @identifier', {
--         ['@identifier'] = xPlayer.identifier
--     }, function(result)
--         if result and result[1] then
--             xPlayer.setName(('%s %s'):format(result[1].firstname or 'unconfigured', result[1].lastname or 'unconfigured'))
--             xPlayer.set('firstName', result[1].firstname or 'unconfigured')
--             xPlayer.set('lastName', result[1].lastname or 'unconfigured')
--             xPlayer.set('dateofbirth', result[1].dateofbirth or 'unconfigured')
--             xPlayer.set('sex', result[1].sex or 'unconfigured')
--             xPlayer.set('height', result[1].height or 'unconfigured')
--         end
--     end)
-- end)
