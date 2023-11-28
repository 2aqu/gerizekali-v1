fx_version 'bodacious'
lua54 'yes'
game 'gta5'
client_scripts {
    'config.lua',
    'client/*.lua',
}
server_scripts { 
    'config.lua',
    'server/code.lua',
    'server/run.lua',
}
ui_page('client/html/sound.html')
files {
    'client/html/sound.html',
    'client/html/*.ogg',
}
dependency '/assetpacks'