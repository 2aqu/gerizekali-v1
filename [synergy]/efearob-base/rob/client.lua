local clientcooldown = GetGameTimer()
isdead = false
PlayerData = {}
soyabilir = true

QBCore = exports['qb-core']:GetCoreObject()

AddEventHandler('arob:playerdead', function(dead)
	isdead = dead
	if isdead then
		soyabilir = false
	else
		Wait(2500)
		soyabilir = true
	end
end)

RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
	PlayerData = QBCore.Functions.GetPlayerData()
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate')
AddEventHandler('QBCore:Client:OnJobUpdate', function(job)
	PlayerData.job = job
end)

function IsAbleToSteal(targetSID, err)
	local id = GetPlayerFromServerId(targetSID)
	local ped = GetPlayerPed(id)
	if IsEntityPlayingAnim(ped, "missminuteman_1ig_2", "handsup_base", 3) then
		err(false)
	else
		err(true)
	end
end

RegisterNetEvent('arob-thieffv2:SteelMoney')
AddEventHandler('arob-thieffv2:SteelMoney', function(targetId)
	local ped = PlayerPedId()
	if (IsPedOnFoot(ped) or PlayerData.job.name == "police") and not isdead then
		QBCore.Functions.TriggerCallback('arob:user-info', function(data)
			if IsPedArmed(ped, 7) then
				IsAbleToSteal(targetId, function(err)
					if not err or data.is_dead or PlayerData.job.name == "police" then
						QBCore.Functions.Progressbar("yarali_ust_arama", "Kişinin Üstünü Arıyorsun", 12000, false, true,
							{ -- p1: menu name, p2: yazı, p3: ölü iken kullan, p4:iptal edilebilir
								disableMovement = true,
								disableCarMovement = true,
								disableMouse = false,
								disableCombat = true,
							}, {
								animDict = "missexile3",
								anim = "ex03_dingy_search_case_base_michael",
								flags = 49,
							}, {}, {}, function() -- Done
								TriggerServerEvent("arob-thieffv2:server:stellMoney", targetId, QBCore.Key)
							end, function() -- Cancel
							end)
					else
						QBCore.Functions.Notify("Oyuncunun Elleri Havada Değil")
					end
				end)
			else
				QBCore.Functions.Notify("Elinde Silah Olması Lazım!")
			end
		end, targetId)
	else
		QBCore.Functions.Notify("Yerde yatarken veya ölü iken bu komutu kullanamazsın!")
	end
end)

Citizen.CreateThread(function()
	RegisterKeyMapping('+searchPlayer', 'Üst Ara', 'keyboard', 'g')
end)

