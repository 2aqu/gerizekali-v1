fx_version "cerulean"
game "gta5"
lua54 "yes"
dependencies {
	"tgiann-core",
}
ui_page "html/index.html"
files {
    "html/**.*",
}
escrow_ignore {
	"config.lua",
	"client/editable.lua",
	"server/editable.lua",
}
shared_scripts {
	"config.lua",
}
server_scripts {
	"@oxmysql/lib/MySQL.lua", -- OXMYSQL
	"server/mysql.lua",
	"server/main.lua",
	"server/editable.lua"
}
client_scripts {
	"client/*.lua",
}
export "GeneratePlate"
dependency '/assetpacks'