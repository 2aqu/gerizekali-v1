Config = {}
Config.DailyLimit = 3005
Config.DailyReset = 720 -- minute
Config.UseTarget = true
-- Config.Bliplerkapat = false
Config.Seller = {
    [1] = {
        coords = vector4(-2507.82, 3613.63, 13.82, 267.89),
        radius = 1.5,
        ped = 'mp_m_shopkeep_01',
        scenario = "WORLD_HUMAN_STAND_MOBILE",
        label = "Manav",
        pedSpawned = false,
        blip = {
            sprite = 605,
            scale = 0.8,
            label = "Üzüm Satış",
            colour = 27
        }
    },
    
}

Config.Items = {
    ["grape"] = { 
        ["grape"] = {
            price = 140
        }     
    },

}

Config.Categorys = {
    ["grape"] = {
        label = "Üzüm",
        items = Config.Items["grape"]
    },


}
