if config.framework == "esx" then
    Citizen.CreateThread(function()
        AddEventHandler('playerSpawned', function(spawn)
			isDead = false
		end)
		
		RegisterNetEvent('esx_ambulancejob:revive')
		AddEventHandler('esx_ambulancejob:revive', function(bool)
			isDead = false
		end)
    end)
elseif config.framework == "qb" then
    RegisterNetEvent('tgiann-megaphone:isDead')
    AddEventHandler('tgiann-megaphone:isDead', function(bool)
        isDead = bool
    end)
end

exports("megaphoneDist", function()
    return config.megaphoneDist
end)

exports("megaphoneIsActive", function()
    return megaphoneActive
end)