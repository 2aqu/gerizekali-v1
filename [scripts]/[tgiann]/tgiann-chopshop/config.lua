tgiCoreExports = exports["tgiann-core"]
config = tgiCoreExports:getConfig()
config.ShowBlip = false
config.BlipName = "Chop Shop"
config.minPolice = 0
config.startCoolDownPlayerJoinig = false
config.policeAlertPercent = 50
config.clientCooldown = 1800000 -- 30 minutes(1800000)
config.NPCHash = 68070371
config.NPCShop = vector4(1130.39, -1828.27, 2141.71, 55.4)
config.NPCName = "Robban"

config.moneyType = "cash" -- "black"

--need to add the items to the database
--[[ 
--qb-core\shared\items.lua
['battery'] = {['name'] = 'battery', ['label'] = 'Battery', ['weight'] = 0, ['type'] = 'item', ['image'] = 'battery.png', ['unique'] = false, ['useable'] = false, ['shouldClose'] = false,	['combinable'] = nil, ['description'] = ''},
['airbag'] = {['name'] = 'airbag', ['label'] = 'Air Bag', ['weight'] = 0, ['type'] = 'item', ['image'] = 'battery.png', ['unique'] = false, ['useable'] = false, ['shouldClose'] = false ['combinable'] = nil, ['description'] = ''},
['lowradio'] = {['name'] = 'lowradio', ['label'] = 'Low Radio', ['weight'] = 0, ['type'] = 'item', ['image'] = 'battery.png', ['unique'] = false, ['useable'] = false, ['shouldClose'] = false, ['combinable'] = nil, ['description'] = ''},
['stockrim'] = {['name'] = 'stockrim', ['label'] = 'Stockrim', ['weight'] = 0, ['type'] = 'item', ['image'] = 'battery.png', ['unique'] = false, ['useable'] = false, ['shouldClose'] = false, ['combinable'] = nil, ['description'] = ''},
['highradio'] = {['name'] = 'highradio', ['label'] = 'High Radio', ['weight'] = 0, ['type'] = 'item', ['image'] = 'battery.png', ['unique'] = false, ['useable'] = false, ['shouldClose'] = false,	['combinable'] = nil, ['description'] = ''},
['highrim'] = {['name'] = 'highrim', ['label'] = 'Highrim', ['weight'] = 0, ['type'] = 'item', ['image'] = 'battery.png', ['unique'] = false, ['useable'] = false, ['shouldClose'] = false,	['combinable'] = nil, ['description'] = ''},
['door'] = {['name'] = 'door', ['label'] = 'Vehicle Door', ['weight'] = 0, ['type'] = 'item', ['image'] = 'battery.png', ['unique'] = false, ['useable'] = false, ['shouldClose'] = false ['combinable'] = nil, ['description'] = ''},
['speaker'] = {['name'] = 'speaker', ['label'] = 'Vehilce Speaker', ['weight'] = 0, ['type'] = 'item', ['image'] = 'battery.png', ['unique'] = false, ['useable'] = false, ['shouldClose'] = false,	['combinable'] = nil, ['description'] = ''},
]]
config.Items = {
	-- İtem name and price
    ["battery"] = 100,
    ["airbag"] = 46,
    ["lowradio"] = 23,
    ["stockrim"] = 67,
    ["highradio"] = 25,
    ["highrim"] = 110,
    ["door"] = 130,
    ["speaker"] = 24
}

function policeAlertFunction()
    -- Your Police Alert Event
    exports['ps-dispatch']:Carchop()
end

