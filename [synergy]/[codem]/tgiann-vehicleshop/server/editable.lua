local NumberCharset = {}
local Charset = {}

if config.framework == "esx" then
    TriggerEvent('esx_society:registerSociety', config.jobname, "Car Dealer", 'society_'..config.jobname, 'society_'..config.jobname, 'society_'..config.jobname, {type = 'private'})

    tgiCore.core.RegisterCommand({'sadd'}, 'admin', function(xPlayer, args, showError)
        if args.model and args.count then
            if type(tonumber(args.count)) == "number" then
                local sCarHash = GetHashKey(args.model)
                for category, data in pairs(config.carList) do
                    for carHash, cData in pairs(data) do
                        if carHash == sCarHash then
                            TriggerEvent("tgiann-vehicleshop:set-car-count", category, sCarHash, tonumber(args.count))
                            tgiCore.notif(xPlayer.source, config.langs[config.lang].adminStockChanged)
                            break
                        end
                    end
                end
            else
                tgiCore.notif(xPlayer.source, config.langs[config.lang].adminCmdError1, "error")
            end
        else
            tgiCore.notif(xPlayer.source, config.langs[config.lang].adminCmdError2, "error")
        end
    end, false, {
        help = "Add Vehicle Stock",
        arguments = {
            {name = 'model', help = 'Vehicle Model', type = 'any'},
            {name = 'count', help = 'Stock Count', type = 'any'},
        },
    })

elseif config.framework == "qb" then
    tgiCore.core.Commands.Add("sadd", "Add Vehicle Stock", {{name="model", help="Vehicle Model"},{name="count", help="Stock Count"}}, false, function(source, args) -- name, help, arguments, argsrequired,  end sonuna persmission
        if args[1] and args[2] then
            if type(tonumber(args[2])) == "number" then
                local sCarHash = GetHashKey(args[1])
                for category, data in pairs(config.carList) do
                    for carHash, cData in pairs(data) do
                        if carHash == sCarHash then
                            TriggerEvent("tgiann-vehicleshop:set-car-count", category, sCarHash, tonumber(args[2]))
                            tgiCore.notif(source, config.langs[config.lang].adminStockChanged)
                            break
                        end
                    end
                end
            else
                tgiCore.notif(source, config.langs[config.lang].adminCmdError1, "error")
            end
        else
            tgiCore.notif(source, config.langs[config.lang].adminCmdError2, "error")
        end
    end, "god")

end

for i = 48, 57 do table.insert(NumberCharset, string.char(i)) end
for i = 65, 90 do table.insert(Charset, string.char(i)) end
for i = 97, 122 do table.insert(Charset, string.char(i)) end

function GetRandomNumber(length)
    Citizen.Wait(0)
    math.randomseed(GetGameTimer())
    if length > 0 then
        return GetRandomNumber(length - 1) .. NumberCharset[math.random(1, #NumberCharset)]
    else
        return ''
    end
end

function GetRandomLetter(length)
    Citizen.Wait(0)
    math.randomseed(GetGameTimer())
    if length > 0 then
        return GetRandomLetter(length - 1) .. Charset[math.random(1, #Charset)]
    else
        return ''
    end
end

function addJobMoney(money)
    if config.framework == "qb" then
        return exports['qb-management']:AddMoney(config.jobname, money)
    elseif config.framework == "esx" then
        TriggerEvent('esx_addonaccount:getSharedAccount', "society_"..config.jobname, function(account)
            account.addMoney(money)
        end)
    end
end

function removeJobMoney(money)
    if config.framework == "qb" then
        return exports['qb-management']:RemoveMoney(config.jobname, money)
    elseif config.framework == "esx" then
        local canRemove = nil
        TriggerEvent('esx_addonaccount:getSharedAccount', "society_"..config.jobname, function(account)
            canRemove = account.money >= money
            if canRemove then
                account.removeMoney(money)
            end
        end)
        while canRemove == nil do Wait(10) end
        return canRemove
    end
end

RegisterNetEvent('tgiann-vehicleshop:sendBill')
AddEventHandler('tgiann-vehicleshop:sendBill', function(sender, amount)
    local biller = tgiCore.core.Functions.GetPlayer(sender)
    local billed = tgiCore.core.Functions.GetPlayer(source)
    local amount = tonumber(args[2])
    if billed ~= nil then
        if biller.PlayerData.citizenid ~= billed.PlayerData.citizenid then
            MySQL.insert(
                'INSERT INTO phone_invoices (citizenid, amount, society, sender, sendercitizenid) VALUES (?, ?, ?, ?, ?)',
                {billed.PlayerData.citizenid, amount, biller.PlayerData.job.name,
                biller.PlayerData.charinfo.firstname, biller.PlayerData.citizenid})
            TriggerClientEvent('qb-phone:RefreshPhone', billed.PlayerData.source)
            TriggerClientEvent('QBCore:Notify', biller.PlayerData.source, 'Invoice Successfully Sent', 'success')
            TriggerClientEvent('QBCore:Notify', billed.PlayerData.source, 'New Invoice Received')
        else
            TriggerClientEvent('QBCore:Notify', biller.PlayerData.source, 'You Cannot Bill Yourself', 'error')
        end
    else
        TriggerClientEvent('QBCore:Notify', biller.PlayerData.source, 'Player Not Online', 'error')
    end
end)