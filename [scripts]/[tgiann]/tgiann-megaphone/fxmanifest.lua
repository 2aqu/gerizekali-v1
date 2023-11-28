fx_version 'cerulean'
game 'gta5'
lua54 'yes'
dependencies {
	'tgiann-core',
}
escrow_ignore {
    "config.lua",
    "server/editable.lua",
    "client/editable.lua",
}
shared_scripts {
    "config.lua",
}
client_scripts {
    "client/*.lua",
}
server_scripts {
    "server/*.lua",
}
dependency '/assetpacks'