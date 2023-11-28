fx_version 'adamant'
game 'gta5'
author 'CodeM Team'
version '1.2.6'
lua54 'yes'
ui_page 'ui/index.html'
client_scripts {
    'shared/GetFrameworkObject.lua',
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
    'shared/config.lua',
    'client/main.lua',
    'client/editable.lua'
}
server_scripts {
    'shared/GetFrameworkObject.lua',
    'shared/config.lua',
    'server/main.lua',
    'server/editable.lua'
}
files {
    'ui/index.html',
    'ui/css/*.css',
    'ui/fonts/*.otf',
    'ui/fonts/*.ttf',
    'ui/img/*.png',
    'ui/js/*.js'
}
escrow_ignore {
    'shared/*.lua',
    'client/editable.lua',
    'server/editable.lua'
}
dependency '/assetpacks'