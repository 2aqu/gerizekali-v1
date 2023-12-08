--[[ 
    - this script needs tgiann-core script to work, you can download the script from your keymaster account
      Start tgiann-core script after es_extented/qb-core script and before tgiann-* scripts
      Adjust the tgiann-core config file according to the framework you are using
]]

tgiCoreExports = exports["tgiann-core"]
config = tgiCoreExports:getConfig()

if config.framework == "esx" then
    config.vehicleTableName = "owned_vehicles"
elseif config.framework == "qb" then
    config.vehicleTableName = "player_vehicles"
end

config.ResellPercentage = 0.75 --money to be refunded when the purchased vehicle is sold back to the dealership
config.npcSellPercentage = 0.20 -- When a vehicle is purchased from the NPC gallery, what percentage of the vehicle will be given to the cardealer job
config.dealerBuyPercentage = 0.90 -- At what percent price the gallery owner will buy the vehicle (example: Vehicle Price 100.000, config Value 0.90, New Buy Price = 100000*0.90= 90000$)

config.PlateLetters = 3
config.PlateNumbers = 3
config.PlateUseSpace = false

config.jobname = "cardealer"

config.testCarTime = 30
config.testCarPrice = 100

config.activeStockSystem = false

config.blipCoord = vector3(-43.52, -1099.02, 26.42)
config.ShopInside = vector3(-75.776741027832, -821.27557373047, 284.73159790039)
config.ShopInsideHeading = 193.0
config.BuySpawnCarCoord = vector4(-29.71, -1088.74, 26.42, 338.26)
config.DealerCarSpawn = vector4(-37.31, -1102.53, 26.42, 337.23)
config.carDealerMaxStock = 2
config.lang = "tr"
--[[ 
	config.langs[config.lang].adminCmdError1
]]
config.langs = {
	tr = {
		unknown = "Bilinmiyor",
		noInStock = "Stokta Araç Yok",
		returnVehicle = "Aracı üreticiye iade et",
		buyVehicle = "Araç Satın Al",
		popVehicle = "Stoktan Araç Çıkart",
		depopVehicle = "Aracı Stoğa Geri Koy",
		createBill = "Fatura oluştur",
		sellClosestPlayer = "Aracı At [Yakındaki Oyuncu]",
		notFoundSellVehicle = "Satılacak Araç Bulunamadı",
		invoiceAmount = "Fatura tutarı",
		invalidQuantity = "Gerçersiz tutar",
		noFoundNearbyPlayer = "Yakında oyuncu bulunamadı",
		vehicleGallery = "Araç Galerisi",
		npcActive = "Aktif",
		npcPassive = "Pasif",
		bossAction = "Patron işlemleri",
		soldVehicle = "Satılan Araçlar listesi",
		npcGalleryStatus = "NPC Galeri Durum: ",
		soldVehicleHeader = { "Müşteri", "Model", "Plaka", "Satıcı", "Tarih" },
		npcNowActive = "NPC galeri aktif",
		npcNowPassive = "NPC galeri pasif",
		openCatalog = "Kataloğu Aç",
		sellVehicle = "Aracı Sat",
		cancel = "İptal",
		sellVehicleProvider = "Aracı Sat ($%s)",
		notBelongYou = "Bu araç sana ait değil",
		youCantSellVehicle = "Bu Aracı Galeriye Geri Satamazsın",
		selledVehicle = "%s model araç %s$ fiyatına satıldı",
		vehicleLoading = "Arac modeli yükleniyor! Lütfen bekleyiniz...",
		carDealerIsActive = "Şehirde aktif galerici bulunduğu için oto katalogtan araç satın alamazsın!",
		disableCatalog = "Galeri sahibi tarafından oto katalog devre dışı bırakıldı",
		noSpawnLocClear = "Yakınlardaki araç yüzünden araç satın alınamıyor!",
		noSpawnLocClear2 = "Spawn noktasında zaten bir araç var",
		boughtVehicle = "Bir araç satın alındı",
		noMoneyInCompany = "Şirket hesabınızda yeterli para yok",
		maxvVehicleStock = "Araç stoğuna maksimum %s araç koyabilirsin!",
		testDriveStarted = "%s Saniyelik test sürüşü başladı!",
		noTestSpawnLocClear = "Yakınlardaki Araç Yüzünden Test Sürüşü Başlatılamıyor",
		vehicleIsNowYours = "%s plakalı araç artık senin",
		vehicleTransferredPlayer = "%s plakalı araç %s kişisine devredildi",
		npcName = "NPC",
		noMoney = "Yeterli Paran Yok",
		outOfStock = "Stokta Bu Araçtan Yok",
		soldFor = "%s$ Karşılığında Satıldı",
		adminStockChanged = "Araç stoğu Değiştirildi",
		adminCmdError1 = "Girdiğiniz Araç Adeti Değeri Bir Sayı Olmalıdır!",
		adminCmdError2 = "Araç Modeli veya Adeti Boş Olamaz!",
		cantSellError = "Aracı galeri fiyatından fazlasına satamazsın",
	},
	en = {
		unknown = "Unknown",
		noInStock = "No Vehicles in Stock",
		returnVehicle = "Return the vehicle to the provider",
		buyVehicle = "Buy Vehicle",
		popVehicle = "Put out vehicle for sale",
		depopVehicle = "Return vehicle to garage",
		createBill = "Create bill",
		sellClosestPlayer = "Sell Vehicle [Nearby Player]",
		notFoundSellVehicle = "No Vehicle Found",
		invoiceAmount = "Invoice amount",
		invalidQuantity = "Invalid Quantity",
		noFoundNearbyPlayer = "No players found nearby",
		vehicleGallery = "Vehicle Gallery",
		npcActive = "Active",
		npcPassive = "Passive",
		bossAction = "Boss Action",
		soldVehicle = "list of sold vehicles",
		npcGalleryStatus = "NPC gallery status: ",
		soldVehicleHeader = { "Customer", "Model", "Plate", "Seller", "Date" },
		npcNowActive = "NPC gallery active",
		npcNowPassive = "NPC gallery passive",
		openCatalog = "Open catalog",
		sellVehicle = "Sell vehicle",
		cancel = "Cancel",
		sellVehicleProvider = "Sell Vehicle ($%s)",
		notBelongYou = "This vehicle does not belong to you",
		youCantSellVehicle = "You Cannot Sell This Vehicle Back to the Gallery",
		selledVehicle = "%s model vehicle sold for %s$",
		vehicleLoading = "The vehicle model is loading! Please wait...",
		carDealerIsActive = "You cannot buy a vehicle from the vehicle catalog because there is an active cardealer in the city!",
		disableCatalog = "VEhicle catalog disabled by car dealer owner",
		noSpawnLocClear = "Unable to purchase vehicle because of nearby vehicle!",
		noSpawnLocClear2 = "There is already a vehicle at the spawn point",
		boughtVehicle = "You bought a vehicle",
		noMoneyInCompany = "There is not enough money in your company account",
		maxvVehicleStock = "You can put a maximum of %s vehicles in your vehicle stock!" ,
		testDriveStarted = "%s Second Test Drive Started!",
		noTestSpawnLocClear = "Unable to Start Test Drive due to Nearby Vehicle",
		vehicleIsNowYours = "The vehicle with license plate 321 is now yours",
		vehicleTransferredPlayer = "The vehicle with license plate %s was transferred to %s",
		npcName = "NPC",
		noMoney = "You Don't Have Enough Money",
		outOfStock = "Out of Stock This Vehicle",
		soldFor = "Sold for $%s",
		adminStockChanged = "Vehicle stock Changed",
		adminCmdError1 = "The Vehicle Stock Quantity Value You Enter Must Be A Number!",
		adminCmdError2 = "Vehicle Model or Quantity Cannot Be Empty!",
		cantSellError = "You cannot sell the vehicle for more than the showroom price",
	}
}

config.Zones = {
	OpenResellerMenu = {
	},

	BossActions = {
		vector4(-32.15, -1114.41, 26.42, 114.74)
	},

	Showroom = {
		vector3(-57.16, -1097.27, 26.42),
	},

	ResellVehicle = {
	},
}

config.cars = {
    {
        coord = vector4(-47.13, -1093.72, 25.15, 134.49),
        model = `tenf2`,
        spawnId = 0
	}, 
    { 
        coord = vector4(-41.44, -1095.95, 25.15, 134.49),
        model = `corsita`,
        spawnId = 0
	},
	{
        coord = vector4(-37.47, -1088.09, 25.15, 250.1),
        model = `jester`,
        spawnId = 0
	},
}

