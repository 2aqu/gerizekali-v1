if GetResourceState('ps-inventory') == 'started' then  
    RegisterNetEvent('inventory:client:UseWeapon', function(weaponData, shootbool)
        TriggerServerEvent("pickle_weaponthrowing:SetCurrentWeapon", weaponData)
    end)
end