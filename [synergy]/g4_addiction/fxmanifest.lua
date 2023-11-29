fx_version 'cerulean'
game 'gta5'
description 'g4_addiction'

shared_scripts {
    'config.lua'
}

client_script 'client/main.lua'

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/main.lua'
}

ui_page 'ui/index.html'

files {
    'ui/index.html',
    'ui/assets/*.js',
    'ui/assets/*.css',
    'ui/assets/*.svg',
}

escrow_ignore {
    'config.lua'
}

lua54 'yes'
dependency '/assetpacks'