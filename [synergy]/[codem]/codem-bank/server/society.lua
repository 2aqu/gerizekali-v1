RegisterNetEvent("codem-bank:transferSociety")
AddEventHandler("codem-bank:transferSociety",function(targetIban, amount,job)
        local src = source
        if Config.Framework == "newesx" or Config.Framework == "oldesx" then
            local xPlayer = frameworkObject.GetPlayerFromId(src)
            local jobData = GetPlayerLoggedAccountJob(job)
            local playerJoin = false
            if jobData and jobData.identifiers then 
                for k,v in pairs(jobData) do
                    if v.identifier == identifier then
                      playerJoin = true
                    end
                end
            end
            if playerJoin then 
                local moneyCheck = SocietyAccountMoney(job)
                if tonumber(moneyCheck) >= tonumber(amount) then
                        local ibanCheck = ExecuteSql("SELECT * FROM `users` WHERE `iban` = '" .. targetIban .. "'")
                        if next(ibanCheck) then
                            local newAmount = tonumber(moneyCheck) - tonumber(amount)
                            local moneyActionSociety = moneyActionSociety(job,newAmount)
                            if moneyActionSociety then 
                                local xTarget = frameworkObject.GetPlayerFromIdentifier(ibanCheck[1].identifier)
                                local refreshMoneyData = refreshSocityMoney(job)
                                if xTarget then 
                                    local xTargetSource = frameworkObject.GetPlayerFromId(xTarget.source)
                                    TriggerClientEvent('codem-bank:societyJobMoney',-1 , refreshMoneyData)  
                                    xTargetSource.addAccountMoney('bank',tonumber(amount))
                                    TriggerClientEvent("codem-bank:notification",src,Config.Locale.targetSendMoney)
                                    if Config.Webhook then
                                        societyTransfer(src,job,amount,xTarget.source,refreshMoneyData)
                                    end
                                else
                                    local ibanCheck = ExecuteSql("SELECT * FROM `users` WHERE `iban` = '" .. targetIban .. "'")
                                    local bank = json.decode(ibanCheck[1].accounts)
                                    bank.bank = tonumber(bank.bank) + tonumber(amount)
                                    ExecuteSql("UPDATE  `users` SET `accounts` = '" ..
                                            json.encode(bank) .. "' WHERE identifier = '" .. ibanCheck[1].identifier .. "'"
                                    )
                                    if Config.Webhook then
                                        local playerName =   ibanCheck[1].firstname .." " ..ibanCheck[1].lastname
                                        societyTransferOff(src,amount,playername,refreshMoneyData) 
                                     end
                                    TriggerClientEvent('codem-bank:societyJobMoney',-1 , refreshMoneyData)  
                                    TriggerClientEvent("codem-bank:notification",src,Config.Locale.moneySent .. " " .. ibanCheck[1].firstname .. " " .. ibanCheck[1].lastname)
                                end
                            end
                        else
                            TriggerClientEvent("codem-bank:notification", src, Config.Locale.mistakeIban)
                        end

                  
                else
                    TriggerClientEvent("codem-bank:notification", src, Config.Locale.enoughMoney)
                end
            end
        else
            local xPlayer = frameworkObject.Functions.GetPlayer(tonumber(src))
            local jobData = GetPlayerLoggedAccountJob(job)
            local playerJoin = false
            if jobData and jobData.identifiers then 
                for k,v in pairs(jobData) do
                    if v.identifier == identifier then
                      playerJoin = true
                    end
                end
            end
            if playerJoin then 
                local moneyCheck = SocietyAccountMoney(job)
                if tonumber(moneyCheck) >= tonumber(amount) then
                        local ibanCheck = getByIban(targetIban)
                        if next(ibanCheck) then
                            local newAmount = tonumber(moneyCheck) - tonumber(amount)
                            local moneyActionSociety = moneyActionSociety(job,newAmount)
                            if moneyActionSociety then 
                                local xTarget = frameworkObject.Functions.GetPlayerByCitizenId(ibanCheck.citizenid)
                                local refreshMoneyData = refreshSocityMoney(job)
                                if xTarget then 
                                    local xTargetSource = frameworkObject.Functions.GetPlayer(xTarget.PlayerData.source)
                               
                                    TriggerClientEvent('codem-bank:societyJobMoney',-1 , refreshMoneyData)  
                                    xTargetSource.Functions.AddMoney("bank",amount)
                                    TriggerClientEvent("codem-bank:notification",src,Config.Locale.targetSendMoney)
                                    if Config.Webhook then
                                        societyTransfer(src,job,amount,xTarget.source,refreshMoneyData)
                                    end
                                else
                            
                                    xPlayer.Functions.RemoveMoney("bank", tonumber(amount))
                                    local money = ExecuteSql("SELECT `money` FROM `players` WHERE `citizenid` = '" .. ibanCheck.citizenid .. "'")
                                    
                                    local bank = json.decode(money[1].money)
                                    bank.bank = tonumber(bank.bank) + tonumber(amount)
                                    ExecuteSql(
                                        "UPDATE  `players` SET `money` = '" ..
                                            json.encode(bank) .. "' WHERE citizenid = '" .. ibanCheck.citizenid .. "'"
                                    )
                                    if Config.Webhook then
                                        local playerName =   json.decode(ibanCheck.charinfo).firstname .." " ..json.decode(ibanCheck.charinfo).lastname
                                        societyTransferOff(src,amount,playerName,refreshMoneyData) 
                                     end
                                    TriggerClientEvent('codem-bank:societyJobMoney',-1 , refreshMoneyData)  
                                    TriggerClientEvent("codem-bank:notification",src,Config.Locale.moneySent .. " " .. ibanCheck[1].firstname .. " " .. ibanCheck[1].lastname)
                                end
                            end
                        else
                            TriggerClientEvent("codem-bank:notification", src, Config.Locale.mistakeIban)
                        end

                  
                else
                    TriggerClientEvent("codem-bank:notification", src, Config.Locale.enoughMoney)
                end
            end
        end
end)


