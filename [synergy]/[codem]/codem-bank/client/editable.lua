RegisterNUICallback('bank', function(data,cb)
    if data.action == 'withdraw' then
        TriggerServerEvent('codem-bank:withdraw',data.amount)
    elseif data.action == 'deposit' then
        TriggerServerEvent('codem-bank:deposit',data.amount)
    elseif data.action == 'changeIban' then
        TriggerServerEvent('codem-bank:changeIban')
    elseif data.action == 'transfer' then
        TriggerServerEvent('codem-bank:transfer',data.target,data.amount)
    elseif data.action == 'bills' then
        local billsData = Callback('codem-bank:getBills')
        if Config.Framework == "newesx" or Config.Framework == "oldesx" then
            if billsData then
                for k,v in pairs(Config.BillSettings) do
                    for l,s in pairs(billsData) do
                            if v.name == s.target then
                                s.target = v.label
                            end
                    end
                end
                SendNUIMessage({
                    action = 'BILLS_DATA',
                    bills = billsData
                })
            else
                SendNUIMessage({
                    action = 'BILLS_DATA',
                    bills = 'null'
                })
            end
        else
            if billsData then
                for k,v in pairs(Config.BillSettings) do
                    for l,s in pairs(billsData) do
                        if Config.Billing == 'codem-billing' then
                            if v.name == s.societyname then
                                s.societyname = v.label
                                s.amount = math.floor(s.amount + (s.amount * Config.Tax))
                            end
                        else
                            if v.name == s.society then
                                s.society = v.label
                            end
                        end
                    end
                end
                SendNUIMessage({
                    action = 'BILLS_DATA',
                    bills = billsData
                })
            else
                SendNUIMessage({
                    action = 'BILLS_DATA',
                    bills = 'null'
                })
            end

        end
    elseif data.action == 'transactions' then
        TriggerServerEvent('codem-bank:transactions')
    elseif data.action == 'loanBuy' then
        TriggerServerEvent('codem-bank:loanBuy',data.value,data.label,data.name)
        TriggerServerEvent('codem-bank:server:UpdatePlayerData')
    elseif data.action == 'loanInstallment' then
        TriggerServerEvent('codem-bank:PayLoan',data.amount)
        TriggerServerEvent('codem-bank:server:UpdatePlayerData')
    elseif data.action == 'loanLeft' then
        TriggerServerEvent('codem-bank:loanLeft')
        TriggerServerEvent('codem-bank:server:UpdatePlayerData')
    elseif data.action == 'billPay' then
        TriggerServerEvent('codem-bank:billPay',data.valueId,data.valueAmount,data.valueBillName)
    elseif data.action == 'joinSociety' then
        local societyToken = data.value
        local joblabel = loadJob()
        for k ,v in pairs(Config.SocietyJob) do
            if v.name == joblabel and v.token == societyToken then
                 TriggerServerEvent('codem-bank:societyjoin',v.name)
            end
        end
    elseif data.action == 'accountCheck' then
        local joblabel = loadJob()

        TriggerServerEvent('codem-bank:accountCheck',joblabel)
        Citizen.Wait(150)
        TriggerEvent('codem-bank:updateSocietySpendData',0,joblabel)
    elseif data.action == 'withdrawSociety' then
        local joblabel = loadJob()
        TriggerServerEvent('codem-bank:withdrawSociety',joblabel,data.amount)
    elseif data.action == 'depositSociety' then
        local joblabel = loadJob()
        TriggerServerEvent('codem-bank:depositSociety',joblabel,data.amount)
    elseif data.action == 'transferSociety' then
        local joblabel = loadJob()
        TriggerServerEvent('codem-bank:transferSociety',data.target,data.amount,joblabel)
    elseif data.action == 'clearTransaction' then
        TriggerServerEvent('codem-bank:clearTransaction')
    elseif data.action == 'societyTransactions' then
        local joblabel = loadJob()
        TriggerServerEvent('codem-bank:societyTransactions',joblabel)
    elseif data.action == 'forAtmFix' then
        Citizen.Wait(1000)
        TriggerEvent('codem-bank:updateSpendData',0)
    end
    if cb then
        cb("ok")
    end
end)

RegisterNetEvent('codem-bank:firstAccountSociety')
AddEventHandler('codem-bank:firstAccountSociety',function()
    local joblabel = loadJob()
    TriggerServerEvent('codem-bank:accountCheck',joblabel)
    Citizen.Wait(150)
    TriggerEvent('codem-bank:updateSocietySpendData',0,joblabel)
end)




