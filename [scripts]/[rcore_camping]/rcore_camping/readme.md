# rcore_camping

### Installation

1) Upload rcore_camping and rcore_camping_assets into resources folder
2) Write ``ensure rcore_camping`` and `ensure rcore_camping_assets` into server.cfg
3) Upload SQL or import into shared.lua in QBCore version
4) Try it out :)

### Items SQL / QBCore

#### Extending placable

In config find section Config.PlaceableObjects

WARNING: Always be sure to fill type and object, dont forget that fire has two objects in fire and without.

Example:
````lua
--Your next chair
{
    object = 'YOUR CHAIR MODEL NAME NOT HASH',
    usableItem = 'chair_3', --Object that you need to add into database/shared.lua
    type = Types.CHAIR, --IMPORTANT TYPE
},
````

#### QBCore

1) Found assets/sql/qbcore.lua copy it
2) Open qb-core/shared.lua found Shared.Items and add copy items into that

It can look like this 

````lua
QBShared.Items = { 
    LOT OF OTHERS ITEMS
    --rcore_camping
    ['flint'] = { ['name'] = 'flint', ['label'] = 'Flint & Steel', ['weight'] = 500, ['type'] = 'item', ['image'] = 'flint.png', ['unique'] = true, ['useable'] = false, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'Flint & Steel used for starting fire' },
    ['fireplace'] = { ['name'] = 'fireplace', ['label'] = 'Fireplace', ['weight'] = 1000, ['type'] = 'item', ['image'] = 'fireplace.png', ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'Fireplace' },
    ['tent_1'] = { ['name'] = 'tent_1', ['label'] = 'Tent', ['weight'] = 1000, ['type'] = 'item', ['image'] = 'tent_1.png', ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'Tent' },
    ['tent_2'] = { ['name'] = 'tent_2', ['label'] = 'Big Tent', ['weight'] = 1000, ['type'] = 'item', ['image'] = 'tent_2.png', ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'Tent' },
    ['wood'] = { ['name'] = 'wood', ['label'] = 'Wood', ['weight'] = 500, ['type'] = 'item', ['image'] = 'wood.png', ['unique'] = true, ['useable'] = false, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'Tent' },
}
````

#### ESX 1.2 / Legacy

1) Found assets/sql/esx/esx_limit pr esx_weight if you are using weight system or limit
2) Insert that query into your SQL database

### Inventory images

You can found prepared inventory images in assets/inventory-images place them
where your inventory has other images to load them (sometimes  you need to add them into fxmanifest)

### How to translate items name 

Check locales/en.lua or your selected localization and add item name as key and create translation for example

````lua
['raw_chicken'] = 'Raw chicken'
````

### CONTACT

Contact us on our discord https://discord.gg/F28PfsY

https://rcore.cz

https://store.rcore.cz

info@rcore.cz
