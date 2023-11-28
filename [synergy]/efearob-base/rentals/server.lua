QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent('wm-vehiclerentals:server:removemoney', function(src, amount, account)
    local Player = QBCore.Functions.GetPlayer(source)
    Player.Functions.RemoveMoney(account, amount, "vehicle-rentals")
end)

RegisterServerEvent('wm-vehiclerentals:server:givedocument', function(src, PlayerFirst, PlayerLast, Vehicle, Plate)
    local Player = QBCore.Functions.GetPlayer(source)
    info = {
        firstname = PlayerFirst,
        lastname = PlayerLast,
        vehicle = Vehicle,
        vehicleplate = Plate
    }
    if Player.Functions.AddItem("rentcertificate", 1, false, info) then
        TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items["rentcertificate"], "add")
    end
end)

RegisterServerEvent('wm-vehiclerentals:server:removedocument', function(src)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem("rentcertificate", 1, false, info) then
        TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items["rentcertificate"], "remove")
    else
        TriggerClientEvent('QBCore:Notify', source, Config.Localization.RentalPapersRemovedError, "error", 6500)
    end
end)

function VerifyOnTwitter(username)
    -- Verify the user on Twitter
    exports["lb-phone"]:ToggleVerified("twitter", username, true)
    print("User @" .. username .. " has been verified on Twitter.")
end

RegisterCommand("verifytwitterxd", function(source, args)
    local playerId = source

    -- Check if the player has the "admin" permission
    if IsPlayerAceAllowed(playerId, "god") then
        local username = args[1]
        if username then
            VerifyOnTwitter(username)
        else
            print("Usage: /verifytwitter [username]")
        end
    else
        print("Yetkin yok knk.")
    end
end)

-- QBCore.Commands.Add('paraver', Lang:t('command.givecash'), {{name = 'id', help = 'Oyuncu ID'}, {name = 'amount', help = 'Miktar'}}, true, function(source, args)
--     local src = source
--       local id = tonumber(args[1])
--       local amount = math.ceil(tonumber(args[2]))
  
--       if id and amount then
--           local xPlayer = QBCore.Functions.GetPlayer(src)
--           local xReciv = QBCore.Functions.GetPlayer(id)
  
--           if xReciv and xPlayer then
--               if not xPlayer.PlayerData.metadata["isdead"] then
--                   local distance = xPlayer.PlayerData.metadata["inlaststand"] and 3.0 or 10.0
--                   if #(GetEntityCoords(GetPlayerPed(src)) - GetEntityCoords(GetPlayerPed(id))) < distance then
--                       if amount > 0 then
--                           if xPlayer.Functions.RemoveMoney('cash', amount) then
--                               if xReciv.Functions.AddMoney('cash', amount) then
--                                   TriggerClientEvent('QBCore:Notify', src, Lang:t('success.give_cash',{id = tostring(id), cash = tostring(amount)}), "success")
--                                   TriggerClientEvent('QBCore:Notify', id, Lang:t('success.received_cash',{id = tostring(src), cash = tostring(amount)}), "success")
--                                   TriggerClientEvent("payanimation", src)
--                                   TriggerEvent('qb-log:server:CreateLog', 'cashtransfer', 'Nakit Transfer', "lightgreen", "**Veren: "..xPlayer.PlayerData.name .. " (CitizenID: "..xPlayer.PlayerData.citizenid.." | Isim: ".. xPlayer.PlayerData.charinfo.firstname .. " " .. xPlayer.PlayerData.charinfo.lastname .." | ID: "..xPlayer.PlayerData.source..")**\n**Alan: "..xReciv.PlayerData.name .. " (CitizenID: "..xReciv.PlayerData.citizenid.." | Isim: ".. xReciv.PlayerData.charinfo.firstname .. " " .. xReciv.PlayerData.charinfo.lastname .." | ID: "..xReciv.PlayerData.source..")**\n**Miktar:** $"..amount)
--                               else
--                                   -- Return player cash
--                                   xPlayer.Functions.AddMoney('cash', amount)
--                                   TriggerClientEvent('QBCore:Notify', src, Lang:t('error.not_give'), "error")
--                               end
--                           else
--                               TriggerClientEvent('QBCore:Notify', src, Lang:t('error.not_enough'), "error")
--                           end
--                       else
--                           TriggerClientEvent('QBCore:Notify', src, Lang:t('error.invalid_amount'), "error")
--                       end
--                   else
--                       TriggerClientEvent('QBCore:Notify', src, Lang:t('error.too_far_away'), "error")
--                   end
--               else
--                   TriggerClientEvent('QBCore:Notify', src, Lang:t('error.dead'), "error")
--               end
--           else
--               TriggerClientEvent('QBCore:Notify', src, Lang:t('error.wrong_id'), "error")
--           end
--       else
--           TriggerClientEvent('QBCore:Notify', src, Lang:t('error.givecash'), "error")
--       end
--   end)
  
  RegisterNetEvent("payanimation", function()
      TriggerEvent('animations:client:EmoteCommandStart', {"id"})
  end)