config.carList = {
	["Motorcycle"] = {
		[`manchez2`] = {
			["model"] = "manchez2",
			["count"] = 30,
			["price"] = 50000,
		},
		[`enduro`] = {
			["model"] = "enduro",
			["count"] = 30,
			["price"] = 50000,
		},
		[`gargoyle`] = {
			["model"] = "gargoyle",
			["count"] = 30,
			["price"] = 35000,
		},
		[`sanctus`] = {
			["model"] = "sanctus",
			["count"] = 30,
			["price"] = 90000,
		},
		[`nightblade`] = {
			["model"] = "nightblade",
			["count"] = 30,
			["price"] = 90000,
		},
		[`avarus`] = {
			["model"] = "avarus",
			["count"] = 30,
			["price"] = 40000,
		},
		[`chimera`] = {
			["model"] = "chimera",
			["count"] = 30,
			["price"] = 40000,
		},
		[`wolfsbane`] = {
			["model"] = "wolfsbane",
			["count"] = 5,
			["price"] = 35000,
		},
		[`zombieb`] = {
			["model"] = "zombieb",
			["count"] = 30,
			["price"] = 43500,
		},
		[`akuma`] = {
			["model"] = "akuma",
			["count"] = 30,
			["price"] = 60000,
		},
		[`bagger`] = {
			["model"] = "bagger",
			["count"] = 30,
			["price"] = 30000,
		},
		[`bati`] = {
			["model"] = "bati",
			["count"] = 30,
			["price"] = 60000,
		},
		[`carbonrs`] = {
			["model"] = "carbonrs",
			["count"] = 30,
			["price"] = 70000,
		},
		[`daemon`] = {
			["model"] = "daemon",
			["count"] = 30,
			["price"] = 150000,
		},
		[`double`] = {
			["model"] = "double",
			["count"] = 30,
			["price"] = 70000,
		},
		[`faggio`] = {
			["model"] = "faggio",
			["count"] = 10,
			["price"] = 1000,
		},
		[`hakuchou`] = {
			["model"] = "hakuchou",
			["count"] = 30,
			["price"] = 80000,
		},
		[`hexer`] = {
			["model"] = "hexer",
			["count"] = 30,
			["price"] = 45000,
		},
		[`innovation`] = {
			["model"] = "innovation",
			["count"] = 30,
			["price"] = 70000,
		},
		[`nemesis`] = {
			["model"] = "nemesis",
			["count"] = 30,
			["price"] = 30000,
		},
		[`ruffian`] = {
			["model"] = "ruffian",
			["count"] = 30,
			["price"] = 45000,
		},
		[`sanchez2`] = {
			["model"] = "sanchez2",
			["count"] = 30,
			["price"] = 30000,
		},
		[`sovereign`] = {
			["model"] = "sovereign",
			["count"] = 30,
			["price"] = 45000,
		},
		[`vader`] = {
			["model"] = "vader",
			["count"] = 30,
			["price"] = 45000,
		},
	},
	["Bicycle"] = {
		[`tribike`] = {
			["model"] = "tribike",
			["count"] = 500000,
			["price"] = 500,
		},
		[`tribike2`] = {
			["model"] = "tribike2",
			["count"] = 500000,
			["price"] = 500,
		},
		[`bmx`] = {
			["model"] = "bmx",
			["count"] = 500000,
			["price"] = 350,
		},
		[`cruiser`] = {
			["model"] = "cruiser",
			["count"] = 500000,
			["price"] = 150,
		},
		[`tribike3`] = {
			["model"] = "tribike3",
			["count"] = 500000,
			["price"] = 500,
		},
		[`fixter`] = {
			["model"] = "fixter",
			["count"] = 500000,
			["price"] = 500,
		},
		[`scorcher`] = {
			["model"] = "scorcher",
			["count"] = 500000,
			["price"] = 650,
		},
	},
	 ["S Class"] = { 
	 	[`deveste`] = {
	 		["model"] = "deveste",
	 		["count"] = 10,
	 		["price"] = 1200000,
	 	},
	 	[`zorrusso`] = {
	 		["model"] = "zorrusso",
	 		["count"] = 10,
	 		["price"] = 900000,
	 	},
	 	[`visione`] = {
	 		["model"] = "visione",
	 		["count"] = 5,
	 		["price"] = 1550000,
	 	},
	 	[`imperator`] = {
	 		["model"] = "zentorno",
	 		["count"] = 10,
	 		["price"] = 750000,
	 	},
	 	[`xa21 `] = {
	 		["model"] = "xa21",
	 		["count"] = 10,
	 		["price"] = 1300000,
	 	},
	 	[`vacca`] = {
	 		["model"] = "vacca",
	 		["count"] = 10,
	 		["price"] = 1100000,
	 	},
	 	[`vagner `] = {
	 		["model"] = "vagner",
	 		["count"] = 10,
	 		["price"] = 1660000,
	 	},
	 	[`tyrant`] = {
	 		["model"] = "tyrant",
	 		["count"] = 10,
	 		["price"] = 2100000,
	 	},
	 	[`turismor`] = {
	 		["model"] = "turismor",
	 		["count"] = 10,
	 		["price"] = 2100000,
	 	},
	 	[`thrax`] = {
	 		["model"] = "thrax",
	 		["count"] = 10,
	 		["price"] = 2800000,
	 	},
	 	[`tempesta`] = {
	 		["model"] = "tempesta",
	 		["count"] = 10,
	 		["price"] = 1500000,
	 	},
	 	[`t20`] = {
	 		["model"] = "t20",
	 		["count"] = 10,
	 		["price"] = 1650000,
	 	},
	 	[`reaper`] = {
	 		["model"] = "reaper",
	 		["count"] = 10,
	 		["price"] = 800000,
	 	},
	 	[`penetrator `] = {
	 		["model"] = "penetrator",
	 		["count"] = 10,
	 		["price"] = 1000000,
	 	},
	 	[`pfister811 `] = {
	 		["model"] = "pfister811",
	 		["count"] = 10,
	 		["price"] = 800000,
	 	},
	 	[`osiris`] = {
	 		["model"] = "osiris",
	 		["count"] = 10,
	 		["price"] = 1250000,
	 	},
	 	[`nero`] = {
	 		["model"] = "nero",
	 		["count"] = 10,
	 		["price"] = 1700000,
	 	},
	 	[`nero2`] = {
	 		["model"] = "nero2",
	 		["count"] = 10,
	 		["price"] = 1800000,
	 	},
	 	[`krieger`] = {
	 		["model"] = "krieger",
	 		["count"] = 10,
	 		["price"] = 2500000,
	 	},
	 	[`italigtb2`] = {
	 		["model"] = "italigtb2",
	 		["count"] = 10,
	 		["price"] = 1250000,
	 	},
	 	[`infernus`] = {
	 		["model"] = "infernus",
	 		["count"] = 10,
	 		["price"] = 1000000,
	 	},
	 	[`previon`] = {
	 		["model"] = "previon",
	 		["count"] = 10,
	 		["price"] = 700000,
	 	},
	 	[`vectre`] = {
	 		["model"] = "vectre",
	 		["count"] = 10,
	 		["price"] = 700000,
	 	},
	 	[`dominator7`] = {
	 		["model"] = "dominator7",
	 		["count"] = 10,
	 		["price"] = 1300000,
	 	},
	 	[`comet6`] = {
	 		["model"] = "comet6",
	 		["count"] = 10,
	 		["price"] = 950000,
	 	},
	 	[`remus`] = {
	 		["model"] = "remus",
	 		["count"] = 10,
	 		["price"] = 800000,
	 	},
	 	[`tailgater2`] = {
	 		["model"] = "tailgater2",
	 		["count"] = 10,
	 		["price"] = 760000,
	 	},
	 	[`rt3000`] = {
	 		["model"] = "rt3000",
	 		["count"] = 10,
	 		["price"] = 1500000,
	 	},
	 	[`dominator8`] = {
	 		["model"] = "dominator8",
	 		["count"] = 10,
	 		["price"] = 1000000,
	 	},
	 	[`futo2`] = {
	 		["model"] = "futo2",
	 		["count"] = 10,
	 		["price"] = 40000,
	 	},
	 	[`italirsx`] = {
	 		["model"] = "italirsx",
	 		["count"] = 10,
	 		["price"] = 2600000,
	 	},
	 	[`coquette4`] = {
	 		["model"] = "coquette4",
	 		["count"] = 1,
	 		["price"] = 3400000,
	 	},
	 	[`tigon`] = {
	 		["model"] = "tigon",
	 		["count"] = 10,
	 		["price"] = 1350000,
	 	},
	 	[`elegy`] = {
	 		["model"] = "elegy",
	 		["count"] = 10,
	 		["price"] = 600000,
	 	},
	 	[`banshee2`] = {
	 		["model"] = "banshee2",
	 		["count"] = 5,
	 		["price"] = 500000,
	 	},
	 	[`gauntlet3`] = {
	 		["model"] = "gauntlet3",
	 		["count"] = 5,
	 		["price"] = 320000,
	 	},
	 	[`gauntlet4`] = {
	 		["model"] = "gauntlet4",
	 		["count"] = 10,
	 		["price"] = 530000,
	 	},
	 	[`cheetah2`] = {
	 		["model"] = "cheetah2",
	 		["count"] = 10,
	 		["price"] = 650000,
	 	},
	 	[`furia`] = {
	 		["model"] = "furia",
	 		["count"] = 10,
	 		["price"] = 1930000,
	 	},
	 	[`turismo2`] = {
	 		["model"] = "turismo2",
	 		["count"] = 5,
	 		["price"] = 700000,
	 	},
	 	[`jester4`] = {
	 		["model"] = "jester4",
	 		["count"] = 5,
	 		["price"] = 2400000,
	 	},
	 	[`cypher`] = {
	 		["model"] = "cypher",
	 		["count"] = 5,
	 		["price"] = 1000000,
	 	},
	 	[`zr350`] = {
	 		["model"] = "zr350",
	 		["count"] = 10,
	 		["price"] = 1200000,
	 	},
	 	[`growler`] = {
	 		["model"] = "growler",
	 		["count"] = 10,
	 		["price"] = 900000,
	 	},
	 	[`infernus2`] = {
	 		["model"] = "infernus2",
	 		["count"] = 5,
	 		["price"] = 1000000,
	 	},
	 	[`deviant`] = {
	 		["model"] = "deviant",
	 		["count"] = 10,
	 		["price"] = 700000,
	 	},
	 	[`sultanrs`] = {
	 		["model"] = "sultanrs",
	 		["count"] = 10,
	 		["price"] = 100000,
	 	},
	 	[`peyote2`] = {
	 		["model"] = "peyote2",
	 		["count"] = 5,
	 		["price"] = 300000,
	 	},
	 	[`comet7`] = {
	 		["model"] = "comet7",
	 		["count"] = 5,
	 		["price"] = 1000000,
	 	},
	 	[`zeno`] = {
	 		["model"] = "zeno",
	 		["count"] = 5,
	 		["price"] = 1350000,
	 	},
	 	[`ignus`] = {
	 		["model"] = "ignus",
	 		["count"] = 5,
	 		["price"] = 2700000,
	 	},
	 	[`cinquemila`] = {
	 		["model"] = "cinquemila",
	 		["count"] = 5,
	 		["price"] = 758000,
	 	},
	
	 },
	["A Class"] = {
		[`freecrawler`] = {
			["model"] = "freecrawler",
			["count"] = 30,
			["price"] = 175000,
		},
		[`hellion`] = {
			["model"] = "hellion",
			["count"] = 30,
			["price"] = 95000,
		},
		[`blazer`] = {
			["model"] = "blazer",
			["count"] = 2,
			["price"] = 25000,
		},
		[`blazer3`] = {
			["model"] = "blazer3",
			["count"] = 2,
			["price"] = 30000,
		},
		[`blazer4`] = {
			["model"] = "blazer4",
			["count"] = 2,
			["price"] = 40000,
		},
		[`blazer5`] = {
			["model"] = "blazer",
			["count"] = 2,
			["price"] = 75000,
		},
		[`seminole2`] = {
			["model"] = "seminole2",
			["count"] = 30,
			["price"] = 30000,
		},
		[`winky`] = {
			["model"] = "winky",
			["count"] = 30,
			["price"] = 75000,
		},
		[`imperator`] = {
			["model"] = "imperator",
			["count"] = 2,
			["price"] = 85000,
		},
		[`toros`] = {
			["model"] = "toros",
			["count"] = 30,
			["price"] = 180000,
		},
		[`penumbra2`] = {
			["model"] = "penumbra2",
			["count"] = 10,
			["price"] = 150000,
		},
		[`italigto`] = {
			["model"] = "italigto",
			["count"] = 30,
			["price"] = 1250000,
		},
		[`neon`] = {
			["model"] = "neon",
			["count"] = 30,
			["price"] = 220000,
		},
		[`banshee`] = {
			["model"] = "banshee",
			["count"] = 10,
			["price"] = 200000,
		},
		[`coquette`] = {
			["model"] = "coquette",
			["count"] = 10,
			["price"] = 145000,
		},
		[`ninef2`] = {
			["model"] = "ninef2",
			["count"] = 10,
			["price"] = 215000,
		},
		[`drafter`] = {
			["model"] = "drafter",
			["count"] = 10,
			["price"] = 215000,
		},
		[`bestiagts`] = {
			["model"] = "bestiagts",
			["count"] = 10,
			["price"] = 190000,
		},
		[`carbonizzare`] = {
			["model"] = "carbonizzare",
			["count"] = 10,
			["price"] = 200000,
		},
		[`comet2`] = {
			["model"] = "comet2",
			["count"] = 10,
			["price"] = 190000,
		},
		[`comet3`] = {
			["model"] = "comet3",
			["count"] = 2,
			["price"] = 195000,
		},
		[`comet5`] = {
			["model"] = "comet5",
			["count"] = 2,
			["price"] = 200000,
		},
		[`jester3`] = {
			["model"] = "jester3",
			["count"] = 2,
			["price"] = 205000,
		},
		[`kanjo`] = {
			["model"] = "kanjo",
			["count"] = 30,
			["price"] = 35000,
		},
		[`elegy2`] = {
			["model"] = "elegy2",
			["count"] = 30,
			["price"] = 200000,
		},
		[`feltzer2`] = {
			["model"] = "feltzer2",
			["count"] = 30,
			["price"] = 150000,
		},
		[`furoregt`] = {
			["model"] = "furoregt",
			["count"] = 10,
			["price"] = 160000,
		},
		[`jester`] = {
			["model"] = "jester",
			["count"] = 10,
			["price"] = 200000,
		},
		[`jugular`] = {
			["model"] = "jugular",
			["count"] = 10,
			["price"] = 190000,
		},
		[`lynx`] = {
			["model"] = "lynx",
			["count"] = 10,
			["price"] = 180000,
		},
		[`locust`] = {
			["model"] = "locust",
			["count"] = 10,
			["price"] = 180000,
		},
		[`massacro`] = {
			["model"] = "massacro",
			["count"] = 10,
			["price"] = 80000,
		},
		[`pariah`] = {
			["model"] = "pariah",
			["count"] = 10,
			["price"] = 190000,
		},
		[`rapidgt`] = {
			["model"] = "rapidgt",
			["count"] = 2,
			["price"] = 80000,
		},
		[`rapidgt2`] = {
			["model"] = "rapidgt2",
			["count"] = 2,
			["price"] = 82000,
		},
		[`ruston`] = {
			["model"] = "ruston",
			["count"] = 10,
			["price"] = 220000,
		},
		[`schwarzer`] = {
			["model"] = "schwarzer",
			["count"] = 10,
			["price"] = 147000,
		},
		[`seven70`] = {
			["model"] = "seven70",
			["count"] = 10,
			["price"] = 210000,
		},
		[`specter`] = {
			["model"] = "specter",
			["count"] = 10,
			["price"] = 185000,
		},
		[`specter2`] = {
			["model"] = "specter2",
			["count"] = 2,
			["price"] = 190000,
		},
		[`surano`] = {
			["model"] = "surano",
			["count"] = 10,
			["price"] = 180000,
		},
		[`z190`] = {
			["model"] = "z190",
			["count"] = 10,
			["price"] = 148000,
		},
		[`cogcabrio`] = {
			["model"] = "cogcabrio",
			["count"] = 10,
			["price"] = 100000,
		},
		[`f620`] = {
			["model"] = "f620",
			["count"] = 10,
			["price"] = 155000,
		},
		[`felon2`] = {
			["model"] = "felon2",
			["count"] = 10,
			["price"] = 170000,
		},
		[`zion`] = {
			["model"] = "zion",
			["count"] = 10,
			["price"] = 22000,
		},
		[`zion2`] = {
			["model"] = "zion2",
			["count"] = 10,
			["price"] = 180000,
		},
		[`paragon`] = {
			["model"] = "paragon",
			["count"] = 10,
			["price"] = 180000,
		},
		[`windsor`] = {
			["model"] = "windsor",
			["count"] = 10,
			["price"] = 100000,
		},
		[`brioso`] = {
			["model"] = "brioso",
			["count"] = 10,
			["price"] = 25000,
		},
		[`voltic`] = {
			["model"] = "voltic",
			["count"] = 10,
			["price"] = 520000,
		},
		[`dominator`] = {
			["model"] = "dominator",
			["count"] = 10,
			["price"] = 62000,
		},
		[`dominator3`] = {
			["model"] = "dominator3",
			["count"] = 10,
			["price"] = 170000,
		},
		[`gauntlet`] = {
			["model"] = "gauntlet",
			["count"] = 10,
			["price"] = 110000,
		},
		[`stafford`] = {
			["model"] = "stafford",
			["count"] = 10,
			["price"] = 76000,
		},
		[`blade`] = {
			["model"] = "blade",
			["count"] = 10,
			["price"] = 23000,
		},
		[`dukes`] = {
			["model"] = "dukes",
			["count"] = 10,
			["price"] = 23000,
		},
		[`vamos`] = {
			["model"] = "vamos",
			["count"] = 10,
			["price"] = 82500,
		},
		[`ellie`] = {
			["model"] = "ellie",
			["count"] = 10,
			["price"] = 85000,
		},
		[`ruiner`] = {
			["model"] = "ruiner",
			["count"] = 10,
			["price"] = 29000,
		},
		[`sabregt`] = {
			["model"] = "sabregt",
			["count"] = 10,
			["price"] = 45000,
		},
		[`slamvan`] = {
			["model"] = "slamvan",
			["count"] = 2,
			["price"] = 30000,
		},
		[`slamvan3`] = {
			["model"] = "slamvan3",
			["count"] = 10,
			["price"] = 70000,
		},
		[`tampa`] = {
			["model"] = "tampa",
			["count"] = 10,
			["price"] = 85000,
		},
		[`yosemite`] = {
			["model"] = "yosemite",
			["count"] = 2,
			["price"] = 62500,
		},
		[`tornado6`] = {
			["model"] = "tornado6",
			["count"] = 2,
			["price"] = 12500,
		},
		[`iwagen`] = {
			["model"] = "iwagen",
			["count"] = 10,
			["price"] = 115000,
		},
		[`baller7`] = {
			["model"] = "baller7",
			["count"] = 2,
			["price"] = 550000,
		},
		[`astron`] = {
			["model"] = "astron",
			["count"] = 10,
			["price"] = 140000,
		},
	},
	["B Class"] = {
		[`brioso2`] = {
			["model"] = "brioso2",
			["count"] = 3,
			["price"] = 8000,
		},
		[`weevil`] = {
			["model"] = "weevil",
			["count"] = 3,
			["price"] = 12500,
		},
		[`club`] = {
			["model"] = "club",
			["count"] = 3,
			["price"] = 12500,
		},
		[`asbo`] = {
			["model"] = "asbo",
			["count"] = 13,
			["price"] = 4000,
		},
		[`komoda`] = {
			["model"] = "komoda",
			["count"] = 3,
			["price"] = 85000,
		},
		[`vstr`] = {
			["model"] = "vstr",
			["count"] = 30,
			["price"] = 90000,
		},
		[`blista`] = {
			["model"] = "blista",
			["count"] = 3,
			["price"] = 30000,
		},
		[`sugoi`] = {
			["model"] = "sugoi",
			["count"] = 3,
			["price"] = 65000,
		},
		[`prairie`] = {
			["model"] = "prairie",
			["count"] = 3,
			["price"] = 50000,
		},
		[`savestra`] = {
			["model"] = "savestra",
			["count"] = 3,
			["price"] = 38500,
		},
		[`sentinel`] = {
			["model"] = "sentinel",
			["count"] = 3,
			["price"] = 55000,
		},
		[`sentinel2`] = {
			["model"] = "sentinel2",
			["count"] = 3,
			["price"] = 55000,
		},
		[`zion3`] = {
			["model"] = "zion3",
			["count"] = 3,
			["price"] = 22500,
		},
		[`buffalo`] = {
			["model"] = "buffalo",
			["count"] = 10,
			["price"] = 18000,
		},
		[`buffalo2`] = {
			["model"] = "buffalo2",
			["count"] = 3,
			["price"] = 95000,
		},
		[`windsor2`] = {
			["model"] = "windsor2",
			["count"] = 3,
			["price"] = 100000,
		},
		[`futo`] = {
			["model"] = "futo",
			["count"] = 3,
			["price"] = 33500,
		},
		[`kuruma`] = {
			["model"] = "kuruma",
			["count"] = 3,
			["price"] = 75000,
		},
		[`sultan`] = {
			["model"] = "sultan",
			["count"] = 10,
			["price"] = 50000,
		},
		[`sultan2`] = {
			["model"] = "sultan2",
			["count"] = 3,
			["price"] = 75000,
		},
		[`revolter`] = {
			["model"] = "revolter",
			["count"] = 3,
			["price"] = 110000,
		},
		[`schafter2`] = {
			["model"] = "schafter2",
			["count"] = 3,
			["price"] = 68000,
		},
		[`schafter3`] = {
			["model"] = "schafter3",
			["count"] = 3,
			["price"] = 70000,
		},
		[`schafter4`] = {
			["model"] = "schafter4",
			["count"] = 3,
			["price"] = 72500,
		},
		[`sentinel3`] = {
			["model"] = "sentinel3",
			["count"] = 3,
			["price"] = 72500,
		},
		[`cognoscenti`] = {
			["model"] = "cognoscenti",
			["count"] = 3,
			["price"] = 22500,
		},
		[`cog55`] = {
			["model"] = "cog55",
			["count"] = 3,
			["price"] = 105000,
		},
		[`fugitive`] = {
			["model"] = "fugitive",
			["count"] = 3,
			["price"] = 45000,
		},
		[`intruder`] = {
			["model"] = "intruder",
			["count"] = 3,
			["price"] = 38000,
		},
		[`premier`] = {
			["model"] = "premier",
			["count"] = 3,
			["price"] = 20000,
		},
		[`stratum`] = {
			["model"] = "stratum",
			["count"] = 3,
			["price"] = 35000,
		},
		[`superd`] = {
			["model"] = "superd",
			["count"] = 3,
			["price"] = 48500,
		},
		[`tailgater`] = {
			["model"] = "tailgater",
			["count"] = 3,
			["price"] = 62000,
		},
		[`exemplar`] = {
			["model"] = "exemplar",
			["count"] = 3,
			["price"] = 63500,
		},
		[`jackal`] = {
			["model"] = "jackal",
			["count"] = 3,
			["price"] = 59000,
		},
		[`oracle`] = {
			["model"] = "oracle",
			["count"] = 3,
			["price"] = 35000,
		},
		[`oracle2`] = {
			["model"] = "oracle2",
			["count"] = 3,
			["price"] = 68000,
		},
		[`raiden`] = {
			["model"] = "raiden",
			["count"] = 3,
			["price"] = 100000,
		},
		[`surge`] = {
			["model"] = "surge",
			["count"] = 3,
			["price"] = 20000,
		},
		[`rebla`] = {
			["model"] = "rebla",
			["count"] = 3,
			["price"] = 75000,
		},
		[`novak`] = {
			["model"] = "novak",
			["count"] = 3,
			["price"] = 68500,
		},
		[`baller3`] = {
			["model"] = "baller3",
			["count"] = 3,
			["price"] = 150000,
		},
		[`dubsta2`] = {
			["model"] = "dubsta2",
			["count"] = 3,
			["price"] = 195000,
		},
		[`dubsta`] = {
			["model"] = "dubsta",
			["count"] = 3,
			["price"] = 95000,
		},
		[`gresley`] = {
			["model"] = "gresley",
			["count"] = 3,
			["price"] = 78500,
		},
		[`huntley`] = {
			["model"] = "huntley",
			["count"] = 3,
			["price"] = 60000,
		},
		[`rocoto`] = {
			["model"] = "rocoto",
			["count"] = 3,
			["price"] = 65000,
		},
		[`serrano`] = {
			["model"] = "serrano",
			["count"] = 3,
			["price"] = 58000,
		},
		[`xls`] = {
			["model"] = "xls",
			["count"] = 3,
			["price"] = 75000,
		},
		[`minivan2`] = {
			["model"] = "minivan2",
			["count"] = 3,
			["price"] = 32500,
		},
		--[[ [`issi7`] = {
			["model"] = "issi7",
			["count"] = 3,
			["price"] = 135000,
		}, ]]
		[`flashgt`] = {
			["model"] = "flashgt",
			["count"] = 3,
			["price"] = 68000,
		},
		[`omnis`] = {
			["model"] = "omnis",
			["count"] = 3,
			["price"] = 59000,
		},
		[`tropos`] = {
			["model"] = "tropos",
			["count"] = 3,
			["price"] = 55000,
		},
		[`gb200`] = {
			["model"] = "gb200",
			["count"] = 3,
			["price"] = 70000,
		},
		[`michelli`] = {
			["model"] = "michelli",
			["count"] = 3,
			["price"] = 30000,
		},
		[`retinue`] = {
			["model"] = "retinue",
			["count"] = 3,
			["price"] = 58500,
		},
		--[[[`retinue2`] = {
			["model"] = "retinue2",
			["count"] = 3,
			["price"] = 58000,
		}, ]]
		[`outlaw`] = {
			["model"] = "outlaw",
			["count"] = 2,
			["price"] = 85000,
		},
		[`everon`] = {
			["model"] = "everon",
			["count"] = 2,
			["price"] = 110000,
		},
		[`trophytruck`] = {
			["model"] = "trophytruck",
			["count"] = 2,
			["price"] = 120000,
		},
		[`trophytruck2`] = {
			["model"] = "trophytruck2",
			["count"] = 2,
			["price"] = 130000,
		},
		[`buccaneer`] = {
			["model"] = "buccaneer",
			["count"] = 3,
			["price"] = 37500,
		},
		[`buccaneer2`] = {
			["model"] = "buccaneer2",
			["count"] = 3,
			["price"] = 42500,
		},
		[`clique`] = {
			["model"] = "clique",
			["count"] = 3,
			["price"] = 50000,
		},
		[`faction`] = {
			["model"] = "faction",
			["count"] = 3,
			["price"] = 50000,
		},
		[`faction2`] = {
			["model"] = "faction2",
			["count"] = 3,
			["price"] = 45000,
		},
		[`impaler`] = {
			["model"] = "impaler",
			["count"] = 3,
			["price"] = 95000,
		},
		[`nightshade`] = {
			["model"] = "nightshade",
			["count"] = 3,
			["price"] = 70000,
		},
		[`phoenix`] = {
			["model"] = "phoenix",
			["count"] = 3,
			["price"] = 65000,
		},
		[`picador`] = {
			["model"] = "picador",
			["count"] = 3,
			["price"] = 32500,
		},
		[`ratloader2`] = {
			["model"] = "ratloader2",
			["count"] = 3,
			["price"] = 1500,
		},
		[`sabregt2`] = {
			["model"] = "sabregt2",
			["count"] = 3,
			["price"] = 50000,
		},
		[`stalion`] = {
			["model"] = "stalion",
			["count"] = 3,
			["price"] = 45000,
		},
		[`tulip`] = {
			["model"] = "tulip",
			["count"] = 3,
			["price"] = 42500,
		},
		[`vigero`] = {
			["model"] = "vigero",
			["count"] = 3,
			["price"] = 38500,
		},
		[`virgo`] = {
			["model"] = "virgo",
			["count"] = 3,
			["price"] = 30000,
		},
		[`feltzer3`] = {
			["model"] = "feltzer3",
			["count"] = 3,
			["price"] = 100000,
		},
		[`casco`] = {
			["model"] = "casco",
			["count"] = 3,
			["price"] = 95000,
		},
		[`coquette2`] = {
			["model"] = "coquette2",
			["count"] = 3,
			["price"] = 100000,
		},
		[`coquette3`] = {
			["model"] = "coquette3",
			["count"] = 3,
			["price"] = 95000,
		},
		[`gt500`] = {
			["model"] = "gt500",
			["count"] = 3,
			["price"] = 88000,
		},
		[`mamba`] = {
			["model"] = "mamba",
			["count"] = 3,
			["price"] = 110000,
		},
		[`stinger`] = {
			["model"] = "stinger",
			["count"] = 3,
			["price"] = 80000,
		},
		[`stingergt`] = {
			["model"] = "stingergt",
			["count"] = 3,
			["price"] = 85000,
		},
		[`swinger`] = {
			["model"] = "swinger",
			["count"] = 3,
			["price"] = 92500,
		},
		[`viseris`] = {
			["model"] = "viseris",
			["count"] = 3,
			["price"] = 110000,
		},
		[`rapidgt3`] = {
			["model"] = "rapidgt3",
			["count"] = 3,
			["price"] = 75000,
		},
	},
	["C Class"] = {
		[`taxi`] = {
			["model"] = "taxi",
			["count"] = 15,
			["price"] = 50000,
		},
		[`blista2`] = {
			["model"] = "blista2",
			["count"] = 15,
			["price"] = 30000,
		},
		[`asterope`] = {
			["model"] = "asterope",
			["count"] = 15,
			["price"] = 25000,
		},
		[`ingot`] = {
			["model"] = "ingot",
			["count"] = 15,
			["price"] = 20000,
		},
		[`primo2`] = {
			["model"] = "primo2",
			["count"] = 15,
			["price"] = 30000,
		},
		[`stanier`] = {
			["model"] = "stanier",
			["count"] = 15,
			["price"] = 35000,
		},
		[`stretch`] = {
			["model"] = "stretch",
			["count"] = 15,
			["price"] = 90000,
		},
		[`warrener`] = {
			["model"] = "warrener",
			["count"] = 15,
			["price"] = 17000,
		},
		[`washington`] = {
			["model"] = "washington",
			["count"] = 15,
			["price"] = 22500,
		},
		[`issi2`] = {
			["model"] = "issi2",
			["count"] = 15,
			["price"] = 17000,
		},
		[`panto`] = {
			["model"] = "panto",
			["count"] = 15,
			["price"] = 5000,
		},
		[`rhapsody`] = {
			["model"] = "rhapsody",
			["count"] = 15,
			["price"] = 6000,
		},
		[`baller`] = {
			["model"] = "baller",
			["count"] = 15,
			["price"] = 22500,
		},
		[`baller2`] = {
			["model"] = "baller2",
			["count"] = 15,
			["price"] = 60000,
		},
		[`bjxl`] = {
			["model"] = "bjxl",
			["count"] = 15,
			["price"] = 50000,
		},
		[`fq2`] = {
			["model"] = "fq2",
			["count"] = 15,
			["price"] = 58500,
		},
		[`granger`] = {
			["model"] = "granger",
			["count"] = 15,
			["price"] = 22000,
		},
		[`habanero`] = {
			["model"] = "habanero",
			["count"] = 15,
			["price"] = 5000,
		},
		[`landstalker`] = {
			["model"] = "landstalker",
			["count"] = 15,
			["price"] = 32500,
		},
		[`patriot`] = {
			["model"] = "patriot",
			["count"] = 15,
			["price"] = 80000,
		},
		[`patriot2`] = {
			["model"] = "patriot2",
			["count"] = 15,
			["price"] = 150000,
		},
		[`radi`] = {
			["model"] = "radi",
			["count"] = 15,
			["price"] = 35000,
		},
		[`seminole`] = {
			["model"] = "seminole",
			["count"] = 15,
			["price"] = 30000,
		},
		[`youga`] = {
			["model"] = "youga",
			["count"] = 15,
			["price"] = 12000,
		},
		[`caracara2`] = {
			["model"] = "caracara2",
			["count"] = 2,
			["price"] = 120000,
		},
		-- Bozuk araba
		--[[ [`contender`] = {
			["model"] = "contender",
			["count"] = 2,
			["price"] = 100000,
		}, ]]
		[`streiter`] = {
			["model"] = "streiter",
			["count"] = 15,
			["price"] = 88000,
		},
		[`mesa`] = {
			["model"] = "mesa",
			["count"] = 15,
			["price"] = 120000,
		},
		[`mesa3`] = {
			["model"] = "mesa3",
			["count"] = 15,
			["price"] = 75000,
		},
		[`comet4`] = {
			["model"] = "comet4",
			["count"] = 3,
			["price"] = 82500,
		},
		[`brawler`] = {
			["model"] = "brawler",
			["count"] = 2,
			["price"] = 340000,
		},
		[`dubsta3`] = {
			["model"] = "dubsta3",
			["count"] = 2,
			["price"] = 200000,
		},
		[`bfinjection`] = {
			["model"] = "bfinjection",
			["count"] = 15,
			["price"] = 20000,
		},
		[`kamacho`] = {
			["model"] = "kamacho",
			["count"] = 15,
			["price"] = 82500,
		},
		[`rebel`] = {
			["model"] = "rebel",
			["count"] = 15,
			["price"] = 27000,
		},
		[`rebel2`] = {
			["model"] = "rebel2",
			["count"] = 15,
			["price"] = 27500,
		},
		[`guardian`] = {
			["model"] = "guardian",
			["count"] = 2,
			["price"] = 210000,
		},
		[`bison`] = {
			["model"] = "bison",
			["count"] = 15,
			["price"] = 45000,
		},
		[`bobcatxl`] = {
			["model"] = "bobcatxl",
			["count"] = 15,
			["price"] = 42500,
		},
		[`riata`] = {
			["model"] = "riata",
			["count"] = 2,
			["price"] = 90000,
		},
		[`glendale`] = {
			["model"] = "glendale",
			["count"] = 15,
			["price"] = 22500,
		},
		[`fagaloa`] = {
			["model"] = "fagaloa",
			["count"] = 15,
			["price"] = 32500,
		},
		[`issi3`] = {
			["model"] = "issi3",
			["count"] = 15,
			["price"] = 5500,
		},
		[`chino`] = {
			["model"] = "chino",
			["count"] = 15,
			["price"] = 32000,
		},
		[`chino2`] = {
			["model"] = "chino2",
			["count"] = 15,
			["price"] = 38000,
		},
		[`hotknife`] = {
			["model"] = "hotknife",
			["count"] = 15,
			["price"] = 80000,
		},
		[`btype`] = {
			["model"] = "btype",
			["count"] = 15,
			["price"] = 50000,
		},
		[`btype3`] = {
			["model"] = "btype3",
			["count"] = 15,
			["price"] = 65000,
		},
		[`ztype`] = {
			["model"] = "ztype",
			["count"] = 15,
			["price"] = 60000,
		},
		[`moonbeam`] = {
			["model"] = "moonbeam",
			["count"] = 15,
			["price"] = 30000,
		},
		[`moonbeam2`] = {
			["model"] = "moonbeam2",
			["count"] = 15,
			["price"] = 35000,
		},
		[`ratloader`] = {
			["model"] = "ratloader",
			["count"] = 15,
			["price"] = 1500,
		},
	},
	["D Class"] = {
		[`youga2`] = {
			["model"] = "youga2",
			["count"] = 90,
			["price"] = 10000,
		},
		[`asea`] = {
			["model"] = "asea",
			["count"] = 30,
			["price"] = 8000,
		},
		[`emperor`] = {
			["model"] = "emperor",
			["count"] = 30,
			["price"] = 12000,
		},
		[`regina`] = {
			["model"] = "regina",
			["count"] = 30,
			["price"] = 7000,
		},
		[`minivan`] = {
			["model"] = "minivan",
			["count"] = 30,
			["price"] = 15000,
		},
		[`paradise`] = {
			["model"] = "paradise",
			["count"] = 30,
			["price"] = 19500,
		},
		[`pony`] = {
			["model"] = "pony",
			["count"] = 30,
			["price"] = 40000,
		},
		[`speedo`] = {
			["model"] = "speedo",
			["count"] = 30,
			["price"] = 25000,
		},
		[`burrito3`] = {
			["model"] = "burrito3",
			["count"] = 30,
			["price"] = 2000,
		},
		[`kalahari`] = {
			["model"] = "kalahari",
			["count"] = 30,
			["price"] = 9000,
		},
		[`gburrito2`] = {
			["model"] = "gburrito2",
			["count"] = 30,
			["price"] = 22500,
		},
		[`dilettante`] = {
			["model"] = "dilettante",
			["count"] = 30,
			["price"] = 10000,
		},
		[`bodhi2`] = {
			["model"] = "bodhi2",
			["count"] = 30,
			["price"] = 30000,
		},
		[`rancherxl`] = {
			["model"] = "rancherxl",
			["count"] = 30,
			["price"] = 32000,
		},
		[`dloader`] = {
			["model"] = "dloader",
			["count"] = 30,
			["price"] = 12000,
		},
		[`sadler`] = {
			["model"] = "sadler",
			["count"] = 30,
			["price"] = 30000,
		},
		[`sandking2`] = {
			["model"] = "sandking2",
			["count"] = 3,
			["price"] = 80000,
		},
		[`sandking`] = {
			["model"] = "sandking",
			["count"] = 3,
			["price"] = 75000,
		},
		[`dynasty`] = {
			["model"] = "dynasty",
			["count"] = 30,
			["price"] = 15000,
		},
		[`surfer`] = {
			["model"] = "surfer",
			["count"] = 30,
			["price"] = 9500,
		},
		[`surfer2`] = {
			["model"] = "surfer2",
			["count"] = 30,
			["price"] = 7000,
		},
		[`hermes`] = {
			["model"] = "hermes",
			["count"] = 30,
			["price"] = 50000,
		},
		[`hustler`] = {
			["model"] = "hustler",
			["count"] = 30,
			["price"] = 40000,
		},
		[`virgo2`] = {
			["model"] = "virgo2",
			["count"] = 30,
			["price"] = 25000,
		},
		[`virgo3`] = {
			["model"] = "virgo3",
			["count"] = 30,
			["price"] = 30000,
		},
		[`voodoo2`] = {
			["model"] = "voodoo2",
			["count"] = 30,
			["price"] = 10000,
		},
		[`voodoo`] = {
			["model"] = "voodoo",
			["count"] = 30,
			["price"] = 20000,
		},
		[`manana`] = {
			["model"] = "manana",
			["count"] = 30,
			["price"] = 18500,
		},
		[`peyote`] = {
			["model"] = "peyote",
			["count"] = 30,
			["price"] = 18000,
		},
		[`tornado`] = {
			["model"] = "tornado",
			["count"] = 30,
			["price"] = 15000,
		},
		[`tornado2`] = {
			["model"] = "tornado2",
			["count"] = 30,
			["price"] = 18000,
		},
		[`tornado3`] = {
			["model"] = "tornado3",
			["count"] = 30,
			["price"] = 8000,
		},
		[`tornado5`] = {
			["model"] = "tornado5",
			["count"] = 30,
			["price"] = 20000,
		},
		[`pigalle`] = {
			["model"] = "pigalle",
			["count"] = 30,
			["price"] = 22500,
		},
		[`journey`] = {
			["model"] = "journey",
			["count"] = 30,
			["price"] = 15000,
		},
	},
}

