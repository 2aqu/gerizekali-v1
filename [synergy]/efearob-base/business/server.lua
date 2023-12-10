QBCore = exports['qb-core']:GetCoreObject()

itemList = {
    "obezburger",
    "burgershot_shotnuggets",
    "burgershot_shotrings",
    "burgershot_colab",
    "fanta",
    "bhotchoc",
    "bhoneyhazelnutoatlatte",
    "bstrawberrycreamfrappuccino",
    "bicedcaffelatte",
    "bespresso",
    "bespressomacchiato",
    "bcoldbrewlatte",
    "bchocolatemuffin",
    "bberrymuffin",
    "bdonut",
    "kizartma",
    "muffin-chocolate",
    "cupcake-morango",
    "cupcake-chocolate",
    "cupcake-limao",
    "gelado-morango",
    "gelado-chocolate",
    "gelado-baunilha",
    "panqueca-nutela",
    "panqueca-oreo",
    "waffle-nutela",
    "pastel-frango",
    "cafe-uwu",
    "latte-uwu",
    "bubble-amora",
    "bubble-menta",
    "bubble-morango",
    "milkshake-morango",
    "milkshake-chocolate",
    "beer",
    "tekila",
    "sexon",
    "whiskey",
    "vodka",
    "cikolatapasta",
    "mojito",
    "grape",
    "wine",
    "grapejuice",
    "snikkel_candy",
    "bapple",
    "bmuffin",
    "sandwich",
    "coffee",
}

RegisterNetEvent('arob-job:prepare-server', function(args, miktar)
    local itemvar = true
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local itemismiaq = nil
        for k,v in pairs(args) do
            for g,h in pairs(v) do
                if g == "label" then

                elseif g == "itemname" then
                    itemismiaq = h
                else
                    local item = Player.Functions.GetItemByName(g)
                    if item and item.amount >= h * miktar then
                    else
                        TriggerClientEvent("QBCore:Notify", src, "Üzerinde "  .. h * miktar.. " adet "..QBCore.Shared.Items[g].label.." Yok!", "error")
                        itemvar = false
                    end
                end
            end
            Wait(100)
        end
    if itemvar then
        for k,v in pairs(args) do
            for g,h in pairs(v) do
                if g == "label" then
                else
                    if tonumber(h) then
                        Player.Functions.RemoveItem(g, tonumber(h) * miktar)
                    end
                end
            end
        end
        TriggerClientEvent("QBCore:Notify", src, "Hazırlanıyor", "success", 2500)
        TriggerClientEvent('arob-job:progress-client', src, itemismiaq, miktar)
    end
end)

RegisterCommand('paketle', function(source)
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)
    local job = xPlayer.PlayerData.job.name
    local paketle = true
    local info = {
        type = "item",
        items = {}
    }
    if job == "serendipity" or job == "tpc" or job == "luxery" or job == "bahama" or job == "uwu" or job == "route" or job == "roof" or job == "tequila" or job == "pizzeria" or job == "burgershot" or job == "pearls" then
        for i=1, 5 do
            local slotItem = xPlayer.Functions.GetItemBySlot(i)
            if slotItem then
                local trueItem = false
                for i=1, #itemList do
                    if slotItem.name == itemList[i] then
                        trueItem = true
                    end
                end
                if not trueItem then
                    TriggerClientEvent("QBCore:Notify", src, slotItem.label.." Eşyasını Paketleyemezsin!", "error")
                    return
                end
                table.insert(info.items, {
                    amount = slotItem.amount,
                    label = slotItem.label,
                    info = slotItem.metadata,
                    name = slotItem.name
                })
            end
        end
        for i=1, 5 do
            local slotItem = xPlayer.Functions.GetItemBySlot(i)
            if slotItem then
                xPlayer.Functions.RemoveItem(slotItem.name, slotItem.amount, slotItem.slot)
            end
        end
        local packet = "menumotel"
        if job == "serendipity" then
            packet = "serendipaket"
        elseif job == "uwu" then
            packet = "uwupaket"
        elseif job == "burgershot" then
            packet = "burgetpaket"
        elseif job == "pizzeria" then
            packet = "pizzeriapaket"
        elseif job == "pearls" then
            packet = "pearlspaket"
        elseif job == "tpc" then
            packet = "popularpaket"
        elseif job == "cockatoos" then
            packet = "popularpaket"
        elseif job == "luxery" then
            packet = "popularpaket"
        end
        if #info.items == 0 then
            TriggerClientEvent("QBCore:Notify", src, "Paketleyecek eşya yok", "error")
        else
            xPlayer.Functions.AddItem(packet, 1, nil, info)
            TriggerClientEvent("QBCore:Notify", src, "Yiyecekler/İçecekler Paketlendi", "success")
        end
    else
        TriggerClientEvent("QBCore:Notify", src, "Bu Komutu Kullanamazsın!", "error", 5000)
    end
end)

QBCore.Functions.CreateUseableItem("obezpaket", function(source, item)
    openPacket(source, item)
end)

QBCore.Functions.CreateUseableItem("serendipaket", function(source, item)
    openPacket(source, item)
end)
QBCore.Functions.CreateUseableItem("pearlspaket", function(source, item)
    openPacket(source, item)
end)

QBCore.Functions.CreateUseableItem("burgetpaket", function(source, item)
    openPacket(source, item)
end)

QBCore.Functions.CreateUseableItem("pizzeriapaket", function(source, item)
    openPacket(source, item)
end)

QBCore.Functions.CreateUseableItem("uwupaket", function(source, item)
    openPacket(source, item)
end)

QBCore.Functions.CreateUseableItem("popularpaket", function(source, item)
    openPacket(source, item)
end)



function openPacket(source, item)
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)
    local itemData = xPlayer.Functions.GetItemBySlot(item.slot)
    if itemData.metadata then
        for itemName, itemData in pairs(itemData.metadata.items) do
            xPlayer.Functions.AddItem(itemData.name, itemData.amount, nil, itemData.metadata)
        end
        xPlayer.Functions.RemoveItem(item.name, 1, item.slot)
        TriggerClientEvent("QBCore:Notify", src, "Paket Açıldı", "success")
    else
        TriggerClientEvent("QBCore:Notify", src, "Bu Paket Bozulmuş", "error")
    end
end

RegisterNetEvent('arob:additem', function(name, amount)
    local src = source
    local miktar = amount or 1
    local xPlayer = QBCore.Functions.GetPlayer(src)
    for i=1, amount do
        xPlayer.Functions.AddItem(name, 1)
    end
end)