RegisterNetEvent("codem-bank:withdrawSociety")
AddEventHandler("codem-bank:withdrawSociety",function(label,amount)
        local src = source
        if Config.Framework == "newesx" or Config.Framework == "oldesx" then
            local xPlayer = frameworkObject.GetPlayerFromId(src)
            if tonumber(amount) < 0 then
                return
            end
            local jobData = GetPlayerLoggedAccountJob(label)
    
            local playerJoin = false
            if jobData and jobData.identifiers then 
                for k,v in pairs(jobData) do
                    if v.identifier == identifier then
                      playerJoin = true
                    end
                end
            end
            if playerJoin then 
                local moneyCheck = SocietyAccountMoney(label)
                if tonumber(moneyCheck) >= tonumber(amount) then
                local newAmount = tonumber(moneyCheck) - tonumber(amount)
                local moneyActionSociety = moneyActionSociety(label,newAmount)
                if moneyActionSociety then 
                    xPlayer.addMoney(amount)
                    TriggerClientEvent("codem-bank:notification", src, Config.Locale.withdrawnBank .. " $" .. amount)
                    local refreshMoneyData = refreshSocityMoney(label)
                    if refreshMoneyData then 
                         TriggerClientEvent('codem-bank:societyJobMoney',-1 , refreshMoneyData)  
                         if Config.Webhook then
                             societyWithdraw(src,amount,label,newAmount)                  
                         end
                         local notifyData = {
                           
                             title = "Withdraw",
                             date = os.date("%y.%m.%d %X"),
                             action = "society-withdraw",
                             amount = amount
                        }
                        notifyAccountSqlSave(notifyData,label)
                        Citizen.Wait(100)
                        societytransactionsChange(label, "expense", amount)
                   
                        TriggerClientEvent("codem-banking:changeIban", src)
                    else
                        Config.Notification(Config.Notifications["nomoney"].message, Config.Notifications["nomoney"].type, true, src)
                    end
                else
                    Config.Notification(Config.Notifications["nomoney"].message, Config.Notifications["nomoney"].type, true, src)
                end
             else
                 TriggerClientEvent("codem-bank:notification", src, Config.Locale.enoughMoney)
             end
            end
        else
            local xPlayer = frameworkObject.Functions.GetPlayer(tonumber(src))
            if tonumber(amount) < 0 then
                return
            end
            local jobData = GetPlayerLoggedAccountJob(label)
    
            local playerJoin = false
            if jobData and jobData.identifiers then 
                for k,v in pairs(jobData) do
                    if v.identifier == identifier then
                      playerJoin = true
                    end
                end
            end
            if playerJoin then 
                local moneyCheck = SocietyAccountMoney(label)
                if tonumber(moneyCheck) >= tonumber(amount) then
                local newAmount = tonumber(moneyCheck) - tonumber(amount)
                local moneyActionSociety = moneyActionSociety(label,newAmount)
                if moneyActionSociety then 
                   
                    xPlayer.Functions.AddMoney("cash",amount)
                    TriggerClientEvent("codem-bank:notification", src, Config.Locale.withdrawnBank .. " $" .. amount)
                    local refreshMoneyData = refreshSocityMoney(label)
                    if refreshMoneyData then 
                         TriggerClientEvent('codem-bank:societyJobMoney',-1 , refreshMoneyData)  
                         if Config.Webhook then
                             societyWithdraw(src,amount,label,newAmount)                  
                         end
                         local notifyData = {
                           
                             title = "Withdraw",
                             date = os.date("%y.%m.%d %X"),
                             action = "society-withdraw",
                             amount = amount
                        }
                        notifyAccountSqlSave(notifyData,label)
                        Citizen.Wait(100)
                        societytransactionsChange(label, "expense", amount)
                   
                        TriggerClientEvent("codem-banking:changeIban", src)
                    else
                        Config.Notification(Config.Notifications["nomoney"].message, Config.Notifications["nomoney"].type, true, src)
                    end
                else
                    Config.Notification(Config.Notifications["nomoney"].message, Config.Notifications["nomoney"].type, true, src)
                end
             else
                 TriggerClientEvent("codem-bank:notification", src, Config.Locale.enoughMoney)
             end
            end
        end
end)

