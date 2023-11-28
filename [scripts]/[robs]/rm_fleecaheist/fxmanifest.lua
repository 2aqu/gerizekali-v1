--rainmad#0678
--discord.gg/rccvdkmA5X
fx_version 'cerulean'
games { 'rdr3', 'gta5' }
shared_scripts {
    'config.lua'
}
server_scripts {
	'server.lua'
}
client_scripts {
	'client.lua',
	'drilling.lua'
}
lua54 'yes'
escrow_ignore {
    'config.lua',
	'server.lua',
}
dependency '/assetpacks'