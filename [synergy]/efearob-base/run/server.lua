QBCore = exports['qb-core']:GetCoreObject()

runConfig = {}

runConfig.coords = {
    vector3(-2.03934, -1442.11, 30.963),
    vector3(-212.291, -1668.02, 34.463),
    vector3(-123.938, -1671.08, 32.564),
    vector3(-208.861, -1600.41, 34.869),
    vector3(21.19116, -1844.94, 24.601),
    vector3(22.93856, -1896.73, 22.965),
    vector3(-45.5618, -1445.47, 32.429),
    vector3(-36.2384, -1537.06, 31.451),
    vector3(-25.0401, -1557.14, 30.686),
    vector3(250.1020, -1730.79, 29.670),
    vector3(222.5176, -1702.53, 29.696),
    vector3(269.8340, -1713.00, 29.668),
    vector3(405.9167, -1751.29, 29.710),
    vector3(419.2338, -1735.54, 29.607),
    vector3(514.2752, -1780.86, 28.913),
    vector3(92.71177, -1891.19, 24.311),
    vector3(21.37215, -1844.57, 24.601),
    vector3(-34.1192, -1847.05, 26.193),
    vector3(-42.1307, -1791.92, 27.828),
    vector3(-148.139, -1687.46, 33.062),
    vector3(-158.662, -1679.52, 36.966),
    vector3(-120.026, -1574.59, 34.176),
    vector3(-77.5760, -1515.09, 34.243),
    vector3(317.1040, -2043.66, 20.936),
    vector3(357.8002, -2073.41, 21.744),
    vector3(279.4690, -1993.84, 20.803),
    vector3(256.1210, -2023.77, 19.279),
    vector3(324.2315, -1937.34, 25.018),
    vector3(368.6644, -1895.73, 25.178),
    vector3(128.2816, -1896.86, 23.674),
    vector3(1632.644, 3719.289, 35.048),
    vector3(1433.701, 3628.463, 35.746),
    vector3(1632.405, 3719.596, 35.057),
    vector3(1744.144, 3886.946, 35.544),
    vector3(-280.550, 6350.663, 32.600),
    vector3(-188.787, 6409.614, 32.296),
    vector3(56.50788, 6646.520, 32.276),
    vector3(1838.661, 3907.536, 33.463),
    vector3(-884.251, -1072.58, 2.5300),
    vector3(-1896.63, 642.8867, 130.20),
    vector3(-716.420, -864.705, 23.207),
    vector3(196.9020, -162.738, 56.603),
    vector3(151.4575, -72.7892, 67.674),
    vector3(-1463.01, -381.424, 38.867),
    vector3(-1564.53, -300.249, 48.232),
    vector3(-1308.41, -168.721, 44.142),
    vector3(-596.544, 209.5688, 74.172),
    vector3(-392.504, -146.538, 38.531),
    vector3(-520.644, -615.175, 26.529),
    vector3(-715.030, -712.733, 29.270),
    vector3(570.1481, -402.227, 24.730),
    vector3(1114.354, -391.448, 68.948),
    vector3(1151.090, -438.433, 67.004),
    vector3(1230.214, -561.482, 69.652),
    vector3(1264.689, -702.872, 64.909),
    vector3(1134.988, -789.216, 57.601),
    vector3(889.6428, -1045.80, 35.170),
    vector3(-428.227, -454.677, 32.521),
    vector3(-691.726, -431.571, 35.274),
}

runConfig.Fiyatlar = {
    ["meth"] =              700,
    ["weed"] =              1200,
    ["heroin"] =            650,
    ["lsd"] =               750,
    ["coke_brick"] =        2200,
}
-- local items = {
-- 	[1] = {
-- 		name = "barut",
-- 		miktar = 20,
-- 	},
-- 	[2] = {
-- 		name = "celik",
-- 		miktar = 2,
-- 	},
--     [3] = {
-- 		name = "pkonserve",
-- 		miktar = 2,
-- 	},
--     [4] = {
-- 		name = "emptybullet",
-- 		miktar = 1,
-- 	},
-- }

RegisterNetEvent('satis:yap')
AddEventHandler('satis:yap', function(itemname, amount)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local itemaq = Player.Functions.GetItemByName(itemname)
    if Player.Functions.RemoveItem(itemname, amount) then
        local fiyat = runConfig.Fiyatlar[itemname] * amount
        Player.Functions.AddMoney('cash', fiyat)
        -- if itemname == "weed_ak47" or itemname == "meth" then
        --     exports["qb-management"]:AddMoney("tacir1", (fiyat * 20) / 100)
        --     exports["qb-management"]:AddMoney("tacir2", (fiyat * 20) / 100)
        -- end
        -- local random = math.random(1,100) 
		-- local random2 = math.random(1, #items)
		-- if random >= 75 then
		-- 	Player.Functions.AddItem(items[random2].name, items[random2].miktar)
		-- end
    else
        TriggerClientEvent("QBCore:Notify", src, "Satacak kadar eşyan yok.", "error")
    end
end)

QBCore.Functions.CreateUseableItem('telefon', function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    -- if Player.PlayerData.gang.name == "none" then
        -- TriggerClientEvent('QBCore:Notify', src, "Bu eşyayı sen kullanamazsın", "error")
    -- else
        TriggerClientEvent('gorevbaslat', source) 
    -- end
end)