RegisterNetEvent("codem-bank:depositSociety")
AddEventHandler("codem-bank:depositSociety",function(label,amount)
        local src = source
        if Config.Framework == "newesx" or Config.Framework == "oldesx" then
            local xPlayer = frameworkObject.GetPlayerFromId(src)
            if tonumber(amount) < 0 then
                return
            end
            local jobData = GetPlayerLoggedAccountJob(label)
            local playerJoin = false
            if jobData and jobData.identifiers then 
                for k,v in pairs(jobData) do
                    if v.identifier == identifier then
                      playerJoin = true
                    end
                end
            end
            if playerJoin then 
                local moneyCheck = SocietyAccountMoney(label)
                -- if tonumber(moneyCheck) >= tonumber(amount) then
                local newAmount = tonumber(moneyCheck) + tonumber(amount)
                local moneyActionSociety = moneyActionSociety(label,newAmount)
                if moneyActionSociety then 
                    xPlayer.removeMoney(tonumber(amount))
                    TriggerClientEvent("codem-bank:notification", src, Config.Locale.depositedBank .. " $" .. amount)
                    local refreshMoneyData = refreshSocityMoney(label)
                    if refreshMoneyData then 
                        TriggerClientEvent('codem-bank:societyJobMoney',-1 , refreshMoneyData)  
                        if Config.Webhook then
                            societyDeposit(src,amount,label,newAmount)
                        end
                        local notifyData = {
                            title = "Deposited",
                            date = os.date("%y.%m.%d %X"),
                            action = "society-deposit",
                            amount = amount
                        }
                        notifyAccountSqlSave(notifyData,label)
                        TriggerClientEvent('codem-bank:updateSocietySpendData',src,amount,label)
                        Citizen.Wait(100)
                        societytransactionsChange(label, "income", amount)
                        TriggerClientEvent("codem-banking:changeIban", src)
                    else
                        Config.Notification(Config.Notifications["nomoney"].message, Config.Notifications["nomoney"].type, true, src)
                    end
                else
                    Config.Notification(Config.Notifications["nomoney"].message, Config.Notifications["nomoney"].type, true, src)
                end
            --  else
            --      TriggerClientEvent("codem-bank:notification", src, Config.Locale.enoughMoney)
            --  end
            end
        else
            local xPlayer = frameworkObject.Functions.GetPlayer(tonumber(src))
            if tonumber(amount) < 0 then
                return
            end
            local jobData = GetPlayerLoggedAccountJob(label)
            local playerJoin = false
            if jobData and jobData.identifiers then 
                for k,v in pairs(jobData) do
                    if v.identifier == identifier then
                      playerJoin = true
                    end
                end
            end
            if playerJoin then 
                local moneyCheck = SocietyAccountMoney(label)
                -- if tonumber(moneyCheck) >= tonumber(amount) then
                    local newAmount = tonumber(moneyCheck) + tonumber(amount)
                    local moneyActionSociety = moneyActionSociety(label,newAmount)
                    if moneyActionSociety then 
                        xPlayer.Functions.RemoveMoney("cash", tonumber(amount))
                        TriggerClientEvent("codem-bank:notification", src, Config.Locale.depositedBank .. " $" .. amount)
                        local refreshMoneyData = refreshSocityMoney(label)
    
                        if refreshMoneyData then 
                            TriggerClientEvent('codem-bank:societyJobMoney',-1 , refreshMoneyData)  
                            if Config.Webhook then
                                societyDeposit(src,amount,label,newAmount)
                            end
                            local notifyData = {
                                title = "Deposited",
                                date = os.date("%y.%m.%d %X"),
                                action = "society-deposit",
                                amount = amount
                            }
                            notifyAccountSqlSave(notifyData,label)
                            TriggerClientEvent('codem-bank:updateSocietySpendData',src,amount,label)
                            Citizen.Wait(100)
                            societytransactionsChange(label, "income", amount)
                            TriggerClientEvent("codem-banking:changeIban", src)
                        else
                            Config.Notification(Config.Notifications["nomoney"].message, Config.Notifications["nomoney"].type, true, src)
                        end
                    else
                        Config.Notification(Config.Notifications["nomoney"].message, Config.Notifications["nomoney"].type, true, src)
                    end
                -- else
                --     TriggerClientEvent("codem-bank:notification", src, Config.Locale.enoughMoney)
                -- end
            end
        end
end)


