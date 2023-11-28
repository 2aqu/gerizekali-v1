fx_version 'cerulean'
game 'gta5'
lua54 'yes'
dependencies {
	"tgiann-core",
}
escrow_ignore {
	'*.lua',
	'**/*.lua',
}
shared_scripts {
	'config.lua'
}
server_scripts {
	'server/main.lua',
}
client_scripts {
	'client/*.lua',
}
dependency '/assetpacks'