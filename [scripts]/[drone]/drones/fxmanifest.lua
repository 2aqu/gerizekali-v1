fx_version 'adamant'
games { 'rdr3', 'gta5' }
ui_page 'src/nui/dronemenu.html'
client_scripts {
  'config.lua',
  'src/client/scaleforms.lua',
  'src/client/functions.lua',
  'src/client/main.lua',
}
server_scripts {
  'config.lua',
  'src/server/main.lua',
}
files {
  'src/nui/dronemenu.html',
  'src/nui/*.png',
  'stream/ch_prop_arcade_drone.ytd',
  'stream/ch_prop_arcade_drone_01a.yft',
  'stream/ch_prop_arcade_drone_01b.yft',
  'stream/ch_prop_arcade_drone_01c.yft',
  'stream/ch_prop_arcade_drone_01d.yft',
  'stream/ch_prop_arcade_drone_01e.yft',
  'stream/ch_prop_ch_arcade_drones.ycd',
  'stream/ch_prop_ch_arcade_drones.ytyp',
  'stream/ch_prop_casino_drone_01a.yft',
  'stream/ch_prop_casino_drone_02a.yft',
  'stream/ch_prop_casino_drone_broken01a.ydr',
  'stream/ch_prop_ch_casino_drones.ycd',
  'stream/ch_prop_ch_casino_drones.ytyp',
}
dependencies {
  'meta_libs'
}
data_file 'DLC_ITYP_REQUEST' 'stream/ch_prop_ch_arcade_drones.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/ch_prop_ch_casino_drones.ytyp'