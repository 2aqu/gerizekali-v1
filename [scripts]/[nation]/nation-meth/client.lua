local QBCore = exports['qb-core']:GetCoreObject()
local CurrentCops = 0
local zonecheck = false

RegisterNetEvent('police:SetCopCount', function(amount)
    CurrentCops = amount
end)

DrawText3D = function(x, y, z, text)
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end

local Keys = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
	["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
	["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
	["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

local started = false
local progress = 0
local pause = false
local quality = 0

RegisterNetEvent('qb-methcar:stop')
AddEventHandler('qb-methcar:stop', function()
	LastVehicle = QBCore.Functions.GetClosestVehicle()
	started = false
	QBCore.Functions.Notify("Pişirme Durdu...", "error")
	FreezeEntityPosition(LastVehicle, false)
end)

RegisterNetEvent('qb-methcar:notify')
AddEventHandler('qb-methcar:notify', function(message)
	QBCore.Functions.Notify(message)
end)

RegisterNetEvent('qb-methcar:startprod')
AddEventHandler('qb-methcar:startprod', function()
	CurrentVehicle = GetVehiclePedIsUsing(PlayerPedId(-1))
	started = true
	FreezeEntityPosition(CurrentVehicle, true)
	QBCore.Functions.Notify("Pişirme Başladı !", "success")	
	SetPedIntoVehicle((PlayerPedId()), CurrentVehicle, 3)
	SetVehicleDoorOpen(CurrentVehicle, 2)
end)

RegisterNetEvent('qb-methcar:smoke')
AddEventHandler('qb-methcar:smoke', function(posx, posy, posz, bool)
	if bool == 'a' then
		if not HasNamedPtfxAssetLoaded("core") then
			RequestNamedPtfxAsset("core")
			while not HasNamedPtfxAssetLoaded("core") do
				Citizen.Wait(1)
			end
		end
		SetPtfxAssetNextCall("core")
		local smoke = StartParticleFxLoopedAtCoord("exp_grd_flare", posx, posy, posz + 1.7, 0.0, 0.0, 0.0, 5.0, false, false, false, false)
		SetParticleFxLoopedAlpha(smoke, 0.9)
		Citizen.Wait(60000)
		StopParticleFxLooped(smoke, 0)
	else
		StopParticleFxLooped(smoke, 0)
	end
end)

-------------------------------------------------------EVENTS NEGATIVE
RegisterNetEvent('qb-methcar:boom', function()
	playerPed = (PlayerPedId())
	local pos = GetEntityCoords((PlayerPedId()))
	LastVehicle = QBCore.Functions.GetClosestVehicle()
	pause = false
	Citizen.Wait(500)
	started = false
	Citizen.Wait(500)
	CurrentVehicle = GetVehiclePedIsUsing(PlayerPedId(-1))
	TriggerServerEvent('qb-methcar:blow', pos.x, pos.y, pos.z)
	TriggerEvent('qb-methcar:stop')
	FreezeEntityPosition(LastVehicle, false)
    TriggerEvent("Tgiann-PolisBildirim:BildirimGonder", "Meth Dumanı!", false)
end)

RegisterNetEvent('qb-methcar:blowup')
AddEventHandler('qb-methcar:blowup', function(posx, posy, posz)
	AddExplosion(posx, posy, posz + 2, 15, 20.0, true, false, 1.0, true)
	if not HasNamedPtfxAssetLoaded("core") then
		RequestNamedPtfxAsset("core")
		while not HasNamedPtfxAssetLoaded("core") do
			Citizen.Wait(1)
		end
	end
	SetPtfxAssetNextCall("core")
	local fire = StartParticleFxLoopedAtCoord("ent_ray_heli_aprtmnt_l_fire", posx, posy, posz-0.8 , 0.0, 0.0, 0.0, 0.8, false, false, false, false)
	Citizen.Wait(6000)
	StopParticleFxLooped(fire, 0)	
end)

RegisterNetEvent('qb-methcar:drugged')
AddEventHandler('qb-methcar:drugged', function()
	local pos = GetEntityCoords((PlayerPedId()))
	SetTimecycleModifier("drug_drive_blend01")
	SetPedMotionBlur((PlayerPedId()), true)
	SetPedMovementClipset((PlayerPedId()), "MOVE_M@DRUNK@SLIGHTLYDRUNK", true)
	SetPedIsDrunk((PlayerPedId()), true)
	quality = quality - 3
	pause = false
	Citizen.Wait(90000)
	ClearTimecycleModifier()
	TriggerServerEvent('qb-methcar:make', pos.x,pos.y,pos.z)
end)

RegisterNetEvent('qb-methcar:q-1police', function(data)
	local pos = GetEntityCoords((PlayerPedId()))
	QBCore.Functions.Notify(data.message, "error")
	quality = quality - 1
	pause = false
	TriggerServerEvent('qb-methcar:make', pos.x,pos.y,pos.z)
end)


RegisterNetEvent('qb-methcar:q-1', function(data)
	local pos = GetEntityCoords((PlayerPedId()))
	QBCore.Functions.Notify(data.message, "error")
	quality = quality - 1
	pause = false
	TriggerServerEvent('qb-methcar:make', pos.x,pos.y,pos.z)
end)

RegisterNetEvent('qb-methcar:q-3', function(data)
	local pos = GetEntityCoords((PlayerPedId()))
	QBCore.Functions.Notify(data.message, "error")
	quality = quality - 3
	pause = false
	TriggerServerEvent('qb-methcar:make', pos.x,pos.y,pos.z)
end)

RegisterNetEvent('qb-methcar:q-5', function(data)
	local pos = GetEntityCoords((PlayerPedId()))
	QBCore.Functions.Notify(data.message, "error")
	quality = quality - 5
	pause = false
	TriggerServerEvent('qb-methcar:make', pos.x,pos.y,pos.z)
end)

-------------------------------------------------------EVENTS POSITIVE
RegisterNetEvent('qb-methcar:q2', function(data)
	local pos = GetEntityCoords((PlayerPedId()))
	QBCore.Functions.Notify(data.message, "success")
	quality = quality + 2
	pause = false
	TriggerServerEvent('qb-methcar:make', pos.x,pos.y,pos.z)
end)

RegisterNetEvent('qb-methcar:q3', function(data)
	local pos = GetEntityCoords((PlayerPedId()))
	QBCore.Functions.Notify(data.message, "success")
	quality = quality + 3
	pause = false
	TriggerServerEvent('qb-methcar:make', pos.x,pos.y,pos.z)
end)

RegisterNetEvent('qb-methcar:q5', function(data)
	local pos = GetEntityCoords((PlayerPedId()))
	QBCore.Functions.Notify(data.message, "success")
	quality = quality + 5
	pause = false
	TriggerServerEvent('qb-methcar:make', pos.x,pos.y,pos.z)
end)

RegisterNetEvent('qb-methcar:gasmask', function(data)
	local pos = GetEntityCoords((PlayerPedId()))
	QBCore.Functions.Notify(data.message, "success")
	SetPedPropIndex(playerPed, 1, 26, 7, true)
	quality = quality + 2
	pause = false
	TriggerServerEvent('qb-methcar:make', pos.x,pos.y,pos.z)
end)

-------------------------------------------------------THREAD
Citizen.CreateThread(function(data)
	while true do
		Citizen.Wait(3)		
		playerPed = (PlayerPedId())
		local pos = GetEntityCoords((PlayerPedId()))
		if IsPedInAnyVehicle(playerPed) then	
			CurrentVehicle = GetVehiclePedIsUsing(PlayerPedId())
			car = GetVehiclePedIsIn(playerPed, false)
			LastCar = GetVehiclePedIsUsing(playerPed)	
			local model = GetEntityModel(CurrentVehicle)
			local modelName = GetDisplayNameFromVehicleModel(model)			
			if modelName == 'JOURNEY' and car then				
					if GetPedInVehicleSeat(car, -0) == playerPed then
							DrawText3D(pos.x, pos.y, pos.z, '~g~E~w~ Meth Pisir')
							if IsControlJustReleased(0, Keys['E']) then
                                if zonecheck then
                                    if CurrentCops >= 0 then -- POLIS SAYISI AYARLAMA
                                        if IsVehicleSeatFree(CurrentVehicle, 3) then
                                            TriggerServerEvent('qb-methcar:start')
                                            TriggerServerEvent('qb-methcar:make', pos.x,pos.y,pos.z)
                                            progress = 0
                                            pause = false
                                            quality = 0		
                                        else
                                            QBCore.Functions.Notify('Mutfağında biri mi var ?!')
                                        end
                                    else
                                        QBCore.Functions.Notify('Şuanda yeteri kadar polis yok!')
                                    end
                                else
                                    QBCore.Functions.Notify('Bu alanda meth yapamazsınız!')
                                end
							end
					end		
			end			
		else	
				if started then
					started = false
					TriggerEvent('qb-methcar:stop')
					FreezeEntityPosition(LastCar,false)
				end
		end		
		if started == true then			
			if progress < 96 then
				Citizen.Wait(500)
				-- TriggerServerEvent('qb-methcar:make', pos.x,pos.y,pos.z)
				if not pause and IsPedInAnyVehicle(playerPed) then
					progress = progress +  1
					quality = quality + 1
					QBCore.Functions.Notify('Meth üretimi: ' .. progress .. '%')
					Citizen.Wait(9000)
				end
                Citizen.CreateThread(function()
                    while true do
                        Citizen.Wait(1000)
                            if IsPedInAnyVehicle(GetPlayerPed(-1)) then
                            else
                                if started then
                                    started = true
                                    displayed = false
                                    FreezeEntityPosition(LastCar,false)
                                end		
                            end
                        end
                    end)
				--
				--   EVENT 1
				--
				if progress > 9 and progress < 11 then
					pause = true
					exports['qb-menu']:openMenu({
                        {
                            header = "Gas tüpü sızdırıyor?",
                            txt = "Cevabını seç: " .. progress .. "%",
                            isMenuHeader = true,
                        },
                        {
                            header = "🔴 Bantla",
                            params = {
                                event = "qb-methcar:q-3",
                                args = {
                                    message = "Pek bir işe yaramadı?!"
                                }
                            }
                        },
                        {
                            header = "🔴 Bırak öyle kalsın!",
                            params = {
                                event = "qb-methcar:boom"
                            }
                        },
                        {
                            header = "🔴 Tüpü değiş",
                            params = {
                                event = "qb-methcar:q5",
                                args = {
                                    message = "Değiştirmek Doğru Çözüm!"
                                }
                            }
                        },
                    })
                end
                --
                --   EVENT 2
                --
                if progress > 19 and progress < 21 then
                    pause = true
                    exports['qb-menu']:openMenu({
                        {
                            header = "Yere asethon döktün?",
                            txt = "Cevabını seç: " .. progress .. "%",
                            isMenuHeader = true,
                        },
                        {
                            header = "🔴 Camı aç",
                            params = {
                                event = "qb-methcar:q-1police",
                                args = {
                                    message = "Asethon kokusu yüzünden ihbar edildin"
                                }
                            }
                        },
                        {
                            header = "🔴 Hiç bir şey yapma..",
                            params = {
                                event = "qb-methcar:drugged"
                            }
                        },
                        {
                            header = "🔴 Gaz maskesi tak",
                            params = {
                                event = "qb-methcar:gasmask",
                                args = {
                                    message = "Doğru Seçim"
                                }
                            }
                        },
                    })
                end
                --
                --   EVENT 3
                --
                if progress > 29 and progress < 31 then
                    pause = true
                    exports['qb-menu']:openMenu({
                        {
                            header = "Meth çok cabuk katılaştı?",
                            txt = "Cevabını seç: " .. progress .. "%",
                            isMenuHeader = true,
                        },
                        {
                            header = "🔴 Isıyı artır",
                            params = {
                                event = "qb-methcar:q5",
                                args = {
                                    message = "Yüksek ısı basıncı dengeledi!"
                                }
                            }
                        },
                        {
                            header = "🔴 Basıncı artır",
                            params = {
                                event = "qb-methcar:q-3",
                                args = {
                                    message = "Bir az mantıklı ama yanlış seçim.."
                                }
                            }
                        },
                        {
                            header = "🔴 Basıncı düşür",
                            params = {
                                event = "qb-methcar:q-5",
                                args = {
                                    message = "Yapabiliceğin en kötü seçimi yaptın!"
                                }
                            }
                        },
                    })
                end
                --
                --   EVENT 4
                --
                if progress > 39 and progress < 41 then
                    pause = true
                    exports['qb-menu']:openMenu({
                        {
                            header = "Çok fazla asethon ekledin?",
                            txt = "Cevabını seç: " .. progress .. "%",
                            isMenuHeader = true,
                        },
                        {
                            header = "🔴 Bir şey yapma..",
                            params = {
                                event = "qb-methcar:q-5",
                                args = {
                                    message = "Meth asethon kokuyor"
                                }
                            }
                        },
                        {
                            header = "🔴 Asethonu azaltmaya çalış",
                            params = {
                                event = "qb-methcar:drugged"
                            }
                        },
                        {
                            header = "🔴 lithium ekle",
                            params = {
                                event = "qb-methcar:q5",
                                args = {
                                    message = "Akıllıca"
                                }
                            }
                        },
                    })
                end
                --
                --   EVENT 5
                --
                if progress > 49 and progress < 51 then
                    pause = true
                    exports['qb-menu']:openMenu({
                        {
                            header = "Burda mavi renkli bir şeyler var",
                            txt = "Cevabını seç: " .. progress .. "%",
                            isMenuHeader = true,
                        },
                        {
                            header = "🔴 Methe ekle!",
                            params = {
                                event = "qb-methcar:q5",
                                args = {
                                    message = "Akıllıca insanlar bunu beğencek"
                                }
                            }
                        },
                        {
                            header = "🔴 Bırak orda kalsın",
                            params = {
                                event = "qb-methcar:q-1",
                                args = {
                                    message = "Hiç yaratıcılığn yok mu senin ?"
                                }
                            }
                        },
                    })
                end
                --
                --   EVENT 6
                --
                if progress > 59 and progress < 61 then
                    pause = true
                    exports['qb-menu']:openMenu({
                        {
                            header = "Filitre tıkandı?",
                            txt = "Cevabını seç: " .. progress .. "%",
                            isMenuHeader = true,
                        },
                        {
                            header = "🔴 Filitreyi hava ile temizle",
                            params = {
                                event = "qb-methcar:q-5",
                                args = {
                                    message = "Methi kirlettin!"
                                }
                            }
                        },
                        {
                            header = "🔴 Yeni filitre tak!",
                            params = {
                                event = "qb-methcar:q5",
                                args = {
                                    message = "Yeni filitre takmak en mantıklısı!"
                                }
                            }
                        },
                        {
                            header = "🔴 Fırça ile temizle",
                            params = {
                                event = "qb-methcar:q-1",
                                args = {
                                    message = "Pek faydası olmadı"
                                }
                            }
                        },
                    })
                end
                --
                --   EVENT 7
                --
                if progress > 69 and progress < 71 then
                    pause = true
                    exports['qb-menu']:openMenu({
                        {
                            header = "Yere asethon döktün?",
                            txt = "Cevabını seç: " .. progress .. "%",
                            isMenuHeader = true,
                        },
                        {
                            header = "🔴 Hiç bir şey yapma..",
                            params = {
                                event = "qb-methcar:drugged"
                            }
                        },
                        {
                            header = "🔴 Gaz maskesi tak",
                            params = {
                                event = "qb-methcar:gasmask",
                                args = {
                                    message = "Güzel seçim"
                                }
                            }
                        },
                        {
                            header = "🔴 Camı aç",
                            params = {
                                event = "qb-methcar:q-1police",
                                args = {
                                    message = "Koku yüzünden ihbar edildin!"
                                }
                            }
                        },
                    })
                end
                --
                --   EVENT 8
                --
                if progress > 79 and progress < 81 then
                    pause = true
                    exports['qb-menu']:openMenu({
                        {
                            header = "Gas tüpü sızdırıyor?",
                            txt = "Cevabını seç: " .. progress .. "%",
                            isMenuHeader = true,
                        },
                        {
                            header = "🔴 Bırak öyle kalsın!",
                            params = {
                                event = "qb-methcar:boom"
                            }
                        },
                        {
                            header = "🔴 Bantla",
                            params = {
                                event = "qb-methcar:q-3",
                                args = {
                                    message = "Sanırım düzelttin?!"
                                }
                            }
                        },
                        {
                            header = "🔴 Tüpü değiş",
                            params = {
                                event = "qb-methcar:q5",
                                args = {
                                    message = "Değiştirmek en doğrusu!"
                                }
                            }
                        },
                    })
                end
                --
                --   EVENT 9
                --
                if progress > 89 and progress < 91 then
                    pause = true
                    exports['qb-menu']:openMenu({
                        {
                            header = "Çok pis kakan geldi?",
                            txt = "Pick your answer below. Progress: " .. progress .. "%",
                            isMenuHeader = true,
                        },
                        {
                            header = "🔴 İçinde tut!",
                            params = {
                                event = "qb-methcar:q5",
                                args = {
                                    message = "İyi bir pişirici her zaman içinde tutar!"
                                }
                            }
                        },
                        {
                            header = "🔴 Dışarıya çık ve sıç!",
                            params = {
                                event = "qb-methcar:q-1police",
                                args = {
                                    message = "Biri seni sıçarken gördü ve ihbar etti!"
                                }
                            }
                        },
                        {
                            header = "🔴 Aracın içine sıç!",
                            params = {
                                event = "qb-methcar:q-5",
                                args = {
                                    message = "Her yeri bok ettin aptal herif!"
                                }
                            }
                        },
                    })
				end
			else
				TriggerEvent('qb-methcar:stop')
				progress = 100
				QBCore.Functions.Notify('Meth Üretimi: ' .. progress .. '%')
				QBCore.Functions.Notify("Tamamlandı.", "success")
				TriggerServerEvent('qb-methcar:finish', quality)
				SetPedPropIndex(playerPed, 1, 0, 0, true)
				LastVehicle = QBCore.Functions.GetClosestVehicle()
				FreezeEntityPosition(LastVehicle, false)
			end				
		end		
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1000)
			if IsPedInAnyVehicle((PlayerPedId())) then
			else
				if started then
					CurrentVehicle = GetVehiclePedIsUsing(PlayerPedId(-1))
					started = false
					TriggerEvent('qb-methcar:stop')
					SetPedPropIndex(playerPed, 1, 0, 0, true)
					FreezeEntityPosition(CurrentVehicle, false)
				end		
			end
	end
end)

local methzone = PolyZone:Create({
    vector2(3071.6572265625, 1652.9714355469),
    vector2(1916.2064208984, 1805.4049072266),
    vector2(1088.0522460938, 2022.3970947266),
    vector2(-611.30474853516, 2639.1130371094),
    vector2(-2753.0661621094, 3059.3010253906),
    vector2(-2367.1496582031, 4366.7705078125),
    vector2(-1373.1674804688, 5353.6650390625),
    vector2(-981.19555664062, 6210.4760742188),
    vector2(253.94378662109, 7439.1127929688),
    vector2(2180.3818359375, 6717.8168945312),
    vector2(3381.6735839844, 6078.818359375),
    vector2(3674.5380859375, 5640.3588867188),
    vector2(4127.9204101562, 4494.7846679688),
    vector2(4071.5014648438, 4203.8735351562),
    vector2(3968.3967285156, 3585.4758300781),
    vector2(3872.4296875, 3264.9777832031),
    vector2(3559.4506835938, 2520.130859375)
  }, {
    name="methaddd",
    debugPoly = false,
    minZ = 1.8323631286621,
    maxZ = 2630.486343383789
})

methzone:onPlayerInOut(function(isPointInside)
    if isPointInside then
        zonecheck = true
    else
        zonecheck = false
    end
end)