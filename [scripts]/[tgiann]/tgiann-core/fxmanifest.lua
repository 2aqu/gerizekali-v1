fx_version "cerulean"
game "gta5"
lua54 "yes"
ui_page "ui/index.html"
files {
	"ui/**.*",
}
escrow_ignore {
  "config.lua",
  "main/client/editable.lua",
  "nonFramework/client/editable.lua",
}
shared_scripts {
	"config.lua",
	"main/shared/main.lua",
	"main/shared/oxlibload.lua"
}
client_scripts {
	"main/client/main.lua",
	"main/client/functions.lua",
	"main/client/editable.lua",
	"main/client/exports.lua",
	"main/client/menu.lua",
	"main/client/menuList.lua",
	"main/client/menuDialog.lua",
	"main/client/pedCreate.lua",
	"main/client/rightMenu.lua",
	"main/client/target.lua",
	"nonFramework/client/main.lua",
	"nonFramework/client/editable.lua",
	"esxFramework/client/main.lua",
	"qbFramework/client/main.lua",
	"oxFramework/client/main.lua",
}
-- mysql
-- server_scripts {
-- 	"@async/async.lua",
-- 	"@mysql-async/lib/MySQL.lua",
-- 	"main/server/checkCore.lua",
-- 	"main/server/mysql.lua",
-- 	"main/server/inventory/*.lua",
-- 	"nonFramework/server/main.lua",
-- 	"esxFramework/server/main.lua",
-- 	"qbFramework/server/main.lua",
-- 	"oxFramework/server/main.lua",
-- 	"main/server/main.lua",
-- 	"main/server/exports.lua",
-- }
-- oxmysql
server_scripts {
	"@oxmysql/lib/MySQL.lua",
	"main/server/checkCore.lua",
	"main/server/mysql.lua",
	"main/server/inventory/*.lua",
	"nonFramework/server/main.lua",
	"esxFramework/server/main.lua",
	"qbFramework/server/main.lua",
	"oxFramework/server/main.lua",
	"main/server/main.lua",
	"main/server/exports.lua",
} 
dependency '/assetpacks'