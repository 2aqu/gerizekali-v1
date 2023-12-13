fx_version 'cerulean'
game 'gta5'
lua54 'on'
shared_scripts {
	"config.lua",
  '@ox_lib/init.lua',
  'data/engines.lua',
}

server_scripts {
  '@oxmysql/lib/MySQL.lua',
  "server/framework/init.lua",
  "server/framework/main.lua",
	"server/server.lua"
}

client_scripts {
	"client/client.lua",
}

files {
  'data/audioconfig/*.dat151.rel',
  'data/audioconfig/*.dat54.rel',
  "data/audioconfig/*.dat10.rel",
  'data/sfx/**/*.awc',
  'data/sfx/**/*.awc',
  'data/*.json'
  
}

data_file "AUDIO_SYNTHDATA" "data/audioconfig/lg28cst26b_amp.dat"
data_file "AUDIO_GAMEDATA" "data/audioconfig/lg28cst26b_game.dat"
data_file "AUDIO_SOUNDDATA" "data/audioconfig/lg28cst26b_sounds.dat"
data_file "AUDIO_WAVEPACK" "data/sfx/dlc_lg28cst26b"
data_file "AUDIO_SYNTHDATA" "data/audioconfig/lg29cst26btrb_amp.dat"
data_file "AUDIO_GAMEDATA" "data/audioconfig/lg29cst26btrb_game.dat"
data_file "AUDIO_SOUNDDATA" "data/audioconfig/lg29cst26btrb_sounds.dat"
data_file "AUDIO_WAVEPACK" "data/sfx/dlc_lg29cst26btrb"
data_file 'AUDIO_GAMEDATA' 'data/audioconfig/gallardov10_game.dat'
data_file 'AUDIO_SOUNDDATA' 'data/audioconfig/gallardov10_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'data/sfx/dlc_gallardov10'
data_file "AUDIO_SYNTHDATA" "data/audioconfig/lgcy02b16ff_amp.dat"
data_file "AUDIO_GAMEDATA" "data/audioconfig/lgcy02b16ff_game.dat"
data_file "AUDIO_SOUNDDATA" "data/audioconfig/lgcy02b16ff_sounds.dat"
data_file "AUDIO_WAVEPACK" "data/sfx/dlc_lgcy02b16ff"
data_file 'AUDIO_GAMEDATA' 'data/audioconfig/harleyvtwin_game.dat151'
data_file 'AUDIO_SOUNDDATA' 'data/audioconfig/harleyvtwin_sounds.dat54'
data_file 'AUDIO_WAVEPACK' 'data/sfx/dlc_harleyvtwin'
data_file 'AUDIO_GAMEDATA' 'data/audioconfig/apollosv8_game.dat'
data_file 'AUDIO_SOUNDDATA' 'data/audioconfig/apollosv8_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'data/sfx/dlc_apollosv8'
data_file 'AUDIO_GAMEDATA' 'data/audioconfig/c6v8sound_game.dat'
data_file 'AUDIO_SOUNDDATA' 'data/audioconfig/c6v8sound_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'data/sfx/dlc_c6v8sound'
data_file 'AUDIO_GAMEDATA' 'data/audioconfig/diablov12_game.dat'
data_file 'AUDIO_SOUNDDATA' 'data/audioconfig/diablov12_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'data/sfx/dlc_diablov12'
data_file 'AUDIO_GAMEDATA' 'data/audioconfig/f40v8_game.dat'
data_file 'AUDIO_SOUNDDATA' 'data/audioconfig/f40v8_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'data/sfx/dlc_f40v8'
data_file 'AUDIO_GAMEDATA' 'data/audioconfig/f50v12_game.dat'
data_file 'AUDIO_SOUNDDATA' 'data/audioconfig/f50v12_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'data/sfx/dlc_f50v12'
data_file 'AUDIO_GAMEDATA' 'data/audioconfig/ferrarif12_game.dat'
data_file 'AUDIO_SOUNDDATA' 'data/audioconfig/ferrarif12_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'data/sfx/dlc_ferrarif12'
data_file 'AUDIO_GAMEDATA' 'data/audioconfig/sestov10_game.dat'
data_file 'AUDIO_SOUNDDATA' 'data/audioconfig/sestov10_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'data/sfx/dlc_sestov10'
data_file 'AUDIO_GAMEDATA' 'data/audioconfig/urusv8_game.dat'
data_file 'AUDIO_SOUNDDATA' 'data/audioconfig/urusv8_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'data/sfx/dlc_urusv8'
data_file 'AUDIO_GAMEDATA' 'data/audioconfig/viperv10_game.dat'
data_file 'AUDIO_SOUNDDATA' 'data/audioconfig/viperv10_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'data/sfx/dlc_viperv10'
data_file 'AUDIO_GAMEDATA' 'data/audioconfig/488sound_game.dat'
data_file 'AUDIO_SOUNDDATA' 'data/audioconfig/488sound_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'data/sfx/dlc_488sound'
data_file 'AUDIO_GAMEDATA' 'data/audioconfig/avesvv12_game.dat'
data_file 'AUDIO_SOUNDDATA' 'data/audioconfig/avesvv12_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'data/sfx/dlc_avesvv12'
data_file 'AUDIO_GAMEDATA' 'data/audioconfig/gtaspanov10_game.dat'
data_file 'AUDIO_SOUNDDATA' 'data/audioconfig/gtaspanov10_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'data/sfx/dlc_gtaspanov10'
data_file 'AUDIO_GAMEDATA' 'data/audioconfig/laferrarisound_game.dat'
data_file 'AUDIO_SOUNDDATA' 'data/audioconfig/laferrarisound_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'data/sfx/dlc_laferrarisound'
data_file 'AUDIO_GAMEDATA' 'data/audioconfig/mclarenv8_game.dat'
data_file 'AUDIO_SOUNDDATA' 'data/audioconfig/mclarenv8_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'data/sfx/dlc_mclarenv8'
data_file 'AUDIO_GAMEDATA' 'data/audioconfig/perfov10_game.dat'
data_file 'AUDIO_SOUNDDATA' 'data/audioconfig/perfov10_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'data/sfx/dlc_perfov10'
data_file 'AUDIO_GAMEDATA' 'data/audioconfig/veyronsound_game.dat'
data_file 'AUDIO_SOUNDDATA' 'data/audioconfig/veyronsound_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'data/sfx/dlc_veyronsound'

