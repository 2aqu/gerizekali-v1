CreateThread(function()
    for _, data in pairs(cfg.cards) do
        if data.item then
            if framework == 'esx' then --no metadata support
                CreateThread(function()
                    while not ESX do
                        Wait(0)
                    end

                    ESX.RegisterUsableItem(data.item, function(src)
                        local cardData = {
                            title = data.title,
                            titleColor = data.titleColor or 'green',
                            cardBackground = data.cardBackground,
                            fields = {}
                        }
                        if data.canShow and not data.canShow(src) then return false end
                        for _, field in ipairs(data.fields) do
                            cardData.fields[#cardData.fields + 1] = {
                                title = field.title,
                                value = editableFunctions(field.editableFunctionName, src)
                            }
                            if field.editableFunctionName == 'getGender' then
                                cardData.gender = cardData.fields[#cardData.fields].value
                                cardData.fields[#cardData.fields].value = sh._t(cardData.fields[#cardData.fields].value)
                            elseif field.editableFunctionName == 'getSignature' then
                                cardData.fields[#cardData.fields].isSignature = true
                            end
                        end
                        TriggerClientEvent('qb-idcard:client:showCard', src, cardData, true)
                    end)
                end)
            elseif framework == 'qb' then
                CreateThread(function()
                    while not QBCore do
                        Wait(0)
                    end

                    QBCore.Functions.CreateUseableItem(data.item, function(src, item)
                        local cardData = {
                            title = data.title,
                            titleColor = data.titleColor or 'green',
                            cardBackground = data.cardBackground,
                            fields = {}
                        }
                        if data.canShow and not data.canShow(src) then return false end
                        if data.useItemInfo then
                            local itemData = {
                                title = data.title,
                                cardBackground = data.cardBackground,
                                fields = {}
                            }
                            for _, field in ipairs(data.fields) do
                                if field.editableFunctionName == 'getSignature' then
                                    itemData.fields[#itemData.fields + 1] = {
                                        title = field.title,
                                        value = item[cfg.metadataKey].firstname .. item[cfg.metadataKey].lastname,
                                        isSignature = true
                                    }
                                else
                                    if field.itemInfoKey then
                                        itemData.fields[#itemData.fields + 1] = {
                                            title = field.title,
                                            value = item[cfg.metadataKey][field.itemInfoKey]
                                        }
                                        if field.itemInfoKey == 'gender' then
                                            itemData.gender = item[cfg.metadataKey][field.itemInfoKey] == 1 and 'female' or 'male'
                                            itemData.fields[#itemData.fields].value = sh._t(itemData.gender)
                                        end
                                    end
                                end
                            end
                            if item[cfg.metadataKey].firstname .. item[cfg.metadataKey].lastname == editableFunctions('getSignature', src) then
                                TriggerClientEvent('qb-idcard:client:showCard', src, itemData, true)
                            else
                                TriggerClientEvent('qb-idcard:client:showCard', src, itemData, false)
                            end
                        else
                            for _, field in ipairs(data.fields) do
                                cardData.fields[#cardData.fields + 1] = {
                                    title = field.title,
                                    value = editableFunctions(field.editableFunctionName, src)
                                }
                                if field.editableFunctionName == 'getGender' then
                                    cardData.gender = cardData.fields[#cardData.fields].value
                                    cardData.fields[#cardData.fields].value = sh._t(cardData.fields[#cardData.fields].value)
                                elseif field.editableFunctionName == 'getSignature' then
                                    cardData.fields[#cardData.fields].isSignature = true
                                end
                            end

                            TriggerClientEvent('qb-idcard:client:showCard', src, cardData, true)
                        end
                    end)
                end)
            end
        elseif data.command then
            RegisterCommand(data.command, function(src)
                local cardData = {
                    title = data.title,
                    titleColor = data.titleColor or 'green',
                    cardBackground = data.cardBackground,
                    fields = {}
                }
                if data.canShow and not data.canShow(src) then return false end
                for _, field in ipairs(data.fields) do
                    cardData.fields[#cardData.fields + 1] = {
                        title = field.title,
                        value = editableFunctions(field.editableFunctionName, src)
                    }
                    if field.editableFunctionName == 'getGender' then
                        cardData.gender = cardData.fields[#cardData.fields].value
                        cardData.fields[#cardData.fields].value = sh._t(cardData.fields[#cardData.fields].value)
                    elseif field.editableFunctionName == 'getSignature' then
                        cardData.fields[#cardData.fields].isSignature = true
                    end
                end
                TriggerClientEvent('qb-idcard:client:showCard', src, cardData, true)
            end)
        end
    end
end)

RegisterNetEvent('qb-idcard:server:showCard', function(players, data)
    local sourcePed = GetPlayerPed(source)
    local sourceCoords = GetEntityCoords(sourcePed)
    for k, v in pairs(players) do
        local playerPed = GetPlayerPed(v)
        local playerCoords = GetEntityCoords(playerPed)
        local dist = #(sourceCoords - playerCoords);
        if dist <= cfg.showDistance then
            TriggerClientEvent('qb-idcard:client:createCard', v, data)
        end
    end
end)