RegisterNetEvent('codem-bank:accountCheck')
AddEventHandler('codem-bank:accountCheck',function(plyJob)
    local src = source
    local identifier = GetIdentifier(src)
    if Config.Framework == "newesx" or Config.Framework == "oldesx" then 

        local jobData = GetPlayerLoggedAccountJob(plyJob)
        local playerJoin = false
        if jobData and jobData.identifiers then 
            for k, v in pairs(jobData.identifiers) do
                if v.identifier == identifier then
                    playerJoin = true
                    break 
                end
            end
            if playerJoin then 
                local accountName = 'society_'..plyJob
                local accountMoney = ExecuteSql("SELECT * FROM `addon_account_data` WHERE `account_name` = '" .. accountName .. "'")
                if next(accountMoney) then 
                    TriggerClientEvent('codem-bank:societyJobMoney',src , accountMoney[1].money)  
                    TriggerClientEvent('codem-bank:societyJoinPlayer',src , true)   
                else
                    Config.Notification(Config.Notifications["nomoney"].message, Config.Notifications["nomoney"].type, true, src)

                    TriggerClientEvent('codem-bank:societyJoinPlayer',src , false)
                end 
            else
       
                TriggerClientEvent('codem-bank:societyJoinPlayer',src , false)
            end
        else
   
            TriggerClientEvent('codem-bank:societyJoinPlayer',src , false)
        end
    else

        local jobData = GetPlayerLoggedAccountJob(plyJob)
        local playerJoin = false
        if jobData and jobData.identifiers then 
            for k, v in pairs(jobData.identifiers) do
                if v.identifier == identifier then
                    playerJoin = true
                    break 
                end
            end
            if playerJoin then 
                local accountName = plyJob
                local accountMoney = ExecuteSql("SELECT * FROM `management_funds` WHERE `job_name` = '" .. accountName .. "'")
                if next(accountMoney) then 
                    TriggerClientEvent('codem-bank:societyJobMoney',src , accountMoney[1].amount)  
                    TriggerClientEvent('codem-bank:societyJoinPlayer',src , true)   
                else
                    Config.Notification(Config.Notifications["nomoney"].message, Config.Notifications["nomoney"].type, true, src)
          
                    TriggerClientEvent('codem-bank:societyJoinPlayer',src , false)
                end 
            else
       
                TriggerClientEvent('codem-bank:societyJoinPlayer',src , false)
            end
        else
 
            TriggerClientEvent('codem-bank:societyJoinPlayer',src , false)
        end

    end

end)