data_file 'AUDIO_GAMEDATA' 'data/audioconfig/m297zonda_game.dat'
data_file 'AUDIO_SOUNDDATA' 'data/audioconfig/m297zonda_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'data/sfx/dlc_m297zonda'
data_file 'AUDIO_GAMEDATA' 'data/audioconfig/sestov10_game.dat'
data_file 'AUDIO_SOUNDDATA' 'data/audioconfig/sestov10_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'data/sfx/dlc_sestov10'
data_file 'AUDIO_GAMEDATA' 'data/audioconfig/gt3flat6_game.dat'
data_file 'AUDIO_SOUNDDATA' 'data/audioconfig/gt3flat6_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'data/sfx/dlc_gt3flat6'
data_file 'AUDIO_GAMEDATA' 'data/audioconfig/hellcatsound_game.dat'
data_file 'AUDIO_SOUNDDATA' 'data/audioconfig/hellcatsound_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'data/sfx/dlc_hellcatsound'
data_file 'AUDIO_GAMEDATA' 'data/audioconfig/f430v8_game.dat'
data_file 'AUDIO_SOUNDDATA' 'data/audioconfig/f430v8_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'data/sfx/dlc_f430v8'
data_file 'AUDIO_GAMEDATA' 'data/audioconfig/agerasound_game.dat'
data_file 'AUDIO_SOUNDDATA' 'data/audioconfig/agerasound_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'data/sfx/dlc_agerasound'
data_file 'AUDIO_GAMEDATA' 'data/audioconfig/novitecsvj_game.dat'
data_file 'AUDIO_SOUNDDATA' 'data/audioconfig/novitecsvj_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'data/sfx/dlc_novitecsvj'

