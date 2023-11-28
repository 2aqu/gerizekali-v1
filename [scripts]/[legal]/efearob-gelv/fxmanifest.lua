fx_version 'adamant'
game 'gta5'
author 'Magni#0247'
description 'mgnPoliceMdt'
version '2.0.0'
lua54 'yes'
shared_scripts {
    'shared/config.lua',
    'shared/GetCore.lua',
    'locales/*.lua',
}
server_scripts {
    -- '@mysql-async/lib/MySQL.lua', --⚠️PLEASE READ⚠️; Uncomment this line if you use 'mysql-async'.⚠️
    '@oxmysql/lib/MySQL.lua', --⚠️PLEASE READ⚠️; Uncomment this line if you use 'oxmysql'.⚠️
    'server/discordlog.lua',
    'server/editable.lua',
	'server/main.lua'
}
client_scripts {
    'client/editable.lua',
	'client/main.lua',
}
ui_page 'nui/index.html'
files {
    'nui/style/*.css',
    'nui/assets/*.png',
    'nui/assets/cams/*.png',
    'nui/assets/cars/*.png',
    'nui/assets/mapStyles/**/**/*.jpg',
    'nui/index.html',
    'nui/app/*.js',
    'nui/style/*.otf',
    'nui/style/*.ttf',
}
escrow_ignore {
	'shared/*.lua',
    'locales/*.lua',
    'client/editable.lua',
    'server/editable.lua',
    'server/discordlog.lua',
}
exports {
	'AddCall'
}
dependencies {
    '/onesync'
}
dependency '/assetpacks'