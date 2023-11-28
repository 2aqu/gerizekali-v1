
Config = {}
Config.Framework = 'newqb' -- newesx, oldesx, newqb, oldqb, autodetect
-- oxmysql, ghmattimysql, mysql-async | Don't forget to set it in fxmanifest !
Config.Mysql = "oxmysql" 
-- bt-target, qb-target -- drawtext
Config.InteractionHandler = 'qb-target' -- bt-target, qb-target, drawtext, qtarget

Config.Billing = 'default' -- okok, default

--- UI LOGO ---
Config.Logo = {
    ['bluelogo'] = 'https://media.discordapp.net/attachments/1016461907873505401/1125143794560532570/logo1.png?width=671&height=671',
    ['whitelogo'] = 'https://media.discordapp.net/attachments/1016461907873505401/1125143794560532570/logo1.png?width=671&height=671',
    ['atmlogo'] = 'https://media.discordapp.net/attachments/1016461907873505401/1125143794560532570/logo1.png?width=671&height=671',
    ['purplelogo'] = 'https://media.discordapp.net/attachments/1016461907873505401/1125143794560532570/logo1.png?width=671&height=671'
}

Config.Blipler = true

Config.Blip = {
    blipName = 'Banka',
    blipType = 108,
    blipColor = 2,
    blipScale = 0.55
}

Config.BankLocations = {
    {
        coords = vector3(149.9, -1040.46, 29.37)
    },
    {
        coords = vector3(314.23, -278.83, 54.17),
    },
    {
        coords = vector3(-350.8, -49.57, 49.04),
    },
    {
        coords = vector3(-1213.0, -330.39, 37.79),
    },
    {
        coords = vector3(-2962.71, 483.0, 15.7),
    },
    {
        coords = vector3(1175.07, 2706.41, 38.09),
    },
    {
        coords = vector3(246.64, 223.20, 106.29),
    },
    {
        coords = vector3(-113.22, 6470.03, 31.63)
    },
  
}
Config.ATMModels = {
    "prop_atm_01",
    "prop_atm_02",
    "prop_atm_03",
    "prop_fleeca_atm"
}

