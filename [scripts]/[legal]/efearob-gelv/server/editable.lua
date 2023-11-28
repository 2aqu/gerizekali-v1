Citizen.CreateThread(function()
    Core, Config.Framework = GetCore()
    
    RegisterCallback('mgnPoliceMdt:server:getwebhook', function(source, cb)
        cb(discord_adjust.photo)
    end)

    RegisterCallback('mgnPoliceMdt:server:GetPhoneNumbers', function(source, cb)
        numbers = ExecuteSql("SELECT * FROM `phone_phones`")
        cb(numbers)
    end)

    RegisterCallback('mgnPoliceMdt:server:getPlayerHouses', function(source, cb)
        local houses = {}
            
        if Config.HouseSystem == 'qb-houses' then
            houses = ExecuteSql("SELECT * FROM `player_houses`")
            if houses then
                cb(houses)
            else
                cb(false)
            end

        elseif Config.HouseSystem == 'esx_property' and Config.Framework == "esx" then

            local PropertiesList = LoadResourceFile('esx_property', 'properties.json')

            if PropertiesList then
                cb(json.decode(PropertiesList))
            else
                cb(false)
            end
        elseif Config.HouseSystem == 'qs-housing' then
            houses = ExecuteSql("SELECT * FROM `player_houses`")
            if houses then
                cb(houses)
            else
                cb(false)
            end
        else
            cb(false)
        end
    end)

    RegisterCallback('mgnPoliceMdt:server:getPlayerHouses2', function(source, cb)
        local allhouses = {}
        allhouses = ExecuteSql("SELECT * FROM `houselocations`")
        if allhouses then
            cb(allhouses)
        else
            cb(false)
        end
    end)

    -- LICENSE

    if Config.LicenseSystem == 'esx_license' then
        RegisterCallback('mgnPoliceMdt:GetPlayersLicenses', function(source, cb)
            local PlayerLicenses = ExecuteSql("SELECT * FROM `user_licenses`")
            cb(PlayerLicenses)
        end)
    end

    -- ITEM

    if Config.Item then
        if Config.Framework == 'newesx' or Config.Framework == 'oldesx' or Config.Framework == 'esx'  then
            Core.RegisterUsableItem(Config.ItemName, function(source)
                local src = source
                TriggerClientEvent('mgnPoliceMdt:client:open',src)
            end)
        else
            Core.Functions.CreateUseableItem(Config.ItemName, function(source, item)
                local src = source
                TriggerClientEvent('mgnPoliceMdt:client:open',src)
            end)
        end
    end

    -- VEHICLES

    if Config.DisplayPage['VEHICLES'] then

        RegisterCallback('mgnPoliceMdt:GetAllVehicles', function(source, cb)
            local vehicles = {}
            
            if Config.Framework == 'newesx' or Config.Framework == 'oldesx' or Config.Framework == 'esx'  then
                allvehicles = ExecuteSql("SELECT * FROM `owned_vehicles`")
                cb(allvehicles)
            else
                allvehicles = ExecuteSql("SELECT * FROM `player_vehicles`")
                cb(allvehicles)
            end

        end)

    end

end)

-- INVOICES

function sendInvoices(involved,fines,source)
    local PlayerIdentifier = GetIdentifier(source)
    if not fines or not involved or not PlayerIdentifier then
        return
    end
    for _,v in pairs(involved) do
        for t,f in pairs(fines) do
            local Label,Amount = f.name, tonumber(f.money)
            if Config.OkokBilling then
                local PlayerSource = GetPlayerSourceFromIdentifier(v.identifier)
                if PlayerSource then
                    TriggerEvent("okokBilling:CreateCustomInvoice", PlayerSource, Amount, Label, GetPlayerNameFromSource(source), PlayerIdentifier, Config.SocietyNameJob[GetPlayerJob(source)])
                end
            elseif Config.JaksamBilling then
                local PlayerSource = GetPlayerSourceFromIdentifier(v.identifier)
                if PlayerSource then
                    local targetIdentifier = GetIdentifier(PlayerSource)
                    exports["billing_ui"]:createBill(PlayerIdentifier, targetIdentifier, Label, Amount, Config.SocietyNameJob[GetPlayerJob(source)], "society")
                end
            else
                if Config.Framework == 'newesx' or Config.Framework == 'oldesx' or Config.Framework == 'esx'  then
                    ExecuteSql(string.format("INSERT INTO billing (identifier, sender, target_type, target, label, amount) VALUES ('%s', '%s', '%s', '%s', '%s', '%s')", v.identifier, PlayerIdentifier, 'society', Config.SocietyNameJob[GetPlayerJob(source)], Label, Amount))
                else
                    ExecuteSql(string.format("INSERT INTO `phone_invoices` (`citizenid`, `amount`, `society`, `sender`, `sendercitizenid`) VALUES ('%s', '%s', '%s', '%s', '%s')", v.identifier, Amount, Config.SocietyNameJob[GetPlayerJob(source)], GetPlayerNameFromSource(source), GetIdentifier(source)))
                end
            end
        end
    end
end

-- COMUMUNITY SERVICE

