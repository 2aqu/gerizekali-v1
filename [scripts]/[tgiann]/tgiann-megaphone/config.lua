
--[[ 
    - this script needs tgiann-core script to work, you can download the script from your keymaster account
      Start tgiann-core script after es_extented/qb-core script and before tgiann-* scripts
      Adjust the tgiann-core config file according to the framework you are using

    -Client Event List
        "pma-voice:client:activemegaphoneuser"
        "pma-voice:client:passivemegaphoneuser"
	    "tgiann-megaphone:drop"

    -Export List
        "megaphoneDist"
        "megaphoneIsActive"

    ⚠️ PLEASE READ ⚠️; You can't hear your own voice on the megaphone, pma doesn't have such a feature

    QB-Item (qb-core/shared/items.lua)
        ['megaphone']= {['name'] = 'megaphone',['label'] = 'Megaphone', ['weight'] = 200, ['type'] = 'item', ['image'] = 'megaphone.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = ''},
]]

tgiCoreExports = exports["tgiann-core"]
config = tgiCoreExports:getConfig()
config.megaphoneDist = 45
config.vehMegaphoneKey = 29
config.ItemName = "megaphone"
config.lang = "tr"
config.text = {
    tr = {
        ["active"] = "Araç Megafonu Aktif",
        ["passive"] =  "Araç Megafonu Pasif"
    },
    en = {
        ["active"] = "Vehicle Megaphone Active",
        ["passive"] =  "Vehicle Megaphone Passive"
    }
}

config.megaphoneVolume = 5.0 -- The volume, ranging from 0.0 to 1.0 (or above)
config.filterName = "tmphone"
config.filters = {
    { name = "freq_low", value = 10.0 },
    { name = "freq_hi", value = 10000.0 },
    { name = "rm_mod_freq", value = 300.0 },
    { name = "rm_mix", value = 0.2 },
    { name = "fudge", value = 0.0 },
    { name = "o_freq_lo", value = 200.0 },
    { name = "o_freq_hi", value = 5000.0 },
}