Config.OpenTrigger = function()
    if Config.InteractionHandler == "qb-target" then
        
        for _,v in pairs(Config.BankLocations) do
            exports['qb-target']:AddBoxZone("codembank" .. _, vector3(v.coords.x,v.coords.y, v.coords.z), 1.5, 1.5, {
                name = "codembank" .. _,
                debugPoly = false,
                heading = -20,
                minZ = v.coords.z - 2,
                maxZ = v.coords.z + 2,
            }, {
                options = {
                    {
                        type = "client",
                        event = "codem-bank:openBank",
                        icon = "fas fa-hand-point-up",
                        label = "Bankayı Kullan",
                        
                    },
                },
                distance = 8
            })
        end
        -- Citizen.CreateThread(function()
        --     while true do 
           
        --         local wait = 1500
        --             local playerPed = PlayerPedId()
        --             local coords = GetEntityCoords(playerPed)
        --             for k, v in pairs(Config.ATMModels) do
        --                 local obj = GetClosestObjectOfType(GetEntityCoords(PlayerPedId()), 2.0, GetHashKey(v))
   
        --                 local distance = #(coords - GetEntityCoords(obj))
                   
        --                  if distance < 1.5 then
        --                     exports['qb-target']:AddBoxZone("codematm" .. k, GetEntityCoords(obj), 1.5, 1.5, {
        --                         name = "codematm" ..k,
        --                         debugPoly = false,
        --                         heading = -20,
        --                         minZ = GetEntityCoords(obj).z,
        --                         maxZ = GetEntityCoords(obj).z+2.0,
        --                     }, {
        --                         options = {
        --                             {
        --                                 type = "client",
        --                                 event = "codem-bank:openBankAtm",
        --                                 icon = "fas fa-hand-point-up",
        --                                 label = "ATM Kullan",
                                        
        --                             },
        --                         },
        --                         distance = 8
        --                     })
        --                  end
        --             end        
   
        --         Citizen.Wait(wait)
        --     end
        -- end)
    

    elseif Config.InteractionHandler == "bt-target" then
        for _,v in pairs(Config.BankLocations) do
            exports['bt-target']:AddBoxZone("codem-bank".._, v.coords, 1.25, 0.55, {
                name = "codem-bank".._,
                heading = 0.0,
                debugPoly = false,
                minZ = v.coords.z,
                maxZ = v.coords.z+2.0,
                }, {
                    options = {
                        {
                            event = "codem-bank:openBank",
                            icon = "fa-solid fa-bank",
                            label = "Banka",
                        },
                    },
                    distance = 3.0,
                    job = {"all"}
            })
        end
        Citizen.CreateThread(function()
             while true do 
            
                    local wait = 1500
         
                     local playerPed = PlayerPedId()
                     local coords = GetEntityCoords(playerPed)
                     for k, v in pairs(Config.ATMModels) do
                         local obj = GetClosestObjectOfType(GetEntityCoords(PlayerPedId()), 2.0, GetHashKey(v))
    
                         local distance = #(coords - GetEntityCoords(obj))
                    
                          if distance < 1.5 then
                              exports['bt-target']:AddBoxZone("codem-atm", GetEntityCoords(obj), 1.25, 0.55, {
                                name = "codem-atm",
                                heading = 0.0,
                                debugPoly = false,
                                minZ = GetEntityCoords(obj).z,
                                maxZ = GetEntityCoords(obj).z+2.0,
                                }, {
                                    options = {
                                        {
                                            event = "codem-bank:openBankAtm",
                                            icon = "fa-solid fa-bank",
                                            label = "ATM",
                                        },
                                    },
                                    distance = 3.0,
                                    job = {"all"}
                            })
                          end
                     end        
        
                         
                 Citizen.Wait(wait)
             end
         end)
    elseif Config.InteractionHandler == "qtarget" then
        for _,v in pairs(Config.BankLocations) do
            exports["qtarget"]:AddBoxZone("codem-bank".._, v.coords, 1.25, 0.55, {
                name = "codem-bank".._,
                heading = 0.0,
                debugPoly = false,
                minZ = v.coords.z,
                maxZ = v.coords.z+2.0,
                }, {
                    options = {
                        {
                            event = "codem-bank:openBank",
                            icon = "fa-solid fa-bank",
                            label = "Banka",
                        },
                    },
                    distance = 3.0,
                    job = {"all"}
            })
        end
        Citizen.CreateThread(function()
             while true do 
            
                    local wait = 1500
         
                     local playerPed = PlayerPedId()
                     local coords = GetEntityCoords(playerPed)
                     for k, v in pairs(Config.ATMModels) do
                         local obj = GetClosestObjectOfType(GetEntityCoords(PlayerPedId()), 2.0, GetHashKey(v))
    
                         local distance = #(coords - GetEntityCoords(obj))
                    
                          if distance < 1.5 then
                              exports["qtarget"]:AddBoxZone("codem-atm", GetEntityCoords(obj), 1.25, 0.55, {
                                name = "codem-atm",
                                heading = 0.0,
                                debugPoly = false,
                                minZ = GetEntityCoords(obj).z,
                                maxZ = GetEntityCoords(obj).z+2.0,
                                }, {
                                    options = {
                                        {
                                            event = "codem-bank:openBankAtm",
                                            icon = "fa-solid fa-bank",
                                            label = "ATM",
                                        },
                                    },
                                    distance = 3.0,
                                    job = {"all"}
                            })
                          end
                     end        
        
                         
                 Citizen.Wait(wait)
             end
         end)
    elseif Config.InteractionHandler == "drawtext" then
        Citizen.CreateThread(function()
        while true do 
                local wait = 1500
            --if response then 
                 local playerPed = PlayerPedId()
                 local coords = GetEntityCoords(playerPed)
                 for k, v in pairs(Config.ATMModels) do
                     local obj = GetClosestObjectOfType(GetEntityCoords(PlayerPedId()), 2.0, GetHashKey(v))
                     local distance = #(coords - GetEntityCoords(obj))
                        
                      if distance < 1.5 then
                         wait = 0
                            DrawText3D(coords.x-0.5, coords.y-0.5, coords.z+0.5, "Press [~g~E~s~] to access the atm")
                          if IsControlJustReleased(0, 38) then
                             exitATM ()
                      
                          -- TriggerServerEvent("bank:open")
                          end
                      end
                 end
    
                 for l , s in pairs(Config.BankLocations) do
                     local distance2 = #(coords - s.coords)
                
                     if distance2 < 1.5 then
                         wait = 0
                         DrawText3D(s.coords.x,s.coords.y,s.coords.z, "Press [~g~E~s~] to access the bank")
                         if IsControlJustReleased(0, 38) then
                            TriggerEvent('codem-bank:openBank')
                      
                         end
                     end
                 end
    
             Citizen.Wait(wait)
            end
        end)

    end
