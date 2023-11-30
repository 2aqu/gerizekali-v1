local QBCore = exports['qb-core']:GetCoreObject()

local showTattoo = false
local showClothes = false
local showBarber = false
local showAtm = false
local showBenzin = false
local showMarket = false
local showGunShop = false
local showGarajS = false

blipsTattoo = {}
blipsClothes = {}
blipsBarber = {}
blipsAtm = {}
blipsBenzin = {}
blipsMarket = {}
blipsSilahci = {}
blipsGarajS = {}

function blipOlustur(coords, sprite, colour, disp, scale, text, which)
    local blip = AddBlipForCoord(coords)
    SetBlipSprite(blip, sprite)
    SetBlipColour(blip, colour)
	SetBlipDisplay(blip, disp)
    SetBlipAsShortRange(blip, true)
    SetBlipScale(blip, scale)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(text)
    EndTextCommandSetBlipName(blip)
	if which == 'Dövmeciler' then
		table.insert(blipsTattoo, blip)
	elseif which == 'Kıyafet' then
		table.insert(blipsClothes, blip)
	elseif which == 'Berber' then
		table.insert(blipsBarber, blip)
	elseif which == 'Banka' then
        table.insert(blipsAtm, blip)
    elseif which == 'Benzin' then
		table.insert(blipsBenzin, blip)
	elseif which == 'Market' then
		table.insert(blipsMarket, blip)
    elseif which == 'Silahci' then
		table.insert(blipsSilahci, blip)
    elseif which == 'Garaj' then
		table.insert(blipsGarajS, blip)
	end
end


local isblips = {
	--{title="Üzüm Toplama", colour=27, id=285, coords = vector3(-1857.24, 1905.38, 152.94)},
	--{title="Üzüm Satış", colour=27, id=605, coords = vector3(-2507.82, 3613.63, 13.82)},
	{title="Rich Garage", colour=0, id=446, coords = vector3(-335.33, -127.25, 39.01)},
	{title="Hermanos Mekanik", colour=0, id=446, coords = vector3(480.58, -1317.12, 29.2)}, 
    {title="Lons Mekanik", colour=0, id=446, coords = vector3(-1616.65, -822.15, 16.56)},
    {title="NoMercy Mekanik", colour=0, id=446, coords = vector3(703.53, -751.87, 24.48)},
	{title="Mekanik 4", colour=0, id=446, coords = vector3(-207.12, -1322.34, 18.6)},
	{title="Unitas Mekanik", colour=0, id=446, coords = vector3(732.64, -1080.43, 22.17)},
	{title="Fk Mekanik", colour=0, id=446, coords = vector3(-1418.96, -446.66, 35.91)},
    --{title="Cortez Mekanik", colour=0, id=446, coords = vector3(872.78, -2113.2, 30.46)},
    --{title="Redline Mekanik", colour=0, id=446, coords = vector3(-559.75, -929.53, 24.58)},
    {title="Felss Mekanik", colour=0, id=446, coords = vector3(928.24, -968.47, 39.5)},
    {title="Red Devils Mekanik", colour=0, id=446, coords = vector3(545.46, -178.86, 54.55)},
	{title="PD Heli Tuning", colour=0, id=446, coords = vector3(-976.36, -2982.92, 14.34)},
    {title="Peyote Tarlası", colour=5, id=86, coords = vector3(-2169.09, 2672.18, 2.85)},
	{title="Peyote Satış", colour=2, id=605, coords = vector3(-126.1, 1896.67, 197.33)},
    {title="Odun Fabrikası", colour=25, id=516, coords = vector3(-552.9, 5348.58, 74.74)},
    --{title="Av Satış", colour=49, id=442, coords = vector3(570.34, 2796.46, 42.01)},
    --{title="Av Malzemeleri", colour=1, id=626, coords = vector3(-679.47, 5834.49, 17.33)},
    {title="Sinner's Custom", colour=0, id=446, coords = vector3(1146.56, -782.4, 57.6)},
}