data_file 'AUDIO_GAMEDATA' 'data/audioconfig/vr38dettv6_game.dat'
data_file 'AUDIO_SOUNDDATA' 'data/audioconfig/vr38dettv6_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'data/sfx/dlc_vr38dettv6'
data_file 'AUDIO_GAMEDATA' 'data/audioconfig/twinhuracan_game.dat'
data_file 'AUDIO_SOUNDDATA' 'data/audioconfig/twinhuracan_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'data/sfx/dlc_twinhuracan'
data_file 'AUDIO_GAMEDATA' 'data/audioconfig/s15sound_game.dat'
data_file 'AUDIO_SOUNDDATA' 'data/audioconfig/s15sound_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'data/sfx/dlc_s15sound'
data_file 'AUDIO_GAMEDATA' 'data/audioconfig/b58b30_game.dat'
data_file 'AUDIO_SOUNDDATA' 'data/audioconfig/b58b30_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'data/sfx/dlc_b58b30'
data_file 'AUDIO_GAMEDATA' 'data/audioconfig/r35sound_game.dat'
data_file 'AUDIO_SOUNDDATA' 'data/audioconfig/r35sound_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'data/sfx/dlc_r35sound'
data_file 'AUDIO_GAMEDATA' 'data/audioconfig/gtaspanov10_game.dat'
data_file 'AUDIO_SOUNDDATA' 'data/audioconfig/gtaspanov10_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'data/sfx/dlc_gtaspanov10'
data_file 'AUDIO_GAMEDATA' 'data/audioconfig/lambov10_game.dat'
data_file 'AUDIO_SOUNDDATA' 'data/audioconfig/lambov10_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'data/sfx/dlc_lambov10'
data_file 'AUDIO_GAMEDATA' 'data/audioconfig/musv8_game.dat'
data_file 'AUDIO_SOUNDDATA' 'data/audioconfig/musv8_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'data/sfx/dlc_musv8'
data_file 'AUDIO_GAMEDATA' 'data/audioconfig/brabus850_game.dat'
data_file 'AUDIO_SOUNDDATA' 'data/audioconfig/brabus850_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'data/sfx/dlc_brabus850'
data_file 'AUDIO_GAMEDATA' 'data/audioconfig/shonen_game.dat'
data_file 'AUDIO_SOUNDDATA' 'data/audioconfig/shonen_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'data/sfx/dlc_shonen'
data_file 'AUDIO_GAMEDATA' 'data/audioconfig/toysupmk4_game.dat'
data_file 'AUDIO_SOUNDDATA' 'data/audioconfig/toysupmk4_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'data/sfx/dlc_toysupmk4'

