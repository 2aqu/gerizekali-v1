if config.framework then return end

tgiCore.notif = function(msg, type, time)
	if config.customNotif.active then
        config.customNotif.notify(msg, type, time)
	else
		BeginTextCommandThefeedPost('STRING')
		AddTextComponentSubstringPlayerName(msg)
		EndTextCommandThefeedPostTicker(0,1)
	end
	TriggerEvent("tgiann-core:notifData", text, type, time)
end