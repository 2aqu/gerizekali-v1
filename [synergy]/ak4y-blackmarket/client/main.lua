if AK4Y.Framework == "qb" then
    QBCore = exports['qb-core']:GetCoreObject()
elseif AK4Y.Framework == "oldqb" then 
    QBCore = nil
end

Citizen.CreateThread(function()
    if AK4Y.Framework == "oldqb" then 
        while QBCore == nil do
            TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)
            Citizen.Wait(200)
        end
	elseif AK4Y.Framework == "qb" then
		while QBCore == nil do
            Citizen.Wait(200)
        end
    end
    Wait(5000)
    for k, v in pairs(AK4Y.Blackmarkets) do 
        RequestModel(v.pedHash)
        while not HasModelLoaded(v.pedHash) do
            Wait(1)
        end
        local ped = CreatePed(v.pedName, v.pedHash, v.pedCoord.x, v.pedCoord.y, v.pedCoord.z, v.h + 0.0, false, true)
        FreezeEntityPosition(ped, true)
        SetEntityInvincible(ped, true)
        SetBlockingOfNonTemporaryEvents(ped, true)

        if v.blipSettings.blip then 
            local blip = AddBlipForCoord(v.pedCoord)
            SetBlipSprite(blip, v.blipSettings.blipIcon)
            SetBlipDisplay(blip, 2)
            SetBlipScale(blip, 0.75)
            SetBlipColour(blip, v.blipSettings.blipColour)
            SetBlipAsShortRange(blip, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(v.blipSettings.blipName)
            EndTextCommandSetBlipName(blip)
        end
    end
end)

local performansCd = 1000
Citizen.CreateThread(function()
    while true do
        local pos = GetEntityCoords(PlayerPedId())
        for k, v in pairs(AK4Y.Blackmarkets) do 
            if #(v.pedCoord - pos) < 3 then 
                performansCd = 1
                local text = v.drawText
                if #(v.pedCoord - pos) < 2 then 
                    text = "[E] - "..v.drawText
                    if IsControlJustReleased(0, 38) then 
                        openMenu()
                    end
                end
                DrawText3D(v.pedCoord.x, v.pedCoord.y, v.pedCoord.z+2, text)
            end
        end
        Citizen.Wait(performansCd)
    end
end)

local openMenuSpamProtect = 0
function openMenu()
    if openMenuSpamProtect < GetGameTimer() then 
		openMenuSpamProtect = GetGameTimer() + 1000
        PlayerData = QBCore.Functions.GetPlayerData()
        QBCore.Functions.TriggerCallback("ak4y-blackmarket:getPlayerDetails", function(result)
            apiKey = result.apiKey
            local gender = PlayerData.charinfo.gender
            local firstname = PlayerData.charinfo.firstname
            local lastname = PlayerData.charinfo.lastname
            local moneyCash = PlayerData.money.cash
            local moneyBank = PlayerData.money.bank
            if result.steamid then
                steamID = "https://api.steampowered.com/ISteamUser/GetPlayerSummaries/v0002/?key=" .. apiKey .. "&steamids=" .. result.steamid
            else
                steamID = 'null'
            end
            if gender == 0 then genderText = AK4Y.Translate.male else genderText = AK4Y.Translate.female end
            SetNuiFocus(true,true)
            SendNUIMessage({
                type = "show",
                currentXP = result.currentXP,
                playerTasks = result.tasks,
                taskResetTime = result.taskResetTime,
                categories = AK4Y.Categories,
                tasks = AK4Y.Tasks,
                items = AK4Y.CategoryItems,
                steamid = steamID,
                apiKey = apiKey,     
                firstname = firstname,
                lastname = lastname,
                gender = genderText,   
                moneyCash = moneyCash,
                moneyBank = moneyBank,    
            })	
        end)
    end
end

RegisterNUICallback('closeMenu', function(data, cb)
	SetNuiFocus(false, false)
end)

local taskSpam = 0
RegisterNUICallback('taskDone', function(data, cb)
	if taskSpam < GetGameTimer() then 
		taskSpam = GetGameTimer() + 1000
		QBCore.Functions.TriggerCallback("ak4y-blackmarket:taskDone", function(result)
			if result then 
				SendNUIMessage({
					type = 'addEXP', 
					exp = tonumber(result),
				})	
				cb(true)
			else
				cb(false)
			end
		end, data)
	else
		cb(false)
	end
end)

local buySpam = 0
RegisterNUICallback('buyCart', function(data, cb)
	if buySpam < GetGameTimer() then 
		buySpam = GetGameTimer() + 1000
		QBCore.Functions.TriggerCallback("ak4y-blackmarket:buyCart", function(result)
			if result then 
				cb(true)
			else
				cb(false)
			end
		end, data)
	else
		cb(false)
	end
end)


RegisterNetEvent('ak4y-blackmarket:addtaskcount')
AddEventHandler('ak4y-blackmarket:addtaskcount', function(taskId, count)
	TriggerServerEvent('ak4y-blackmarket:taskCountAdd', taskId, count)
end)

function DrawText3D(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    SetTextScale(0.28, 0.28)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 245)
    SetTextOutline(true)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
end