------------------BLIP SETTINGS------------------
local blips = {}
function createBlips()
    for k, v in pairs(Config.BankLocations) do
        blips[k] = AddBlipForCoord(tonumber(v.coords.x), tonumber(v.coords.y), tonumber(v.coords.z))
        SetBlipSprite(blips[k], Config.Blip.blipType)
        SetBlipDisplay(blips[k], 4)
        SetBlipScale  (blips[k], Config.Blip.blipScale)
        SetBlipColour (blips[k], Config.Blip.blipColor)
        SetBlipAsShortRange(blips[k], true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(tostring(Config.Blip.blipName))
        EndTextCommandSetBlipName(blips[k])
    end
end

------------- ANIMATION SETTINGS ---------------
function playAnim(animDict, animName, duration)
	RequestAnimDict(animDict)
	while not HasAnimDictLoaded(animDict) do Citizen.Wait(0) end
	TaskPlayAnim(PlayerPedId(), animDict, animName, 1.0, -1.0, duration, 49, 1, false, false, false)
	RemoveAnimDict(animDict)
end

RegisterNetEvent('codem-bank:openBank')
AddEventHandler('codem-bank:openBank',function()
    if setup then
        openBank()
    end

end)

RegisterNetEvent('codem-bank:openBankAtm')
AddEventHandler('codem-bank:openBankAtm',function()
    if setup then
        exitATM()
    end
end)

---- OPEN BANK FUNCTION ----
function openBank()
    local playerData  = Callback('codem-banking:getPlayerData')
    local playerJob = loadJob()
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = "OPEN_MENU",
        bankType = 'bank',
        playerData = playerData,
        playerJob = playerJob


    })
    TriggerEvent('codem-bank:updateSpendData',0)
end

RegisterNetEvent('codem-banking:changeIban')
AddEventHandler('codem-banking:changeIban', function()
    local playerData  = Callback('codem-banking:getPlayerData')
    local playerJob = loadJob()
    -- SetNuiFocus(true, true)
    SendNUIMessage({
        action = "SET_DATA",
        bankType = 'bank',
        playerData = playerData,
        playerJob = playerJob
    })

end)


function openATM()
    RequestAnimDict("amb@prop_human_atm@male@enter")
    while (not HasAnimDictLoaded("amb@prop_human_atm@male@enter")) do
        Citizen.Wait(1)
    end
    TaskPlayAnim(PlayerPedId(),"amb@prop_human_atm@male@enter", "enter", 1.0, 1.0, 3000, 0, 1, true, true, true)
    Citizen.Wait(3000)
    RequestAnimDict("amb@prop_human_atm@male@base")
    while (not HasAnimDictLoaded("amb@prop_human_atm@male@base")) do
        Citizen.Wait(1)
    end
    TaskPlayAnim(PlayerPedId(),"amb@prop_human_atm@male@base", "base", 1.0, -1.0, -1, 2, 1, true, true, true)


end

function exitATM ()

	RequestAnimDict("amb@prop_human_atm@male@enter")
	while (not HasAnimDictLoaded("amb@prop_human_atm@male@enter")) do
		Citizen.Wait(1)
	end
	TaskPlayAnim(PlayerPedId(),"amb@prop_human_atm@male@enter", "enter", 1.0, 1.0, 3000, 0, 1, true, true, true)
	Citizen.Wait(3000)
	RequestAnimDict("amb@prop_human_atm@male@idle_a")
	while (not HasAnimDictLoaded("amb@prop_human_atm@male@idle_a")) do
		Citizen.Wait(1)
	end
	TaskPlayAnim(PlayerPedId(),"amb@prop_human_atm@male@idle_a", "idle_c", 1.0, -1.0, -1, 0, 1, true, true, true)
	ClearPedTasks(GetPlayerPed(-1))
	Citizen.Wait(2500)

    local playerData  = Callback('codem-banking:getPlayerData')
    local playerJob = loadJob()
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = "OPEN_MENU",
        bankType = 'atm',
        playerData = playerData,
        playerJob = playerJob


    })


end


RegisterNetEvent('codem-bank:refreshBills')
AddEventHandler('codem-bank:refreshBills',function()
    local billsData = Callback('codem-bank:getBills')
    if billsData then
        for k,v in pairs(Config.BillSettings) do
            for l,s in pairs(billsData) do
                    if v.name == s.target then
                        s.target = v.label
                    end
            end
        end
        SendNUIMessage({
            action = 'BILLS_DATA',
            bills = billsData
        })
    else
        SendNUIMessage({
            action = 'BILLS_DATA',
            bills = 'null'
        })
    end
end)

function loadJob()
    if frameworkObject ~= nil then
        if Config.Framework == "newesx" or Config.Framework == "oldesx" then

            if frameworkObject.GetPlayerData() then
                while frameworkObject.GetPlayerData().job == nil do
                    Citizen.Wait(0)
                end
                local joblabel = frameworkObject.GetPlayerData().job.name
                local jobVar = false
                for k ,v in pairs(Config.SocietyJob) do
                    if v.name == joblabel then
                        jobVar = true
                    end
                end
                if jobVar then
                    return joblabel
                else
                    return false
                end

            end

        else
            if frameworkObject.Functions.GetPlayerData() then
                while frameworkObject.Functions.GetPlayerData().job == nil do
                    Citizen.Wait(0)
                end
                local joblabel = frameworkObject.Functions.GetPlayerData().job.name
                local jobVar = false
                for k ,v in pairs(Config.SocietyJob) do
                    if v.name == joblabel then
                        jobVar = true
                    end
                end
                if jobVar then
                    return joblabel
                else
                    return false
                end

            end
        end

    end
end