-- config.carList = {
--     ["Motorcycle"] = {
--         [`gargoyle`] = {
--             ["model"] = "gargoyle",
--             ["count"] = 5,
--             ["price"] = 2400,
--         },
--         [`sanctus`] = {
--             ["model"] = "sanctus",
--             ["count"] = 5,
--             ["price"] = 9100,
--         },
--         [`nightblade`] = {
--             ["model"] = "nightblade",
--             ["count"] = 5,
--             ["price"] = 4900,
--         },
--         [`manchez2`] = {
--             ["model"] = "manchez2",
--             ["count"] = 2,
--             ["price"] = 6300,
--         },
--         [`enduro`] = {
--             ["model"] = "enduro",
--             ["count"] = 2,
--             ["price"] = 4200,
--         },
--         [`avarus`] = {
--             ["model"] = "avarus",
--             ["count"] = 5,
--             ["price"] = 4200,
--         },
--         [`chimera`] = {
--             ["model"] = "chimera",
--             ["count"] = 5,
--             ["price"] = 4200,
--         },
--         [`wolfsbane`] = {
--             ["model"] = "wolfsbane",
--             ["count"] = 5,
--             ["price"] = 3600,
--         },
--         [`zombieb`] = {
--             ["model"] = "zombieb",
--             ["count"] = 5,
--             ["price"] = 4400,
--         },
--         [`akuma`] = {
--             ["model"] = "akuma",
--             ["count"] = 5,
--             ["price"] = 6200,
--         },
--         [`bagger`] = {
--             ["model"] = "bagger",
--             ["count"] = 10,
--             ["price"] = 4000,
--         },
--         [`bati`] = {
--             ["model"] = "bati",
--             ["count"] = 5,
--             ["price"] = 6200,
--         },
--         [`carbonrs`] = {
--             ["model"] = "carbonrs",
--             ["count"] = 5,
--             ["price"] = 6400,
--         },
--         [`daemon`] = {
--             ["model"] = "daemon",
--             ["count"] = 10,
--             ["price"] = 15100,
--         },
--         [`double`] = {
--             ["model"] = "double",
--             ["count"] = 5,
--             ["price"] = 7600,
--         },
--         [`faggio`] = {
--             ["model"] = "faggio",
--             ["count"] = 10,
--             ["price"] = 8100,
--         },
--         [`hakuchou`] = {
--             ["model"] = "hakuchou",
--             ["count"] = 3,
--             ["price"] = 8100,
--         },
--         [`hexer`] = {
--             ["model"] = "hexer",
--             ["count"] = 10,
--             ["price"] = 4200,
--         },
--         [`innovation`] = {
--             ["model"] = "innovation",
--             ["count"] = 10,
--             ["price"] = 7200,
--         },
--         [`nemesis`] = {
--             ["model"] = "nemesis",
--             ["count"] = 10,
--             ["price"] = 6200,
--         },
--         [`ruffian`] = {
--             ["model"] = "ruffian",
--             ["count"] = 10,
--             ["price"] = 4200,
--         },
--         [`sanchez2`] = {
--             ["model"] = "sanchez2",
--             ["count"] = 10,
--             ["price"] = 4200,
--         },
--         [`sovereign`] = {
--             ["model"] = "sovereign",
--             ["count"] = 10,
--             ["price"] = 4500,
--         },
--         [`vader`] = {
--             ["model"] = "vader",
--             ["count"] = 10,
--             ["price"] = 4400,
--         },
--     },
-- 	["Bicycle"] = {
-- 		[`tribike`] = {
-- 			["model"] = "tribike",
-- 			["count"] = 500000,
-- 			["price"] = 300,
-- 		},
-- 		[`tribike2`] = {
-- 			["model"] = "tribike2",
-- 			["count"] = 500000,
-- 			["price"] = 300,
-- 		},
-- 		[`bmx`] = {
-- 			["model"] = "bmx",
-- 			["count"] = 500000,
-- 			["price"] = 150,
-- 		},
-- 		[`cruiser`] = {
-- 			["model"] = "cruiser",
-- 			["count"] = 500000,
-- 			["price"] = 150,
-- 		},
-- 		[`tribike3`] = {
-- 			["model"] = "tribike3",
-- 			["count"] = 500000,
-- 			["price"] = 300,
-- 		},
-- 		[`fixter`] = {
-- 			["model"] = "fixter",
-- 			["count"] = 500000,
-- 			["price"] = 300,
-- 		},
-- 		[`scorcher`] = {
-- 			["model"] = "scorcher",
-- 			["count"] = 500000,
-- 			["price"] = 450,
-- 		},
-- 	},
-- 	["S Class"] = {
--         [`previon`] = {
--             ["model"] = "previon",
--             ["count"] = 2,
--             ["price"] = 240000,
--         },
--         [`deveste`] = {
--             ["model"] = "deveste",
--             ["count"] = 2,
--             ["price"] = 170000,
--         },
--         [`zorrusso`] = {
--             ["model"] = "zorrusso",
--             ["count"] = 2,
--             ["price"] = 180000,
--         },
--         [`visione`] = {
--             ["model"] = "visione",
--             ["count"] = 2,
--             ["price"] = 220000,
--         },
--         [`zentorno`] = {
--             ["model"] = "zentorno",
--             ["count"] = 2,
--             ["price"] = 190000,
--         },
--         [`xa21 `] = {
--             ["model"] = "xa21",
--             ["count"] = 2,
--             ["price"] = 210000,
--         },
--         [`vacca`] = {
--             ["model"] = "vacca",
--             ["count"] = 2,
--             ["price"] = 230000,
--         },
--         [`vagner `] = {
--             ["model"] = "vagner",
--             ["count"] = 2,
--             ["price"] = 200000,
--         },
--         [`tyrant`] = {
--             ["model"] = "tyrant",
--             ["count"] = 2,
--             ["price"] = 240000,
--         },
--         [`turismor`] = {
--             ["model"] = "turismor",
--             ["count"] = 2,
--             ["price"] = 190000,
--         },
--         [`thrax`] = {
--             ["model"] = "thrax",
--             ["count"] = 2,
--             ["price"] = 220000,
--         },
--         [`tempesta`] = {
--             ["model"] = "tempesta",
--             ["count"] = 2,
--             ["price"] = 200000,
--         },
--         [`t20`] = {
--             ["model"] = "t20",
--             ["count"] = 2,
--             ["price"] = 180000,
--         },
--         [`reaper`] = {
--             ["model"] = "reaper",
--             ["count"] = 2,
--             ["price"] = 210000,
--         },
--         [`penetrator `] = {
--             ["model"] = "penetrator",
--             ["count"] = 2,
--             ["price"] = 230000,
--         },
--         [`pfister811 `] = {
--             ["model"] = "pfister811",
--             ["count"] = 2,
--             ["price"] = 170000,
--         },
--         [`osiris`] = {
--             ["model"] = "osiris",
--             ["count"] = 2,
--             ["price"] = 160000,
--         },
--         [`nero`] = {
--             ["model"] = "nero",
--             ["count"] = 2,
--             ["price"] = 190000,
--         },
--         [`nero2`] = {
--             ["model"] = "nero2",
--             ["count"] = 2,
--             ["price"] = 230000,
--         },
--         [`krieger`] = {
--             ["model"] = "krieger",
--             ["count"] = 2,
--             ["price"] = 220000,
--         },
--         [`italigtb2`] = {
--             ["model"] = "italigtb2",
--             ["count"] = 2,
--             ["price"] = 160000,
--         },
--         [`infernus`] = {
--             ["model"] = "infernus",
--             ["count"] = 2,
--             ["price"] = 150000,
--         },
--         [`ardent`] = {
--             ["model"] = "ardent",
--             ["count"] = 2,
--             ["price"] = 170000,
--         },
--         [`vectre`] = {
--             ["model"] = "vectre",
--             ["count"] = 2,
--             ["price"] = 180000,
--         },
--         [`dominator7`] = {
--             ["model"] = "dominator7",
--             ["count"] = 2,
--             ["price"] = 220000,
--         },
--         [`comet6`] = {
--             ["model"] = "comet6",
--             ["count"] = 0,
--             ["price"] = 240000,
--         },
--         [`remus`] = {
--             ["model"] = "remus",
--             ["count"] = 0,
--             ["price"] = 160000,
--         },
--         [`tailgater2`] = {
--             ["model"] = "tailgater2",
--             ["count"] = 2,
--             ["price"] = 220000,
--         },
--         [`rt3000`] = {
--             ["model"] = "rt3000",
--             ["count"] = 0,
--             ["price"] = 160000,
--         },
--         [`dominator8`] = {
--             ["model"] = "dominator8",
--             ["count"] = 2,
--             ["price"] = 210000,
--         },
--         [`futo2`] = {
--             ["model"] = "futo2",
--             ["count"] = 2,
--             ["price"] = 200000,
--         },
--         [`italirsx`] = {
--             ["model"] = "italirsx",
--             ["count"] = 2,
--             ["price"] = 190000,
--         },
--         [`coquette4`] = {
--             ["model"] = "coquette4",
--             ["count"] = 2,
--             ["price"] = 160000,
--         },
--         [`tigon`] = {
--             ["model"] = "tigon",
--             ["count"] = 2,
--             ["price"] = 240000,
--         },
--         [`elegy`] = {
--             ["model"] = "elegy",
--             ["count"] = 2,
--             ["price"] = 170000,
--         },
--         [`banshee2`] = {
--             ["model"] = "banshee2",
--             ["count"] = 2,
--             ["price"] = 210000,
--         },
--         [`gauntlet3`] = {
--             ["model"] = "gauntlet3",
--             ["count"] = 2,
--             ["price"] = 150000,
--         },
--         [`gauntlet4`] = {
--             ["model"] = "gauntlet4",
--             ["count"] = 2,
--             ["price"] = 230000,
--         },
--         [`cheetah2`] = {
--             ["model"] = "cheetah2",
--             ["count"] = 2,
--             ["price"] = 220000,
--         },
--         [`furia`] = {
--             ["model"] = "furia",
--             ["count"] = 2,
--             ["price"] = 180000,
--         },
--         [`turismo2`] = {
--             ["model"] = "turismo2",
--             ["count"] = 2,
--             ["price"] = 160000,
--         },
--         [`jester4`] = {
--             ["model"] = "jester4",
--             ["count"] = 2,
--             ["price"] = 170000,
--         },
--         [`cypher`] = {
--             ["model"] = "cypher",
--             ["count"] = 2,
--             ["price"] = 190000,
--         },
--         [`zr350`] = {
--             ["model"] = "zr350",
--             ["count"] = 2,
--             ["price"] = 240000,
--         },
--         [`growler`] = {
--             ["model"] = "growler",
--             ["count"] = 2,
--             ["price"] = 160000,
--         },
--         [`infernus2`] = {
--             ["model"] = "infernus2",
--             ["count"] = 2,
--             ["price"] = 180000,
--         },
--         [`deviant`] = {
--             ["model"] = "deviant",
--             ["count"] = 2,
--             ["price"] = 170000,
--         },
--         [`sultanrs`] = {
--             ["model"] = "sultanrs",
--             ["count"] = 2,
--             ["price"] = 230000,
--         },
--         [`peyote2`] = {
--             ["model"] = "peyote2",
--             ["count"] = 2,
--             ["price"] = 160000,
--         },
--         [`comet7`] = {
--             ["model"] = "comet7",
--             ["count"] = 2,
--             ["price"] = 200000,
--         },
--         [`zeno`] = {
--             ["model"] = "zeno",
--             ["count"] = 2,
--             ["price"] = 190000,
--         },
--         [`buffalo4`] = {
--             ["model"] = "buffalo4",
--             ["count"] = 2,
--             ["price"] = 210000,
--         },
--         [`ignus`] = {
--             ["model"] = "ignus",
--             ["count"] = 2,
--             ["price"] = 220000,
--         },
--         [`cinquemila`] = {
--             ["model"] = "cinquemila",
--             ["count"] = 2,
--             ["price"] = 180000,
--         },
--         [`champion`] = {
--             ["model"] = "champion",
--             ["count"] = 2,
--             ["price"] = 170000,
--         },
--     },	
-- 	["A Class"] = {
--         [`bifta`] = {
--             ["model"] = "bifta",
--             ["count"] = 2,
--             ["price"] = 75000,
--         },
--         [`freecrawler`] = {
--             ["model"] = "freecrawler",
--             ["count"] = 2,
--             ["price"] = 110000,
--         },
--         [`hellion`] = {
--             ["model"] = "hellion",
--             ["count"] = 2,
--             ["price"] = 90000,
--         },
--         [`blazer`] = {
--             ["model"] = "blazer",
--             ["count"] = 2,
--             ["price"] = 75000,
--         },
--         [`blazer3`] = {
--             ["model"] = "blazer3",
--             ["count"] = 2,
--             ["price"] = 80000,
--         },
--         [`blazer4`] = {
--             ["model"] = "blazer4",
--             ["count"] = 2,
--             ["price"] = 120000,
--         },
--         [`blazer5`] = {
--             ["model"] = "blazer",
--             ["count"] = 2,
--             ["price"] = 145000,
--         },
--         [`seminole2`] = {
--             ["model"] = "seminole2",
--             ["count"] = 2,
--             ["price"] = 85000,
--         },
--         [`winky`] = {
--             ["model"] = "winky",
--             ["count"] = 2,
--             ["price"] = 110000,
--         },
--         [`imperator`] = {
--             ["model"] = "imperator",
--             ["count"] = 2,
--             ["price"] = 100000,
--         },
--         [`toros`] = {
--             ["model"] = "toros",
--             ["count"] = 2,
--             ["price"] = 120000,
--         },
--         [`penumbra2`] = {
--             ["model"] = "penumbra2",
--             ["count"] = 2,
--             ["price"] = 115000,
--         },
--         [`italigto`] = {
--             ["model"] = "italigto",
--             ["count"] = 2,
--             ["price"] = 135000,
--         },
--         [`neon`] = {
--             ["model"] = "neon",
--             ["count"] = 2,
--             ["price"] = 140000,
--         },
--         [`banshee`] = {
--             ["model"] = "banshee",
--             ["count"] = 2,
--             ["price"] = 130000,
--         },
--         [`coquette`] = {
--             ["model"] = "coquette",
--             ["count"] = 2,
--             ["price"] = 125000,
--         },
--         [`ninef2`] = {
--             ["model"] = "ninef2",
--             ["count"] = 2,
--             ["price"] = 135000,
--         },
--         [`drafter`] = {
--             ["model"] = "drafter",
--             ["count"] = 2,
--             ["price"] = 140000,
--         },
--         [`bestiagts`] = {
--             ["model"] = "bestiagts",
--             ["count"] = 2,
--             ["price"] = 125000,
--         },
--         [`carbonizzare`] = {
--             ["model"] = "carbonizzare",
--             ["count"] = 2,
--             ["price"] = 130000,
--         },
--         [`comet2`] = {
--             ["model"] = "comet2",
--             ["count"] = 2,
--             ["price"] = 125000,
--         },
--         [`comet3`] = {
--             ["model"] = "comet3",
--             ["count"] = 2,
--             ["price"] = 128000,
--         },
--         [`comet5`] = {
--             ["model"] = "comet5",
--             ["count"] = 2,
--             ["price"] = 130000,
--         },
--         [`jester3`] = {
--             ["model"] = "jester3",
--             ["count"] = 2,
--             ["price"] = 135000,
--         },
--         [`kanjo`] = {
--             ["model"] = "kanjo",
--             ["count"] = 2,
--             ["price"] = 75000,
--         },
--         [`elegy2`] = {
--             ["model"] = "elegy2",
--             ["count"] = 2,
--             ["price"] = 130000,
--         },
--         [`feltzer2`] = {
--             ["model"] = "feltzer2",
--             ["count"] = 2,
--             ["price"] = 110000,
--         },
--         [`furoregt`] = {
--             ["model"] = "furoregt",
--             ["count"] = 2,
--             ["price"] = 115000,
--         },
--         [`jester`] = {
--             ["model"] = "jester",
--             ["count"] = 2,
--             ["price"] = 130000,
--         },
--         [`jugular`] = {
--             ["model"] = "jugular",
--             ["count"] = 2,
--             ["price"] = 125000,
--         },
--         [`lynx`] = {
--             ["model"] = "lynx",
--             ["count"] = 2,
--             ["price"] = 120000,
--         },
--         [`locust`] = {
--             ["model"] = "locust",
--             ["count"] = 2,
--             ["price"] = 120000,
--         },
--         [`massacro`] = {
--             ["model"] = "massacro",
--             ["count"] = 2,
--             ["price"] = 115000,
--         },
--         [`pariah`] = {
--             ["model"] = "pariah",
--             ["count"] = 2,
--             ["price"] = 120000,
--         },
--         [`rapidgt`] = {
--             ["model"] = "rapidgt",
--             ["count"] = 2,
--             ["price"] = 75000,
--         },
--         [`rapidgt2`] = {
--             ["model"] = "rapidgt2",
--             ["count"] = 2,
--             ["price"] = 80000,
--         },
--         [`ruston`] = {
--             ["model"] = "ruston",
--             ["count"] = 2,
--             ["price"] = 135000,
--         },
--         [`schwarzer`] = {
--             ["model"] = "schwarzer",
--             ["count"] = 2,
--             ["price"] = 100000,
--         },
--         [`seven70`] = {
--             ["model"] = "seven70",
--             ["count"] = 2,
--             ["price"] = 127500,
--         },
--         [`specter`] = {
--             ["model"] = "specter",
--             ["count"] = 2,
--             ["price"] = 112500,
--         },
--         [`specter2`] = {
--             ["model"] = "specter2",
--             ["count"] = 2,
--             ["price"] = 115000,
--         },
--         [`surano`] = {
--             ["model"] = "surano",
--             ["count"] = 2,
--             ["price"] = 140000,
--         },
--         [`z190`] = {
--             ["model"] = "z190",
--             ["count"] = 2,
--             ["price"] = 100000,
--         },
--         [`cogcabrio`] = {
--             ["model"] = "cogcabrio",
--             ["count"] = 2,
--             ["price"] = 95000,
--         },
--         [`f620`] = {
--             ["model"] = "f620",
--             ["count"] = 2,
--             ["price"] = 105000,
--         },
--         [`felon2`] = {
--             ["model"] = "felon2",
--             ["count"] = 2,
--             ["price"] = 95000,
--         },
--         [`zion`] = {
--             ["model"] = "zion",
--             ["count"] = 2,
--             ["price"] = 100000,
--         },
--         [`zion2`] = {
--             ["model"] = "zion2",
--             ["count"] = 2,
--             ["price"] = 105000,
--         },
--         [`paragon`] = {
--             ["model"] = "paragon",
--             ["count"] = 2,
--             ["price"] = 105000,
--         },
--         [`windsor`] = {
--             ["model"] = "windsor",
--             ["count"] = 2,
--             ["price"] = 105000,
--         },
--         [`brioso`] = {
--             ["model"] = "brioso",
--             ["count"] = 2,
--             ["price"] = 75000,
--         },
--         [`voltic`] = {
--             ["model"] = "voltic",
--             ["count"] = 2,
--             ["price"] = 95000,
--         },
--         [`dominator`] = {
--             ["model"] = "dominator",
--             ["count"] = 2,
--             ["price"] = 105000,
--         },
--         [`dominator3`] = {
--             ["model"] = "dominator3",
--             ["count"] = 2,
--             ["price"] = 120000,
--         },
--         [`gauntlet`] = {
--             ["model"] = "gauntlet",
--             ["count"] = 2,
--             ["price"] = 80000,
--         },
--         [`stafford`] = {
--             ["model"] = "stafford",
--             ["count"] = 2,
--             ["price"] = 75000,
--         },
--         [`blade`] = {
--             ["model"] = "blade",
--             ["count"] = 2,
--             ["price"] = 70000,
--         },
--         [`dukes`] = {
--             ["model"] = "dukes",
--             ["count"] = 2,
--             ["price"] = 80000,
--         },
--         [`vamos`] = {
--             ["model"] = "vamos",
--             ["count"] = 2,
--             ["price"] = 82500,
--         },
--         [`ellie`] = {
--             ["model"] = "ellie",
--             ["count"] = 2,
--             ["price"] = 85000,
--         },
--         [`ruiner`] = {
--             ["model"] = "ruiner",
--             ["count"] = 2,
--             ["price"] = 75000,
--         },
--         [`sabregt`] = {
--             ["model"] = "sabregt",
--             ["count"] = 2,
--             ["price"] = 60000,
--         },
--         [`slamvan`] = {
--             ["model"] = "slamvan",
--             ["count"] = 2,
--             ["price"] = 72500,
--         },
--         [`slamvan3`] = {
--             ["model"] = "slamvan3",
--             ["count"] = 2,
--             ["price"] = 77000,
--         },
--         [`tampa`] = {
--             ["model"] = "tampa",
--             ["count"] = 2,
--             ["price"] = 85000,
--         },
--         [`yosemite`] = {
--             ["model"] = "yosemite",
--             ["count"] = 2,
--             ["price"] = 62500,
--         },
--         [`tornado6`] = {
--             ["model"] = "tornado6",
--             ["count"] = 2,
--             ["price"] = 75000,
--         },
--         [`iwagen`] = {
--             ["model"] = "iwagen",
--             ["count"] = 2,
--             ["price"] = 80000,
--         },
--         [`baller7`] = {
--             ["model"] = "baller7",
--             ["count"] = 2,
--             ["price"] = 85000,
--         },
--         [`w`] = {
--             ["model"] = "deity",
--             ["count"] = 2,
--             ["price"] = 90000,
--         },
--         [`astron`] = {
--             ["model"] = "astron",
--             ["count"] = 2,
--             ["price"] = 95000,
--         },
-- 	},
-- 	["B Class"] = {
--         [`brioso2`] = {
--             ["model"] = "brioso2",
--             ["count"] = 3,
--             ["price"] = 40000,
--         },
--         [`weevil`] = {
--             ["model"] = "weevil",
--             ["count"] = 3,
--             ["price"] = 50000,
--         },
--         [`club`] = {
--             ["model"] = "club",
--             ["count"] = 3,
--             ["price"] = 45000,
--         },
--         [`asbo`] = {
--             ["model"] = "asbo",
--             ["count"] = 3,
--             ["price"] = 45000,
--         },
--         [`komoda`] = {
--             ["model"] = "komoda",
--             ["count"] = 3,
--             ["price"] = 60000,
--         },
--         [`vstr`] = {
--             ["model"] = "vstr",
--             ["count"] = 3,
--             ["price"] = 55000,
--         },
--         [`blista`] = {
--             ["model"] = "blista",
--             ["count"] = 3,
--             ["price"] = 45000,
--         },
--         [`sugoi`] = {
--             ["model"] = "sugoi",
--             ["count"] = 3,
--             ["price"] = 50000,
--         },
--         [`prairie`] = {
--             ["model"] = "prairie",
--             ["count"] = 3,
--             ["price"] = 42000,
--         },
--         [`savestra`] = {
--             ["model"] = "savestra",
--             ["count"] = 3,
--             ["price"] = 38500,
--         },
--         [`sentinel`] = {
--             ["model"] = "sentinel",
--             ["count"] = 3,
--             ["price"] = 55000,
--         },
--         [`sentinel2`] = {
--             ["model"] = "sentinel2",
--             ["count"] = 3,
--             ["price"] = 60000,
--         },
--         [`zion3`] = {
--             ["model"] = "zion3",
--             ["count"] = 3,
--             ["price"] = 50000,
--         },
--         [`buffalo`] = {
--             ["model"] = "buffalo",
--             ["count"] = 3,
--             ["price"] = 60000,
--         },
--         [`buffalo2`] = {
--             ["model"] = "buffalo2",
--             ["count"] = 3,
--             ["price"] = 65000,
--         },
--         [`windsor2`] = {
--             ["model"] = "windsor2",
--             ["count"] = 3,
--             ["price"] = 70000,
--         },
--         [`futo`] = {
--             ["model"] = "futo",
--             ["count"] = 3,
--             ["price"] = 45000,
--         },
--         [`kuruma`] = {
--             ["model"] = "kuruma",
--             ["count"] = 3,
--             ["price"] = 75000,
--         },
--         [`sultan`] = {
--             ["model"] = "sultan",
--             ["count"] = 3,
--             ["price"] = 60000,
--         },
--         [`sultan2`] = {
--             ["model"] = "sultan2",
--             ["count"] = 3,
--             ["price"] = 65000,
--         },
--         [`revolter`] = {
--             ["model"] = "revolter",
--             ["count"] = 3,
--             ["price"] = 55000,
--         },
--         [`schafter2`] = {
--             ["model"] = "schafter2",
--             ["count"] = 3,
--             ["price"] = 52000,
--         },
--         [`schafter3`] = {
--             ["model"] = "schafter3",
--             ["count"] = 3,
--             ["price"] = 53000,
--         },
--         [`schafter4`] = {
--             ["model"] = "schafter4",
--             ["count"] = 3,
--             ["price"] = 55000,
--         },
--         [`sentinel3`] = {
--             ["model"] = "sentinel3",
--             ["count"] = 3,
--             ["price"] = 55000,
--         },
--         [`cognoscenti`] = {
--             ["model"] = "cognoscenti",
--             ["count"] = 3,
--             ["price"] = 70000,
--         },
--         [`cog55`] = {
--             ["model"] = "cog55",
--             ["count"] = 3,
--             ["price"] = 72000,
--         },
--         [`fugitive`] = {
--             ["model"] = "fugitive",
--             ["count"] = 3,
--             ["price"] = 42000,
--         },
--         [`intruder`] = {
--             ["model"] = "intruder",
--             ["count"] = 3,
--             ["price"] = 40000,
--         },
--         [`premier`] = {
--             ["model"] = "premier",
--             ["count"] = 3,
--             ["price"] = 40000,
--         },
--         [`stratum`] = {
--             ["model"] = "stratum",
--             ["count"] = 3,
--             ["price"] = 42000,
--         },
--         [`superd`] = {
--             ["model"] = "superd",
--             ["count"] = 3,
--             ["price"] = 45000,
--         },
--         [`tailgater`] = {
--             ["model"] = "tailgater",
--             ["count"] = 3,
--             ["price"] = 50000,
--         },
--         [`exemplar`] = {
--             ["model"] = "exemplar",
--             ["count"] = 3,
--             ["price"] = 52000,
--         },
--         [`jackal`] = {
--             ["model"] = "jackal",
--             ["count"] = 3,
--             ["price"] = 55000,
--         },
--         [`oracle`] = {
--             ["model"] = "oracle",
--             ["count"] = 3,
--             ["price"] = 35000,
--         },
--         [`oracle2`] = {
--             ["model"] = "oracle2",
--             ["count"] = 3,
--             ["price"] = 60000,
--         },
--         [`raiden`] = {
--             ["model"] = "raiden",
--             ["count"] = 3,
--             ["price"] = 70000,
--         },
--         [`surge`] = {
--             ["model"] = "surge",
--             ["count"] = 3,
--             ["price"] = 40000,
--         },
--         [`rebla`] = {
--             ["model"] = "rebla",
--             ["count"] = 3,
--             ["price"] = 65000,
--         },
--         [`novak`] = {
--             ["model"] = "novak",
--             ["count"] = 3,
--             ["price"] = 59000,
--         }, },
--         ["C Class"] = {
--             [`Yosemite3`] = {
--                 ["model"] = "Yosemite3",
--                 ["count"] = 15,
--                 ["price"] = 25000,
--             },
--             [`blista2`] = {
--                 ["model"] = "blista2",
--                 ["count"] = 15,
--                 ["price"] = 27500,
--             },
--             [`asterope`] = {
--                 ["model"] = "asterope",
--                 ["count"] = 15,
--                 ["price"] = 30000,
--             },
--             [`ingot`] = {
--                 ["model"] = "ingot",
--                 ["count"] = 15,
--                 ["price"] = 20000,
--             },
--             [`primo2`] = {
--                 ["model"] = "primo2",
--                 ["count"] = 15,
--                 ["price"] = 37500,
--             },
--             [`stanier`] = {
--                 ["model"] = "stanier",
--                 ["count"] = 15,
--                 ["price"] = 37500,
--             },
--             [`stretch`] = {
--                 ["model"] = "stretch",
--                 ["count"] = 15,
--                 ["price"] = 27500,
--             },
--             [`warrener`] = {
--                 ["model"] = "warrener",
--                 ["count"] = 15,
--                 ["price"] = 25000,
--             },
--             [`washington`] = {
--                 ["model"] = "washington",
--                 ["count"] = 15,
--                 ["price"] = 22500,
--             },
--             [`issi2`] = {
--                 ["model"] = "issi2",
--                 ["count"] = 15,
--                 ["price"] = 30000,
--             },
--             [`panto`] = {
--                 ["model"] = "panto",
--                 ["count"] = 15,
--                 ["price"] = 37500,
--             },
--             [`rhapsody`] = {
--                 ["model"] = "rhapsody",
--                 ["count"] = 15,
--                 ["price"] = 37500,
--             },
--             [`baller`] = {
--                 ["model"] = "baller",
--                 ["count"] = 15,
--                 ["price"] = 35000,
--             },
--             [`baller2`] = {
--                 ["model"] = "baller2",
--                 ["count"] = 15,
--                 ["price"] = 32500,
--             },
--             [`bjxl`] = {
--                 ["model"] = "bjxl",
--                 ["count"] = 15,
--                 ["price"] = 32500,
--             },
--             [`fq2`] = {
--                 ["model"] = "fq2",
--                 ["count"] = 15,
--                 ["price"] = 32500,
--             },
--             [`granger`] = {
--                 ["model"] = "granger",
--                 ["count"] = 15,
--                 ["price"] = 37500,
--             },
--             [`habanero`] = {
--                 ["model"] = "habanero",
--                 ["count"] = 15,
--                 ["price"] = 25000,
--             },
--             [`landstalker`] = {
--                 ["model"] = "landstalker",
--                 ["count"] = 15,
--                 ["price"] = 35000,
--             },
--             [`patriot`] = {
--                 ["model"] = "patriot",
--                 ["count"] = 15,
--                 ["price"] = 37500,
--             },
--             [`patriot2`] = {
--                 ["model"] = "patriot2",
--                 ["count"] = 15,
--                 ["price"] = 32500,
--             },
--             [`radi`] = {
--                 ["model"] = "radi",
--                 ["count"] = 15,
--                 ["price"] = 35000,
--             },
--             [`seminole`] = {
--                 ["model"] = "seminole",
--                 ["count"] = 15,
--                 ["price"] = 25000,
--             },
--             [`youga`] = {
--                 ["model"] = "youga",
--                 ["count"] = 15,
--                 ["price"] = 35000,
--             },
--             [`caracara2`] = {
--                 ["model"] = "caracara2",
--                 ["count"] = 2,
--                 ["price"] = 20000,
--             },
--             [`streiter`] = {
--                 ["model"] = "streiter",
--                 ["count"] = 15,
--                 ["price"] = 22500,
--             },
--             [`mesa`] = {
--                 ["model"] = "mesa",
--                 ["count"] = 15,
--                 ["price"] = 25000,
--             },
--             [`mesa3`] = {
--                 ["model"] = "mesa3",
--                 ["count"] = 15,
--                 ["price"] = 37500,
--             },
--             [`comet4`] = {
--                 ["model"] = "comet4",
--                 ["count"] = 3,
--                 ["price"] = 30000,
--             },
--             [`brawler`] = {
--                 ["model"] = "brawler",
--                 ["count"] = 2,
--                 ["price"] = 20000,
--             },
--             [`dubsta3`] = {
--                 ["model"] = "dubsta3",
--                 ["count"] = 2,
--                 ["price"] = 30000,
--             },
--             [`bfinjection`] = {
--                 ["model"] = "bfinjection",
--                 ["count"] = 15,
--                 ["price"] = 25000,
--             },
--             [`kamacho`] = {
--                 ["model"] = "kamacho",
--                 ["count"] = 15,
--                 ["price"] = 37500,
--             },
--             [`rebel`] = {
--                 ["model"] = "rebel",
--                 ["count"] = 15,
--                 ["price"] = 30000,
--             },
--             [`rebel2`] = {
--                 ["model"] = "rebel2",
--                 ["count"] = 15,
--                 ["price"] = 37500,
--             },
--             [`guardian`] = {
--                 ["model"] = "guardian",
--                 ["count"] = 2,
--                 ["price"] = 20000,
--             },
--             [`bison`] = {
--                 ["model"] = "bison",
--                 ["count"] = 15,
--                 ["price"] = 20000,
--             },
--             [`bobcatxl`] = {
--                 ["model"] = "bobcatxl",
--                 ["count"] = 15,
--                 ["price"] = 40000,
--             },
--             [`riata`] = {
--                 ["model"] = "riata",
--                 ["count"] = 2,
--                 ["price"] = 20000,
--             },
--             [`glendale`] = {
--                 ["model"] = "glendale",
--                 ["count"] = 15,
--                 ["price"] = 40000,
--             },
--             [`fagaloa`] = {
--                 ["model"] = "fagaloa",
--                 ["count"] = 15,
--                 ["price"] = 40000,
--             },
--             [`issi3`] = {
--                 ["model"] = "issi3",
--                 ["count"] = 15,
--                 ["price"] = 25000,
--             },
--             [`chino`] = {
--                 ["model"] = "chino",
--                 ["count"] = 15,
--                 ["price"] = 37500,
--             },
--             [`chino2`] = {
--                 ["model"] = "chino2",
--                 ["count"] = 15,
--                 ["price"] = 37500,
--             },
--             [`hotknife`] = {
--                 ["model"] = "hotknife",
--                 ["count"] = 15,
--                 ["price"] = 37500,
--             },
--             [`btype`] = {
--                 ["model"] = "btype",
--                 ["count"] = 15,
--                 ["price"] = 37500,
--             },
--             [`btype3`] = {
--                 ["model"] = "btype3",
--                 ["count"] = 15,
--                 ["price"] = 37500,
--             },
--             [`ztype`] = {
--                 ["model"] = "ztype",
--                 ["count"] = 15,
--                 ["price"] = 25000,
--             },
--             [`moonbeam`] = {
--                 ["model"] = "moonbeam",
--                 ["count"] = 15,
--                 ["price"] = 20000,
--             },
--             [`moonbeam2`] = {
--                 ["model"] = "moonbeam2",
--                 ["count"] = 15,
--                 ["price"] = 22500,
--             },
--             [`ratloader`] = {
--                 ["model"] = "ratloader",
--                 ["count"] = 15,
--                 ["price"] = 25000,
--             },
--         },

	
--     ["D Class"] = {
--         [`youga2`] = {
--             ["model"] = "youga2",
--             ["count"] = 90000000000000,
--             ["price"] = 10000,
--         },
--         [`asea`] = {
--             ["model"] = "asea",
--             ["count"] = 30,
--             ["price"] = 8000,
--         },
--         [`emperor`] = {
--             ["model"] = "emperor",
--             ["count"] = 30,
--             ["price"] = 11000,
--         },
--         [`regina`] = {
--             ["model"] = "regina",
--             ["count"] = 30,
--             ["price"] = 7000,
--         },
--         [`minivan`] = {
--             ["model"] = "minivan",
--             ["count"] = 30,
--             ["price"] = 13000,
--         },
--         [`paradise`] = {
--             ["model"] = "paradise",
--             ["count"] = 30,
--             ["price"] = 12000,
--         },
--         [`pony`] = {
--             ["model"] = "pony",
--             ["count"] = 30,
--             ["price"] = 17000,
--         },
--         [`speedo`] = {
--             ["model"] = "speedo",
--             ["count"] = 30,
--             ["price"] = 19000,
--         },
--         [`burrito3`] = {
--             ["model"] = "burrito3",
--             ["count"] = 30,
--             ["price"] = 14000,
--         },
--         [`kalahari`] = {
--             ["model"] = "kalahari",
--             ["count"] = 30,
--             ["price"] = 9000,
--         },
--         [`gburrito2`] = {
--             ["model"] = "gburrito2",
--             ["count"] = 30,
--             ["price"] = 17000,
--         },
--         [`dilettante`] = {
--             ["model"] = "dilettante",
--             ["count"] = 30,
--             ["price"] = 10000,
--         },
--         [`bodhi2`] = {
--             ["model"] = "bodhi2",
--             ["count"] = 30,
--             ["price"] = 16000,
--         },
--         [`rancherxl`] = {
--             ["model"] = "rancherxl",
--             ["count"] = 30,
--             ["price"] = 12000,
--         },
--         [`dloader`] = {
--             ["model"] = "dloader",
--             ["count"] = 30,
--             ["price"] = 13000,
--         },
--         [`sadler`] = {
--             ["model"] = "sadler",
--             ["count"] = 30,
--             ["price"] = 19000,
--         },
--         [`sandking2`] = {
--             ["model"] = "sandking2",
--             ["count"] = 3,
--             ["price"] = 18000,
--         },
--         [`sandking`] = {
--             ["model"] = "sandking",
--             ["count"] = 3,
--             ["price"] = 16000,
--         },
--         [`dynasty`] = {
--             ["model"] = "dynasty",
--             ["count"] = 30,
--             ["price"] = 15000,
--         },
--         [`surfer`] = {
--             ["model"] = "surfer",
--             ["count"] = 30,
--             ["price"] = 14000,
--         },
--         [`surfer2`] = {
--             ["model"] = "surfer2",
--             ["count"] = 30,
--             ["price"] = 11000,
--         },
--         [`hermes`] = {
--             ["model"] = "hermes",
--             ["count"] = 30,
--             ["price"] = 20000,
--         },
--         [`hustler`] = {
--             ["model"] = "hustler",
--             ["count"] = 30,
--             ["price"] = 18000,
--         },
--         [`virgo2`] = {
--             ["model"] = "virgo2",
--             ["count"] = 30,
--             ["price"] = 12000,
--         },
--         [`virgo3`] = {
--             ["model"] = "virgo3",
--             ["count"] = 30,
--             ["price"] = 15000,
--         },
--         [`voodoo2`] = {
--             ["model"] = "voodoo2",
--             ["count"] = 30,
--             ["price"] = 13000,
--         },
--         [`voodoo`] = {
--             ["model"] = "voodoo",
--             ["count"] = 30,
--             ["price"] = 17000,
--         },
--         [`manana`] = {
--             ["model"] = "manana",
--             ["count"] = 30,
--             ["price"] = 16000,
--         },
--         [`peyote`] = {
--             ["model"] = "peyote",
--             ["count"] = 30,
--             ["price"] = 11000,
--         },
--         [`tornado`] = {
--             ["model"] = "tornado",
--             ["count"] = 30,
--             ["price"] = 18000,
--         },
--         [`tornado2`] = {
--             ["model"] = "tornado2",
--             ["count"] = 30,
--             ["price"] = 14000,
--         },
--         [`tornado3`] = {
--             ["model"] = "tornado3",
--             ["count"] = 30,
--             ["price"] = 15000,
--         },
--         [`tornado5`] = {
--             ["model"] = "tornado5",
--             ["count"] = 30,
--             ["price"] = 12000,
--         },
--         [`pigalle`] = {
--             ["model"] = "pigalle",
--             ["count"] = 30,
--             ["price"] = 13000,
--         },
--         [`journey`] = {
--             ["model"] = "journey",
--             ["count"] = 30,
--             ["price"] = 16000,
--         },
-- 	},
-- }

function getVehicleDataFromModel(model)
	for k,v in pairs(config.carList) do
		for kk,vv in pairs(v) do
			if vv.model == model or kk == model  then
				return vv
			end
		end
	end
	return config.langs[config.lang].unknown
end

function getVehicleCategoryFromModel(model)
	for k,v in pairs(config.carList) do
		for kk,vv in pairs(v) do
			if vv.model == model or kk == model then
				return k
			end
		end
	end
	return config.langs[config.lang].unknown
end