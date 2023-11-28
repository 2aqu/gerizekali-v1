local QBCore = exports['qb-core']:GetCoreObject()
local Cooldown = false
local cashA = 5000
local cashB = 7500


-- hack
QBCore.Functions.CreateUseableItem('trojan_usb', function(source)
	local Player = QBCore.Functions.GetPlayer(source)
   TriggerClientEvent('hack:trojan_usb',source)
end)

-- Recompensa
RegisterServerEvent("arob-atmrob:success")
AddEventHandler("arob-atmrob:success",function()
    local src = source
	local Player =  QBCore.Functions.GetPlayer(source)
    local bags = 1
	--local info = {
		worth = math.random(cashA, cashB)
	--}
	Player.Functions.AddMoney('cash', worth, "atmsoygunu")
	--Player.Functions.AddItem("markedbills", tonumber(reward))
    Player.Functions.RemoveItem("trojan_usb", 1)
	--TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items["markedbills"], "add")
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['trojan_usb'], "remove", 1)
end)

-- Cooldown
RegisterServerEvent('arob-atmrob:Server:BeginCooldown')
AddEventHandler('arob-atmrob:Server:BeginCooldown', function()
    Cooldown = true
    local timer = 60 * 1000
    while timer > 0 do
        Wait(1000)
        timer = timer - 1000
        if timer == 0 then
            Cooldown = false
        end
    end
end)

QBCore.Functions.CreateCallback("arob-atmrob:Cooldown",function(source, cb)
    if Cooldown then
        cb(true)
    else
        cb(false)
        
    end
end)

QBCore.Functions.CreateCallback('arob-atm:server:policecheck', function(source, cb)
	local amount = 5
    for k, v in pairs(QBCore.Functions.GetPlayers()) do
        local Player = QBCore.Functions.GetPlayer(v)
        if Player ~= nil then 
            if (Player.PlayerData.job.name == "police" or Player.PlayerData.job.name == "sheriff"or Player.PlayerData.job.name == "dppd"  or Player.PlayerData.job.name == "davison" or Player.PlayerData.job.name == "vpd" or Player.PlayerData.job.name == "ranger" or Player.PlayerData.job.name == "state" and Player.PlayerData.job.onduty) then
                amount = amount + 1
            end
        end
	end
	cb(amount)
end)
