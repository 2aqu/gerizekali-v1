
--[[
	["vehicleshots"] -> dispatchcodename that you pass with the event of AlertGunShot
	displayCode -> Code to be displayed on the blip message
	description -> Description of the blip message
	radius -> to draw a circle with radius around blip ( the number need to have a  .0  behind it, for example 150.0 or 75.0 )
        -> if u want to have the radius without the blip just make the blipScale = 0
        -> if u want to have the radius centered, disable the offset
	recipientList -> list of job names that can see the blip
	blipSprite -> blip sprite
	blipColour -> blip colour
	blipScale -> blip scale
	blipLength -> time in seconds at which the blip will fade down, lower the time, faster it will fade. Cannot be 0
        offset -> enable or disable the offset for the radius ( radius on 0 and offset on true does nothing )
        blipflash -> enable or disable the flashing blip
]]--

dispatchCodes = {

	["vehicleshots"] =  {displayCode = '10-13', description = "Araçtan Ateş Açıldı", radius = 0, recipientList = {'police', 'state', 'sheriff'}, blipSprite = 119, blipColour = 1, blipScale = 1.5, blipLength = 2, sound = "Lose_1st", sound2 = "GTAO_FM_Events_Soundset", offset = "false", blipflash = "false"},
	["shooting"] =  {displayCode = '10-13', description ="Ateş Edildi", radius = 0, recipientList = {'police', 'state', 'sheriff'}, blipSprite = 110, blipColour = 1, blipScale = 1.5, blipLength = 2, sound = "Lose_1st", sound2 = "GTAO_FM_Events_Soundset", offset = "false", blipflash = "false"},
	["speeding"] =  {displayCode = '10-13', description = "Hız Limiti Aşıldı", radius = 0, recipientList = {'police', 'state', 'sheriff'}, blipSprite = 326, blipColour = 84, blipScale = 1.5, blipLength = 2, sound = "Lose_1st", sound2 = "GTAO_FM_Events_Soundset", offset = "false", blipflash = "false"},
	["fight"] =  {displayCode = '10-10', description = "Kavga", radius = 0, recipientList = {'police', 'state', 'sheriff'}, blipSprite = 685, blipColour = 69, blipScale = 1.5, blipLength = 2, sound = "Lose_1st", sound2 = "GTAO_FM_Events_Soundset", offset = "false", blipflash = "false"},
	["civdown"] =  {displayCode = '10-69', description = "Yaralı Vatandaş", radius = 0, recipientList = {'ambulance'}, blipSprite = 126, blipColour = 3, blipScale = 1.5, blipLength = 2, sound = "Lose_1st", offset = "false", blipflash = "false"},
	["civdead"] =  {displayCode = '10-69', description = "Ağır Yaralı Vatandaş", radius = 0, recipientList = {'ambulance'}, blipSprite = 126, blipColour = 3, blipScale = 1.5, blipLength = 2, sound = "Lose_1st", offset = "false", blipflash = "false"},
	["911call"] =  {displayCode = '911', description = "911 Çağrı", radius = 0, recipientList = {'police', 'state', 'sheriff', 'ambulance'}, blipSprite = 480, blipColour = 1, blipScale = 1.5, blipLength = 2, sound = "robberysound", sound2 = "Lose_1st", offset = "false", blipflash = "false"},
	["311call"] =  {displayCode = '311', description = "311 Çağrı", radius = 0, recipientList = {'police', 'state', 'sheriff', 'ambulance'}, blipSprite = 480, blipColour = 3, blipScale = 1.5, blipLength = 2, sound = "Lose_1st", sound2 = "GTAO_FM_Events_Soundset", offset = "false", blipflash = "false"},
	["officerdown"] =  {displayCode = '10-13A', description = "Memur Vuruldu ACİL!", radius = 15.0, recipientList = {'police', 'state', 'sheriff', 'ambulance'}, blipSprite = 526, blipColour = 1, blipScale = 1.5, blipLength = 2, sound = "panicbutton", offset = "false", blipflash = "true"},
	["officerdown2"] =  {displayCode = '10-13B', description = "Memur Vuruldu ACİL DEĞİL!", radius = 15.0, recipientList = {'police', 'state', 'sheriff', 'ambulance'}, blipSprite = 526, blipColour = 1, blipScale = 1.5, blipLength = 2, sound = "Lose_1st", sound2 = "GTAO_FM_Events_Soundset", offset = "false", blipflash = "true"},
	["pdpanic"] =  {displayCode = '10-99', description = "Memur Yardım Talep Ediyor!", radius = 15.0, recipientList = {'police', 'state', 'sheriff', 'ambulance'}, blipSprite = 526, blipColour = 1, blipScale = 1.5, blipLength = 2, sound = "panicbutton", offset = "false", blipflash = "true"},
	
	["kod0"] =  {displayCode = 'KOD-0', description = "Memur Vuruldu!", radius = 15.0, recipientList = {'police', 'state', 'sheriff', 'ambulance'}, blipSprite = 526, blipColour = 1, blipScale = 1.5, blipLength = 2, sound = "panicbutton", offset = "false", blipflash = "true"},
	["kod20"] =  {displayCode = 'KOD-20', description = "Konum Bildirimi!", radius = 15.0, recipientList = {'police', 'state', 'sheriff', 'ambulance'}, blipSprite = 526, blipColour = 1, blipScale = 1.5, blipLength = 2, sound = "Lose_1st", offset = "false", blipflash = "true"},
	["kod30"] =  {displayCode = 'KOD-30', description = "Araç kovalama!", radius = 15.0, recipientList = {'police', 'state', 'sheriff', 'ambulance'}, blipSprite = 526, blipColour = 1, blipScale = 1.5, blipLength = 2, sound = "Lose_1st", offset = "false", blipflash = "true"},
	["kod50"] =  {displayCode = 'KOD-50', description = "Kaza Durumu!", radius = 15.0, recipientList = {'police', 'state', 'sheriff', 'ambulance'}, blipSprite = 526, blipColour = 1, blipScale = 1.5, blipLength = 2, sound = "Lose_1st", offset = "false", blipflash = "true"},
	["kod99"] =  {displayCode = 'KOD-99', description = "Bütün memurlar atılan konuma!", radius = 15.0, recipientList = {'police', 'state', 'sheriff', 'ambulance'}, blipSprite = 526, blipColour = 1, blipScale = 1.5, blipLength = 2, sound = "panicbutton", offset = "false", blipflash = "true"},

	["emsdown"] =  {displayCode = '10-14A', description = "Yaralı Doktor Acil!", radius = 15.0, recipientList = {'police', 'state', 'sheriff', 'ambulance'}, blipSprite = 526, blipColour = 3, blipScale = 1.5, blipLength = 2, sound = "panicbutton", offset = "false", blipflash = "true"},
	["emsdown2"] =  {displayCode = '10-14B', description = "Yaralı Doktor Acil DEĞİL!", radius = 15.0, recipientList = {'police', 'state', 'sheriff', 'ambulance'}, blipSprite = 526, blipColour = 1, blipScale = 1.5, blipLength = 2, sound = "Lose_1st", sound2 = "GTAO_FM_Events_Soundset", offset = "false", blipflash = "true"},
	["emspanic"] =  {displayCode = '10-99', description = "Doktor Yardım ACİL!", radius = 15.0, recipientList = {'police', 'state', 'sheriff', 'ambulance'}, blipSprite = 526, blipColour = 1, blipScale = 1.5, blipLength = 2, sound = "panicbutton", offset = "false", blipflash = "true"},
	["storerobbery"] =  {displayCode = '10-90', description = "Market Soygunu", radius = 0, recipientList = {'police', 'state', 'sheriff'}, blipSprite = 52, blipColour = 1, blipScale = 1.5, blipLength = 2, sound = "Lose_1st", sound2 = "GTAO_FM_Events_Soundset", offset = "false", blipflash = "false"},
	["bankrobbery"] =  {displayCode = '10-90', description = "Banka Soygunu", radius = 0, recipientList = {'police', 'state', 'sheriff'}, blipSprite = 500, blipColour = 2, blipScale = 1.5, blipLength = 2, sound = "robberysound", offset = "false", blipflash = "false"},
	["paletobankrobbery"] =  {displayCode = '10-90', description = "Paleto Banka Soygunu", radius = 0, recipientList = {'police', 'state', 'sheriff'}, blipSprite = 500, blipColour = 12, blipScale = 1.5, blipLength = 2, sound = "robberysound", offset = "false", blipflash = "false"},
	["pacificbankrobbery"] =  {displayCode = '10-90', description = "Pacific Banka Soygunu", radius = 0, recipientList = {'police', 'state', 'sheriff'}, blipSprite = 500, blipColour = 5, blipScale = 1.5, blipLength = 2, sound = "robberysound", offset = "false", blipflash = "false"},
	["prisonbreak"] =  {displayCode = '10-90', description = "Hapishaneden Kaçış", radius = 0, recipientList = {'police', 'state', 'sheriff'}, blipSprite = 189, blipColour = 59, blipScale = 1.5, blipLength = 2, sound = "robberysound", offset = "false", blipflash = "false"},
	["vangelicorobbery"] =  {displayCode = '10-90', description = "Kuyumcu Soygunu", radius = 0, recipientList = {'police', 'state', 'sheriff'}, blipSprite = 434, blipColour = 5, blipScale = 1.5, blipLength = 2, sound = "robberysound", offset = "false", blipflash = "false"},
	["houserobbery"] =  {displayCode = '10-90', description = "Ev Soygunu", radius = 0, recipientList = {'police', 'state', 'sheriff'}, blipSprite = 40, blipColour = 5, blipScale = 1.5, blipLength = 2, sound = "Lose_1st", sound2 = "GTAO_FM_Events_Soundset", offset = "false", blipflash = "false"},
	["suspicioushandoff"] =  {displayCode = '10-60', description = "Şüpheli Hareket", radius = 120.0, recipientList = {'police', 'state', 'sheriff'}, blipSprite = 469, blipColour = 52, blipScale = 0, blipLength = 2, sound = "Lose_1st", sound2 = "GTAO_FM_Events_Soundset", offset = "true", blipflash = "false"},
	["yachtheist"] =  {displayCode = '10-65', description = "Yat Soygunu", radius = 0, recipientList = {'police', 'state', 'sheriff'}, blipSprite = 455, blipColour = 60, blipScale = 1.5, blipLength = 2, sound = "robberysound", offset = "false", blipflash = "false"},
	["vehicletheft"] =  {displayCode = '10-35', description = "Araç Soygunu", radius = 0, recipientList = {'police', 'state', 'sheriff'}, blipSprite = 595, blipColour = 60, blipScale = 1.5, blipLength = 2, sound = "Lose_1st", sound2 = "GTAO_FM_Events_Soundset", offset = "false", blipflash = "false"},
	["signrobbery"] =  {displayCode = '10-35', description = "Sign Robbery Committed", radius = 0, recipientList = {'police', 'state', 'sheriff'}, blipSprite = 358, blipColour = 60, blipScale = 1.5, blipLength = 2, sound = "Lose_1st", sound2 = "GTAO_FM_Events_Soundset", offset = "false", blipflash = "false"},
	["susactivity"] =  {displayCode = '10-66', description = "Şüpheli Durum", radius = 0, recipientList = {'police', 'state', 'sheriff'}, blipSprite = 66, blipColour = 37, blipScale = 0.5, blipLength = 2, sound = "Lose_1st", sound2 = "GTAO_FM_Events_Soundset", offset = "false", blipflash = "false"},
	["platescan"] =  {displayCode = '10-99', description = "Aranan Kişi", radius = 0, recipientList = {'police', 'state', 'sheriff'}, blipSprite = 480, blipColour = 1, blipScale = 1.0, blipLength = 2, sound = "robberysound", sound2 = "GTAO_FM_Events_Soundset", offset = "false", blipflash = "true"},

	-- Rainmad Heists
	["bobcat"] =  {displayCode = '10-90', description = "Bobcat Soygunu", radius = 0, recipientList = {'police', 'state', 'sheriff'}, blipSprite = 269, blipColour = 59, blipScale = 1.5, blipLength = 2, sound = "robberysound", offset = "false", blipflash = "false"},
	["artgalleryrobbery"] =  {displayCode = '10-90', description = "Sanat Galerisi Soygunu", radius = 0, recipientList = {'police', 'state', 'sheriff'}, blipSprite = 269, blipColour = 59, blipScale = 1.5, blipLength = 2, sound = "robberysound", offset = "false", blipflash = "false"},
	["humanelabsrobbery"] =  {displayCode = '10-90', description = "Humane Labs Soygunu", radius = 0, recipientList = {'police', 'state', 'sheriff'}, blipSprite = 499, blipColour = 1, blipScale = 1.5, blipLength = 2, sound = "robberysound", offset = "false", blipflash = "false"},
	["trainrobbery"] =  {displayCode = '10-90', description = "Tren Soygunu", radius = 0, recipientList = {'police', 'state', 'sheriff'}, blipSprite = 667, blipColour = 78, blipScale = 1.5, blipLength = 2, sound = "robberysound", offset = "false", blipflash = "false"},
	["vanrobbery"] =  {displayCode = '10-90', description = "Banka Aracı Soygunu", radius = 0, recipientList = {'police', 'state', 'sheriff'}, blipSprite = 67, blipColour = 59, blipScale = 1.5, blipLength = 2, sound = "robberysound", offset = "false", blipflash = "false"},
	["undergroundrobbery"] =  {displayCode = '10-90', description = "Underground Tunnels Robbery In Progress", radius = 0, recipientList = {'police', 'state', 'sheriff'}, blipSprite = 486, blipColour = 59, blipScale = 1.5, blipLength = 2, sound = "robberysound", offset = "false", blipflash = "false"},
	["drugboatrobbery"] =  {displayCode = '10-31', description = "Teknede Şüpheli Hareket", radius = 0, recipientList = {'police', 'state', 'sheriff'}, blipSprite = 427, blipColour = 26, blipScale = 1.5, blipLength = 2, sound = "robberysound", offset = "false", blipflash = "false"},
	["unionrobbery"] =  {displayCode = '10-90', description = "Union Depository Robbery In Progress", radius = 0, recipientList = {'police', 'state', 'sheriff'}, blipSprite = 500, blipColour = 60, blipScale = 1.5, blipLength = 2, sound = "robberysound", offset = "false", blipflash = "false"},
	["carboosting"] =  {displayCode = '10-50', description = "Car Boosting In Progress", radius = 0, recipientList = {'police', 'state', 'sheriff'}, blipSprite = 595, blipColour = 60, blipScale = 1.5, blipLength = 2, sound = "Lose_1st", sound2 = "GTAO_FM_Events_Soundset", offset = "false", blipflash = "false"},
	["carjack"] =  {displayCode = '10-35', description = "Araç Soygunu", radius = 0, recipientList = {'police', 'state', 'sheriff'}, blipSprite = 595, blipColour = 60, blipScale = 1.5, blipLength = 2, sound = "Lose_1st", sound2 = "GTAO_FM_Events_Soundset", offset = "false", blipflash = "false"},
	["explosion"] =  {displayCode = '10-80', description = "Patlama Tespit Edildi", radius = 0, recipientList = {'police', 'state', 'sheriff'}, blipSprite = 436, blipColour = 1, blipScale = 1.5, blipLength = 2, sound = "Lose_1st", sound2 = "GTAO_FM_Events_Soundset", offset = "false", blipflash = "false"},
}
