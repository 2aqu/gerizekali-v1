fx_version 'cerulean'
game 'gta5'
lua54 'yes'
author 'sh-scripts <sh-store.tebex.io>'
shared_scripts {
    'cfg.lua',
    'utils.lua',
}
client_script 'client.lua'
server_scripts {
    'editable_functions.lua',
    'server.lua'
}
ui_page 'nui/index.html'
files {
    'nui/index.html',
    'nui/script.js',
    'nui/images/*.png',
}
escrow_ignore {
    'cfg.lua',
}
lua54 'yes'
dependency '/assetpacks'
dependency '/assetpacks'