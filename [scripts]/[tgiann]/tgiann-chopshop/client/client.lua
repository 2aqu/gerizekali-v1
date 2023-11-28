tgiCore = nil
CreateThread(function()
    while tgiCore == nil do
		tgiCore = tgiCoreExports:getCore()
        Wait(200)
    end
end)

local yeniProp, arac = nil, nil
local aracParcalamaAktif, islemDevamEdiyor, clientcooldown = false, false, config.startCoolDownPlayerJoinig
local kapiSayisi, islem = 0, 0
local parcalamaNokta = vector3(-557.64, -1695.82, 19.16)
local arkaKapi = false

CreateThread(function ()
	while true do
		local time = 3000
		if aracParcalamaAktif then
			local playerPed = PlayerPedId()
			local playerKordinat = GetEntityCoords(playerPed)
			local mesafe = #(playerKordinat - vector3(aracParcaNokta[islem]["kordinat"]["x"], aracParcaNokta[islem]["kordinat"]["y"], aracParcaNokta[islem]["kordinat"]["z"]))
			if mesafe < 18 then
				time = 1
				DrawMarker(2, aracParcaNokta[islem]["kordinat"]["x"], aracParcaNokta[islem]["kordinat"]["y"], aracParcaNokta[islem]["kordinat"]["z"]-0.5, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 0.3, 0.3, 0.3, 255, 0, 0, 100, false, true, 2, false, false, false, false)
				if mesafe < 2 and not islemDevamEdiyor then
					tgiCore.DrawText3D(aracParcaNokta[islem]["kordinat"]["x"], aracParcaNokta[islem]["kordinat"]["y"], aracParcaNokta[islem]["kordinat"]["z"]-0.2, "~w~~g~[E]~w~ " .. aracParcaNokta[islem]["marker-label"])
					if IsControlJustPressed(1, 38) then
						islemDevamEdiyor = true
						SetEntityHeading(playerPed, aracParcaNokta[islem]["kordinat"]["h"])

						if aracParcaNokta[islem]["prop"] == "sil" and aracParcaNokta[islem]["prop"] ~= "son" then 
							DeleteEntity(yeniProp)	
							if aracParcaNokta[islem]["prop"] == "sil" then
								yeniProp = CreateObject(`prop_cs_cardbox_01`, aracParcaNokta[islem]["kordinat"]["x"], aracParcaNokta[islem]["kordinat"]["y"], aracParcaNokta[islem]["kordinat"]["z"], true)
								SetEntityCollision(yeniProp, false, false)
								PlaceObjectOnGroundProperly(yeniProp)
								if DoesEntityExist(yeniProp) then
									AttachEntityToEntity(yeniProp, playerPed, GetPedBoneIndex(playerPed, 28422), 0.0, -0.03, 0.0, 5.0, 0.0, 0.0, true, true, false, true, 1, true)
									ClearPedTasks(playerPed)
								end	
							end
						end

						if aracParcaNokta[islem]["animasyon"]["seneryo"] then
							TaskStartScenarioInPlace(playerPed, aracParcaNokta[islem]["animasyon"]["seneryo-anim"], 0, true)
						else
							RequestAnimDictScript(aracParcaNokta[islem]["animasyon"]["anim-disc"], function()
								TaskPlayAnim(playerPed, aracParcaNokta[islem]["animasyon"]["anim-disc"], aracParcaNokta[islem]["animasyon"]["anim-name"], 8.0, 8.0, -1, 33, 0, 0, 0, 0)
							end)
						end

						if aracParcaNokta[islem]["parca-native-no"] then
							SetVehicleDoorOpen(arac, aracParcaNokta[islem]["parca-native-no"], false, false)
						end

						tgiCore.Progressbar(aracParcaNokta[islem]["kod-isim"], aracParcaNokta[islem]["progressbar-label"], aracParcaNokta[islem]["time"], false, true, {
							disableMovement = true,
							disableCarMovement = true,
							disableMouse = false,
							disableCombat = true,
						}, {}, {}, {}, function() -- Done
							ClearPedTasksImmediately(playerPed)
							if aracParcaNokta[islem]["prop"] ~= "sil" and aracParcaNokta[islem]["prop"] ~= "son" then
								yeniProp = CreateObject(GetHashKey(aracParcaNokta[islem]["prop"]), aracParcaNokta[islem]["kordinat"]["x"], aracParcaNokta[islem]["kordinat"]["y"], aracParcaNokta[islem]["kordinat"]["z"], true)
								SetEntityCollision(yeniProp, false, false)
								PlaceObjectOnGroundProperly(yeniProp)
								if DoesEntityExist(yeniProp) then
									AttachEntityToEntity(yeniProp, playerPed, GetPedBoneIndex(playerPed, aracParcaNokta[islem]["entity-attach"]["bone"]), aracParcaNokta[islem]["entity-attach"]["xPos"], aracParcaNokta[islem]["entity-attach"]["yPos"], aracParcaNokta[islem]["entity-attach"]["zPos"], aracParcaNokta[islem]["entity-attach"]["xRot"], aracParcaNokta[islem]["entity-attach"]["yRot"], aracParcaNokta[islem]["entity-attach"]["zRot"], true, true, false, true, 1, true)
									ClearPedTasks(PlayerPedId())
								end

								RequestAnimDictScript(aracParcaNokta[islem]["prop-anim"]["prop-dics"], function()
									TaskPlayAnim(playerPed, aracParcaNokta[islem]["prop-anim"]["prop-dics"], aracParcaNokta[islem]["prop-anim"]["prop-name"], 8.0, 8.0, -1, 50, 0, false, false, false)
								end)	
							elseif aracParcaNokta[islem]["prop"] == "sil" then
								DeleteEntity(yeniProp)	
							end

							if aracParcaNokta[islem]["parca-native-no"] then
								SetVehicleDoorBroken(arac, aracParcaNokta[islem]["parca-native-no"], true)
							end
							
							if islem == #aracParcaNokta then
								aracParcalamaAktif = false
								FinishedChopping()
							elseif islem == 3 then
								if math.random(1,100) < config.policeAlertPercent then
									policeAlertFunction()
								end
							end
							islemDevamEdiyor = false
							islem = islem + 1
							if not arkaKapi and islem == 4 then
								islem = islem + 4
							end
						end, function() -- Cancel
							islemDevamEdiyor = false
							ClearPedTasksImmediately(playerPed)
							if IsEntityAttachedToEntity(yeniProp, playerPed) then
								DeleteEntity(yeniProp)
								ClearPedSecondaryTask(playerPed)
							end
							
						end)

					end
				end
			
			elseif aracParcalamaAktif then 
				aracParcalamaAktif = false
				if IsEntityAttachedToEntity(yeniProp, playerPed) then
					DeleteEntity(yeniProp)
					ClearPedSecondaryTask(playerPed)
				end
				DeleteEntity(arac)
				tgiCore.notif("Parçalama Bölgesinden Ayrıldın!", "error")
			end
		end
		Wait(time)
	end
end)

