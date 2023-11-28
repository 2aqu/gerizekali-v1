-- Shared Events

Framework = {
    Events = {
        -- Character
        loadedC = 'QBCore:Client:OnPlayerLoaded',
        loadedS = 'QBCore:Server:OnPlayerLoaded',
        loadedSP = 'QBCore:Server:PlayerLoaded',
        unload = 'QBCore:Server:OnPlayerUnload',

       -- House / Apartment
        house = 'qb-houses:client:LastLocationHouse',
        houseS = 'qb-houses:server:SetInsideMeta',
        apart = 'qb-apartments:client:LastLocationHouse',
        apartS = 'qb-apartments:server:SetInsideMeta',
        logout = 'qb-houses:server:LogoutLocation',
    }
}


-- Functions Shared [um-multicharacter\framework\custom.lua]

function Framework:Core()
    QBCore = exports['qb-core']:GetCoreObject()
    return QBCore
end

function Framework:GetPlayerData()
    return QBCore.Functions.GetPlayerData() or Debug('GetPlayerData ?')
end

-- Functions Server [um-multicharacter\framework\custom.lua]
if IsDuplicityVersion() then

    Debug('Framework Func() Start for Server')

    local QboxLicense = Config.ConvertQBoxLicense or false

    function Framework:GetPlayer(src)
        return QBCore.Functions.GetPlayer(src) or Debug('GetPlayer ?')
    end

    function Framework:GetIdentifier(src, type)
        return QBCore.Functions.GetIdentifier(src, type) or Debug('Getidentifier ?')
    end

    function Framework:GetLicense(src)
        return Framework:GetIdentifier(src, 'license') or Framework:GetIdentifier(src, 'license2') or Debug('Getidentifier ?')
    end

    function Framework:GetPlayerQuery(src)
        if not QboxLicense then
            return MySQL.query.await('SELECT * FROM players WHERE license = ?', {Framework:GetIdentifier(src, 'license')})
        else
            return MySQL.query.await('SELECT * FROM players WHERE license = ? OR license = ?', {Framework:GetIdentifier(src, 'license'), Framework:GetIdentifier(src, 'license2')})
        end
    end

    function Framework:Login(src, any, new)
        return QBCore.Player.Login(src, any, new) or Debug('Login ?')
    end

    function Framework:RefreshCommand(src)
        if QboxLicense then return end
        QBCore.Commands.Refresh(src)
        Debug('Refreshed Commands')
    end

end