end

function DrawText3D(x, y, z, text)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    local px, py, pz = table.unpack(GetGameplayCamCoords())
    SetTextScale(0.3, 0.3)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x, _y)
    local factor = (string.len(text)) / 370
    DrawRect(_x, _y + 0.0125, 0.015 + factor, 0.03, 41, 11, 41, 90)
end



Config.LoanUse = false -- true enabled false disabled

Config.LoanSettings = {
    ['loanInterest'] = 1.5, -- 1.5 = 150% of loan
    ['loanTime'] = 10, -- 24 hours
    ['paymentPerDay'] = 0.05 -- 5% of loan
}
--If you want certain people to use it, do it right. 
Config.CertainPersonsCanUseIt = false -- true enabled false disabled

--Config.CertainPersonsCanUseIt = false -- If it's wrong, don't write anything here.
Config.CertainPersons = {
   -- Esx, you need to adjust according to the framework you use. Type steam is steam hex. 
   --If it is licence id, type the licence id. If you are using qbcore, type citizenid here.
   --'steam:11000010f1c5b5f' -- Example

}

Config.Loan = {
    {
        bankname = 'M Bank',
        name = 'economy-loan',
        label = 'M  Economy Loan',
        textcolor  = '#004840', 
        logo = 'm-logo-blue',
        loan = 50000,
        smallIcon = 'm-logo-blue'
    },
    {
        bankname = 'MAZE BANK',
        name = 'premium-loan',
        label = 'Maze Bank Premium Loan',
        textcolor  = '#500027',
        logo = 'maze-logo',
        loan = 100000,
        smallIcon = 'maze-bank-icon'
    },
    {
        bankname =  'MAZE BANK',
        name = 'gold-loan',
        label = 'Maze Bank Gold Loan',
        textcolor  = '#6A4600',
        logo = 'maze-logo',
        loan = 250000,
        smallIcon = 'maze-bank-icon'
    },
    {
        bankname = 'FLEECA BANK',
        name = 'fleeca-loan',
        label = 'Fleeca Bank 420 Loan',
        textcolor  = '#003E0B',
        logo = 'fleeca-logo',
        loan = 420000,
        smallIcon = 'fleeca-bank-icon'
    },
    {
        bankname = 'MAZE BANK',
        name = 'diamond-loan',
        label = 'Maze Bank Diamond Loan',
        textcolor  = '#393939',
        logo = 'maze-logo',
        loan = 500000,
        smallIcon = 'maze-bank-icon'
    },
    {
        bankname = 'PACIFIC BANK',
        name = 'blvck-loan',
        label = 'Pacific Bank BLVCK Loan',
        textcolor  = '#000000',
        logo = 'pacific-logo',
        loan = 1000000,
        smallIcon = 'pacific-bank-icon'
    },
}
  
Config.SocietyJob = {
    {name = 'police',    token = 'police123'   , cardNumber = '**** **** **PO LICE' },
    {name = 'ambulance', token = 'ambulance123', cardNumber = '**** **** **** *EMS' },
    {name = 'mechanic',  token = 'ambulance123', cardNumber = '**** **** MECH ANIK' },
 }
 
Config.BillSettings = {
    {name = 'society_police', label = 'LSPD'},
    {name = 'society_ems', label = 'EMS'}
}

