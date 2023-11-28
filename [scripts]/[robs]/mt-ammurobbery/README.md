# mt-ammurobbery
QBCore Ammunation Robbery using qb-target and qb-lock

# Config
```
Config.requiredItem = "advancedlockpick" -- required item to start stealing, set it to false if you don't want it
Config.DebugPoly = false -- for debug purpose
Config.policeCall = true -- set to false if you don't want to notify police 
Config.boxDistance = 1.5 -- distance from box
Config.requiredCopsCount = 2 -- required cops count to start stealing
Config.searchTime = 5000 -- searchTime before getting items
Config.cooldownTimer = 1000 * 60 * 60 -- 1000 = 1s // box cooldown

Config.ammuVitrines = { -- vitrines conf every stealable vitrine is an object
  vitrine1 = { -- preferable to set vitrinekey as name
      coords = vector3(20.55, -1105.46, 29.8), -- vitrine coords
      name = "vitrine1",
      target_icon = "fas fa-sack-dollar",
      target_label = "ammurobbery.vitine_target_label", -- label is translatble.. you can change it in locales/en.lua
      heading = 250, -- vitrine heading
      length = 1.5, -- box length
      width = 1, -- box width
      items = { -- items that can be found in vitine
          { -- chance is between 1 and 100, every item has his own chance to get and quantity
              minChance = 1,
              maxChance = 30,
              minQuantity = 1,
              maxQuantity = 1,
              item = "weapon_knife",
          },
          {
              minChance = 31,
              maxChance = 40,
              minQuantity = 1,
              maxQuantity = 1,
              item = "weapon_pistol",
          },
          {
              minChance = 41,
              maxChance = 50,
              minQuantity = 1,
              maxQuantity = 1,
              item = "weapon_pistol50",
          },
      }
  }
}
```

# Dependencies:
qb-core: https://github.com/qbcore-framework/qb-core

qb-target: https://github.com/BerkieBb/qb-target

qb-lock: https://github.com/M-Middy/qb-lock

# Preview
https://youtu.be/0n1JmB6XhEQ

# Discord
https://discord.gg/AQHbsahZsV 