RegisterServerEvent("codem-bank:societyTransactions")
AddEventHandler("codem-bank:societyTransactions",function(job)
        local src = source
        local identifier = GetIdentifier(tonumber(src))
        local account = GetPlayerLoggedAccountJob(job)
        local jobUsers = 0 

        if Config.Framework == "newesx" or Config.Framework == "oldesx" then 
            if job then 
                local players = {}
                
                for _, v in pairs(GetPlayers()) do
                    if v then
                        local xPlayer = frameworkObject.GetPlayerFromId(tonumber(v))
                        if xPlayer then 
                            if xPlayer.job.name == job then
                                jobUsers = jobUsers + 1
                            end
                        end
                    end
                end
            end
        else
            if job then 
                local players = {}
                
                for _, v in pairs(GetPlayers()) do
                    if v then
                        local xPlayer = frameworkObject.Functions.GetPlayer(tonumber(v))
                        if xPlayer then 
                            if xPlayer.PlayerData.job.name == job then
                                jobUsers = jobUsers + 1
                            end
                        end
                    end
                end
            end
        end
        if account then 
           
            TriggerClientEvent("codem-bank:societyDetailstransactions", src, account.notify, account.transaction, jobUsers)
        end
     
end)



RegisterServerEvent('codem-bank:societyjoin')
AddEventHandler('codem-bank:societyjoin',function(jobname)
    local src = source

    local identifier = GetIdentifier(src)
    if Config.Framework == "newesx" or Config.Framework == "oldesx" then 
            local jobData = GetPlayerLoggedAccountJob(jobname)

            local playerJoin = false
            if jobData and jobData.identifiers then 
     
                for i = 1, #jobData.identifiers do
                    if jobData.identifiers[i].identifier == identifier then
                        playerJoin = true
                    end
                end
         
                if playerJoin then 
                    TriggerClientEvent('codem-bank:societyJoinPlayer', src, true)
                else
                    local newIdentifier = {
                        identifier = GetIdentifier(src)
                    }
                    
                    local identifiersArray = {}
                    for _, identifier in ipairs(jobData.identifiers) do
                        table.insert(identifiersArray, identifier)
                    end
                    table.insert(identifiersArray, newIdentifier)
                    
                    jobData.identifiers = identifiersArray
                    
                    local identifiersJSON = json.encode(identifiersArray)
                    
                    TriggerClientEvent('codem-bank:societyJoinPlayer', src, true)
                    Citizen.Wait(300)
                    TriggerClientEvent('codem-bank:firstAccountSociety', src)
                    ExecuteSql(
                        "UPDATE `codem_bank_society_log` SET `identifiers` = '" ..
                        identifiersJSON .. "' WHERE `accountname` = '" .. jobname .. "'"
                    )
                end
            else
                local account = {
                    accountname = jobname,
                    spendData = {
                        ["mon"] = 0,
                        ["tue"] = 0,
                        ["wed"] = 0,
                        ["thu"] = 0,
                        ["fri"] = 0,
                        ["sat"] = 0,
                        ["sun"] = 0
                    },
                 
                    notify = {
        
                    },
                    transaction = {
                        income = 0,
                        expense = 0,
                    },
                    identifiers = {
                        { identifier = GetIdentifier(src) } -- Wrap the identifier in a table
                    }
                }
                ExecuteSql(
                    "INSERT INTO `codem_bank_society_log` (`accountname`,`identifiers`,`spendData`,`notify`) VALUES ('" ..
                    account.accountname .. "','" .. json.encode(account.identifiers) .. "','" .. json.encode(account.spendData) .. "','" .. json.encode(account.notify) .. "')"
                )
                Citizen.Wait(200)
                table.insert(accounsLog, account)
                TriggerClientEvent('codem-bank:firstAccountSociety',src)
            end
    else
        local jobData = GetPlayerLoggedAccountJob(jobname)

        local playerJoin = false

        if jobData and jobData.identifiers then 
            for k, v in pairs(jobData.identifiers) do
                if v.identifier == identifier then
                    playerJoin = true
                    break
                end
            end
            
            if playerJoin then 
                TriggerClientEvent('codem-bank:societyJoinPlayer', src, true)
            else
                local newIdentifier = {
                    identifier = GetIdentifier(src)
                }
                
                local identifiersArray = {}
                for _, identifier in ipairs(jobData.identifiers) do
                    table.insert(identifiersArray, identifier)
                end
                table.insert(identifiersArray, newIdentifier)
                
                jobData.identifiers = identifiersArray
                
                local identifiersJSON = json.encode(identifiersArray)
                
                TriggerClientEvent('codem-bank:societyJoinPlayer', src, true)
                Citizen.Wait(300)
                TriggerClientEvent('codem-bank:firstAccountSociety', src)
                ExecuteSql(
                    "UPDATE `codem_bank_society_log` SET `identifiers` = '" ..
                    identifiersJSON .. "' WHERE `accountname` = '" .. jobname .. "'"
                )
            end
        else
            local account = {
                accountname = jobname,
                spendData = {
                    ["mon"] = 0,
                    ["tue"] = 0,
                    ["wed"] = 0,
                    ["thu"] = 0,
                    ["fri"] = 0,
                    ["sat"] = 0,
                    ["sun"] = 0
                },
                notify = {},
                transaction = {
                    income = 0,
                    expense = 0,
                },
                identifiers = {
                    { identifier = GetIdentifier(src) } 
                }
            }
            
            ExecuteSql(
                "INSERT INTO `codem_bank_society_log` (`accountname`,`identifiers`,`spendData`,`notify`) VALUES ('" ..
                account.accountname .. "','" .. json.encode(account.identifiers) .. "','" .. json.encode(account.spendData) .. "','" .. json.encode(account.notify) .. "')"
            )
            Citizen.Wait(200)
            table.insert(accounsLog, account)
            TriggerClientEvent('codem-bank:firstAccountSociety', src)
        end
    end



end)

