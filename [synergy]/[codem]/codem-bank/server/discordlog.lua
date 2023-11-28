


function depositDiscordLog(src,amount)
    local ids = ExtractIdentifiers(src)
    local _discordID = " <@" .. ids.discord:gsub("discord:", "") .. ">"
    discordLog(Config.DiscordLogWebhook.deposit,
        ":dollar: ** CodeM - Bank System **  \n \n :man_bald: " ..
        _discordID ..
        "\n \n :identification_card: " ..
        ids.steam ..
        "\n \n :identification_card: " ..
        GetName(src) ..
        "\n \n :credit_card: ID  " ..
        src ..
        " \n \n :hammer_pick: Deposited ** $" ..
        amount ..
        " ** from bank account \n \n ")
end

function withdrawDiscordLog(src,amount)
    local ids = ExtractIdentifiers(src)
    local _discordID = " <@" .. ids.discord:gsub("discord:", "") .. ">"
    discordLog(Config.DiscordLogWebhook.withdraw,
    ":dollar: ** CodeM - Bank System **  \n \n :man_bald: " ..
    _discordID ..
    "\n \n :identification_card: " ..
    ids.steam ..
    "\n \n :identification_card: " ..
    GetName(src) ..
    "\n \n :credit_card: ID  " ..
    src ..
    " \n \n :hammer_pick: Withdrawed ** $" ..
    amount ..
    " ** from bank account \n \n ")
end

function societyDeposit(src,amount,label,newAmount)
    local ids = ExtractIdentifiers(src)
    local _discordID = " <@" .. ids.discord:gsub("discord:", "") .. ">"
    discordLog(Config.DiscordLogWebhook.societydeposit,
       ":dollar: ** CodeM - Bank System **  \n \n :man_bald: " ..
       _discordID ..
       "\n \n :identification_card: " ..
       ids.steam ..
       "\n \n :identification_card: " ..
       GetName(src) ..
       "\n \n :credit_card: ID  " ..
       src ..
       " \n \n :hammer_pick: Deposited Society Account** $" ..
       amount ..
       " ** from **"..label.."** account.. \n \n :credit_card: Job Vault :   " ..newAmount.." $")
end

function societyWithdraw(src,amount,label,newAmount)
    local ids = ExtractIdentifiers(src)
    local _discordID = " <@" .. ids.discord:gsub("discord:", "") .. ">"
    discordLog(Config.DiscordLogWebhook.societywithdraw,
       ":dollar: ** CodeM - Bank System **  \n \n :man_bald: " ..
       _discordID ..
       "\n \n :identification_card: " ..
       ids.steam ..
       "\n \n :identification_card: " ..
       GetName(src)  ..
       "\n \n :credit_card: ID  " ..
       src ..
       " \n \n :hammer_pick: Withdrawed  Society Account** $" ..
       amount ..
       " ** from **"..label.."** account.. \n \n :credit_card: Job Vault :   " ..newAmount.." $")


end

function ibanChangeLog(src,iban)
    local ids = ExtractIdentifiers(src)
    local _discordID = " <@" .. ids.discord:gsub("discord:", "") .. ">"
    discordLog(Config.DiscordLogWebhook.ibanChange,
    ":dollar: ** CodeM - Bank System **  \n \n :man_bald: " ..
    _discordID ..
    "\n \n :identification_card: " ..
    ids.steam ..
    "\n \n :identification_card: " ..
    GetName(src) ..
    "\n \n :credit_card: ID  " ..
    src ..
    " \n \n :hammer_pick: Changed iban New IBAN :  " ..
    iban .. " \n \n")
end


function transferLog(src,amount,xTarget)
    local ids = ExtractIdentifiers(src)
    local _discordID = " <@" .. ids.discord:gsub("discord:", "") .. ">"
    discordLog(Config.DiscordLogWebhook.transfer,
    ":dollar: ** CodeM - Bank System **  \n \n :man_bald: " ..
    _discordID ..
    "\n \n :identification_card: " ..
    ids.steam ..
    "\n \n :identification_card: " ..
    GetName(src) ..
    "\n \n :credit_card: ID  " ..
    src ..
    " \n \n :hammer_pick: Online money transfer. \n \n :moneybag: $ " ..
    amount ..
    " \n \n :man_detective: " ..GetName(xTarget).." ")

end

