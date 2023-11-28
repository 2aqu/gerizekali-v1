local tgiCore = tgiCoreExports:getCore()

if config.framework == "esx" then
    tgiCore.core.RegisterUsableItem(config.ItemName, function(source)
        TriggerClientEvent('tgiann-megaphone:useitem', source)
    end)
elseif config.framework == "qb" then
    tgiCore.core.Functions.CreateUseableItem(config.ItemName, function(source)
        TriggerClientEvent('tgiann-megaphone:useitem', source)
    end)

    RegisterNetEvent('hospital:server:SetDeathStatus', function(isDead)
		TriggerClientEvent("tgiann-megaphone:isDead", source, isDead)
	end)

	RegisterNetEvent('hospital:server:SetLaststandStatus', function(bool)
		if bool then
			TriggerClientEvent("tgiann-megaphone:isDead", source, bool)
		end
	end)
end