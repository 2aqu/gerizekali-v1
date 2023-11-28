Citizen.CreateThread(
    function()
        RegisterCallback("codem-banking:getPlayerData",function(source, cb)
                local src = source
                if Config.Framework == "newesx" or Config.Framework == "oldesx" then
                    local xPlayer = frameworkObject.GetPlayerFromId(src)
                    local data = ExecuteSql("SELECT iban FROM `users` WHERE `identifier` = '" .. xPlayer.identifier .. "'")
                    local discordAvatar = GetDiscordAvatar(src)
                    if not discordAvatar then
                        discordAvatar =
                            "https://cdn.discordapp.com/attachments/983471660684423240/1035552670980784238/pp.png"
                    end
            
                    checkFirstLoanData(xPlayer.identifier)         
                     if data[1].iban == nil then
                         local playerData = {
                             xPlayerName = xPlayer.getName(),
                             xPlayerBankMoney = xPlayer.getAccount("bank").money,
                             xPlayerIban = GenerateIBAN(src),
                             xPlayerWallet = xPlayer.getMoney(),
                             xPlayerAvatar = discordAvatar
                         }
                         cb(playerData)
                     else
                         local ibanLenght = string.len(data[1].iban)
                         if tonumber(ibanLenght) < 6 then 
                             local playerData = {
                                 xPlayerName = xPlayer.getName(),
                                 xPlayerBankMoney = xPlayer.getAccount("bank").money,
                                 xPlayerIban = GenerateIBAN(src),
                                 xPlayerWallet = xPlayer.getMoney(),
                                 xPlayerAvatar = discordAvatar
                             }
                             cb(playerData)
                         else 
                             local playerData = {
                                 xPlayerName = xPlayer.getName(),
                                 xPlayerBankMoney = xPlayer.getAccount("bank").money,
                                 xPlayerIban = data[1].iban,
                                 xPlayerWallet = xPlayer.getMoney(),
                                 xPlayerAvatar = discordAvatar
                             }
                             cb(playerData)
                         end
                     end
                else
                    local xPlayer = frameworkObject.Functions.GetPlayer(src)
                    local newIban = ExecuteSql("SELECT `charinfo` FROM `players` WHERE `citizenid` = '" .. xPlayer.PlayerData.citizenid .. "'")
                    local charinfo = json.decode(newIban[1].charinfo)
                    local iban = charinfo.iban
                    local discordAvatar = GetDiscordAvatar(src)
                    if not discordAvatar then
                        discordAvatar =
                            "https://cdn.discordapp.com/attachments/983471660684423240/1035552670980784238/pp.png"
                    end
            
                    checkFirstLoanData(xPlayer.PlayerData.citizenid)
                    if not iban or iban == nil then
                        print('[codem-bank] '..'https://codem.gitbook.io/codem-documentation/m-series/mbank/sql-installations#for-qb '.. 'Please follow the steps')
                        return
                    end
                    local ibanLenght = string.len(iban)
                    if iban == nil or tonumber(ibanLenght) < 6 or tonumber(ibanLenght) > 6 then
                     
                         local playerData = {
                             xPlayerName = GetName(src),
                             xPlayerBankMoney = xPlayer.PlayerData.money["bank"],
                             xPlayerIban = GenerateIBAN(src),
                             xPlayerWallet = xPlayer.PlayerData.money["cash"],
                             xPlayerAvatar = discordAvatar
                         }
                         cb(playerData)
                    else
                   
                        local playerData = {
                            xPlayerName = GetName(src),
                            xPlayerBankMoney = xPlayer.PlayerData.money["bank"],
                            xPlayerIban = iban,
                            xPlayerWallet = xPlayer.PlayerData.money["cash"],
                            xPlayerAvatar = discordAvatar
                        }
                        cb(playerData)
                        
                    end
                end
        end)
        RegisterCallback("codem-bank:getBills",function(source, cb)
                local src = source
                if Config.Framework == "newesx" or Config.Framework == "oldesx" then
                    local identifier = GetIdentifier(src)
                    if Config.Billing == "default" then
                        local data = ExecuteSql("SELECT * FROM `billing` WHERE `identifier` = '" .. identifier .. "'")
                        if next(data) then
                        
                            cb(data)
                        else
                            cb(false)
                        end
                    else
                        local data = ExecuteSql("SELECT * FROM `okokbilling` WHERE `receiver_identifier` = '" .. identifier .. "'")
                        if next(data) then
                            cb(data)
                        else
                            cb(false)
                        end
                    end
                else
                    local identifier = GetIdentifier(src)
                    if Config.Billing == "default" then
                        local data = ExecuteSql("SELECT * FROM `phone_invoices` WHERE `citizenid` = '" .. identifier .. "'")
                        if next(data) then
                            cb(data)
                        else
                            cb(false)
                        end
                    else
                        local data = ExecuteSql("SELECT * FROM `okokbilling` WHERE `receiver_identifier` = '" .. identifier .. "'")
                        if next(data) then
                            cb(data)
                        else
                            cb(false)
                        end
                    end
            
                end
        end)
 
end)