CreateThread(function()
	if config.ShowBlip then
		local blip = AddBlipForCoord(parcalamaNokta.x+50, parcalamaNokta.y-40, parcalamaNokta.z)
		SetBlipSprite(blip, 380)
		SetBlipScale(blip, 0.5)
		SetBlipColour(blip, 6)
		SetBlipAsShortRange(blip, true)
		BeginTextCommandSetBlipName('STRING')
		AddTextComponentSubstringPlayerName(config.BlipName)
		EndTextCommandSetBlipName(blip)
	end

	RequestModel(config.NPCHash)
	while not HasModelLoaded(config.NPCHash) do
		Wait(1)
	end

	stanley = CreatePed(1, config.NPCHash, config.NPCShop.x, config.NPCShop.y, config.NPCShop.z, config.NPCShop.w, false, true)
	SetBlockingOfNonTemporaryEvents(stanley, true)
	SetPedDiesWhenInjured(stanley, false)
	SetPedCanPlayAmbientAnims(stanley, true)
	SetPedCanRagdollFromPlayerImpact(stanley, false)
	SetEntityInvincible(stanley, true)
	FreezeEntityPosition(stanley, true)
end)

CreateThread(function ()
	while true do
		local time = 1000
		local playerPed = PlayerPedId()
		local playerKordinat = GetEntityCoords(playerPed)
		local mesafe = #(playerKordinat - vector3(parcalamaNokta.x, parcalamaNokta.y, parcalamaNokta.z))

		if not aracParcalamaAktif and mesafe then 
			if IsPedSittingInAnyVehicle(PlayerPedId()) then
				if mesafe < 25.0 then 
					time = 1
					DrawMarker(20, parcalamaNokta.x, parcalamaNokta.y, parcalamaNokta.z, 0, 0, 0, 0, 0, 0, 0.5, 0.5, 0.5, 255, 0, 0, 155, 0, 0, 2, 0, 0, 0, 0)
					if mesafe < 1.2 then 
						tgiCore.DrawText3D(parcalamaNokta.x, parcalamaNokta.y, parcalamaNokta.z - 0.1, "~w~~g~[E]~w~ Aracı Parçala")
						if IsControlJustPressed(0, 46) and not clientcooldown then
							if tgiCoreExports:getPoliceCount() >= config.minPolice then
								tgiCore.cbFunction('tgiann-aracparcalama:check-cd', function(cd)
									if cd then
										StartChopThisCar()
									else
										tgiCore.notif('Sıranı bekle.', 'error')
									end
								end)
							else
								tgiCore.notif('Yeterli polis yok!', 'error')
							end
						elseif IsControlJustPressed(0, 46) and clientcooldown then
							tgiCore.notif('Daha sonra gel!', 'error')
						end
					end
				end
			end
		end
		Wait(time)
	end
end)

