Config = {}

Config.objects = {
	Object = nil, ObjectVertX = nil, ObjectVertY = nil, ObjectVertZ = nil, ObjectDir = nil, isBed = nil, -- // Please don't change this line!;)
	SitAnimation = {anim='PROP_HUMAN_SEAT_CHAIR_MP_PLAYER'},
	BedBackAnimation = {dict='anim@gangops@morgue@table@', anim='ko_front'},
	BedStomachAnimation = {anim='WORLD_HUMAN_SUNBATHE'},
	BedSitAnimation = {anim='WORLD_HUMAN_PICNIC'},
	locations = {
		{object="v_med_bed2", verticalOffsetX=0.0, verticalOffsetY=0.0, verticalOffsetZ=-1.4, direction=0.0, bed=true}, -- Hastane Yatak 2
		{object="v_med_bed1", verticalOffsetX=0.0, verticalOffsetY=0.0, verticalOffsetZ=-1.4, direction=0.0, bed=true},	-- Hastane Yatak 1
		{object="prop_waiting_seat_01", verticalOffsetX=0.0, verticalOffsetY=0.0, verticalOffsetZ=-0.45, direction=168.0, bed=false}, -- hastane sandalye
		{object="prop_bench_01a", verticalOffsetX=0.0, verticalOffsetY=0.0, verticalOffsetZ=-0.40, direction=168.0, bed=false}, -- hastane dışı siyah oturaklar
		{object="prop_chair_04a", verticalOffsetX=0.0, verticalOffsetY=0.0, verticalOffsetZ=-0.50, direction=168.0, bed=false}, -- morel içi sandalye
		{object="prop_ld_toilet_01", verticalOffsetX=0.0, verticalOffsetY=0.0, verticalOffsetZ=-0.10, direction=168.0, bed=false}, -- Tuvalet
		{object="v_serv_ct_chair02", verticalOffsetX=0.0, verticalOffsetY=0.0, verticalOffsetZ=-0.0, direction=168.0, bed=false},
		{object="prop_off_chair_04", verticalOffsetX=0.0, verticalOffsetY=0.0, verticalOffsetZ=-0.4, direction=168.0, bed=false},
		{object="prop_off_chair_03", verticalOffsetX=0.0, verticalOffsetY=0.0, verticalOffsetZ=-0.4, direction=168.0, bed=false},
		{object="prop_off_chair_05", verticalOffsetX=0.0, verticalOffsetY=0.0, verticalOffsetZ=-0.4, direction=168.0, bed=false},
		{object="v_club_officechair", verticalOffsetX=0.0, verticalOffsetY=0.0, verticalOffsetZ=-0.4, direction=168.0, bed=false},
		{object="v_ilev_leath_chr", verticalOffsetX=0.0, verticalOffsetY=0.0, verticalOffsetZ=-0.4, direction=168.0, bed=false},
		{object="v_corp_offchair", verticalOffsetX=0.0, verticalOffsetY=0.0, verticalOffsetZ=-0.4, direction=168.0, bed=false},
		{object="v_med_emptybed", verticalOffsetX=-0.26, verticalOffsetY=-0.15, verticalOffsetZ=-0.2, direction=90.0, bed=false},
		{object="Prop_Off_Chair_01", verticalOffsetX=0.0, verticalOffsetY=-0.1, verticalOffsetZ=-0.5, direction=180.0, bed=false},
		{object="prop_table_01_chr_a", verticalOffsetX=0.05, verticalOffsetY=0.15, verticalOffsetZ=0.0, direction=180.0, bed=false},
		{object="prop_table_01_chr_b", verticalOffsetX=0.0, verticalOffsetY=-0.1, verticalOffsetZ=-0.5, direction=180.0, bed=false},
		{object=-1202648266, verticalOffsetX=-0.05, verticalOffsetY=0.05, verticalOffsetZ=0.05, direction=180.0, bed=false},
		{object=-1173315865, verticalOffsetX=-0.08, verticalOffsetY=0.05, verticalOffsetZ=-0.5, direction=180.0, bed=false},
		{object=-1120527678, verticalOffsetX=-0.14, verticalOffsetY=0.04, verticalOffsetZ=-0.75, direction=270.0, bed=false},
		{object=-881696544, verticalOffsetX=-0.01, verticalOffsetY=0.04, verticalOffsetZ=0.15, direction=180.0, bed=false},
		{object=-1521264200, verticalOffsetX=-0.01, verticalOffsetY=-0.12, verticalOffsetZ=0.05, direction=180.0, bed=false},
		{object=1404176808, verticalOffsetX=-0.02, verticalOffsetY=0.01, verticalOffsetZ=-0.45, direction=180.0, bed=false},
		{object=-1118419705, verticalOffsetX=0.055, verticalOffsetY=-0.03, verticalOffsetZ=-0.53, direction=180.0, bed=false},
		{object=538002882, verticalOffsetX=-0.025, verticalOffsetY=-0.03, verticalOffsetZ=0.1, direction=180.0, bed=false},
		{object=573740096, verticalOffsetX=-0.025, verticalOffsetY=0.13, verticalOffsetZ=-0.8, direction=180.0, bed=false},
		{object=-1829764702, verticalOffsetX=-0.025, verticalOffsetY=0.13, verticalOffsetZ=-0.8, direction=180.0, bed=false},
		{object=826023884, verticalOffsetX=0.055, verticalOffsetY=-0.03, verticalOffsetZ=-0.53, direction=180.0, bed=false},
		{object=-826656936, verticalOffsetX=0.055, verticalOffsetY=-0.03, verticalOffsetZ=0.05, direction=360.0, bed=false},
		{object=-164310809, verticalOffsetX=0.055, verticalOffsetY=-0.03, verticalOffsetZ=0.05, direction=180.0, bed=false},
		{object=-256436031, verticalOffsetX=-0.045, verticalOffsetY=-0.01, verticalOffsetZ=-0.50, direction=180.0, bed=false},

	},
	coordsLocation = {
		{x=315.24, y= -566.73, z=43.28, h=158.37},
		{x=321.16, y= -568.05, z=43.28, h=158.37},
		{x=326.81, y= -570.99, z=43.28, h=158.37},
		{x=337.07, y= -575.11, z=43.28, h=158.37},
		{x=348.69, y= -579.51, z=43.28, h=158.37},

		{x=-248.55, y= 6316.59, z=32.43, h=45.82},
		{x=-250.76, y= 6314.35, z=32.43, h=45.82},
		{x=-455.92, y= -315.73, z=34.91, h=112.94},
		{x=-450.32, y= -323.14, z=34.91, h=89.09},
		{x=-459.79, y= -306.56, z=34.91, h=108.9},
		{x=-462.16, y= -301.55, z=34.91, h=108.9},
		{x=-464.64, y= -295.44, z=34.91, h=108.9},
		{x=-447.04, y= -291.19, z=34.91, h=115.8},
		{x=-441.33, y= -303.38, z=34.91, h=115.8},

		{x=1825.76, y= 3685.59, z=34.27, h=333.08},
		{x=1834.86, y= 3691.28, z=34.27, h=107.63},
		{x=1835.91, y= 3689.04, z=34.27, h=92.05},
	},
}