function SocietyAccountMoney(job)
    if Config.Framework == "newesx" or Config.Framework == "oldesx" then 
        if job then 
            local accountName = 'society_' .. job
            local societyAccountMoney =  ExecuteSql("SELECT * FROM `addon_account_data` WHERE `account_name` = '" .. accountName .. "'")
            if next(societyAccountMoney) then 
                return societyAccountMoney[1].money
            else
                return false
            end
        end
    else
        if job then 
            local accountName = job
            local societyAccountMoney =  ExecuteSql("SELECT * FROM `management_funds` WHERE `job_name` = '" .. accountName .. "'")
            if next(societyAccountMoney) then 
                return societyAccountMoney[1].amount
            else
                return false
            end
        end
    end
end

function moneyActionSociety(label,amount)
    if Config.Framework == "newesx" or Config.Framework == "oldesx" then 
        if label then 
            local accountName = 'society_'..label
            local societyAccountMoney =  ExecuteSql("SELECT * FROM `addon_account_data` WHERE `account_name` = '" .. accountName .. "'")
            if next(societyAccountMoney) then 
                return ExecuteSql("UPDATE `addon_account_data` SET `money` = '" .. tonumber(amount) .. "' WHERE `account_name` = '" .. accountName .. "'")
            else
                return false
            end

        end
    else
        if label then 
            local accountName = label
            local societyAccountMoney =  ExecuteSql("SELECT * FROM `management_funds` WHERE `job_name` = '" .. accountName .. "'")
            if next(societyAccountMoney) then 
                return ExecuteSql("UPDATE `management_funds` SET `amount` = '" .. tonumber(amount) .. "' WHERE `job_name` = '" .. accountName .. "'")
            else
                return false
            end

        end
    end

end

function refreshSocityMoney(job)
    if Config.Framework == "newesx" or Config.Framework == "oldesx" then 
        if job then 
            local accountName = 'society_'..job
            local accountMoney = ExecuteSql("SELECT * FROM `addon_account_data` WHERE `account_name` = '" .. accountName .. "'")
            if next(accountMoney) then 
                return accountMoney[1].money
            else
                return false
            
            end
        
        end
    else
        if job then 
            local accountName = job
            local accountMoney = ExecuteSql("SELECT * FROM `management_funds` WHERE `job_name` = '" .. accountName .. "'")
            if next(accountMoney) then 
                return accountMoney[1].amount
            else
                return false
            
            end
        
        end
        
    end
   

end