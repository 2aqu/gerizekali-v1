--[[ 
    - this script needs tgiann-core script to work, you can download the script from your keymaster account
      Start tgiann-core script after es_extented/qb-core script and before tgiann-* scripts
      Adjust the tgiann-core config file according to the framework you are using

    Credit: bzzz_prop_seeds : https://bzzz.tebex.io/package/5073805
]]

tgiCoreExports = exports["tgiann-core"]
config = tgiCoreExports:getConfig()
config.objectSpawnDist = 100 -- spawn distance of plants
config.checkWhileTime = 30000 -- server side is the while loop. don't use too many low values
config.checkClientWhileTime = 500 -- client side while loop

config.lang = "tr"
config.langs = {
    tr = {
        waterButton = "Sula",
        fertilizeButton = "Gübrele",
        closeButton = "Kapat",
        collectButton = "Hasatı Topla",
        burnButton = "Yak",
        openButton = "[E] İncele",
        healtBar = "Bitkinin Sağlığı",
        growingBar = "Gelişme",
        waterBar = "Su Oranı",
        fertilizerBar = "Gübre Oranı",
        alreadyDoing = "Zaten Birşey Yapıyorsun!",
        noItem = "Bu İşlem İçin %s Lazım!",
        plantsNearby = "Yakınlarında Ekili Bir Bitki Var Ondan Uzaklaş!",
        wrongGround = "Bu Zemine Ekim Yapamazsın",
        notYour = "Bitki Senin Değil!",
    },
    en = {
        waterButton = "water",
        fertilizeButton = "fertilize",
        closeButton = "close",
        collectButton = "pick harvest",
        burnButton = "burn",
        openButton = "[E] analyze",
        healtBar = "Plants Health",
        growingBar = "Growing",
        waterBar = "Water Rate",
        fertilizerBar = "Fertilizer Rate",
        alreadyDoing = "You are already doing something!",
        noItem = "You need %s for this process!",
        plantsNearby = "There is a plant cultivated near it. Get away from it!",
        wrongGround = "You can't  plant on this ground",
        notYour = "The Plant Is Not Yours!",
    },
    de = {
        waterButton = "Gieß die Pflanze",
        fertilizeButton = "dünge die Pflanze",
        closeButton = "schließen",
        collectButton = "ernte die Ernte",
        burnButton = "verbrenne",
        openButton = "[E] Analyse",
        healtBar = "Pflanzen Gesundheit",
        growingBar = "Fortschritt",
        waterBar = "Wasserrate",
        fertilizerBar = "Güllemenge",
        alreadyDoing = "Du tust bereits etwas!",
        noItem = "Für diesen Vorgang benötigst du %s !",
        plantsNearby = "In der Nähe wurde eine Pflanze schon angebaut. Geh weg davon!",
        wrongGround = "Auf diesem Boden kann man nicht pflanzen",
        notYour = "Die Pflanze gehört nicht dir!",
    }
}

config.plantLang = {
    tr = {
        plant1Label = "Yeşil Ot",
        plant1Description = "Yetiştirilmesi yasak olan yeşil ot bitkisi gelişmesi için bol suya ve güneşe ihtiyaç duyar. Bulundurulması, kullanılması ve ticaret haline getirilmesi yasak olmasının en büyük sebebi direkt yaprak halinde kullanılabilmesidir."
    },
    en = {
        plant1Label = "Green Weed",
        plant1Description = "The green grass plant, which is forbidden to be grown, needs plenty of water and sun for its growing. The biggest reason why it is forbidden to keep, use and commercialize is that it can be used directly as leaves."
    },
    de = {
        plant1Label = "Grüne Graspflanze",
        plant1Description = "Die grüne Graspflanze, deren Anbau verboten ist, benötigt für ihr Wachstum viel Wasser und Sonne. Der Hauptgrund für das Verbot der Aufbewahrung, Verwendung und Vermarktung besteht darin, dass es direkt als Blatt verwendet werden kann."
    }
}

config.plant = {
    {
        item = "weedseed", -- Useable item name
        waterItem = "water_bottle", -- item needed to increase the water value of the plant
        fertilizerItem = "weed_nutrition", -- item needed to increase the fertilizer value of the plant
        burnItem = "lighter", -- item needed to burn the plant

        plantableGroundHash = { -- hashes of plantable ground (You can find the hash with the getgroundhash command)
            -461750719, -1286696947
        },

        giveItem = { -- the item and amount to be given when the plant is collected
            name = "weed",
            amount = 10,
        },

        model = `bkr_prop_weed_lrg_01b`,
        dirt = `bzzz_prop_seeds`,
        negativeZ = 0.48,

        startWater = 10, --max 100 (water value to start when the plant is first planted)
        startFertilizer = 10, --max 100 (fertilizer value to start when the plant is first planted)

        timeFullGrow = 1800, -- second (the time the plant reaches 100% growth rate)
        timeFullRemoveWater = 1200, -- second (total time for the water value to decrease from 100 to 0)
        timeFullRemoveFertilizer = 2500, -- second (total time for the fertilizer value to decrease from 100 to 0)
        timeFullRemoveHealth = 600, --second (Time for health value to decrease from 100 to 0 without water and fertilezer value)
        timeFullBurn = 30, -- second (deleting time of the plant after burning)

        forGrowMinWater = 20, -- The minimum amount of water required for the plant to grow
        forGrowMinFertilizer = 0, -- The minimum amount of fertilizer required for the plant to grow

        addWater = 100, --max 100 (Water value to be added when using waterItem)
        waterAnimTime = 30000, --milisecond(min 5000) 
        addFertilizer = 100,--max 100 (Fertilizer value to be added when using fertilizerItem)
        FertilizerAnimTime = 30000, --milisecond(min 5000)

        headerImg = "weedseed.webp", -- Header img (tgiann-planting/assets)
        label = config.plantLang[config.lang].plant1Label, -- Menu label
        description = config.plantLang[config.lang].plant1Description, -- Menu description

        canBurn = function(playerData) -- canBurn Function
            if not PlayerData then PlayerData = tgiCoreExports:getPlayerData() end
            return PlayerData.job.name == "police" or PlayerData.job.name == "vpd"  or PlayerData.job.name == "dppd" or PlayerData.job.name == "ranger" or PlayerData.job.name == "state"
        end,

        canCollect = function(xPlayer, src, plantData) -- canCollect Function
            local citizenid = tgiCore.getCid(xPlayer)
            local canCollectVar = citizenid == plantData.citizenid
            if not canCollectVar then
                tgiCore.notif(src, config.langs[config.lang].notYour, "error")
            end
            return canCollectVar
        end
    }
}

for i=1, #config.plant do
    config.plant[i].index = i
end