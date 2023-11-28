fx_version 'adamant'
game 'gta5'
shared_scripts {
    "config/*.lua",
}
client_scripts {
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
    "client/zones/carmeet.lua",
    "client/module/handler/module_handler.lua",
	"client/module/modules/*.lua",
    "client/module/modules/ui_native_pages/*.lua",
}

server_scripts {
	"@oxmysql/lib/MySQL.lua",
    "server.lua"
}
-- server_scripts {
--     "server/modules/*.lua",
-- } 