-- just edit the time, marker-label and progressbar-label
aracParcaNokta = {
	{-- front left door
		["marker-label"] = "Ön Sol Kapı",
		["kod-isim"] = "on_sol_kapi",
		["time"] = 6500,
		["progressbar-label"] = "Kapıyı Söküyorsun",
		["parca-native-no"] = 0,
		["kordinat"] = {
			["x"] = -558.96,
			["y"] = -1696.59,
			["z"] = 19.13,
			["h"] = 296.08,
		},
		["animasyon"] = {
			["seneryo"] = "true",
			["seneryo-anim"] = "WORLD_HUMAN_WELDING"
		},
		["prop"] =  "prop_car_door_01",
		["entity-attach"] = {
			["bone"] = 57005,
			["xPos"] = 0.4,
			["yPos"] = 0,
			["zPos"] = 0,
			["xRot"] = 0,
			["yRot"] = 270.0,
			["zRot"] = 60.0,
		},
		["prop-anim"] = {
			["prop-dics"] = "anim@heists@narcotics@trash",
			["prop-name"] = "walk"
		}
	},
	{
		["marker-label"] = "Kutuluyorsun",
		["kod-isim"] = "on_sol_kapi_kutu",
		["time"] = 2500,
		["progressbar-label"] = "...",
		["kordinat"] = {
			["x"] = -556.23,
			["y"] = -1704.21,
			["z"] = 19.06,
			["h"] = 114.17,
		},
		["animasyon"] = {
			["seneryo"] = false,
			["anim-disc"] = "anim@heists@load_box",
			["anim-name"] = "load_box_3"
		},
		["prop"] =  "sil",
	},
	{ -- front right door
		["marker-label"] = "Ön Sağ Kappı",
		["kod-isim"] = "on_sag_kapi",
		["time"] = 6500,
		["progressbar-label"] = "Kapıyı Söküyorsun",
		["parca-native-no"] = 1,
		["kordinat"] = {
			["x"] = -556.79,
			["y"] = -1694.99,
			["z"] = 19.2,
			["h"] = 120.54,
		},
		["animasyon"] = {
			["seneryo"] = true,
			["seneryo-anim"] = "WORLD_HUMAN_WELDING"
		},
		["prop"] =  "prop_car_door_01",
		["entity-attach"] = {
			["bone"] = 57005,
			["xPos"] = 0.4,
			["yPos"] = 0,
			["zPos"] = 0,
			["xRot"] = 0,
			["yRot"] = 270.0,
			["zRot"] = 60.0,
		},
		["prop-anim"] = {
			["prop-dics"] = "anim@heists@narcotics@trash",
			["prop-name"] = "walk"
		}
	},
	{
		["marker-label"] = "Kutuluyorsun",
		["kod-isim"] = "on_sag_kapi_kutu",
		["time"] = 2500,
		["progressbar-label"] = "...",
		["kordinat"] = {
			["x"] = -556.23,
			["y"] = -1704.21,
			["z"] = 19.06,
			["h"] = 114.17,
		},
		["animasyon"] = {
			["seneryo"] = false,
			["anim-disc"] = "anim@heists@load_box",
			["anim-name"] = "load_box_3"
		},
		["prop"] =  "sil",
	},
	{ -- back left door
		["marker-label"] = "Arka Sol Kapı",
		["kod-isim"] = "arka_sol_kapi",
		["time"] = 6500,
		["progressbar-label"] = "Kapıyı Söküyorsun",
		["parca-native-no"] = 2,
		["kordinat"] = {
			["x"] = -558.48,
			["y"] = -1697.1,
			["z"] = 19.13,
			["h"] = 304.72,
		},
		["animasyon"] = {
			["seneryo"] = true,
			["seneryo-anim"] = "WORLD_HUMAN_WELDING"
		},
		["prop"] =  "prop_car_door_01",
		["entity-attach"] = {
			["bone"] = 57005,
			["xPos"] = 0.4,
			["yPos"] = 0,
			["zPos"] = 0,
			["xRot"] = 0,
			["yRot"] = 270.0,
			["zRot"] = 60.0,
		},
		["prop-anim"] = {
			["prop-dics"] = "anim@heists@narcotics@trash",
			["prop-name"] = "walk"
		}
	},
	{
		["marker-label"] = "Kutuluyorsun",
		["kod-isim"] = "arka_sol_kapi_kutu",
		["time"] = 2500,
		["progressbar-label"] = "...",
		["kordinat"] = {
			["x"] = -556.23,
			["y"] = -1704.21,
			["z"] = 19.06,
			["h"] = 114.17,
		},
		["animasyon"] = {
			["seneryo"] = false,
			["anim-disc"] = "anim@heists@load_box",
			["anim-name"] = "load_box_3"
		},
		["prop"] =  "sil",
	},
	{  -- back right door
		["marker-label"] = "Arka Sağ Kapı",
		["kod-isim"] = "arka_sag_kapi",
		["time"] = 6500,
		["progressbar-label"] = "Kapıyı Söküyorsun",
		["parca-native-no"] = 3,
		["kordinat"] = {
			["x"] = -556.26,
			["y"] = -1695.81,
			["z"] = 19.19,
			["h"] = 122.01,
		},
		["animasyon"] = {
			["seneryo"] = true,
			["seneryo-anim"] = "WORLD_HUMAN_WELDING",
		},
		["prop"] =  "prop_car_door_01",
		["entity-attach"] = {
			["bone"] = 57005,
			["xPos"] = 0.4,
			["yPos"] = 0,
			["zPos"] = 0,
			["xRot"] = 0,
			["yRot"] = 270.0,
			["zRot"] = 60.0,
		},
		["prop-anim"] = {
			["prop-dics"] = "anim@heists@narcotics@trash",
			["prop-name"] = "walk"
		}
	},
	{
		["marker-label"] = "Kutuluyorsun",
		["kod-isim"] = "arka_sag_kapi_kutu",
		["time"] = 2500,
		["progressbar-label"] = "...",
		["kordinat"] = {
			["x"] = -556.23,
			["y"] = -1704.21,
			["z"] = 19.06,
			["h"] = 114.17,
		},
		["animasyon"] = {
			["seneryo"] = false,
			["anim-disc"] = "anim@heists@load_box",
			["anim-name"] = "load_box_3"
		},
		["prop"] =  "sil",
	},
	{ -- trunk
		["marker-label"] = "Bagaj",
		["kod-isim"] = "bagaj",
		["time"] = 6500,
		["progressbar-label"] = "Bagajı Söküyorsun",
		["parca-native-no"] = 5,
		["kordinat"] = {
			["x"] = -555.21,
			["y"] = -1697.39,
			["z"] = 19.18,
			["h"] = 75.46,
		},
		["animasyon"] = {
			["seneryo"] = true,
			["seneryo-anim"] = "PROP_HUMAN_BUM_BIN"
		},
		["prop"] =  "prop_cs_cardbox_01",
		["entity-attach"] = {
			["bone"] = 28422,
			["xPos"] = 0.0,
			["yPos"] = -0.03,
			["zPos"] = 0.0,
			["xRot"] = 5.0,
			["yRot"] = 0.0,
			["zRot"] = 0.0,
		},
		["prop-anim"] = {
			["prop-dics"] = "anim@heists@box_carry@",
			["prop-name"] = "idle"
		}
	},
	{
		["marker-label"] = "Kutuluyorsun",
		["kod-isim"] = "bagaj_kutula",
		["time"] = 2500,
		["progressbar-label"] = "...",
		["kordinat"] = {
			["x"] = -556.23,
			["y"] = -1704.21,
			["z"] = 19.06,
			["h"] = 114.17,
		},
		["animasyon"] = {
			["seneryo"] = false,
			["anim-disc"] = "anim@heists@load_box",
			["anim-name"] = "load_box_3"
		},
		["prop"] =  "sil",
	},
	{ -- hood
		["marker-label"] = "Kaput",
		["kod-isim"] = "on_kaput",
		["time"] = 6500,
		["progressbar-label"] = "Kaputu Söküyorsun",
		["parca-native-no"] = 4,
		["kordinat"] = {
			["x"] = -559.76,
			["y"] = -1694.32,
			["z"] = 19.15,
			["h"] = 252.67,
		},
		["animasyon"] = {
			["seneryo"] = true,
			["seneryo-anim"] = "PROP_HUMAN_BUM_BIN"
		},
		["prop"] =  "prop_cs_cardbox_01",
		["entity-attach"] = {
			["bone"] = 28422,
			["xPos"] = 0.0,
			["yPos"] = -0.03,
			["zPos"] = 0.0,
			["xRot"] = 5.0,
			["yRot"] = 0.0,
			["zRot"] = 0.0,
		},
		["prop-anim"] = {
			["prop-dics"] = "anim@heists@box_carry@",
			["prop-name"] = "idle"
		}
	},
	{
		["marker-label"] = "Kutuluyorsun",
		["kod-isim"] = "on_kaput_kutula",
		["time"] = 2500,
		["progressbar-label"] = "...",
		["kordinat"] = {
			["x"] = -556.23,
			["y"] = -1704.21,
			["z"] = 19.06,
			["h"] = 114.17,
		},
		["animasyon"] = {
			["seneryo"] = false,
			["anim-disc"] = "anim@heists@load_box",
			["anim-name"] = "load_box_3"
		},
		["prop"] =  "sil",
	},
	{ -- radio
		["marker-label"] = "Radyo",
		["kod-isim"] = "radyo",
		["time"] = 6500,
		["progressbar-label"] = "Radyoyu Söküyorsun",
		["parca-native-no"] = nil,
		["kordinat"] = {
			["x"] = -558.72,
			["y"] = -1696.33,
			["z"] = 19.13,
			["h"] = 313.86,
		},
		["animasyon"] = {
			["seneryo"] = true,
			["seneryo-anim"] = "PROP_HUMAN_BUM_BIN"
		},
		["prop"] =  "prop_cs_cardbox_01",
		["entity-attach"] = {
			["bone"] = 28422,
			["xPos"] = 0.0,
			["yPos"] = -0.03,
			["zPos"] = 0.0,
			["xRot"] = 5.0,
			["yRot"] = 0.0,
			["zRot"] = 0.0,
		},	
		["prop-anim"] = {
			["prop-dics"] = "anim@heists@box_carry@",
			["prop-name"] = "idle"
		}
	},
	{
		["marker-label"] = "Kutuluyorsun",
		["kod-isim"] = "radyo_kutula",
		["time"] = 2500,
		["progressbar-label"] = "...",
		["kordinat"] = {
			["x"] = -556.23,
			["y"] = -1704.21,
			["z"] = 19.06,
			["h"] = 114.17,
		},
		["animasyon"] = {
			["seneryo"] = false,
			["anim-disc"] = "anim@heists@load_box",
			["anim-name"] = "load_box_3"
		},
		["prop"] =  "sil",
	},
	{ -- collect parts
		["marker-label"] = "Araç Parçalarını Topla",
		["kod-isim"] = "parcaları_al",
		["time"] = 12500,
		["progressbar-label"] = "Parçaları topluyorsun...",
		["kordinat"] = {
			["x"] = -556.23,
			["y"] = -1704.21,
			["z"] = 19.06,
			["h"] = 114.17,
		},
		["animasyon"] = {
			["seneryo"] = false,
			["anim-disc"] = "anim@mp_fireworks",
			["anim-name"] = "place_firework_3_box"
		},
		["prop"] =  "son",
	}

}