function sendCommunityService(involved,fines,source)
    local PlayerIdentifier = GetIdentifier(source)
    if not fines or not involved or not PlayerIdentifier then
        return
    end
    for _,v in pairs(involved) do
        local PlayerSource = GetPlayerSourceFromIdentifier(v.identifier)
        if PlayerSource then
            for t,f in pairs(fines) do
                local Count = tonumber(f.communityservice)
                if Config.CommunityServiceScript == 'JD_CommunityService' then
                    TriggerClientEvent('JD_CommunityService:beginService', PlayerSource, Count)
                else
                    -- Your community service script here
                end
            end
        end
    end
end

-- JAIL

function sendJail(involved,fines,source)
    local PlayerIdentifier = GetIdentifier(source)
    if not fines or not involved or not PlayerIdentifier then
        return
    end
    for _,v in pairs(involved) do
        local PlayerSource = GetPlayerSourceFromIdentifier(v.identifier)
        if PlayerSource then
            for t,f in pairs(fines) do
                local Time = tonumber(f.jailtime)
                if Config.JailScript == 'esx_jail' then
                    TriggerClientEvent('esx_jail:jailPlayer', PlayerSource, Time)
                elseif Config.JailScript == 'qb-prison' then
                    TriggerClientEvent('prison:client:Enter', PlayerSource, Time)
                elseif Config.JailScript == 'esx-qalle-jail' then
                    TriggerClientEvent('esx-qalle-jail:jailPlayer', PlayerSource, Time)
                else
                    -- Your jail script here
                end
            end
        end
    end
end

function GetPlayerSourceFromIdentifier(identifier) 
    if Config.Framework == 'newesx' or Config.Framework == 'oldesx' or Config.Framework == 'esx'  then
        local Player = Core.GetPlayerFromIdentifier(identifier)
        if Player then
            return Player.source
        else
            return nil
        end
    else
        local Player = Core.Functions.GetPlayerByCitizenId(identifier)
        if Player then
            return Player.PlayerData.source
        else
            return nil
        end
    end
end

function setPlayerLicense(identifier, license)
    if Config.LicenseSystem ~= 'esx_license' then
        return
    end
    
    local playerAllLicense = ExecuteSql(string.format("SELECT * FROM `user_licenses` WHERE `owner` = '%s'", identifier))
    local existingLicenses = {}
    
    for _, v in ipairs(playerAllLicense) do
        existingLicenses[v.type] = true
    end
    
    for _, v in ipairs(license) do
        if not existingLicenses[v] then
            ExecuteSql(string.format("INSERT INTO `user_licenses` (`owner`, `type`) VALUES ('%s', '%s')", identifier, v))
        end
    end
    
    for _, v in ipairs(playerAllLicense) do
        if not tableContains(license, v.type) then
            ExecuteSql(string.format("DELETE FROM `user_licenses` WHERE `owner` = '%s' AND `type` = '%s'", identifier, v.type))
        end
    end
end

function tableContains(table, element)
    for _, value in ipairs(table) do
        if value == element then
            return true
        end
    end
    return false
end

RegisterServerEvent('mgnPoliceMdt:server:updatecam')
AddEventHandler('mgnPoliceMdt:server:updatecam',function()
    TriggerClientEvent('mgnPoliceMdt:client:updatecam',-1)
end)

RegisterServerEvent('mgnPoliceMdt:savecarphotos')
AddEventHandler('mgnPoliceMdt:savecarphotos',function(plate,photos)
    local src = source
    if not plate or not photos then
        return
    end
    if Config.Framework == 'newesx' or Config.Framework == 'oldesx' or Config.Framework == 'esx'  then
        local result = ExecuteSql(string.format("SELECT * FROM `owned_vehicles` WHERE `plate` = '%s'", plate))
        if result[1] then
            ExecuteSql(string.format("UPDATE `owned_vehicles` SET `photos` = '%s' WHERE `plate` = '%s'", photos, plate))
            vehicleGalleryLog('update', src, plate, json.decode(photos))
        else
            ExecuteSql(string.format("INSERT INTO `owned_vehicles` (`plate`, `photos`) VALUES ('%s', '%s')", plate, photos))
            vehicleGalleryLog('create', src, plate, json.decode(photos))
        end
    else
        local result = ExecuteSql(string.format("SELECT * FROM `player_vehicles` WHERE `plate` = '%s'", plate))
        if result[1] then
            ExecuteSql(string.format("UPDATE `player_vehicles` SET `photos` = '%s' WHERE `plate` = '%s'", photos, plate))
            vehicleGalleryLog('update', src, plate, json.decode(photos))
        else
            ExecuteSql(string.format("INSERT INTO `player_vehicles` (`plate`, `photos`) VALUES ('%s', '%s')", plate, photos))
            vehicleGalleryLog('create', src, plate, json.decode(photos))
        end
    end
end)

