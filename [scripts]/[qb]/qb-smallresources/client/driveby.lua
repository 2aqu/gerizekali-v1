Citizen.CreateThread(function()
    while true do
        if IsPedInAnyVehicle(PlayerPedId(), false) then
            if GetPedInVehicleSeat(GetVehiclePedIsIn(PlayerPedId(), false), -1) and GetCurrentPedWeapon(PlayerPedId(), false) then
                QBCore.Functions.Notify('Araç içerisinden ateş edemezsin!', 'error')
                SetCurrentPedWeapon(PlayerPedId(), 'WEAPON_UNARMED')
            end
        else
            Citizen.Wait(2000)
        end
        Citizen.Wait(10)
    end
end)