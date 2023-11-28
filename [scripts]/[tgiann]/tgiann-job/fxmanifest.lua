fx_version 'cerulean'
game 'gta5'
lua54 'yes'
dependencies {
	'PolyZone',
	'tgiann-core',
	'tgiann-skillbar',
	"tgiann-progressbar"
}
escrow_ignore {
	'config.lua',
	'client/editable.lua',
	'server/editable.lua',
}
shared_scripts  {
	"config.lua",
}
client_scripts {
	"@PolyZone/client.lua",
	"client/editable.lua",
	"client/client.lua",
	"client/construction.lua",
	"client/diver.lua",
	"client/farmer.lua",
	"client/main.lua",
	"client/truck.lua",
}
-- -- mysql
-- server_scripts {
-- 	'@async/async.lua',
-- 	'@mysql-async/lib/MySQL.lua',
-- 	'server/mysql.lua',
-- 	'server/main.lua',
-- 	'server/editable.lua'
-- }
-- oxmysql
server_scripts {
	'@oxmysql/lib/MySQL.lua',
	'server/mysql.lua',
	'server/main.lua',
	'server/editable.lua'
} 
dependency '/assetpacks'