if Config.DisplayPage['LIVEMAP'] then
    local function UpdateLiveMap()
        local dutyPlayers = {}
        if Config.Framework == 'newesx' or Config.Framework == 'oldesx' or Config.Framework == 'esx'  then
            players = Core.GetExtendedPlayers()
            for _,v in pairs(players) do
                if Config.Access[v.job.name] then
                    local coords = GetEntityCoords(GetPlayerPed(v.source))
                    local heading = GetEntityHeading(GetPlayerPed(v.source))
                    dutyPlayers[#dutyPlayers+1] = {
                        source = v.source,
                        job = v.job.name,
                        grade = v.job.grade_label,
                        name = v['variables'].firstName .. ' ' .. v['variables'].lastName,
                        location = {
                            x = coords.x,
                            y = coords.y,
                        }
                    }
                end
            end

            for _,v in pairs(players) do
                local isMdtOpen = Player(tonumber(v.source)).state.isMdtOpen
                if isMdtOpen then
                    TriggerClientEvent('mgnPoliceMdt:UpdateLiveMap', v.source, dutyPlayers)
                end
            end

        else
            local players = Core.Functions.GetQBPlayers()
            for _, v in pairs(players) do
                if Config.Access[v.PlayerData.job.name] then
                    local coords = GetEntityCoords(GetPlayerPed(v.PlayerData.source))
                    local heading = GetEntityHeading(GetPlayerPed(v.PlayerData.source))
                    dutyPlayers[#dutyPlayers+1] = {
                        source = v.PlayerData.source,
                        name = v.PlayerData.charinfo.firstname .. ' ' .. v.PlayerData.charinfo.lastname,
                        job = v.PlayerData.job.name,
                        grade = v.PlayerData.job.grade.name,
                        location = {
                            x = coords.x,
                            y = coords.y,
                        }
                    }
                end
            end

            for _,v in pairs(players) do
                local isMdtOpen = Player(tonumber(v.PlayerData.source)).state.isMdtOpen
                if isMdtOpen then
                    TriggerClientEvent('mgnPoliceMdt:UpdateLiveMap', v.PlayerData.source, dutyPlayers)
                end
            end
        end
    end

    CreateThread(function()
        while true do
            Wait(Config.LiveMapUpdateInterval * 1000)
            UpdateLiveMap()
        end
    end)
end

CreateThread(function()
    while true do
        chatMessages = {}
        TriggerClientEvent('mgnPoliceMdt:SyncChatMessages', -1, chatMessages , true)
        Wait(Config.ChatClearInterval * 1000 * 60)
    end
end)

RegisterServerEvent('mgnPoliceMdt:server:giveLicense')
AddEventHandler('mgnPoliceMdt:server:giveLicense', function(source,val)
    local src = source
    local identifier = GetIdentifier(src)
    local result = ExecuteSql(string.format("SELECT * FROM `mdt_profiles` WHERE `identifier` = '%s'", identifier))

    if result[1] then
        local licenses = json.decode(result[1].licenses)
        licenses[#licenses+1] = val
        ExecuteSql(string.format("UPDATE `mdt_profiles` SET `licenses` = '%s' WHERE `identifier` = '%s'", json.encode(licenses), identifier))
    else
        ExecuteSql(string.format("INSERT INTO `mdt_profiles` (`identifier`, `licenses`) VALUES ('%s', '%s')", identifier, json.encode({val})))
    end

    local profiles = ExecuteSql("SELECT * FROM `mdt_profiles`")

    for _, v in pairs(GetPlayers()) do
        local player = Player(tonumber(v))
        local isMdtOpen = player.state.isMdtOpen

        if isMdtOpen then
            TriggerClientEvent('mgnPoliceMdt:UpdateProfiles', v, profiles)

            if Config.LicenseSystem == 'esx_license' then
                local licenses = ExecuteSql("SELECT * FROM `user_licenses`")
                TriggerClientEvent('mgnPoliceMdt:UpdateLicenses', v, licenses)
            end
        end
    end
end)

RegisterServerEvent('mgnPoliceMdt:server:removeLicense')
AddEventHandler('mgnPoliceMdt:server:removeLicense', function(source,val)
    local src = source
    local identifier = GetIdentifier(src)
    local result = ExecuteSql(string.format("SELECT * FROM `mdt_profiles` WHERE `identifier` = '%s'", identifier))

    if result[1] then
        local licenses = json.decode(result[1].licenses)
        for k,v in pairs(licenses) do
            if v == val then
                table.remove(licenses,k)
            end
        end
        ExecuteSql(string.format("UPDATE `mdt_profiles` SET `licenses` = '%s' WHERE `identifier` = '%s'", json.encode(licenses), identifier))
    end

    local profiles = ExecuteSql("SELECT * FROM `mdt_profiles`")

    for _, v in pairs(GetPlayers()) do
        local player = Player(tonumber(v))
        local isMdtOpen = player.state.isMdtOpen

        if isMdtOpen then
            TriggerClientEvent('mgnPoliceMdt:UpdateProfiles', v, profiles)

            if Config.LicenseSystem == 'esx_license' then
                local licenses = ExecuteSql("SELECT * FROM `user_licenses`")
                TriggerClientEvent('mgnPoliceMdt:UpdateLicenses', v, licenses)
            end
        end
    end
end)