local isletmeblips = {
	{title="Inferno Realestate", colour=46, id=411, coords = vector3(-68.77, -803.68, 269.02)},
    {title="Merida Realestate", colour=46, id=411, coords = vector3(-1581.04, -558.57, 34.95)},
	{title="Wutang E1 Music", colour=5, id=614, coords = vector3(-5.73, -1822.8, 29.55)},
	{title="Irish Pub", colour=61, id=93, coords = vector3(835.61, -115.34, 87.13)},
	{title="Tequila", colour=1, id=93, coords = vector3(-555.51, 285.39, 91.8)},
    {title="Rich Cafe", colour=23, id=354, coords = vector3(-846.76, -234.12, 61.02)},
    {title="Felss Bar", colour=22, id=93, coords = vector3(311.89, -890.54, 60.66)},
    {title="Burger Shot", colour=1, id=106, coords = vector3(-1183.37, -884.14, 13.86)},
    {title="Pizzeria", colour=1, id=106, coords = vector3(800.1940, -745.6356, 26.7767)},
    {title="UwU Cafe", colour=8, id=93, coords = vector3(-581.32, -1071.9, 22.34)},
    --{title="Popular Cafe", colour=21, id=93, coords = vector3(288.32, -920.14, 29.46)},
    {title="Bahama Mamas", colour=27, id=93, coords = vector3(-1386.79, -590.02, 30.56)},
    {title="Tiki Bar", colour=27, id=93, coords = vector3(-1143.18, -1708.21, 13.35)},
    {title="Kamp Malzemeleri", colour=1, id=89, coords = vector3(-695.56, 5802.23, 17.33)},
    {title="Manav", colour=1, id=124, coords = vector3(384.74, -328.94, 46.89)},
    {title="JD", colour=2, id=140, coords = vector3(-193.53, -1707.19, 33.16)},
    {title="Pearls", colour=2, id=389, coords = vector3(-1820.1230, -1175.8809, 13.0129)},
}

local cekilmisaraba = {
	{title="Çekilmiş Araçlar", colour=26, id=68, coords = vector3(401.89, -1647.33, 28.69)},
	{title="Çekilmiş Araçlar", colour=26, id=68, coords = vector3(108.27, -1078.56, 28.59)},
	{title="Çekilmiş Araçlar", colour=26, id=68, coords = vector3(108.27, -1078.56, 28.59)},
	{title="Çekilmiş Araçlar", colour=26, id=68, coords = vector3(379.52, 255.45, 102.36)},
	{title="Çekilmiş Araçlar", colour=26, id=68, coords = vector3(1885.61, 3714.66, 32.22)},
    {title="Çekilmiş Araçlar", colour=26, id=68, coords = vector3(-2163.9, -389.78, 13.31)},
    {title="Çekilmiş Araçlar", colour=26, id=68, coords = vector3(-293.2, 6121.57, 30.91)},
}

RegisterNetEvent('blips:toggleNone')
AddEventHandler('blips:toggleNone',function()
    QBCore.Functions.Notify('Ne yaptığını sanıyorsun blip geleceğini mi?', "info")
end)

RegisterNetEvent('knoes:isletmeblips')
AddEventHandler('knoes:isletmeblips',function()
  is = not is
  for _, info in pairs(isletmeblips) do
    if is then
      info.blip = AddBlipForCoord(info.coords.x, info.coords.y, info.coords.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 0.6)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    else
      RemoveBlip(info.blip)
    end
  end
  if is then
    QBCore.Functions.Notify("İşletmelerin blipslerini açtınız", "success")
  else
    QBCore.Functions.Notify("İşletmelerin blipslerini kapattınız", "error")
  end
end)

RegisterNetEvent('knoes:cekilmisaraba')
AddEventHandler('knoes:cekilmisaraba',function()
  is = not is
  for _, info in pairs(cekilmisaraba) do
    if is then
      info.blip = AddBlipForCoord(info.coords.x, info.coords.y, info.coords.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 0.5)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    else
      RemoveBlip(info.blip)
    end
  end
  if is then
    QBCore.Functions.Notify("Çekilmiş araçlar blipslerini açtınız", "success")
  else
    QBCore.Functions.Notify("Çekilmiş araçlar blipslerini kapattınız", "error")
  end
end)

