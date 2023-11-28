fx_version 'cerulean'
games { 'gta5' }
lua54 'on'
client_scripts {
	'client/client.lua',
	'framework/client.lua',
}
shared_scripts {
	'config.lua',
}
server_scripts {
	'@oxmysql/lib/MySQL.lua',
	-- '@mysql-async/lib/MySQL.lua',
	'server/server.lua',
	'server/server_config.lua',
	'framework/server.lua',
}
ui_page {
	'html/index.html'
}
files {
	'html/index.html',
	'html/img/*.jpg',
	'html/sound/*.ogg',
	'html/img/*.png',
	'html/img/items/*.png',
	'html/img/markets/*.png',
	'html/*.js',
	'html/*.css',
}
escrow_ignore {
	'config.lua',
	'server/server_config.lua',
	'framework/server.lua',
	'framework/client.lua',
}
dependency '/assetpacks'