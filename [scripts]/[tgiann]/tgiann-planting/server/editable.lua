tgiCore = tgiCoreExports:getCore()

for i=1, #config.plant do
    tgiCore.useableItem(config.plant[i].item, function(source, item)
        TriggerClientEvent("tgiann-planting:client:plant", source, config.plant[i], index)
    end)
end

RegisterNetEvent('tgiann-planting:collectPlant')
AddEventHandler('tgiann-planting:collectPlant', function(name)
    local src = source
    local oldValue = GlobalState.tgiannPlants
    if not oldValue[name] or oldValue[name].growing ~= 100 then
        return
    end
    local xPlayer = tgiCore.getPlayer(src)
    if not xPlayer then 
        return 
    end

    if not config.plant[oldValue[name].plantData.index].canCollect(xPlayer, src, oldValue[name]) then
        return
    end

    local itemData = oldValue[name].plantData.giveItem
    if tgiCore.addItem(xPlayer, itemData.name, itemData.amount) then
        oldValue[name] = nil
        TriggerClientEvent("tgiann-planting:client:removePlant", -1, name)
    end
    GlobalState.tgiannPlants = oldValue
end)