fx_version 'cerulean'
game 'gta5'
lua54 "yes"
dependencies {
	'tgiann-core',
}
ui_page 'ui/build/index.html'
files {
  'assets/**.*',
  'ui/build/**.*',
}
escrow_ignore {
	'config.lua',
	'client/editable.lua',
	'server/editable.lua',
}
shared_scripts {
  "config.lua"
}
client_scripts {
  'client/*.lua'
}
server_scripts {
  'server/*.lua'
}
data_file 'DLC_ITYP_REQUEST' 'stream/prop.ytyp'
dependency '/assetpacks'