RegisterNetEvent('codem-bank:billPay')
AddEventHandler('codem-bank:billPay', function(id,amount,billname)
    local src = source
    if Config.Framework == "newesx" or Config.Framework == "oldesx" then 
        local xPlayer = frameworkObject.GetPlayerFromId(src)
        local playerMoney = xPlayer.getAccount("bank").money
        if tonumber(playerMoney) >= tonumber(amount) then
            xPlayer.removeAccountMoney("bank", tonumber(amount))
            if Config.Billing == "default" then
                ExecuteSql("DELETE FROM `billing` WHERE `id` = '" .. id .. "'")
            else
                ExecuteSql("DELETE FROM `okokbilling` WHERE `id` = '" .. id .. "'")
            end
            if Config.Webhook then
                local ids = ExtractIdentifiers(src)
                local _discordID = " <@" .. ids.discord:gsub("discord:", "") .. ">"
                discordLog(Config.DiscordLogWebhook.bills,
                    ":dollar: ** CodeM - Bank System **  \n \n ** Bills Action **  \n \n :man_bald: " ..
                    _discordID ..
                    "\n \n :identification_card: " ..
                    ids.steam ..
                    "\n \n :identification_card: " ..
                    xPlayer.getName() ..
                    "\n \n :credit_card: ID  " ..
                    src ..
                    " \n \n :hammer_pick: Paid " ..
                    amount ..
                    "$ to bill. \n \n  "
                )
            end
            local notifyData = {       
           
                title = billname,
                date = os.date("%y.%m.%d %X"),
                action = "transaction-bill",
                amount = amount
            }
            transactionsChange(xPlayer.identifier, "bills", amount)
            Citizen.Wait(100)
            notifySqlSave(src, notifyData)
            Citizen.Wait(100)
            TriggerClientEvent("codem-bank:notification", src, Config.Locale.billpaid .. " $" .. amount)
            Citizen.Wait(100)
            TriggerClientEvent('codem-bank:refreshBills', src)
            Citizen.Wait(100)
            TriggerClientEvent("codem-banking:changeIban", src)
        else
            TriggerClientEvent("codem-bank:notification", src, Config.Locale.enoughMoney)
        end
    else
        local xPlayer = frameworkObject.Functions.GetPlayer(src)
        local playerMoney = xPlayer.PlayerData.money["bank"]
        if tonumber(playerMoney) >= tonumber(amount) then
            xPlayer.Functions.RemoveMoney("bank", tonumber(amount))
            if Config.Billing == "default" then
                ExecuteSql("DELETE FROM `phone_invoices` WHERE `id` = '" .. id .. "'")
            else
                ExecuteSql("DELETE FROM `okokbilling` WHERE `id` = '" .. id .. "'")
            end
            ExecuteSql("DELETE FROM `phone_invoices` WHERE `id` = '" .. id .. "'")
            if Config.Webhook then
                local ids = ExtractIdentifiers(src)
                local _discordID = " <@" .. ids.discord:gsub("discord:", "") .. ">"
                discordLog(Config.DiscordLogWebhook.bills,
                    ":dollar: ** CodeM - Bank System **  \n \n ** Bills Action **  \n \n :man_bald: " ..
                    _discordID ..
                    "\n \n :identification_card: " ..
                    ids.steam ..
                    "\n \n :identification_card: " ..
                    GetName(src) ..
                    "\n \n :credit_card: ID  " ..
                    src ..
                    " \n \n :hammer_pick: Paid " ..
                    amount ..
                    "$ to bill. \n \n  "
                )
            end
            local notifyData = {       
           
                title = billname,
                date = os.date("%y.%m.%d %X"),
                action = "transaction-bill",
                amount = amount
            }
            transactionsChange(xPlayer.PlayerData.citizenid, "bills", amount)
            Citizen.Wait(100)
            notifySqlSave(src, notifyData)
            Citizen.Wait(100)
            TriggerClientEvent("codem-bank:notification", src, Config.Locale.billpaid .. " $" .. amount)
            Citizen.Wait(100)
            TriggerClientEvent('codem-bank:refreshBills', src)
            Citizen.Wait(100)
            TriggerClientEvent("codem-banking:changeIban", src)
        else
            TriggerClientEvent("codem-bank:notification", src, Config.Locale.enoughMoney)
        end 
    end


end)