function transferLogOffline(src,amount,playername)
    local ids = ExtractIdentifiers(src)
    local _discordID = " <@" .. ids.discord:gsub("discord:", "") .. ">"
    discordLog(Config.DiscordLogWebhook.transfer,
    ":dollar: ** CodeM - Bank System **  \n \n :man_bald: " ..
    _discordID ..
    "\n \n :identification_card: " ..
    ids.steam ..
    "\n \n :identification_card: " ..
    GetName(src) ..
    "\n \n :credit_card: ID  " ..
    src ..
    " \n \n :hammer_pick: Offline money transfer. \n \n :moneybag: $ " ..
    amount ..
    " \n \n :man_detective: " ..playername.." ")

end

function societyTransfer(src,job,amount,xTarget,refreshMoneyData)

    local ids = ExtractIdentifiers(src)
    local _discordID = " <@" .. ids.discord:gsub("discord:", "") .. ">"
    discordLog(Config.DiscordLogWebhook.societytransfer,
    ":dollar: ** CodeM - Bank System **  \n \n :man_bald: " ..
    _discordID ..
    "\n \n :identification_card: " ..
    ids.steam ..
    "\n \n :identification_card: " ..
    GetName(src) ..
    "\n \n :credit_card: ID  " ..
    src ..
    " \n \n :hammer_pick: Online account money transfer. JOB: "..job..". \n \n :moneybag: $ " ..
    amount ..
    " \n \n :man_detective: " ..GetName(xTarget).."  \n \n :credit_card: JOB  vault : " ..
    refreshMoneyData)

end

function societyTransferOff(src,amount,playername,refreshMoneyData)

    local ids = ExtractIdentifiers(src)
    local _discordID = " <@" .. ids.discord:gsub("discord:", "") .. ">"
    discordLog(Config.DiscordLogWebhook.societytransfer,
     ":dollar: ** CodeM - Bank System **  \n \n :man_bald: " ..
     _discordID ..
     "\n \n :identification_card: " ..
     ids.steam ..
     "\n \n :identification_card: " ..
     GetName(src) ..
     "\n \n :credit_card: ID  " ..
     src ..
     " \n \n :hammer_pick: Offline money transfer. \n \n :moneybag: $ " ..
     amount ..
     " \n \n :man_detective: " ..playername ..
     "  \n \n :credit_card: JOB  vault : " ..
     refreshMoneyData)
end

function loanBuyLog(src,amount,requiredPayment)

    local ids = ExtractIdentifiers(src)
    local _discordID = " <@" .. ids.discord:gsub("discord:", "") .. ">"
    discordLog(Config.DiscordLogWebhook.loan,
    ":dollar: ** CodeM - Bank System **  \n \n ** Credit Transactions **  \n \n :man_bald: " ..
    _discordID ..
    "\n \n :identification_card: " ..
    ids.steam ..
    "\n \n :identification_card: " ..
    GetName(src) ..
    "\n \n :credit_card: ID  " ..
    src ..
    " \n \n :page_with_curl: " ..
    amount ..
    "$ applied for a loan, Loan approved. \n \n  :placard:  Total Loan Amount : " ..
    requiredPayment .. "$ ")

end 

function payLoanLog(src,amount,requiredPayment)

    local ids = ExtractIdentifiers(src)
    local _discordID = " <@" .. ids.discord:gsub("discord:", "") .. ">"
    discordLog(Config.DiscordLogWebhook.loan,
    ":dollar: ** CodeM - Bank System **  \n \n ** Loan Action **  \n \n :man_bald: " ..
    _discordID ..
    "\n \n :identification_card: " ..
    ids.steam ..
    "\n \n :identification_card: " ..
    GetName(src) ..
    "\n \n :credit_card: ID  " ..
    src ..
    " \n \n :hammer_pick: Paid " ..
    amount ..
    "$ to loan \n \n  :bar_chart:  Remaining Payment : " ..
    requiredPayment .. "$ ")

end 

function loanLeftLog(src,totalLoan)
    local ids = ExtractIdentifiers(src)
    local _discordID = " <@" .. ids.discord:gsub("discord:", "") .. ">"
    discordLog(Config.DiscordLogWebhook.loan,
    ":dollar: ** CodeM - Bank System **  \n \n ** Loan Action **  \n \n :man_bald: " ..
    _discordID ..
    "\n \n :identification_card: " ..
    ids.steam ..
    "\n \n :identification_card: " ..
    GetName(src) ..
    "\n \n :credit_card: ID  " ..
    src ..
    " \n \n :hammer_pick: Paid " ..
    totalLoan ..
    "$ to loan \n \n  :bar_chart:  Loan Closed. Loan : " ..tonumber(totalLoan).. "$ ")

end