RegisterNetEvent('knoes:isblips')
AddEventHandler('knoes:isblips',function()
  is = not is
  for _, info in pairs(isblips) do
    if is then
      info.blip = AddBlipForCoord(info.coords.x, info.coords.y, info.coords.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 0.5)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    else
      RemoveBlip(info.blip)
    end
  end
  if is then
    QBCore.Functions.Notify("Mesleklerin blipslerini açtınız", "success")
  else
    QBCore.Functions.Notify("Mesleklerin blipslerini kapattınız", "error")
  end
end)


RegisterNetEvent('blips:toggleGunShop')
AddEventHandler('blips:toggleGunShop',function()
	showGunShop = not showGunShop
    if showGunShop then
        for k, v in pairs(silahcikordinat) do
            blipOlustur(v, 110, 38, 4, 0.7, 'Silah Dükkanı', 'Silahci')
        end
        QBCore.Functions.Notify('Silahçı blipleri açıldı!', "success")
    else
        for k, v in pairs(blipsSilahci) do
            RemoveBlip(v)
        end
        QBCore.Functions.Notify('Silahçı blipleri kapatıldı!', "error")
    end
end)

RegisterNetEvent('blips:toggleTattoo')
AddEventHandler('blips:toggleTattoo',function()
	showTattoo = not showTattoo
    if showTattoo then
        for k, v in pairs(tattoShops) do
            blipOlustur(v, 75, 34, 4, 0.8, 'Dövme Salonu', 'Dövmeciler')
        end
        QBCore.Functions.Notify('Dövmeci blipleri açıldı!', "success")
    else
        for k, v in pairs(blipsTattoo) do
            RemoveBlip(v)
        end
        QBCore.Functions.Notify('Dövmeci blipleri kapatıldı!', "error")
    end
end)

RegisterNetEvent('blips:toggleClothes')
AddEventHandler('blips:toggleClothes',function()
	showClothes = not showClothes
    if showClothes then
        for k, v in pairs(clotheShops) do
            blipOlustur(v, 73, 46, 4, 0.6, 'Kıyafet Dükkanı', 'Kıyafet')
        end
        QBCore.Functions.Notify('Kıyafet Dükkanı blipleri açıldı!', "success")
    else
        for k, v in pairs(blipsClothes) do
            RemoveBlip(v)
        end
        QBCore.Functions.Notify('Kıyafet Dükkanı blipleri kapatıldı!', "error")
    end
end)

RegisterNetEvent('blips:toggleBarber')
AddEventHandler('blips:toggleBarber',function()
	showBarber = not showBarber
    if showBarber then
        for k, v in pairs(barberShops) do
            blipOlustur(v, 71, 46, 4, 0.6, 'Berber Dükkanı', 'Berber')
        end
        QBCore.Functions.Notify('Berber Dükkanı blipleri açıldı!', "success")
    else
        for k, v in pairs(blipsBarber) do
            RemoveBlip(v)
        end
        QBCore.Functions.Notify('Berber Dükkanı blipleri kapatıldı!', "error")
    end
end)

RegisterNetEvent('blips:toggleMarket')
AddEventHandler('blips:toggleMarket',function()
	showMarket = not showMarket
    if showMarket then
        for k, v in pairs(Market) do
            blipOlustur(v, 59, 2, 4, 0.6, 'Market', 'Market')
        end
        QBCore.Functions.Notify('Market blipleri açıldı!', "success")
    else
        for k, v in pairs(blipsMarket) do
            RemoveBlip(v)
        end
        QBCore.Functions.Notify('Market blipleri kapatıldı!', "error")
    end
end)

RegisterNetEvent('blips:toggleAtm')
AddEventHandler('blips:toggleAtm',function()
	showAtm = not showAtm
    if showAtm then
        for k, v in pairs(Atms) do
            blipOlustur(v, 277, 2, 4, 0.7, 'Banka', 'Banka')
        end
        QBCore.Functions.Notify('Banka blipleri açıldı!', "success")
    else
        for k, v in pairs(blipsAtm) do
            RemoveBlip(v)
        end
        QBCore.Functions.Notify('Banka blipleri kapatıldı!', "error")
    end
end)

RegisterNetEvent('blips:toggleBenzin')
AddEventHandler('blips:toggleBenzin',function()
	showBenzin = not showBenzin
    if showBenzin then
        for k, v in pairs(BenzinS) do
            blipOlustur(v, 361, 9, 4, 0.5, 'Benzin İstasyonu', 'Benzin')
        end
        QBCore.Functions.Notify('Benzin İstasyonu blipleri açıldı!', "success")
    else
        for k, v in pairs(blipsBenzin) do
            RemoveBlip(v)
        end
		QBCore.Functions.Notify('Benzin İstasyonu blipleri kapatıldı!', "error")
    end
end)

