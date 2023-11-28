fx_version 'cerulean'
game 'gta5'
lua54 'yes'
dependencies {
	'/onesync',
	'tgiann-core',
}
escrow_ignore {
  'config.lua',
  'client/interiorData.lua',
  'client/editable.lua',
  'server/ox.lua',
  'server/editable.lua',
}
ui_page {
	'html/index.html',
}
files {
	'html/css/*.css',
	'html/js/*.js',
	'html/index.html',
	"html/img/*.png",
	"html/font/*.otf",
	"html/font/*.ttf",
}
shared_scripts {
	'config.lua'
}
client_scripts {
	'client/*.lua',
}
--[[ 
-- mysql async
server_scripts {
	'@async/async.lua',
	'@mysql-async/lib/MySQL.lua',
    'server/*.lua'
}
]]
-- oxmysql
server_scripts {
    '@oxmysql/lib/MySQL.lua', -- OXMYSQL
    'server/*.lua'
} 
dependency '/assetpacks'