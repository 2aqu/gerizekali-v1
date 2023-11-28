fx_version 'cerulean'
game 'gta5'
author 'sh-scripts <store.sh-scripts.com>'
lua54 'yes'
client_script 'client.lua'
server_scripts {
    'server.lua',
    'logCfg.lua',
}
shared_scripts {
    'cfg.lua',
    'utils.lua',
    'shared.lua',
}
ui_page 'web/index.html'
files {
    'web/',
    'web/**/',
}
escrow_ignore {
    'logCfg.lua',
    'cfg.lua',
    'utils.lua',
    'shared.lua',
}
dependency '/assetpacks'