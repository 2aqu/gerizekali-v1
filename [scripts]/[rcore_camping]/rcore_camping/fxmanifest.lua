fx_version 'bodacious' 
games { 'gta5' }
author 'Isigar <info@rcore.cz>'
description 'rcore_camping - provides options for camping'
version '1.2.18'
ui_page 'client/ui/index.html'
lua54 'yes'
dependencies {
    'rcore_camping_assets',
    '/server:4752',
}
files {
    'client/ui/**/*.js',
    'client/ui/**/*.woff',
    'client/ui/**/*.html',
    'client/ui/**/*.css',
    'client/ui/**/*.png',
}
server_scripts {
    'server/init/*.lua',
    'server/api/*.lua',
    'server/lib/*.lua',
    'server/*.lua',
}
client_scripts {
    'client/init/*.lua',
    'client/util/*.lua',
    'client/lib/*.lua',
    'client/*.lua',
}
shared_scripts {
    'shared/const.lua',
    'config.lua',
    'destroyableWeapons.lua',
    'shared/*.lua',
    'locales/*.lua',
}
escrow_ignore {
    'server/api/**/*.lua',
    'client/util/**/*.lua',
    'config.lua',
    'sconfig.lua',
    'locales/**/*.lua',
    'shared/**/*.lua',
    'assets/**/*.lua',
}
dependency '/assetpacks'