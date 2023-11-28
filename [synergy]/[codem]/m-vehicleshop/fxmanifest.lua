fx_version 'cerulean'
game 'gta5'
lua54 'yes'
version '1.2.8'
description 'CodeM mVehicleShop'
author 'CodeM Team'

shared_scripts {
	'config.lua'
}

server_scripts {
	-- '@mysql-async/lib/MySQL.lua',
	'@oxmysql/lib/MySQL.lua',
	'config_presets.lua',
	'config_server.lua',
	'server/sv_*.lua'
}

client_scripts {
	'client/cl_*.lua',
}

ui_page 'html/index.html'

files {
	'html/assets/fonts/*.woff',
	'html/assets/fonts/*.woff2',
	'html/assets/fonts/*.css',
	'html/assets/*.png',
	'html/assets/*.svg',
	'html/assets/*.jpg',
	'html/vehicle_images/*.jpg',
	'html/vehicle_images/*.png',
	'html/brand_images/*.png',
	'html/brand_images/*.jpg',
	'html/css/*.css',
	'html/js/*.js',
	'html/js/**/*.js',
	'html/pages/**',
	'html/index.html',
}

escrow_ignore{
	'config_server.lua',
	'config.lua',
	'client/cl_framework.lua',
	'client/cl_interactions.lua',
	'server/sv_framework.lua',
	'config_presets.lua'
} 
client_script 'cylexac.lua'
dependency '/assetpacks'