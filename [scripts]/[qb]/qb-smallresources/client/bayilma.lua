local ragdoll = false
function setRagdoll(flag)
    ragdoll = flag
end
CreateThread(function()
    while true do
        Wait(0)
        if ragdoll then
            SetPedToRagdoll(PlayerPedId(), 1000, 1000, 0, 0, 0, 0)
        end
    end
end)

ragdol = true
RegisterNetEvent("Ragdoll")
AddEventHandler("Ragdoll", function()
	if ( ragdol ) then
		setRagdoll(true)
		ragdol = false
	else
		setRagdoll(false)
		ragdol = true
	end
end)

CreateThread(function()
 	while true do
 		Wait(100)
 		if ( IsControlPressed(2, 303)) then 
 			TriggerEvent("Ragdoll", source)
 		end
 	end
end)