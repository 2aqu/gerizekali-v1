local QBCore = exports['qb-core']:GetCoreObject()
local cashA = 5000 				--<<how much minimum you can get from a robbery
local cashB = 5100				--<< how much maximum you can get from a robbery
local ScashA = 10000 			--<<how much minimum you can get from a robbery
local ScashB = 11000				--<< how much maximum you can get from a robbery

RegisterNetEvent('qb-storerobbery:server:takeMoney', function(register, isDone)
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	-- Add some stuff if you want, this here above the if statement will trigger every 2 seconds of the animation when robbing a cash register.
    if isDone then
	local bags = math.random(cashA, cashB)
--local info = {
--	worth = math.random(cashA, cashB)
--}
    Player.Functions.AddMoney("cash", bags, "store-money")
    for k, v in pairs(GetPlayerIdentifiers(src)) do
        if string.sub(v, 1, string.len("steam:")) == "steam:" then
          steamid = v
        elseif string.sub(v, 1, string.len("discord:")) == "discord:" then
          discord = string.sub(v, 9)
        end 
      end
      
      if discord ~= nil then
        TriggerEvent("qb-log:server:CreateLog", "storerobbery", "Market Yazarkasa Soygunu Yapıldı", "green", "\n**Yapan Kişi Discord:  ** <@"..discord.."> \n **Yapan Kişi Steam:**" ..GetPlayerName(src).. "\n **Kazaılan Tutar:**" ..bags.. "" )
      end
    end
end)


RegisterNetEvent('qb-storerobbery:server:setRegisterStatus', function(register)
    Config.Registers[register].robbed   = true
    Config.Registers[register].time     = Config.resetTime
    TriggerClientEvent('qb-storerobbery:client:setRegisterStatus', -1, register, Config.Registers[register])
end)

RegisterNetEvent('qb-storerobbery:server:setSafeStatus', function(safe)
    TriggerClientEvent('qb-storerobbery:client:setSafeStatus', -1, safe, true)
    Config.Safes[safe].robbed = true

    SetTimeout(math.random(40, 80) * (60 * 1000), function()
        TriggerClientEvent('qb-storerobbery:client:setSafeStatus', -1, safe, false)
        Config.Safes[safe].robbed = false
    end)
end)

RegisterNetEvent('qb-storerobbery:server:SafeReward', function(safe)
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	local bags2 = math.random(ScashA, ScashB)
	--local info = {
	--	worth = math.random(ScashA, ScashB)
	--}
    Player.Functions.AddMoney("cash", bags2, "store-money")
    for k, v in pairs(GetPlayerIdentifiers(src)) do
        if string.sub(v, 1, string.len("steam:")) == "steam:" then
          steamid = v
        elseif string.sub(v, 1, string.len("discord:")) == "discord:" then
          discord = string.sub(v, 9)
        end
    end
    if discord ~= nil then
      TriggerEvent("qb-log:server:CreateLog", "storerobbery", "Market Arka Kasa Soygunu Yapıldı", "green", "\n**Yapan Kişi Discord:  ** <@"..discord.."> \n **Yapan Kişi Steam:**" ..GetPlayerName(src).. "\n **Kazaılan Tutar:**" ..bags2.. "" )
    end
end)

RegisterNetEvent('qb-storerobbery:server:callCops', function(type, safe, streetLabel, coords)
    local cameraId = 4
    if type == "safe" then
        cameraId = Config.Safes[safe].camId
    else
        cameraId = Config.Registers[safe].camId
    end
    local alertData = {
        title = "10-33 | Shop Robbery",
        coords = {x = coords.x, y = coords.y, z = coords.z},
        description = "Someone Is Trying To Rob A Store At "..streetLabel.." (CAMERA ID: "..cameraId..")"
    }
    TriggerClientEvent("qb-storerobbery:client:robberyCall", -1, type, safe, streetLabel, coords)
 --   TriggerClientEvent("qb-phone:client:addPoliceAlert", -1, alertData)
end)

CreateThread(function()
    while true do
        local toSend = {}
        for k, v in ipairs(Config.Registers) do

            if Config.Registers[k].time > 0 and (Config.Registers[k].time - Config.tickInterval) >= 0 then
                Config.Registers[k].time = Config.Registers[k].time - Config.tickInterval
            else
                if Config.Registers[k].robbed then
                    Config.Registers[k].time = 0
                    Config.Registers[k].robbed = false
					toSend[#toSend+1] = Config.Registers[k]
                end
            end
        end

        if #toSend > 0 then
            --The false on the end of this is redundant
            TriggerClientEvent('qb-storerobbery:client:setRegisterStatus', -1, toSend, false)
        end

        Wait(Config.tickInterval)
    end
end)

QBCore.Functions.CreateCallback('qb-storerobbery:server:getRegisterStatus', function(source, cb)
    cb(Config.Registers)
end)

QBCore.Functions.CreateCallback('qb-storerobbery:server:getSafeStatus', function(source, cb)
    cb(Config.Safes)
end)

RegisterNetEvent('qb-storerobbery:server:CheckItem', function()
    print("Server Geldi")
    local Player = QBCore.Functions.GetPlayer(source)
    local ItemData = Player.Functions.GetItemByName("drill")
    if ItemData ~= nil then
        print("İF Geçti")
        TriggerClientEvent('qb-storerobbery:client:hacksafe', source)
        print("Client Gitti")
    else
        TriggerClientEvent('QBCore:Notify', source, "Üstünde birşeyler eksik gibi?")
    end
end)

RegisterNetEvent('qb-storerobbery:server:removeitem', function()
    local Player = QBCore.Functions.GetPlayer(source)

    Player.Functions.RemoveItem('lockpick', 1)
end)

RegisterNetEvent('qb-storerobbery:server:removeitem2', function()
    local Player = QBCore.Functions.GetPlayer(source)

    Player.Functions.RemoveItem('advancedlockpick', 1)
end)