fx_version 'adamant'
game 'gta5'
description 'mChat'
lua54 'yes'
author 'Lucid#3604'
version "1.1.0"
shared_scripts {
    'shared/GetCore.lua',
    'shared/config.lua',
}
client_scripts {
    'client/PlayerLoaded.lua',
    'client/main.lua',
    'client/editable.lua',
    'client/typing_indicator.lua',
    'client/me-do.lua',
}
server_scripts {
	'server/webhook.lua',
	'server/main.lua',
	'server/discordroles.lua',
    'server/editable.lua',
}
ui_page 'html/index.html'
files {
	'html/index.html',
	'html/index.js',	
	'html/index.css',
	'html/reset-inputs.css',
	'html/responsive.css',
	'html/index.css',
	'html/assets/fonts/*.otf',
	'html/assets/fonts/*.ttf',
	'html/assets/sounds/*.MP3',
	'html/assets/sounds/*.wav',
	'html/assets/images/*.png',
}
escrow_ignore {
	'shared/config.lua',
	'shared/GetCore.lua',
	'server/editable.lua',
	'client/editable.lua',
	'client/typing_indicator.lua',
	'client/PlayerLoaded.lua',
	'server/discordroles.lua',
	'server/webhook.lua',
}
dependency '/assetpacks'