CreateThread(function ()
	while true do
		if clientcooldown then
			Wait(config.clientCooldown)
			clientcooldown = false
		end 
		Wait(1000)
	end
end)

local class = 0
function StartChopThisCar()
	local playerPed = PlayerPedId()
	arac = GetVehiclePedIsIn(playerPed, false)
	class = GetVehicleClass(arac)
	arkaKapi = false
	if class ~= 8 then
		islem = 1

		for i=0, 5 do
			if DoesVehicleHaveDoor(arac, i) then
				kapiSayisi = kapiSayisi + 1
				SetVehicleDoorOpen(arac, i, false, true)
			end
		end

		if kapiSayisi >= 4 then
			arkaKapi = true
		end

		SetEntityCoords(arac, parcalamaNokta.x, parcalamaNokta.y, parcalamaNokta.z)
		SetEntityHeading(arac, 27.77)
		SetEntityAsMissionEntity(arac, true, true)
		TaskLeaveVehicle(playerPed, arac, 256)
		SetVehicleDoorsLocked(arac, 2)
		aracParcalamaAktif = true
		clientcooldown = true
		TriggerServerEvent("tgiann-chopshop:setcd")
	else
		tgiCore.notif('Motosikletle yapamazsın!', 'error')
	end
end

function FinishedChopping()
	aracParcalamaAktif = false
	DeleteEntity(arac)
	TriggerServerEvent('ak4y-blackmarket:taskCountAdd', 2, 1)
	TriggerServerEvent("tgiann-aracparcalama:esya-verme", class)
end

CreateThread(function ()
	while true do
		local time = 1000
		local playerPed = PlayerPedId()
		local coords = GetEntityCoords(playerPed)
		local mesafe = #(coords - vector3(config.NPCShop.x, config.NPCShop.y, config.NPCShop.z))
		if mesafe < 3.0 then
			time = 1
			tgiCore.DrawText3D(config.NPCShop.x, config.NPCShop.y, config.NPCShop.z+2.0, "~w~~g~[E]~w~ "..config.NPCName)
			if IsControlJustReleased(0, 38) then
				TriggerServerEvent("tgiann-chopshop:sellitems")
				Wait(2500)
			end
		end
		Wait(time)
	end
end)

function RequestAnimDictScript(animDict, cb)
	if not HasAnimDictLoaded(animDict) then
		RequestAnimDict(animDict)

		while not HasAnimDictLoaded(animDict) do
			Wait(1)
		end
	end

	if cb ~= nil then
		cb()
	end
end