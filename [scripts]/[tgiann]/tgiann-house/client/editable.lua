PlayerData = {}

function houseStorage()
	local name = "House"..string.gsub(enteredHouse.name, "%s+", "")
	if Config.useOxInventory then
		local ox_inventory = exports.ox_inventory
		if ox_inventory:openInventory('stash', name) == false then
			TriggerServerEvent('tgiann-house:oxStash', name, Config.QBStorageData[enteredHouse.star or 1])
			ox_inventory:openInventory('stash', name)
		end
	else
		if Config.framework == "esx" then
			-- Add the stash function you use for esx
		elseif Config.framework == "qb" then
			TriggerEvent("inventory:client:SetCurrentStash", name, tgiCore.core.Key or "")
			TriggerServerEvent("inventory:server:OpenInventory", "stash", name, Config.QBStorageData[enteredHouse.star or 1])
		end
	end
end

function houseWardrobe()
	if Config.framework == "esx" then
		-- Add the clothing menu function you use for esx
	elseif Config.framework == "qb" then
		TriggerEvent('qb-clothing:client:openOutfitMenu', "ClothingHouse"..string.gsub(enteredHouse.name, "%s+", ""))
	end
end

if Config.disableQbApartments then
	RegisterNetEvent('apartments:client:setupSpawnUI', function(cData)
		TriggerEvent('qb-spawn:client:setupSpawns', cData, false, nil)
		TriggerEvent('qb-spawn:client:openUI', true)
	end)
end

RegisterNetEvent('tgiCore:Client:OnPlayerLoaded')
AddEventHandler('tgiCore:Client:OnPlayerLoaded', function(newPlayerData)
	TriggerEvent("tgiann-house:firstLoginControl", Config.autoSpawnHouseWhenJoiningGame, newPlayerData)
end)

RegisterNetEvent('tgiCore:Client:OnJobUpdate')
AddEventHandler('tgiCore:Client:OnJobUpdate', function(job)
	PlayerData.job = job
	if Config.Realestate.active then
		isRealestate = false
		for i=1, #Config.Realestate.jobs do
			if Config.Realestate.jobs[i] == PlayerData.job.name then
				isRealestate = true
				break
			end
		end
	end
end)

if Config.test then
	RegisterCommand("firstlogin", function()
		print("firstlogin test cmd used")
		TriggerEvent("tgiann-house:firstLoginControl", Config.autoSpawnHouseWhenJoiningGame)
	end)
end

RegisterNetEvent('tgiann-house:firstLoginControl')
AddEventHandler('tgiann-house:firstLoginControl', function(spawnInHouse, xPlayer)
	PlayerData = exports["tgiann-core"]:getPlayerData()
	if Config.Realestate.active then
		isRealestate = false
		for i=1, #Config.Realestate.jobs do
			if Config.Realestate.jobs[i] == PlayerData.job.name then
				isRealestate = true
				break
			end
		end
	end
	firstLogin(spawnInHouse)
end)

exports("forceOpenDoorHouse", function(identifier)
	if closestHouseDoorIndex then
		local cbData = nil
		local houseData = Config.houseList[closestHouseDoorIndex]
		tgiCore.cbFunction("tgiann-house:forceOpenDoorHouse", function(houseName)
			if houseName then
				houseData.name = houseName
				tgiCore.cbFunction("tgiann-house:checkHouse", function(buyed, myHouse, haveKeys, settingsData)
					houseData.buyed = true
					houseData.myHouse = false
					houseData.haveKeys = true
					houseData.invite = false
					SendNUIMessage({action = "updateHouseData", houseData = houseData})
					enterHouse(houseData, settingsData)
				end, houseData)
				cbData = true
			else
				cbData = false
			end
		end, houseData, identifier)
		while cbData == nil do Wait(10) end
		return cbData
	else 
		return false
	end
end)

if Config.raidCommandEnable then
	RegisterCommand("raid", function(source, args)
		houseRaid(table.concat(args, ' '))
	end)
end

function houseRaid(name)
	if checkPolice() then
		if closestHouseDoorIndex then
			local cbData = nil
			local houseData = Config.houseList[closestHouseDoorIndex]
			if houseData.apartments then
				if name then
					local found = false
					for i=1, #houseData.apartments do
						if string.lower(houseData.apartments[i]) == string.lower(name) then
							houseData.name = name
							found = true
							break
						end
					end
					if not found then 
						showNotification(Config.text[Config.lang]["apertNotFound"], "error")
						return false
					end
				else
					showNotification(Config.text[Config.lang]["needApertName"], "error")
					return false
				end
			end

			tgiCore.cbFunction("tgiann-house:checkHouse", function(buyed, myHouse, haveKeys, settingsData)
				houseData.buyed = true
				houseData.myHouse = false
				houseData.haveKeys = true
				houseData.invite = false
				SendNUIMessage({action = "updateHouseData", houseData = houseData})
				enterHouse(houseData, settingsData)
			end, houseData)
			return true
		else
			showNotification(Config.text[Config.lang]["notFoundDoor"], "error")
			return false
		end
	end
end

exports("HouseRaid", houseRaid)

exports("getPlayerHouses", function(identifier)
	local cb = false
	tgiCore.cbFunction("tgiann-house:getPlayerHouses", function(data)
		cb = data
	end, identifier)
	while not cb do Wait(10) end
	return cb
end)

exports("inHouse", function()
    if enteredHouse then
        return true
    else
        return false
    end
end)

exports("enterHouse", function(houseName)
    firstLogin(false, houseName)
end)

exports("getHouseList", function()
	return Config.houseList
end)

exports("getHouseData", function(houseName)
	for x=1, #Config.houseList do
		if Config.houseList[x].apartments then
			for k=1, #Config.houseList[x].apartments do
				if houseName and houseName == Config.houseList[x].apartments[k] then
					Config.houseList[x].name = houseName
					return Config.houseList[x]
				end
			end
		else
			if houseName and houseName == Config.houseList[x].name then
				return Config.houseList[x]
			end
		end
	end
end)

function screenFadeOut(time)
    DoScreenFadeOut(time or 1000)
    while not IsScreenFadedOut() do Wait(100) end
end

function screenFadeIn(time)
    Wait(1000)
    DoScreenFadeIn(time or 1000)
end

function spawnVehicleEditable(veh, isNetwork)
	if DoesEntityExist(veh) then
		local plate = GetVehicleNumberPlateText(veh)
		TriggerEvent("tgiann-arackilit:plakaekle-xhotwire", plate, true)
		if Config.framework == "qb" then
			TriggerEvent("vehiclekeys:client:SetOwner", plate)
		end
		if Config.lockVehicleInGarage then
			TriggerServerEvent("tgiann-house:server:lock-car", 2, NetworkGetNetworkIdFromEntity(veh))
		end
	end
	-- Your Code
end

function GetClosestVehicle(coords, dist)
	local closestEntity, closestEntityDistance = tgiCore.GetClosestVehicle(coords)
	if DoesEntityExist(closestEntity) then
		if closestEntityDistance <= dist then
			return closestEntity
		else
			return false
		end
	else
		return false
	end
end

function deleteVehicleEditable(veh)
	tgiCore.deleteVehicle(veh)
	-- Your Code
end

function enterHouseEditable() 
	-- Your Code
end

function leaveHouseEditable()
	-- Your Code
end