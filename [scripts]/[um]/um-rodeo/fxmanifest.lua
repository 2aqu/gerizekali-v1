fx_version 'cerulean'
game 'gta5'
lua54 'yes'

name 'um-rodeo'
author 'uyuyorum store'
version '1.2.0'
license 'FiveM Escrow'
repository 'https://uyuyorumstore.com'
description 'The Rodeo Script is a custom FiveM resource designed to provide a fun and immersive rodeo experience for players on your server.'

shared_scripts {
	'config.lua',
	'bridge/*.lua',
}

client_scripts {
	'@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
	'client/*.lua',
}

server_scripts {
	'@oxmysql/lib/MySQL.lua',
	'server/main.lua'
}

ui_page 'web/index.html'

files {
	'web/index.html',
	'web/js/*.js',
	'web/style.css',
}

escrow_ignore {
	'config.lua',
	'bridge/*.lua',
}
dependency '/assetpacks'