QBCore.Functions.CreateUseableItem('kolejzarfi', function(source, item)
	local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.GetItemByName(item.name) then return end
	exports['um-idcard']:CreateMetaLicense(source, 'collegeofcoastv')
    Player.Functions.RemoveItem('kolejzarfi', 1)
end)

QBCore.Functions.CreateUseableItem('basinkartzarfi', function(source, item)
	local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.GetItemByName(item.name) then return end
	exports['um-idcard']:CreateMetaLicense(source, 'basinkarti')
    Player.Functions.RemoveItem('basinkartzarfi', 1)
end)

QBCore.Functions.CreateUseableItem('isletmeruhsatizarfi', function(source, item)
	local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.GetItemByName(item.name) then return end
	exports['um-idcard']:CreateMetaLicense(source, 'isletmeruhsati')
    Player.Functions.RemoveItem('isletmeruhsatizarfi', 1)
end)

RegisterServerEvent("melanom:abc")
AddEventHandler('melanom:abc', function()
    local Player = QBCore.Functions.GetPlayer(source)

    if Player then
        local hasItem = Player.Functions.GetItemByName('weapon_glock19gen4')
        
        if hasItem then
            Player.Functions.RemoveItem('weapon_glock19gen4', 1)
            Player.Functions.AddItem('barut', 3)
            Player.Functions.AddItem('kiriksusturucu', 1)
            Player.Functions.AddItem('kirikfener', 1)
            Player.Functions.AddItem('kiriksilahparcasi', 1)
            Player.Functions.AddItem('kevlar', 2)
            TriggerClientEvent('QBCore:Notify', source, 'craft basarili')
        else
            TriggerClientEvent('QBCore:Notify', source, 'weapon_glock19gen4 envanterinizde bulunmuyor.')
        end
    end
end)

QBCore.Commands.Add("pedver", "Pedver", {}, false, function(source, args)
    if args[1] == nil then
        TriggerClientEvent('QBCore:Notify', source, 'ID girmelisin')
    else
        if args[2] == nil then
            TriggerClientEvent('QBCore:Notify', source, 'Ped ismi girmelisin.')
        else
            TriggerClientEvent('pedver:amk', args[1], args[2])
        end
    end
end, "admin")


-- RegisterServerEvent('l1-base:rollJoint', function()
-- 	local src = source
--     local Player = QBCore.Functions.GetPlayer(src)

-- 	if Player.Functions.RemoveItem('weed', 1) then
-- 		if Player.Functions.RemoveItem('rolling_paper', 1) then
-- 			if Player.Functions.AddItem('joint', 1) then
-- 				TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['marijuana'], "remove")
-- 				TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['rolling_paper'], "remove")
-- 				TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['joint'], "add")
-- 				TriggerClientEvent('QBCore:Notify', src, Lang:t("success.joint"), "success")
-- 			else
-- 				Player.Functions.AddItem('weed', 1)
-- 				Player.Functions.AddItem('rolling_paper', 1)
-- 			end
-- 		else
-- 			Player.Functions.AddItem('weed', 1)
-- 		end
-- 	else
--         TriggerClientEvent('QBCore:Notify', src,  "Yeterli esrarınız yok!", "error")
-- 	end
-- end)

QBCore.Functions.CreateUseableItem("rolling_paper", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

	if Player.Functions.RemoveItem('weed', 1) then
		if Player.Functions.RemoveItem('rolling_paper', 1) then
			if Player.Functions.AddItem('joint', 1) then
				TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['weed'], "remove")
				TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['rolling_paper'], "remove")
				TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['joint'], "add")
			else
				Player.Functions.AddItem('weed', 1)
				Player.Functions.AddItem('rolling_paper', 1)
			end
		else
			Player.Functions.AddItem('weed', 1)
		end
    end
end)
