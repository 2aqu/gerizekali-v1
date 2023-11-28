local QBCore = exports['qb-core']:GetCoreObject()
local CurrentCops = 0

RegisterNetEvent('police:SetCopCount')
AddEventHandler('police:SetCopCount', function(amount)
    CurrentCops = amount
end)

RegisterNetEvent('QBCore:Client:OnPlayerUnload')
AddEventHandler('QBCore:Client:OnPlayerUnload', function()
    isLoggedIn = false
end)

RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    isLoggedIn = true
end)

RegisterNetEvent('qb-police:SetCopCount')
AddEventHandler('qb-police:SetCopCount', function(Amount)
    CurrentCops = Amount
end)

RegisterNetEvent('arob-atmrob:client:roubar', function()
    RobAtm()
end)

function RobAtm()
	local pos = GetEntityCoords(PlayerPedId())
    local hasItem = QBCore.Functions.HasItem('trojan_usb')
    print("sa")
	--if LocalPlayer.state.isLoggedIn then
		QBCore.Functions.TriggerCallback("arob-atmrob:Cooldown", function(cooldown)
			if not cooldown then
                QBCore.Functions.TriggerCallback('arob-atm:server:policecheck', function(cops)
                    if cops >= 0 then
                        if hasItem then
                            PoliceCall()
                            exports['ps-ui']:Scrambler(function(success)  
                                if success then
                                    ClearPedTasksImmediately(PlayerPedId())
                                    HackSuccess() 
                                else
                                    Citizen.Wait(1000)
                                    ClearPedTasksImmediately(PlayerPedId())
                                    HackFailed()
                                end
                            end, "numeric", 60, 0)
                        else
                            QBCore.Functions.Notify("Bir şeyler eksik gibi?", "error")
                        end
                    else
                        QBCore.Functions.Notify("yeterli polis yok", "error")
                    end
                end)
			else
				QBCore.Functions.Notify("Bu ATM son zamanlarda saldırıya uğradı, tekrar denemek için bir süre beklemelisiniz...")
			end
		end)
	--else
	--	Citizen.Wait(3000)
	--end
end


function RobbingTheMoney()
    Anim = true
    
    QBCore.Functions.Progressbar("power_hack", "Paraları Topluyorsun...", (9500), false, false, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "oddjobs@shop_robbery@rob_till",
        anim = "loop",
        flags = 1,
    }, {
    --    model = "prop_cs_heist_bag_02",
    --    bone = 57005,
    --    coords = { x = -0.005, y = 0.00, z = -0.16 },
    --    rotation = { x = 250.0, y = -30.0, z = 0.0 },


    }, {}, function() -- Done
        Anim = false
        StopAnimTask(PlayerPedId(), "oddjobs@shop_robbery@rob_till", "loop", 1.0)
		--SetPedComponentVariation((PlayerPedId()), 5, 47, 0, 0)

    end, function() -- Cancel
       -- Anim = false
       -- StopAnimTask(PlayerPedId(), "oddjobs@shop_robbery@rob_till", "loop", 1.0)
		
    end)
    
    Citizen.CreateThread(function()
        while Anim do
            TriggerServerEvent('qb-hud:Server:gain:stress', math.random(2, 3))
            Citizen.Wait(12000)
        end
    end)
end

function HackFailed()
	QBCore.Functions.Notify("Hatalı deneme yaptınız?")
    if math.random(1, 100) <= 40 then
		--TriggerServerEvent("evidence:server:CreateFingerDrop", GetPedBoneCoords(PlayerPedId))
		QBCore.Functions.Notify("Atm'de parmak izi bıraktınız...")
	end
end

function HackSuccess()
	QBCore.Functions.Notify("Başarılı!")
    ClearPedTasksImmediately(PlayerPedId())
	RobbingTheMoney()
	TriggerServerEvent("arob-atmrob:success")	
    TriggerServerEvent('arob-atmrob:Server:BeginCooldown')
end

function PoliceCall()
    -- local chance = 75
    -- if GetClockHours() >= 0 and GetClockHours() <= 6 then
    --     chance = 50
    -- end
    -- if math.random(1, 100) <= chance then
        exports['ps-dispatch']:AtmRob()
    --     TriggerServerEvent('police:server:policeAlert', 'ATM SOYGUNU')
    -- end
end

local prop = {
    "prop_atm_01",
    "prop_atm_02",
    "prop_atm_03",
    "prop_fleeca_atm",
}
  exports['qb-target']:AddTargetModel(prop, {
      options = {
        {
            type = "client",
            event = "arob-atmrob:client:roubar",
            icon = "fas fa-user-secret",
            label = "ATM SOY",
        },
        {
            type = "client",
            event = "codem-bank:openBankAtm",
            icon = 'fas fa-credit-card',
            label = "ATM'yi Aç",
            
        },
    },
    distance = 2.0    
})

                                   