data_file 'AUDIO_SYNTHDATA' 'data/audioconfig/m297zonda_amp.dat'
data_file 'AUDIO_GAMEDATA' 'data/audioconfig/m297zonda_game.dat'
data_file 'AUDIO_SOUNDDATA' 'data/audioconfig/m297zonda_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'data/sfx/dlc_avesv'
data_file 'AUDIO_WAVEPACK' 'data/sfx/dlc_diablov12'
data_file 'AUDIO_WAVEPACK' 'data/sfx/dlc_f40v8'
data_file 'AUDIO_WAVEPACK' 'data/sfx/dlc_f50v12'
data_file 'AUDIO_WAVEPACK' 'data/sfx/dlc_ferrarif12'
data_file 'AUDIO_WAVEPACK' 'data/sfx/dlc_murciev12'
-- data_file 'AUDIO_WAVEPACK' 'data/sfx/dlc_sestov10'
data_file 'AUDIO_GAMEDATA' 'data/audioconfig/avesv_game.dat'
data_file 'AUDIO_SOUNDDATA' 'data/audioconfig/avesv_sounds.dat'
data_file 'AUDIO_GAMEDATA' 'data/audioconfig/diablov12_game.dat'
data_file 'AUDIO_SOUNDDATA' 'data/audioconfig/diablov12_sounds.dat'
data_file 'AUDIO_GAMEDATA' 'data/audioconfig/f40v8_game.dat'
data_file 'AUDIO_SOUNDDATA' 'data/audioconfig/f40v8_sounds.dat'
data_file 'AUDIO_GAMEDATA' 'data/audioconfig/f50v12_game.dat'
data_file 'AUDIO_SOUNDDATA' 'data/audioconfig/f50v12_sounds.dat'
data_file 'AUDIO_GAMEDATA' 'data/audioconfig/ferrarif12_game.dat'
data_file 'AUDIO_SOUNDDATA' 'data/audioconfig/ferrarif12_sounds.dat'
data_file 'AUDIO_GAMEDATA' 'data/audioconfig/murciev12_game.dat'
data_file 'AUDIO_SOUNDDATA' 'data/audioconfig/murciev12_sounds.dat'
-- data_file 'AUDIO_GAMEDATA' 'data/audioconfig/sestov10_game.dat'
-- data_file 'AUDIO_SOUNDDATA' 'data/audioconfig/sestov10_sounds.dat'
data_file 'AUDIO_SYNTHDATA' 'data/audioconfig/m158huayra_amp.dat'
data_file 'AUDIO_GAMEDATA' 'data/audioconfig/m158huayra_game.dat'
data_file 'AUDIO_SOUNDDATA' 'data/audioconfig/m158huayra_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'data/sfx/dlc_m158huayra'
data_file 'AUDIO_SYNTHDATA' 'data/audioconfig/k20a_amp.dat'
data_file 'AUDIO_GAMEDATA' 'data/audioconfig/k20a_game.dat'
data_file 'AUDIO_SOUNDDATA' 'data/audioconfig/k20a_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'data/sfx/dlc_k20a'
data_file 'AUDIO_GAMEDATA' 'data/audioconfig/k20c_game.dat'
data_file 'AUDIO_SOUNDDATA' 'data/audioconfig/k20c_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'data/sfx/dlc_k20c'
-- data_file 'AUDIO_SYNTHDATA' 'data/audioconfig/gt3flat6_amp.dat'
-- data_file 'AUDIO_GAMEDATA' 'data/audioconfig/gt3flat6_game.dat'
-- data_file 'AUDIO_SOUNDDATA' 'data/audioconfig/gt3flat6_sounds.dat'
-- data_file 'AUDIO_WAVEPACK' 'data/sfx/dlc_gt3flat6'
data_file 'AUDIO_SYNTHDATA' 'data/audioconfig/predatorv8_amp.dat'
data_file 'AUDIO_GAMEDATA' 'data/audioconfig/predatorv8_game.dat'
data_file 'AUDIO_SOUNDDATA' 'data/audioconfig/predatorv8_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'data/sfx/dlc_predatorv8'
data_file 'AUDIO_SYNTHDATA' 'data/audioconfig/p60b40_amp.dat'
data_file 'AUDIO_GAMEDATA' 'data/audioconfig/p60b40_game.dat'
data_file 'AUDIO_SOUNDDATA' 'data/audioconfig/p60b40_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'data/sfx/dlc_p60b40'
data_file 'AUDIO_GAMEDATA' 'data/audioconfig/vr38dettv6_game.dat'
data_file 'AUDIO_SOUNDDATA' 'data/audioconfig/vr38dettv6_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'data/sfx/dlc_vr38dettv6'
data_file 'AUDIO_GAMEDATA' 'data/audioconfig/lfasound_game.dat'
data_file 'AUDIO_SOUNDDATA' 'data/audioconfig/lfasound_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'data/sfx/dlc_lfasound'