Config.Locale ={
    ['ibanChange'] = 'IBANın değişti. Yeni IBAN :',
    ['moneySent'] = 'Para gönderildi :',
    ['mistakeIban'] = 'Yanlış IBAN.',
    ['enoughMoney'] = 'Yeterli paran yok.',
    ['withdrawnBank'] = 'Bankadan para çekildi.',
    ['depositedBank'] = 'Para bankaya yatırıldı.',
    ['loanClosed'] = 'Kredi Kapandı.',
    ['depositedBankAccount'] = 'Para bankaya yatırıldı.',
    ['targetSendMoney'] = 'Para gönderildi.',
    ['billpaid'] = 'Fatura ödendi.',
    ['deleteNotify'] = 'Tüm bildirimler silindi.',
    ['blockedAccount'] = 'Banka hesabın bloklandı.',
    ['moneyYourself'] = 'Kendine para gönderemezsin.',
    ['authorised'] = 'Kredi çekme yetkin yok.',

    ['bankatm'] = 'BANKA | ATM',
    ['pleaseinsert'] = 'Kartınızı sokete yerleştirin',
    ['banktext'] = 'BANKA',
    ['insert'] = 'YERLEŞTİR',
    ['society2'] = '|SOCIETY',
    ['helloWelcome'] = 'Merhaba, Hoşgeldiniz',
    ['persone'] = 'Personel',
    ['dashboard'] = 'PANEL',
    ['transaction'] = 'İŞLEMLER',
    ['loan'] = 'KREDİLER',
    ['bills'] = 'FATURALAR',
    ['society3'] = 'İşletme',
    ['exit'] = 'ÇIKIŞ',
    ['changeiban'] = 'İban Değiştir',
    ['transfer'] = 'Gönder',
    ['withdraw'] = 'Çek',
    ['deposit'] = 'Yatır',
    ['clearAll'] = 'Temizle',
    ['alltransactionPage'] = 'Tüm İşlemler ',
    ['banktext2'] = 'Banka',
    ['date'] = 'Tarih',
    ['deposited'] = 'Yatırıldı',
    ['withdrawed'] = 'Çekildi',
    ['type'] = 'TİP',
    ['pay'] = 'ÖDE',
    ['notbill'] = 'Ödemeniz gereken fatura bulunmuyor.',
    ['loantext1'] = 'Kredi çekmek üzeresin.',
    ['loantext2'] = 'Emin misin ? ',
    ['yes'] = 'EVET',
    ['no'] = 'HAYIR',
    ['info'] = 'Bilgi',
    ['loantext3'] = 'You don t have any loans to pay right now. You can select a loan down below.',
    ['myloan'] = 'My Loan',
    ['active'] = 'Aktif',
    ['loanLeft'] = 'Loan Left',
    ['warning'] = 'Uyarı',
    ['loantext4'] = 'When the due date of your loan has passed, the bank will automatically withdraw the loan from the existing account. Please be aware of this!',
    ['payment'] = 'Ödeme',
    ['aloan'] = 'Avaliable Loans',
    ['loanprice'] = 'Loan Price',
    ['information'] = 'BİLGİ',
    ['infotext1'] = 'You don’t involve any society yet. If you are a worker on some compnay or state agency please provide a “ SOCIETY CODE “ from your company or state agency. Thank you!',
    ['infotext2'] = 'Do you have a society code ? Join your society now!',
    ['joinSoc'] = 'Join Society',

}


Config.Notifications = { -- Notifications
   ["nomoney"] = {
      message = 'ERROR!!! Job data could not be accessed.',
      type = "success",
   },
   ["minRequired"] = {
    message = 'You need to pay at least ',
    type = "success",
    },
    ['youHave'] = {
        message = 'You have paid amount of your loan $ ',
        type = "success",
    },

    ['payLoan'] = {
        message = 'Please pay your loan',
        type = "success",
    }
    

    
    
  
}


Config.Notification = function(message, type, isServer, src) -- You can change here events for notifications
    if isServer then
       if Config.Framework == "newesx" or Config.Framework == "oldesx" then
          TriggerClientEvent("esx:showNotification", src, message)
       else
          TriggerClientEvent('QBCore:Notify', src, message, type, 1500)
       end
    else
       if Config.Framework == "newesx" or Config.Framework == "oldesx" then
          TriggerEvent("esx:showNotification", message)
       else
          TriggerEvent('QBCore:Notify', message, type, 1500)
       end
    end
end



function GetIdentifier(source)
    if Config.Framework == "newesx" or Config.Framework == "oldesx" then
        local xPlayer = frameworkObject.GetPlayerFromId(tonumber(source))

        if xPlayer then
            return xPlayer.getIdentifier()
        else
            return "0"
        end
    else
        local Player = frameworkObject.Functions.GetPlayer(tonumber(source))
        if Player then
            return Player.PlayerData.citizenid
        else
            return "0"
        end
    end
end


function GetName(source)
    if Config.Framework == "newesx" or Config.Framework == "oldesx" then
        local xPlayer = frameworkObject.GetPlayerFromId(tonumber(source))
        if xPlayer then
            return xPlayer.getName()
        else
            return "0"
        end
    else
        local Player = frameworkObject.Functions.GetPlayer(tonumber(source))
        if Player then
            return Player.PlayerData.charinfo.firstname .. ' ' .. Player.PlayerData.charinfo.lastname
        else
            return "0"
        end
    end
end