-- RegisterNetEvent('blips:toggleGaraj')
-- AddEventHandler('blips:toggleGaraj',function()
-- 	showGaraj = not showGaraj
--     if showGaraj then
--         for k, v in pairs(GarajS) do
--             blipOlustur(v, 357, 3, 4, 0.5, 'Garaj', 'Garaj')
--         end
--         QBCore.Functions.Notify('Garaj blipleri açıldı!', "success")
--     else
--         for k, v in pairs(blipsGarajS) do
--             RemoveBlip(v)
--         end
-- 		QBCore.Functions.Notify('Garaj blipleri kapatıldı!', "error")
--     end
-- end)

RegisterNetEvent('blips:toggleAll')
AddEventHandler('blips:toggleAll',function()
    TriggerEvent('garaj:blipAcKapa')
    TriggerEvent('blips:toggleBenzin')
    TriggerEvent('blips:toggleAtm')
    TriggerEvent('blips:toggleMarket')
    TriggerEvent('blips:toggleBarber')
    TriggerEvent('blips:toggleClothes')
    TriggerEvent('blips:toggleTattoo')
    TriggerEvent('blips:toggleGunShop')
    TriggerEvent('knoes:isblips')
end)

GarajS = {
    vector3(37.08, -616.99, 34.19),
    vector3(341.7, -623.33, 29.29),
    vector3(1037.65, -771.62, 58.01),
    vector3(888.47, -37.44, 78.76),
    vector3(52.41, -874.53, 30.42),
    vector3(273.43, -343.99, 44.91),
    vector3(-12.76, -1101.34, 26.72),
    vector3(2489.13, 4120.49, 37.64),
    vector3(-330.01, -780.33, 33.96),
    vector3(-1160.86, -741.41, 19.63),
    vector3(69.84, 12.6, 68.96),
    vector3(-475.31, -818.73, 30.46),
    vector3(364.37, 297.83, 103.49),
    vector3(-796.86, -2024.85, 8.88),
    vector3(-1183.1, -1511.11, 4.36),
    vector3(1137.77, 2663.54, 37.9),
    vector3(934.95, 3606.59, 32.81),
    vector3(78.34, 6418.74, 31.28),
    vector3(215.9499, -809.698, 30.731),
    vector3(-297.71, -990.11, 30.76),
    vector3(-475.26, -219.26, 36.05),
    vector3(-574.49, 329.23, 84.61),
    vector3(-1009.93, -1466.15, 5.0),
    vector3(973.45, -1022.68, 40.41),  
    vector3(-1386.16, -454.29, 33.87),
    vector3(-1168.17, -1744.01, 3.4)
}

BenzinS = {
    -- vector3(49.4187, 2778.793, 58.043),
	-- vector3(263.894, 2606.463, 44.983),
	-- vector3(1039.958, 2671.134, 39.550),
	-- vector3(1207.260, 2660.175, 37.899),
	-- vector3(2539.685, 2594.192, 37.944),
	-- vector3(2679.858, 3263.946, 55.240),
	-- vector3(2005.055, 3773.887, 32.403),
	-- vector3(1687.156, 4929.392, 42.078),
	-- vector3(1701.314, 6416.028, 32.763),
	-- vector3(179.857, 6602.839, 31.868),
	-- vector3(-94.4619, 6419.594, 31.489),
	-- vector3(-2554.996, 2334.40, 33.078),
	-- vector3(-1800.375, 803.661, 138.651),
	-- vector3(-1437.622, -276.747, 46.207),
	-- vector3(-2096.243, -320.286, 13.168),
	-- vector3(-724.619, -935.1631, 19.213),
	-- vector3(-526.019, -1211.003, 18.184),
	-- vector3(-70.2148, -1761.792, 29.534),
	-- vector3(265.648, -1261.309, 29.292),
	-- vector3(819.653, -1028.846, 26.403),
	-- vector3(1208.951, -1402.567,35.224),
	-- vector3(1181.381, -330.847, 69.316),
	-- vector3(620.843, 269.100, 103.089),
	-- vector3(2581.321, 362.039, 108.468),
	-- vector3(176.631, -1562.025, 29.263),
	-- vector3(176.631, -1562.025, 29.263),
	-- vector3(-319.292, -1471.715, 30.549),
	-- vector3(1784.324, 3330.55, 41.253)
}

