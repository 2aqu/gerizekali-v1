fx_version 'bodacious'
games { 'gta5' }
client_script "client.lua"
server_script  {
 "server.lua",
 '@oxmysql/lib/MySQL.lua'
}
shared_scripts {
	'config.lua'
}
lua54 'yes'
escrow_ignore {
    'config.lua',
}