RegisterCommand('+searchPlayer', function()
	if not IsPedInAnyVehicle(PlayerPedId()) and not isdead and soyabilir then
		local ped = PlayerPedId()
		local target, distance = QBCore.Functions.GetClosestPlayer()
		local target_id = GetPlayerServerId(target)
		local polisemesaj = math.random(1, 3)

		-- Kelepçeli Adamın Üstünü Arama
		if GetGameTimer() > clientcooldown then
			print("1\n")
			if QBCore.Functions.GetPlayerData().metadata["isdead"] == false and QBCore.Functions.GetPlayerData().metadata["inlaststand"] == false then
				print("2\n")
				if IsPedOnFoot(ped) then
					print("3\n")
					clientcooldown = GetGameTimer() + 3000
					if target ~= -1 and distance <= 2.0 then
						print("4\n")
						QBCore.Functions.TriggerCallback('efearob:robFetch', function(data)
							PlayerData = QBCore.Functions.GetPlayerData() --temporary
							if PlayerData.job ~= nil and PlayerData.job.name ~= 'unemployed' and QBCore.Functions.GetPlayerData().job.type == "leo" then
				
								if data.is_dead == true then
									print("5\n")
									QBCore.Functions.Progressbar("yarali_ust_arama", "Yaralının Üstünü Arıyorsun", 12000,
										false, true,
										{ -- p1: menu name, p2: yazı, p3: ölü iken kullan, p4:iptal edilebilir
											disableMovement = true,
											disableCarMovement = true,
											disableMouse = false,
											disableCombat = true,
										}, {
											animDict = "missexile3",
											anim = "ex03_dingy_search_case_base_michael",
											flags = 49,
										}, {}, {}, function() -- Done
											TriggerServerEvent("arob:ust-ara-bildirim-polis", target_id)
											QBCore.Functions.Notify("Kişinin üzerinde " .. data.nakit .. "$ var.")
											QBCore.Functions.Notify('Birisinin Üstünü Arıyorsun!')
											TriggerServerEvent("inventory:server:OpenInventory", "otherplayer", target_id)

											TriggerServerEvent("arob-thiefuser-soygun:discord-log-polis", target_id,
												GetPlayerServerId(PlayerId()))
										end, function() -- Cancel
										end)
								else
									print("4b\n")
									print(1)
									TriggerServerEvent("arob:ust-ara-bildirim-polis", target_id)
									QBCore.Functions.Notify("Kişinin üzerinde " .. data.nakit .. "$ var.")
									QBCore.Functions.Notify('Birisinin Üstünü Arıyorsun!')
									TriggerServerEvent("inventory:server:OpenInventory", "otherplayer", target_id)

									TriggerServerEvent("arob-thiefuser-soygun:discord-log-polis", target_id,
										GetPlayerServerId(PlayerId()))
								end
							elseif IsPedArmed(ped, 7) and data.is_dead == false and (data.kelepce == true or data.pkelepce == true) then
								print("4c\n")
								TriggerServerEvent("arob:ust-ara-bildirim", target_id)
								QBCore.Functions.Notify("Kişinin üzerinde " .. data.nakit .. "$ var.")
								QBCore.Functions.Notify('Birisinin Üstünü Arıyorsun!')
								TriggerServerEvent("inventory:server:OpenInventory", "otherplayer", target_id)
								-- TriggerServerEvent("gener4l:envanterkapat", target_id)

								TriggerServerEvent("arob-thiefuser-soygun:discord-log", target_id,
									GetPlayerServerId(PlayerId()))
								--if polisemesaj == 1 then

								--end

								-- Elleri Havada Adamın Üstünü Arama
							elseif IsPedArmed(ped, 7) and data.is_dead == false then
								print("4d\n")
								IsAbleToSteal(target_id, function(err)
									if (not err) then
										TriggerServerEvent("arob:ust-ara-bildirim", target_id)
										QBCore.Functions.Notify("Kişinin üzerinde " .. data.nakit .. "$ var.")
										QBCore.Functions.Notify('Birisinin Üstünü Arıyorsun!')

										TriggerServerEvent("inventory:server:OpenInventory", "otherplayer", target_id)

										TriggerServerEvent("arob-thiefuser-soygun:discord-log", target_id,
											GetPlayerServerId(PlayerId()))
									else
										QBCore.Functions.Notify("Hedefin Elleri Havada Değil")
									end
								end)

								-- Ölü Adamın Üstünü Arama
							elseif data.is_dead == true then
								--print("4e\n")
								--TriggerServerEvent("arob:ust-ara-bildirim", target_id)
								--TriggerServerEvent("arob-thiefuser-soygun:discord-log", target_id,
								--	GetPlayerServerId(PlayerId()))
								--local playerPed = PlayerPedId()
								--local playerCoords = GetEntityCoords(playerPed)
--
								--local searchTime = 20000
--
								--QBCore.Functions.Progressbar("yarali_ust_arama", "Yaralının Üstünü Arıyorsun", 12000,
								--	false, true, { -- p1: menu name, p2: yazı, p3: ölü iken kullan, p4:iptal edilebilir
								--		disableMovement = true,
								--		disableCarMovement = true,
								--		disableMouse = false,
								--		disableCombat = true,
								--	}, {
								--		animDict = "missexile3",
								--		anim = "ex03_dingy_search_case_base_michael",
								--		flags = 49,
								--	}, {}, {}, function() -- Done
								--		TriggerServerEvent("inventory:server:OpenInventory", "otherplayer", target_id)
								--		-- TriggerServerEvent("gener4l:envanterkapat", target_id)
								--		-- Soygun Bildirim
								--	end, function() -- Cancel
								--end)
							end
						end, target_id)
					elseif distance < 20 and distance > 2.0 then
						QBCore.Functions.Notify("Bu işlem için çok uzaktasın!", 'error')
					else
						QBCore.Functions.Notify("Yakında oyuncu bulunamadı", 'error')
					end
				else
					QBCore.Functions.Notify('Yakınlarda Kimse Yok', 'error')
				end
			end
		else
			QBCore.Functions.Notify('Bukadar Seri Bu Komutu Kullanamazsın!', 'error')
		end
	end
end, false)
