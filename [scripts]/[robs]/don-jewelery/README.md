# don-jewelery

Jewelery Robbery for QBCore with 1 or 3 stores, Thermite, VarHack and auto-lock/unlock doors!

## Credits

- [Holiday95](https://github.com/Holidayy95/qb-jewelery) For their fork of qb-jewelery which this is based on, and giving me the idea.
- [QBCore Framework](https://github.com/qbcore-framework) For the orginal qb-jewelery and for inspiring me to code.
- [MrNewb](https://github.com/MrNewb) For showing me how to get the cases to break, absolute legend!

## Dependencies

- [qb-core](https://github.com/qbcore-framework/qb-core)
- [qb-doorlock](https://github.com/qbcore-framework/qb-doorlock)
- [qb-target](https://github.com/qbcore-framework/qb-target)
- [ps-ui](https://github.com/Project-Sloth/ps-ui)

### *Optional Dependancies*

- [ps-dispatch](https://github.com/Project-Sloth/ps-dispatch)
- [qb-policejob](https://github.com/qbcore-framework/qb-policejob)

## New Features

- (Not really a "new" feature but) Optimised script, running at 0~0.1ms, only hitting 0.1ms when it locks or unlocks a door after a hack.
- 2 New stores to rob // Grapeseed & Paleto
- Config option for just the base GTA Vangelico's Jewellers or all 3.
- Config option for base qb police alerts or ps-dispatch.
- Doors now lock depending of the time of day, and store is "unthievable" during opening hours.
- Police alerts for thermite have a higher chance when closer to business close or open.
- Police alerts for smashing the cases can be disabled by hacking the main Vangelico's PC.
- Cases will actually smash after you hit them, and reset after cooldown.
- Thermite the stores fusebox to open the front door at night.
- Hack into Vinewood Vangelico's PC to unlock all Vangelico's for 5 minutes (or whatever you set the cooldown to).

## Previews

- [Don Jewelery](https://youtu.be/t-MO9yvzlx4)
- [Cases](https://streamable.com/5xcg40)
- [Dispatch Pt 1](https://streamable.com/3lspsx)
- [Dispatch Pt 2](https://streamable.com/c9zs9z)

## Store MLO's

All store locations are for GigZ Jewelers' except for the base GTA one. It's a free map, link below:

- [GigZ Jewel Store](https://forum.cfx.re/t/mlo-jewel-store-by-gigz/4857261)
- **MAKE SURE TO INSTALL THE HEIST VERSION**
- If you're using these MLO's, place interiorproxies.meta in the gigz_jewel_free_heist folder and edit it's fxmanifest to the following:

```lua
files {"interiorproxies.meta"}
    
data_file 'INTERIOR_PROXY_ORDER_FILE' 'interiorproxies.meta'
```

- You'll also need to add the following code to qb-policejob/config.lua in Config.SecurityCameras after line 100 or after index 34 (Vangelico's Jewelers CAM#4);

```lua
[35] = {label = "Vangelico's Grapeseed CAM#1", coords = vector3(1645.27, 4886.01, 44.7), r = {x = -35.0, y = 0.0, z = -141.82}, canRotate = true, isOnline = true},
[36] = {label = "Vangelico's Paleto CAM#1", coords = vector3(-374.46, 6045.52, 34.05), r = {x = -35.0, y = 0.0, z = -105.09}, canRotate = true, isOnline = true},
```

- **It's important these cameras keep the same index as above and if you alter it, you should know what your doing.**

### If you're using the config option for one store, and don't plan to use all three

- Don't install the store MLO's or the gigz-jewel-fix to your server.
- Don't add the door locks for Grapeseed or Paleto to the qb-doorlocks configs file.
- Don't add the new Cam ID's to qb-policejob.
- Set Config.OneStore = true.

## Important Config

### 1. Intial Setup

#### 1.1. Store Times

```lua
Config.VangelicoHours = { -- Store Hours
    range = {
        open = 6, -- When the doors unlock
        close = 18 -- When they lock for the night
    },
    alertnight = {
        start = 18, -- The start of higher chance alerts in the evening
        fin = 20 -- The end of higher chance alerts in the evening
    },
    alertmorn = {
        start = 4, -- The start of higher chance alerts in the morning
        fin = 6 -- The end of higher chance alerts in the morning
    }
}
```

- The range is the time the store is open, and the alert times are the times the police will have a higher chance of getting an alert.

#### 1.2. Variables

```lua
Config.OneStore = false -- Set to true if using just the main Vangelico's Jewellers
Config.PSDispatch = true -- Set to false for base qb-policejob alerts or true to use ps-dispatch alerts

Config.Cooldown = 5 * (60 * 2000) -- where x is minutes ie. x * (60 * 2000) \\ For door auto lock function
Config.Timeout = 5 * (60 * 2000) -- where x is minutes ie. x * (60 * 2000) \\ For case smashing cooldown
Config.RequiredCops = 0
```

- The cooldown is the time (in minutes) the doors will auto lock after a hack.
- The timeout is the time (in minutes) the cases will reset after smashing.
- The required cops is the amount of cops online required for the store to be "thievable".

#### 1.3. Door Locks

```lua
Config.Doors = { -- qb-doorlock door IDs
    [1] = { -- City Vangelico's
        ["main"] = "jewelery-citymain",
        ["sec"] = "jewelery-citysec"
    },
    [2] = { -- Grapeseed Vangelico's
        ["main"] = "jewelery-grapemain",
        ["sec"] = "jewelery-grapesec"
    },
    [3] = { -- Paleto Vangelico's
        ["main"] = "jewelery-palmain",
        ["sec"] = "jewelery-palsec"
    }
}
```

- The door IDs are the door names you set in qb-doorlocks/config.lua

#### 1.4. Hacks

```lua
Config.DoorItem = 'thermite' -- Item to remove\check for when placing a charge
Config.ThermiteSettings = {
    time = 60, -- time the hack displays for
    gridsize = 5, -- (5, 6, 7, 8, 9, 10) size of grid by square units, ie. gridsize = 5 is a 5 * 5 (25) square grid
    incorrectBlocks = 10 -- incorrectBlocks = number of incorrect blocks after which the game will fail
}

Config.VarHackSettings = {
    blocks = 2, -- time the hack displays for
    time = 20 -- time the hack displays for
}
```

- The door item is the item you want to remove from the player when placing a charge.
- The thermite settings are the settings for the thermite hack.
- The var hack settings are the settings for the variable hack.

### 2. Door Configs

- Make a copy of the door config below and place it inside `qb-doorlocks/configs/` in it's own .lua file.

```lua
Config.DoorList['jewelery-citymain'] = {
    doorType = 'double',
    locked = true,
    cantUnlock = true,
    doorLabel = 'main',
    distance = 2,
    doors = {
        {objName = 9467943, objYaw = 306.00003051758, objCoords = vec3(-630.426514, -238.437546, 38.206532)},
        {objName = 1425919976, objYaw = 306.00003051758, objCoords = vec3(-631.955383, -236.333267, 38.206532)}
    },
    doorRate = 1.0,
}

Config.DoorList['jewelery-citysec'] = {
    objYaw = 36.000022888184,
    doorRate = 1.0,
    locked = true,
    fixText = false,
    pickable = true,
    authorizedJobs = { ['police'] = 0 },
    needsAllItems = false,
    objCoords = vec3(-629.133850, -230.151703, 38.206585),
    distance = 1.5,
    doorType = 'door',
    objName = 1335309163,
}

Config.DoorList['jewelery-grapemain'] = {
    doorType = 'double',
    locked = true,
    cantUnlock = true,
    doorLabel = 'main',
    distance = 2,
    doors = {
        {objName = 9467943, objYaw = 98.17839050293, objCoords = vec3(1653.285522, 4884.148438, 42.309845)},
        {objName = 1425919976, objYaw = 98.17839050293, objCoords = vec3(1653.655518, 4881.573730, 42.309845)}
    },
    doorRate = 1.0,
}

Config.DoorList['jewelery-grapesec'] = {
    pickable = true,
    objCoords = vec3(1648.274902, 4877.423340, 42.309898),
    objName = 1335309163,
    doorRate = 1.0,
    distance = 1,
    authorizedJobs = { ['police'] = 0 },
    doorType = 'door',
    objYaw = 188.17839050293,
    fixText = false,
    doorLabel = 'sec',
    locked = true,
}

Config.DoorList['jewelery-palmain'] = {
    doorType = 'double',
    locked = true,
    cantUnlock = true,
    doorLabel = 'main',
    distance = 2,
    doors = {
        {objName = 1425919976, objYaw = 314.90930175781, objCoords = vec3(-383.837921, 6044.059082, 31.658920)},
        {objName = 9467943, objYaw = 314.90930175781, objCoords = vec3(-382.001617, 6042.216797, 31.658920)}
    },
    doorRate = 1.0,
}

Config.DoorList['jewelery-palsec'] = {
    doorType = 'door',
    locked = true,
    doorRate = 1.0,
    pickable = true,
    distance = 1.5,
    objYaw = 44.909275054932,
    fixText = false,
    authorizedJobs = { ['police'] = 0 },
    objCoords = vec3(-382.007721, 6050.603027, 31.658974),
    objName = 1335309163,
}
```

## Support

This is not a QBCore script nor is it maintained by them, please refer to my discord for any issues!

- [discord](https://discord.gg/tVA58nbBuk)

## Changelog

- v1.1.9 - Fixed Missing Convar Check for Fr Translation
- v1.1.8 - Linting and Updated Readme
- v1.1.7 - Added Missing Event Handlers
- v1.1.6 - Added Server Event, three new variables and changed resource officially from qb-jewellery to don-jewellery. Server Event, "don-jewellery:server:StoreHit", sets one of the new variables (cityHit, grapeHit and palHit) true or false for all clients, now people other than the person who thermited can actually rob the store again.
- Started at 1.1.6..... WhAt A n00b
