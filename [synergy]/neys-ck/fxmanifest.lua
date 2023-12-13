fx_version 'cerulean'
game 'gta5'

description 'neys-ck'
version '1.2.0'
author 'neys'

shared_scripts { 'config.lua', '@qb-core/shared/locale.lua', 
'locales/en.lua' -- Change here to your desired language
}
server_script 'server/server.lua'

lua54 'yes'

escrow_ignore {
    'config.lua',
    'server/server.lua',
}



dependency '/assetpacks'