RegisterNetEvent("codem-bank:withdraw")
AddEventHandler("codem-bank:withdraw",function(amount)
        local src = source
        if Config.Framework == "newesx" or Config.Framework == "oldesx" then
            local xPlayer = frameworkObject.GetPlayerFromId(src)
            local playerMoney = xPlayer.getAccount("bank").money

            if tonumber(amount) < 0 then
                return
            end
            local account = GetPlayerLoggedAccountIdentifier(xPlayer.identifier)
            if account.blockAccount == 0 then
               return TriggerClientEvent("codem-bank:notification", src, Config.Locale.blockedAccount)
            end
                if tonumber(playerMoney) >= tonumber(amount) then
                    xPlayer.removeAccountMoney("bank", tonumber(amount))
                    xPlayer.addMoney(amount)
                    TriggerClientEvent("codem-bank:notification", src, Config.Locale.withdrawnBank .. " $" .. amount)
                    TriggerClientEvent("codem-banking:changeIban", src)
                    local notifyData = {
                        notifyType = 'withdraw',
                        title = "Withdraw",
                        date = os.date("%y.%m.%d %X"),
                        action = "transaction-withdraw",
                        amount = amount
                    }
                    notifySqlSave(src, notifyData)
                    transactionsChange(xPlayer.identifier, "expense", amount)
                    if Config.Webhook then
                        withdrawDiscordLog(src,amount)
                    end
                else
                    TriggerClientEvent("codem-bank:notification", src, Config.Locale.enoughMoney)
                end
        else
            local xPlayer = frameworkObject.Functions.GetPlayer(src)
            local playerMoney = xPlayer.PlayerData.money["bank"]

            if tonumber(amount) < 0 then
                return
            end
            local account = GetPlayerLoggedAccountIdentifier(xPlayer.PlayerData.citizenid)
            if account.blockAccount == 0 then
               return TriggerClientEvent("codem-bank:notification", src, Config.Locale.blockedAccount)
            end
                if tonumber(playerMoney) >= tonumber(amount) then
                    xPlayer.Functions.RemoveMoney("bank", tonumber(amount))
                    xPlayer.Functions.AddMoney("cash",amount)
                    TriggerClientEvent("codem-bank:notification", src, Config.Locale.withdrawnBank .. " $" .. amount)
                    TriggerClientEvent("codem-banking:changeIban", src)
                    local notifyData = {
                        notifyType = 'withdraw',
                        title = "Withdraw",
                        date = os.date("%y.%m.%d %X"),
                        action = "transaction-withdraw",
                        amount = amount
                    }
                    notifySqlSave(src, notifyData)
                    transactionsChange(xPlayer.PlayerData.citizenid, "expense", amount)
                    if Config.Webhook then
                        withdrawDiscordLog(src,amount)
                    end
                else
                    TriggerClientEvent("codem-bank:notification", src, Config.Locale.enoughMoney)
                end
        end
end)

RegisterNetEvent("codem-bank:deposit")
AddEventHandler("codem-bank:deposit",function(amount)
        local src = source
        if Config.Framework == "newesx" or Config.Framework == "oldesx" then
            local xPlayer = frameworkObject.GetPlayerFromId(src)
            local playerMoney = xPlayer.getMoney()
            if tonumber(amount) < 0 then
                return
            end
            local account = GetPlayerLoggedAccountIdentifier(xPlayer.identifier)
            if account.blockAccount == 0 then
                return TriggerClientEvent("codem-bank:notification", src, Config.Locale.blockedAccount)
            end
            if tonumber(playerMoney) >= tonumber(amount) then
                if Config.Webhook then
                    depositDiscordLog(src,amount)
                end

                xPlayer.addAccountMoney("bank", tonumber(amount))
                xPlayer.removeMoney(tonumber(amount))
                local notifyData = {
                    title = "Deposit",
                    date = os.date("%y.%m.%d %X"),
                    action = "transaction-deposit",
                    amount = amount
                }
                notifySqlSave(src, notifyData)
                transactionsChange(xPlayer.identifier, "income", amount)
                TriggerClientEvent('codem-bank:updateSpendData',src,amount)
                TriggerClientEvent("codem-bank:notification", src, Config.Locale.depositedBank .. " $" .. amount)
                Citizen.Wait(100)
                TriggerClientEvent("codem-banking:changeIban", src)
            else
                TriggerClientEvent("codem-bank:notification", src, Config.Locale.enoughMoney)
            end
        else
            local xPlayer = frameworkObject.Functions.GetPlayer(src)
            local playerMoney = xPlayer.PlayerData.money["cash"]

            if tonumber(amount) < 0 then
                return
            end
            local account = GetPlayerLoggedAccountIdentifier(xPlayer.PlayerData.citizenid)
            if account.blockAccount == 0 then
                return TriggerClientEvent("codem-bank:notification", src, Config.Locale.blockedAccount)
            end
            if tonumber(playerMoney) >= tonumber(amount) then
                if Config.Webhook then
                    depositDiscordLog(src,amount)
                end

                xPlayer.Functions.AddMoney("bank", tonumber(amount))
                xPlayer.Functions.RemoveMoney("cash",tonumber(amount))
                local notifyData = {
                    title = "Deposit",
                    date = os.date("%y.%m.%d %X"),
                    action = "transaction-deposit",
                    amount = amount
                }
                notifySqlSave(src, notifyData)
                transactionsChange(xPlayer.PlayerData.citizenid, "income", amount)
                TriggerClientEvent('codem-bank:updateSpendData',src,amount)
                TriggerClientEvent("codem-bank:notification", src, Config.Locale.depositedBank .. " $" .. amount)
                Citizen.Wait(100)
                TriggerClientEvent("codem-banking:changeIban", src)
            else
                TriggerClientEvent("codem-bank:notification", src, Config.Locale.enoughMoney)
            end
        end
end)