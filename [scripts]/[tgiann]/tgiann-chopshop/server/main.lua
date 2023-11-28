local lastCd = 0
tgiCore = tgiCoreExports:getCore()

RegisterServerEvent("tgiann-aracparcalama:esya-verme")
AddEventHandler("tgiann-aracparcalama:esya-verme", function(class, key)
    local src = source
    local xPlayer = tgiCore.getPlayer(src)
    if xPlayer then
        lastCd = 0
        local stockrim = math.random(2, 4)
        local highrim = math.random(2, 4)
        local door = math.random(1,3)
        local speaker = math.random(2,4)
        if math.random(1, 100) < 25 then
            tgiCore.addItem(xPlayer, 'splaka', 1)
        end
        tgiCore.addItem(xPlayer, 'battery', 1)

        tgiCore.addItem(xPlayer, 'speaker', speaker)
        tgiCore.addItem(xPlayer, 'door', door)
    
        if not class == 8 and not class == 4 then
            tgiCore.addItem(xPlayer, 'airbag', 1)
        end

        if class == 7 or class == 6 then
            tgiCore.addItem(xPlayer, 'highradio', 1)
            tgiCore.addItem(xPlayer, 'highrim', highrim)
        else
            tgiCore.addItem(xPlayer, 'lowradio', 1)
            tgiCore.addItem(xPlayer, 'stockrim', stockrim)
        end
    end
end)

RegisterServerEvent('tgiann-chopshop:sellitems')
AddEventHandler('tgiann-chopshop:sellitems', function()
    local src = source
    local xPlayer = tgiCore.getPlayer(src)
    if xPlayer then
        for itemName, itemPrice in pairs(config.Items) do
            local xItem = tgiCore.getItemByName(xPlayer, itemName)
            if xItem then
                if xItem.amount and xItem.amount > 0 then
                    if tgiCore.removeItem(xPlayer, itemName, xItem.amount, xItem.slot) then
                        tgiCore.addMoney(xPlayer, config.moneyType, itemPrice * xItem.amount)
                    end
                end
            end
        end
    end
end)

tgiCore.cbFunction('tgiann-aracparcalama:check-cd', function(source, cb)
    if lastCd == 0 or (os.time() - lastCd) > 600 then 
        cb(true)
    end
end)

RegisterServerEvent('tgiann-chopshop:setcd')
AddEventHandler('tgiann-chopshop:setcd', function()
    lastCd = os.time()
end)