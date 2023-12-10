fx_version 'cerulean'
game 'gta5'
version '0.0.1'
shared_scripts {
    'config.lua',
    'business/config.lua',
    'guard/config.lua',
}
client_scripts {
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
    'fundamental/client.lua',
    'inv/client.lua',
    'cuff/client.lua',
    'rental/client.lua',
    'rob/client.lua',
    'givecar/client.lua',
    'business/client.lua',
    'run/client.lua',
    'safe/client.lua',
    'dance/client.lua',
    'vehicles/client.lua',
    'target/client.lua',
    'target/dispatchignorezones.lua',
    'stance/client.lua',
}
server_scripts {
	"@oxmysql/lib/MySQL.lua",
    'fundamental/server.lua',
    'inv/server.lua',
    'cuff/server.lua',
    'rental/server.lua',
    'rob/server.lua',
    'givecar/server.lua',
    'business/server.lua',
    'run/server.lua',
    'guard/sv_guard.lua',
    'guard/guard.lua',
    'target/server.lua',
    'xprofiler.js',
}
lua54 'yes'