Atms = {
    vector3(149.9, -1040.46, 29.37),
    vector3(314.23, -278.83, 54.17),
    vector3(-350.8, -49.57, 49.04),
    vector3(-1213.0, -330.39, 37.79),
    vector3(-2962.71, 483.0, 15.7),
    vector3(1175.07, 2706.41, 38.09),
    vector3(246.64, 223.20, 106.29),
    vector3(-113.22, 6470.03, 31.63)
}

tattoShops = {
	vector3(1322.6, -1651.9, 52.3),
	vector3(-1153.6, -1425.6, 4.9),
	vector3(322.1, 180.4, 103.5),
	vector3(-3170.0, 1075.0, 20.8),
	vector3(1864.6, 3747.7, 33.0),
	vector3(-293.7, 6200.0, 31.4),
    vector3(-2908.33, 1.14, 7.97)
}

clotheShops = {
  vector3(72.254, -1399.102, 28.376),
  vector3(-703.776, -152.258, 36.415),
  vector3(-167.863, -298.969, 38.733),
  vector3(428.694, -800.106, 28.491),
  vector3(-829.413, -1073.710, 10.328),
  vector3(-1447.797, -242.461, 48.820),
  vector3(11.632, 6514.224, 30.877),
  vector3(123.646, -219.440, 53.557),
  vector3(1696.291, 4829.312, 41.063),
  vector3(618.093, 2759.629, 41.088),
  vector3(1190.550, 2713.441, 37.222),
  vector3(-1193.429, -772.262, 16.324),
  vector3(-3172.496, 1048.133, 19.863),
  vector3(-1108.441, 2708.923, 18.107)
}

barberShops = {
	vector3(-814.22, -183.7, 37.57),
	vector3(136.78, -1708.4, 29.29),
	vector3(-1282.57, -1116.84, 6.99),
	vector3(1931.41, 3729.73, 32.84),
	vector3(1212.8, -472.9, 65.2),
	vector3(-32.9, -152.3, 56.1),
	vector3(-278.1, 6228.5, 30.7),
    vector3(-1383.35, -634.61, 30.32),
	vector3(-2898.91, -0.03, 7.98)
}

Market = {
    vector3(24.5, -1346.19, 29.5),
    vector3(-3039.91, 584.26, 7.91),
    vector3(-3243.27, 1000.1, 12.83),
    vector3(1728.28, 6416.03, 35.04),
    vector3(1697.96, 4923.04, 42.06),
    vector3(1959.6, 3740.93, 32.34),
    vector3(549.16, 2670.35, 42.16),
    vector3(2677.41, 3279.8, 55.24),
    vector3(2556.19, 380.89, 108.62),
    vector3(372.82, 327.3, 103.57),
    vector3(-47.42, -1758.67, 29.42),
    vector3(-706.17, -914.64, 19.22),
    vector3(-1819.53, 793.49, 138.09),
    vector3(1164.82, -323.66, 69.21),
    vector3(-2932.14, 10.25, 7.95),
    vector3(-1221.38, -907.89, 12.33),
    vector3(-1486.82, -377.48, 40.16),
    vector3(-2966.41, 391.62, 15.04),
    vector3(1165.15, 2710.78, 38.16),
    vector3(1134.3, -983.26, 46.42)
}

silahcikordinat = {
    -- vector3(21.92, -1106.92, 29.8),
    -- vector3(252.14, -50, 69.94),
    -- vector3(-662.3, -935.39, 21.83),
    -- vector3(-1305.6, -394.45, 36.6957),
    -- vector3(-3172.2, 1088.16, 20.8387),
    -- vector3(-1117.8, 2699.08, 18.5489),
    -- vector3(-330.3, 6083.65, 31.45),
    -- vector3(1693.7, 3759.71, 34.71),
    -- vector3(2567.69, 294.007, 108.734),
    -- vector3(810.0469, -2157.77, 29.618),
}
