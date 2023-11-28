-- DPEmotes forked by TayMcKenzieNZ requires you to be on the latest FiveM Gamebuild for all emotes to function.
-- If an emote does not work, you may be on an older gamebuild.
-- To get a higher gamebuild, see ReadMe on github repositorty
--Büşranın annesini sikeyim
DP = {}

-- EXPRESSIONS --

DP.Expressions = {
    ["Aiming"] = {
        "Expression",
        "mood_aiming_1"
    },
	["Angry"] = {
        "Expression",
        "mood_angry_1"
    },
    ["Burning"] = {
        "Expression",
        "burning_1"
    },
    ["Crying"] = {
        "Expression",
        "console_wasnt_fun_end_loop_floyd_facial"
    },
    ["Dead"] = {
        "Expression",
        "dead_1"
    },
    ["Drunk"] = {
        "Expression",
        "mood_drunk_1"
    },
    ["Dumb"] = {
        "Expression",
        "pose_injured_1"
    },
    ["Electrocuted"] = {
        "Expression",
        "electrocuted_1"
    },
    ["Grumpy"] = {
        "Expression",
        "effort_1"
    },
    ["Grumpy2"] = {
        "Expression",
        "mood_drivefast_1"
    },
    ["Grumpy3"] = {
        "Expression",
        "pose_angry_1"
    },
    ["Happy"] = {
        "Expression",
        "mood_happy_1"
    },
    ["Injured"] = {
        "Expression",
        "mood_injured_1"
    },
    ["Joyful"] = {
        "Expression",
        "mood_dancing_low_1"
    },
    ["Mouthbreather"] = {
        "Expression",
        "smoking_hold_1"
    },
    ["Never Blink"] = {
        "Expression",
        "pose_normal_1"
    },
    ["One Eye"] = {
        "Expression",
        "pose_aiming_1"
    },
    ["Shocked"] = {
        "Expression",
        "shocked_1"
    },
    ["Shocked2"] = {
        "Expression",
        "shocked_2"
    },
    ["Sleeping"] = {
        "Expression",
        "mood_sleeping_1"
    },
    ["Sleeping2"] = {
        "Expression",
        "dead_1"
    },
    ["Sleeping3"] = {
        "Expression",
        "dead_2"
    },
    ["Smug"] = {
        "Expression",
        "mood_smug_1"
    },
    ["Speculative"] = {
        "Expression",
        "mood_aiming_1"
    },
    ["Stressed"] = {
        "Expression",
        "mood_stressed_1"
    },
    ["Sulking"] = {
        "Expression",
        "mood_sulk_1"
    },
    ["Weird"] = {
        "Expression",
        "effort_2"
    },
    ["Weird2"] = {
        "Expression",
        "effort_3"
    },
}


--- WALKSTYLES ---

DP.Walks = {
    ["Yaratik"] = {
        "move_m@alien"
    },
    ["Zirhli"] = {
        "anim_group_move_ballistic"
    },
    ["Kibirli"] = {
        "move_f@arrogant@a"
    },
    --[[ ["Bigfoot"] = {
        "move_characters@orleans@core@"
    },]]
    ["Kasli"] = {
        "move_m@hurry_butch@a"
    },
    ["Kasli2"] = {
        "move_m@hurry_butch@b",
        "Kasli 2"
    },
    ["Kasli3"] = {
        "move_m@hurry_butch@c",
        "Kasli 3"
    },
    ["Sersemlemis"] = {
        "move_m@buzzed"
    },
    ["Cesur"] = {
        "move_m@brave"
    },
    ["Siradan"] = {
        "move_m@casual@a"
    },
    ["Siradan2"] = {
        "move_m@casual@b",
        "Siradan 2"
    },
    ["Siradan3"] = {
        "move_m@casual@c",
        "Siradan 3"
    },
    ["Siradan4"] = {
        "move_m@casual@d",
        "Siradan 4"
    },
    ["Siradan5"] = {
        "move_m@casual@e",
        "Siradan 5"
    },
    ["Siradan6"] = {
        "move_m@casual@f",
        "Siradan 6"
    },
    ["Simarik"] = {
        "move_f@chichi"
    },
    ["Ozguvenli"] = {
        "move_m@confident"
    },
    ["Polis"] = {
        "move_m@business@a"
    },
    ["Polis2"] = {
        "move_m@business@b",
        "Polis 2"
    },
    ["Polis3"] = {
        "move_m@business@c",
        "Polis 3"
    },
    ["Korkak"] = {
        "move_m@coward"
    },
    ["TombulErkek"] = {
        "move_chubby",
        "Tombul Erkek"
    },
    ["TombulKadin"] = {
        "move_f@chubby@a",
        "Tombul Kadin"
    },
    ["Dave"] = {
        "move_characters@dave_n"
    },
    ["StandartKadin"] = {
        "move_f@multiplayer",
        "Standart Kadin"
    },
    ["StandartErkek"] = {
        "move_m@multiplayer",
        "Standart Erkek"
    },
    ["Uzgun"] = {
        "move_m@depressed@a"
    },
    ["Uzgun2"] = {
        "move_m@depressed@b",
        "Uzgun 2"
    },
    ["Uzgun3"] = {
        "move_f@depressed@a",
        "Uzgun 3"
    },
    ["Sarhos"] = {
        "move_m@drunk@a"
    },
    ["Sarhos2"] = {
        "move_m@buzzed",
        "Sarhos 2 - Neseli"
    },
    ["Sarhos3"] = {
        "move_m@drunk@moderatedrunk",
        "Sarhos 3"
    },
    ["Sarhos4"] = {
        "move_m@drunk@moderatedrunk_head_up",
        "Sarhos 4"
    },
    ["Sarhos5"] = {
        "move_m@drunk@slightlydrunk",
        "Sarhos 5"
    },
    ["Sarhos6"] = {
        "move_m@drunk@verydrunk",
        "Sarhos 6"
    },
    ["Sisman"] = {
        "move_m@fat@a",
        "Sisman Erkek"
    },
    ["Sisman2"] = {
        "move_f@fat@a",
        "Sisman Kadin"
    },
    ["Sisman3"] = {
        "move_m@fat@bulky",
        "Sisman ve Kasli"
    },
    ["Kadin"] = {
        "move_f@femme@"
    },
    ["Kadin2"] = {
        "move_m@femme@",
        "Kadin 2"
    },
    ["Yangin"] = {
        "move_characters@franklin@fire"
    },
    ["Yangin2"] = {
        "move_characters@michael@fire",
        "Yangin 2"
    },
    ["Yangin3"] = {
        "move_m@fire",
        "Yangin 3"
    },
    ["Kacis"] = {
        "move_f@flee@a"
    },
    ["Kacis2"] = {
        "move_f@flee@c",
        "Kacis 2"
    },
    ["Kacis3"] = {
        "move_m@flee@a",
        "Kacis 3"
    },
    ["Kacis4"] = {
        "move_m@flee@b",
        "Kacis 4"
    },
    ["Kacis5"] = {
        "move_m@flee@c",
        "Kacis 5"
    },
    ["Floyd"] = {
        "move_characters@floyd"
    },
    ["Franklin"] = {
        "move_p_m_one"
    },
    ["Gangster"] = {
        "move_m@gangster@generic"
    },
    ["Gangster2"] = {
        "move_m@gangster@ng",
        "Gangster 2"
    },
    ["Gangster3"] = {
        "move_m@gangster@var_e",
        "Gangster 3"
    },
    ["Gangster4"] = {
        "move_m@gangster@var_f",
        "Gangster 4"
    },
    ["Gangster5"] = {
        "move_m@gangster@var_i",
        "Gangster 5"
    },
    ["Gangster6"] = {
        "move_f@gangster@ng",
        "Gangster 6"
    },
    ["JenerikErkek"] = {
        "move_m@generic",
        "Jenerik Erkek"
    },
    ["JenerikKadin"] = {
        "move_f@generic",
        "Jenerik Kadin"
    },
    ["Sallan"] = {
        "anim@move_m@grooving@",
        "Sallan Erkek"
    },
    ["Sallan2"] = {
        "anim@move_f@grooving@",
        "Sallan Kadin"
    },
    ["Gardiyan"] = {
        "move_m@prison_gaurd"
    },
    ["Kelepce"] = {
        "move_m@prisoner_cuffed"
    },
    ["Topuklu"] = {
        "move_f@heels@c"
    },
    ["Topuklu2"] = {
        "move_f@heels@d",
        "Topuklu 2"
    },
    ["Dagci"] = {
        "move_m@hiking",

    },
    ["Dagci2"] = {
        "move_f@hiking",
		"Dagci 2"

    },
    ["Hipster"] = {
        "move_m@hipster@a"
    },
    ["Serseri"] = {
        "move_m@hobo@a",
        "Serseri"
    },
    ["Serseri2"] = {
        "move_m@hobo@b",
        "Serseri 2"
    },
    ["Acele"] = {
        "move_m@hurry@a",
        "Aceleci Erkek"
    },
    ["Acele2"] = {
        "move_f@hurry@a",
        "Aceleci kadin"
    },
    ["Acele3"] = {
        "move_f@hurry@b",
        "Aceleci kadin 2"
    },
    ["Yaralanmis"] = {
        "move_f@injured",
        "Yaralanmis"
    },
    ["Tehdit"] = {
        "move_m@intimidation@1h",
        "Tehdit"
    },
    ["Tehdit2"] = {
        "move_m@intimidation@cop@unarmed",
        "Tehdit 2"
    },
    ["Tehdit3"] = {
        "move_m@intimidation@unarmed",
        "Tehdit 3"
    },
    ["Temizlikci"] = {
        "move_p_m_zero_janitor"
    },
    ["Temizlikci2"] = {
        "move_p_m_zero_slow",
        "Temizlikci 2"
    },
    ["Jimmy"] = {
        "move_characters@jimmy"
    },
    ["Tempo"] = {
        "move_m@jog@"
    },
    ["Sinirli"] = {
        "move_characters@jimmy@nervous@"
    },
    ["Lamar"] = {
        "move_characters@lamar"
    },
    ["Lamar2"] = {
        "anim_group_move_lemar_alley",
        "Lamar 2"
    },
    ["Lester"] = {
        "move_heist_lester"
    },
    ["Lester2"] = {
        "move_lester_caneup",
        "Lester 2"
    },
    ["Striptizci"] = {
        "move_f@maneater"
    },
    ["Michael"] = {
        "move_ped_bucket"
    },
    ["Para"] = {
        "move_m@money"
    },
    ["Kasli"] = {
        "move_m@muscle@a"
    },
    ["Patricia"] = {
        "move_characters@patricia"
    },
    ["Zuppe"] = {
        "move_m@posh@"
    },
    ["Zuppe2"] = {
        "move_f@posh@",
        "Zuppe 2"
    },
    ["Hizli"] = {
        "move_m@quick"
    },
    ["Ron"] = {
        "move_characters@ron"
    },
    ["Kosucu"] = {
        "female_fast_runner"
    },
    ["Uzgun"] = {
        "move_m@sad@a",
        "uzgun Erkek"
    },
    ["Uzgun2"] = {
        "move_m@sad@b",
        "uzgun Erkek 2"
    },
    ["Uzgun3"] = {
        "move_m@sad@c",
        "uzgun Erkek 3"
    },
    ["Uzgun4"] = {
        "move_f@sad@a",
        "uzgun kadin"
    },
    ["Uzgun5"] = {
        "move_f@sad@b",
        "uzgun kadin 2"
    },
    ["Suslu"] = {
        "move_m@sassy"
    },
    ["Suslu2"] = {
        "move_f@sassy",
        "Suslu 2"
    },
    ["Korkmus"] = {
        "move_f@scared"
    },
    ["Seksi"] = {
        "move_f@sexy@a"
    },
    ["Supheli"] = {
        "move_m@shadyped@a"
    },
    ["Yavas"] = {
        "move_characters@jimmy@slow@"
    },
    ["Kibar"] = {
        "move_m@swagger"
    },
    ["Kibar2"] = {
        "move_m@swagger@b",
        "Kibar 2"
    },
    ["Sert"] = {
        "move_m@tough_guy@"
    },
    ["Sert2"] = {
        "move_f@tough_guy@",
        "Sert 2"
    },
    ["AletKemeri"] = {
        "move_m@tool_belt@a",
        "Alet Kemeri Erkek"

    },
    ["AletKemeri2"] = {
        "move_f@tool_belt@a",
        "Alet Kemeri Kadin"
    },
    ["Copcu"] = {
        "clipset@move@trash_fast_turn"
    },
    ["Copcu2"] = {
        "missfbi4prepp1_garbageman",
        "copcu 2"
    },
    ["Tracey"] = {
        "move_characters@tracey"
    },
    ["Trevor"] = {
        "move_p_m_two"
    },
    ["Cokyavas"] = {
        "move_m@leaf_blower",
        "cok Yavas"
    },
    ["Genis"] = {
        "move_m@bag"
    },

    -- I cant get these to work for some reason, if anyone knows a fix, let me know
    -- ? The break menu part should be that the game can't find the anim dict and loop for it infinitely
    -- ["Caution"] = {"move_m@caution"}, -- breaks menu
    -- ["Chubby"] = {"anim@move_m@chubby@a"}, -- breaks menu
    -- ["Crazy"] = {"move_m@crazy"},-- breaks menu
    -- ["Joy"] = {"move_m@joy@a"},-- breaks menu
    -- ["Power"] = {"move_m@power"},-- breaks menu
    -- ["Wading"] = {"move_m@wading"} -- breaks menu
    -- ["Depressed 3"] = {"move_m@depressed@c" }, -- breaks menu
    -- ["Depressed 4"] = {"move_m@depressed@d" }, -- breaks menu
    -- ["Caution"] = {"move_m@caution" },-- breaks menu
    -- ["Crazy"] = {"move_m@crazy" }, -- breaks menu
    -- ["Joy"] = {"move_m@joy@a" }, -- breaks menu
    -- ["Power"] = {"move_m@power" }, -- breaks menu
    -- ["Power Walk"] = {"move_m@powerwalk" }, -- breaks menu
    -- ["Tired"] = {"move_m@tired" }, -- breaks menu
    -- -- ["Wading"] = {"move_m@wading"},-- breaks menu
}


--- SHARED EMOTES ---

DP.ERP = {
    ["sex"] = {
        "zmdev@erotica_missionarym",
        "missionarym",
        "Misyoner Erkek",
        "sex2",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            --bone = 0,
            xPos = 0.08,
            yPos = 0.02,
            zPos = 0.0,
            xRot = 0.0,
            yRot = 0.0,
            zRot = 0.0,
            
        }
    },
    ["sex2"] = {
        "zmdev@erotica_missionaryf",
        "missionaryf",
        "Misyoner Kadin",
        "sex",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
        }
    }, 
    ["sex3"] = {
        "zmdev@erotica_missionary2m",
        "missionary2m",
        "Misyoner Erkek 2",
        "sex4",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            --bone = 0,
            xPos = 0.09,
            yPos = 0.02,
            zPos = 0.02,
            xRot = 0.0,
            yRot = 0.0,
            zRot = 0.0,
            
        }
    },
    ["sex4"] = {
        "zmdev@erotica_missionary2f",
        "missionary2f",
        "Misyoner Kadin 2",
        "sex3",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
        }
    },
    ["sex5"] = {
        "zmdev@erotica_doggystylem",
        "doggystylem",
        "Doggystyle Erkek",
        "sex6",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            --bone = 0,
            xPos = -0.35,
            yPos = 0.0,
            zPos = 0.0,
            xRot = 0.0,
            yRot = 0.0,
            zRot = 0.0,
            
        }
    },
    ["sex6"] = {
        "zmdev@erotica_doggystylef",
        "doggystylef",
        "Doggystyle Kadin",
        "sex5",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
        }
    },
    ["sex7"] = {
        "zmdev@erotica_doggystyle2m",
        "doggystyle2m",
        "Doggystyle Erkek 2",
        "sex8",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            --bone = 0,
            xPos = -0.39,
            yPos = 0.0,
            zPos = 0.0,
            xRot = 0.0,
            yRot = 0.0,
            zRot = 0.0,
            
        }
    },
    ["sex8"] = {
        "zmdev@erotica_doggystyle2f",
        "doggystyle2f",
        "Doggystyle Kadin 2",
        "sex7",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
        }
    },
    ["sex9"] = {
        "zmdev@erotica_cowgirlm",
        "cowgirlm",
        "Cowgirl Erkek",
        "sex10",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            --bone = 0,
            xPos = 0.0,
            yPos = 0.05,
            zPos = 0.0,
            xRot = 0.0,
            yRot = 0.0,
            zRot = 0.0,
            
        }
    },
    ["sex10"] = {
        "zmdev@erotica_cowgirlf",
        "cowgirlf",
        "Cowgirl Kadin",
        "sex9",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
        }
    },
    ["sex11"] = {
        "zmdev@erotica_spooningm",
        "spooningm",
        "Spooning Erkek",
        "sex12",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            --bone = 0,
            xPos = -0.09,
            yPos = -0.20,
            zPos = 0.0,
            xRot = 0.0,
            yRot = 0.0,
            zRot = 0.0,
            
        }
    },
    ["sex12"] = {
        "zmdev@erotica_spooningf",
        "spooningf",
        "Spooning Kadin",
        "sex11",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
        }
    },
    ["sex13"] = {
        "zmdev@erotica_standingcowgirlm",
        "standingcowgirlm",
        "Standing Cowgirl Erkek",
        "sex14",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            --bone = 0,
            xPos = -0.30,
            yPos = 0.0,
            zPos = 0.05,
            xRot = 0.0,
            yRot = 0.0,
            zRot = 0.0,
            
        }
    },
    ["sex14"] = {
        "zmdev@erotica_standingcowgirlf",
        "standingcowgirlf",
        "Standing Cowgirl Kadin",
        "sex13",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            
        }
    },
    ["sex15"] = {
        "zmdev@erotica_standingm",
        "standingm",
        "On The Wall Erkek",
        "sex16",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            --bone = 0,
            xPos = -0.35,
            yPos = 0.02,
            zPos = 0.0,
            xRot = 0.0,
            yRot = 0.0,
            zRot = 0.0,
            
        }
    },
    ["sex16"] = {
        "zmdev@erotica_standingf",
        "standingf",
        "On The Wall Kadin",
        "sex15",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            
        }
    },
    ["sex17"] = {
        "misscarsteal2pimpsex",
        "pimpsex_hooker",
        "Standing Blowjob Erkek ",
        "sex18",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
        }
    },
    ["sex18"] = {
        "misscarsteal2pimpsex",
        "pimpsex_punter",
        "Standing Blowjob Kadin",
        "sex17",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            xPos = 0.0,
            yPos = 0.6,
            zPos = 0.0,
            xRot = 0.0,
            yRot = 0.0,
            zRot = 180.0,
            
        }
    },
    ["sex19"] = {
        "misscarsteal2pimpsex",
        "shagloop_hooker",
        "Hooker Erkek ",
        "sex20",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
        }
    },
    ["sex20"] = {
        "misscarsteal2pimpsex",
        "shagloop_pimp",
        "Hooker Kadin",
        "sex19",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            xPos = 0.0,
            yPos = 0.37,
            zPos = 0.0,
            xRot = 0.0,
            yRot = 0.0,
            zRot = 180.0,
            
        }
    },
    ["sex21"] = {
        "rcmpaparazzo_2",
        "shag_loop_a",
        "Anal Sex Erkek ",
        "sex22",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
        }
    },
    ["sex22"] = {
        "rcmpaparazzo_2",
        "shag_loop_poppy",
        "Anal Sex Kadin",
        "sex21",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            bone = 9816,
            xPos = 0.015,
            yPos = 0.35,
            zPos =0.0,
            xRot =0.9,
            yRot =0.3,
            zRot =0.0,

            
        }
    },
}



DP.Shared = {
    ["op"] = {
        "genesismods_kissme@kissmale8",
        "operkek1",
        "Opucuk1 (Erkek)",
        "op2",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            --SyncOffsetFront = 0.05,
            --bone = 0,
            xPos = -0.56,
            yPos = 0.0,
            zPos = 0.0,
            xRot = 0.0,
            yRot = 0.0,
            zRot = 0.0,
            
        }
    },
    ["op2"] = {
        "genesismods_kissme@kissfemale8",
        "opkadin2",
        "Opucuk2 (Kadin)",
        "op",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            --SyncOffsetFront = 0.05,
            
        }
    },
    ["op3"] = {
        "genesismods_kissme@kissmale9",
        "operkek3",
        "Opucuk3 (Erkek)",
        "op4",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            --SyncOffsetFront = 0.05,
            --bone = 0,
            xPos = 0.35,
            yPos = 0.0,
            zPos = 0.0,
            xRot = 0.0,
            yRot = 0.0,
            zRot = 0.0,
            
        }
    },
    ["op4"] = {
        "genesismods_kissme@kissfemale9",
        "opkadin4",
        "Opucuk4 (Kadin)",
        "op3",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            --SyncOffsetFront = 0.05,
            
        }
    },
    ["ikinci"] = {
        "amnilka@photopose@couple@couplesecond",
        "amnilka_couple_fem_001",
        "ikinci1",
        "ikinci1",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            --SyncOffsetFront = 0.05,
            
        }
    },
    ["op5"] = {
        "genesismods_kissme@kissmale10",
        "operkek5",
        "Opucuk5 (Erkek)",
        "op6",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            --SyncOffsetFront = 0.05,
            --bone = 0,
            xPos = 0.38,
            yPos = 0.0,
            zPos = 0.0,
            xRot = 0.0,
            yRot = 0.0,
            zRot = 0.0,
            
        }
    },
    ["op6"] = {
        "genesismods_kissme@kissfemale10",
        "opkadi-n6",
        "Opucuk6 (Kadin)",
        "op5",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            --SyncOffsetFront = 0.05,
            
        }
    },
    ["op7"] = {
        "tigerle@custom@couple@kissing1a",
        "tigerle_couple_kissing1a",
        "Opucuk7",
        "op8",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
        }
    },
    ["op8"] = {
        "tigerle@custom@couple@kissing1b",
        "tigerle_couple_kissing1b",
        "Opucuk 8",
        "op7",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            xPos = 0.0,
            yPos = 0.0,
            zPos = 0.0,
            xRot = 0.0,
            yRot = 0.0,
            zRot = 0.0,
        }
    },
    ["op9"] = {
        "tigerle@custom@couple@kissing2a",
        "tigerle_couple_kissing2a",
        "Opucuk 9",
        "op10",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
        }
    },
    ["op10"] = {
        "tigerle@custom@couple@kissing2b",
        "tigerle_couple_kissing2b",
        "Opucuk 10",
        "op9",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            xPos = 0.0,
            yPos = 0.0,
            zPos = 0.0,
            xRot = 0.0,
            yRot = 0.0,
            zRot = 0.0,
        }
    },
    ["Kucakkucaga"] = {
        "tigerle@custom@couple@cuddle1a",
        "tigerle_couple_cuddle1a",
        "Sarilmis Durma",
        "Kucakkucaga2",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
        }
    },
    ["Kucakkucaga2"] = {
        "tigerle@custom@couple@cuddle1b",
        "tigerle_couple_cuddle1b",
        "Sarilmis Durma 2",
        "Kucakkucaga",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            xPos = 0.0,
            yPos = 0.0,
            zPos = 0.0,
            xRot = 0.0,
            yRot = 0.0,
            zRot = 0.0,
        }
    },
    ["Kucakkucaga3"] = {
        "tigerle@custom@couple@cuddle@no2a",
        "tigerle_couple_cuddleno2a",
        "Sarilmis Durma 3",
        "cuddleet4",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
        }
    },
    ["Kucakkucaga4"] = {
        "tigerle@custom@couple@cuddle@no2b",
        "tigerle_couple_cuddleno2b",
        "Sarilmis Durma 4",
        "Kucakkucaga3",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            xPos = 0.0,
            yPos = 0.0,
            zPos = 0.0,
            xRot = 0.0,
            yRot = 0.0,
            zRot = 0.0,
        }
    },
    ["ciftuzan"] = {
        "tigerle@custom@couple@laying1a",
        "tigerle_couple_laying1a",
        "Cift Yatma 1",
        "uzan2",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
        }
    },
    ["ciftuzan2"] = {
        "tigerle@custom@couple@laying1b",
        "tigerle_couple_laying1b",
        "Cift Yatma 2",
        "uzan",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            xPos = 0.0,
            yPos = 0.0,
            zPos = 0.0,
            xRot = 0.0,
            yRot = 0.0,
            zRot = 0.0,
        }
    },
    ["botur"] = {
        "tigerle@custom@couple@sittingonbench@no1a",
        "tigerle_couple_sittingonbench_no1a",
        "Bankta Oturma 1",
        "botur2",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
        }
    },
    ["botur2"] = {
        "tigerle@custom@couple@sittingonbench@no1b",
        "tigerle_couple_sittingonbench_no1b",
        "Bankta Oturma 2",
        "botur",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            xPos = 0.0,
            yPos = 0.0,
            zPos = 0.0,
            xRot = 0.0,
            yRot = 0.0,
            zRot = 0.0,
        }
    },
    ["Kucakkucaga5"] = {
        "tigerle@custom@couple@standcuddle_a",
        "tigerle_couple_standcuddle_a",
        "Sarilmis Durma 5",
        "Kucakkucaga6",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
        }
    },
    ["Kucakkucaga6"] = {
        "tigerle@custom@couple@standcuddle_b",
        "tigerle_couple_standcuddle_b",
        "Sarilmis Durma 6",
        "Kucakkucaga5",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            xPos = 0.0,
            yPos = 0.35,
            zPos = 0.0,
            xRot = 0.0,
            yRot = 0.0,
            zRot = 180.0,
        }
    },
    ["ayakta"] = {
        "tigerle@custom@couple@standing_a",
        "tigerle_couple_standing_a",
        "Ayakta Durma 1",
        "ayakta2",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
        }
    },
    ["ayakta2"] = {
        "tigerle@custom@couple@standing_b",
        "tigerle_couple_standing_b",
        "Ayakta Durma 2",
        "ayakta",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            xPos = 0.10,
            yPos = 0.30,
            zPos = 0.0,
            xRot = 0.0,
            yRot = 0.0,
            zRot = 0.0,
        }
    },
    ["titanik"] = {
        "tigerle@custom@pose@titanic1a",
        "tigerle_pose_titanic1a",
        "Titanik",
        "titanik2",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
        }
    },
    ["titanik2"] = {
        "tigerle@custom@pose@titanic1b",
        "tigerle_pose_titanic1b",
        "Titanik 2",
        "titanik",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            xPos = 0.10,
            yPos = 0.30,
            zPos = 0.0,
            xRot = 0.0,
            yRot = 0.0,
            zRot = 0.0,
        }
    },
    ["bff"] = {
        "tigerle@custom@pose@bff1a",
        "tigerle_pose_bff1a",
        "Yakin Arkadas 1",
        "bfff2",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
        }
    },
    ["bff2"] = {
        "tigerle@custom@pose@bff1b",
        "tigerle_pose_bff1b",
        "Yakin Arkadas 2",
        "bfff",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            xPos = 0.70,
            yPos = 0.0,
            zPos = 0.0,
            xRot = 0.0,
            yRot = 0.0,
            zRot = 0.0,
        }
    },
    ["elsikisma"] = {
        "mp_ped_interaction",
        "handshake_guy_a",
        "El Sikisma",
        "elsikisma2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 3000,
            SyncOffsetFront = 0.9
        }
    },
    ["elsikisma2"] = {
        "mp_ped_interaction",
        "handshake_guy_b",
        "El Sikisma 2",
        "elsikisma",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 3000
        }
    },
    ["kucaklama"] = {
        "mp_ped_interaction",
        "kisses_guy_a",
        "Kucaklama",
        "kucaklama2",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteDuration = 5000,
            SyncOffsetFront = 1.05,
        }
    },
    ["kucaklama2"] = {
        "mp_ped_interaction",
        "kisses_guy_b",
        "Kucaklama 2",
        "kucaklama",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteDuration = 5000,
            SyncOffsetFront = 1.18
        }
    },
    ["kucaklama3"] = {
        "misscarsteal2chad_goodbye",
        "chad_armsaround_chad",
        "Romantik Kucaklama 1",
        "kucaklama4",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            SyncOffsetSide = -0.05,
            SyncOffsetFront = 0.52,
        }
    },
    ["kucaklama4"] = {
        "misscarsteal2chad_goodbye",
        "chad_armsaround_girl",
        "Romantik Kucaklama 2",
        "kucaklama3",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            SyncOffsetSide = -0.05,
            SyncOffsetFront = 0.52,
        }
    },
    ["bro"] = {
        "mp_ped_interaction",
        "hugs_guy_a",
        "Bro",
        "bro2",
        AnimationOptions = {
            SyncOffsetFront = 1.14
        }
    },
    ["bro2"] = {
        "mp_ped_interaction",
        "hugs_guy_b",
        "Bro 2",
        "bro",
        AnimationOptions = {
            SyncOffsetFront = 1.14
        }
    },
    ["verme"] = {
        "mp_common",
        "givetake1_a",
        "Verme",
        "verme2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 2000
        }
    },
    ["verme2"] = {
        "mp_common",
        "givetake1_b",
        "Verme 2",
        "verme",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 2000
        }
    },
    ["Beyzbol"] = {
        "anim@arena@celeb@flat@paired@no_props@",
        "baseball_a_player_a",
        "Beyzbol",
        "BeyzbolAtisi"
    },
    ["BeyzbolAtisi"] = {
        "anim@arena@celeb@flat@paired@no_props@",
        "baseball_a_player_b",
        "Beyzbol Atisi",
        "Beyzbol"
    },
    ["soy"] = {
        "random@countryside_gang_fight",
        "biker_02_stickup_loop",
        "soy",
        "soyulmakorkusu",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["soyulmakorkusu"] = {
        "missminuteman_1ig_2",
        "handsup_base",
        "Yakalama Korkusu",
        "soy",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true,
        }
    },
    ["yumruk"] = {
        "melee@unarmed@streamed_variations",
        "plyr_takedown_rear_lefthook",
        "Yumruk",
        "yumruklanmis"
    },
    ["yumruklanmis"] = {
        "melee@unarmed@streamed_variations",
        "victim_takedown_front_cross_r",
        "Yumruk Yemis",
        "yumruk"
    },
    ["kafaat"] = {
        "melee@unarmed@streamed_variations",
        "plyr_takedown_front_headbutt",
        "Kafa Atma",
        "kafayemis"
    },
    ["kafayemis"] = {
        "melee@unarmed@streamed_variations",
        "victim_takedown_front_headbutt",
        "Kafa Yemis",
        "kafaat"
    },
    ["tokat"] = {
        "melee@unarmed@streamed_variations",
        "plyr_takedown_front_backslap",
        "Tokat",
        "tokat2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true,
            EmoteDuration = 2000,
        }
    },
    ["tokat2"] = {
        "melee@unarmed@streamed_variations",
        "plyr_takedown_front_slap",
        "Tokat 2",
        "tokat",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true,
            EmoteDuration = 2000,
        }
    },
    ["tokatyemis"] = {
        "melee@unarmed@streamed_variations",
        "victim_takedown_front_slap",
        "Tokat Yemis",
        "tokatyemis2"
    },
    ["tokatyemis2"] = {
        "melee@unarmed@streamed_variations",
        "victim_takedown_front_backslap",
        "Tokat Yemis 2",
        "tokatyemis"
    },
    ["sakso"] = {
        "misscarsteal2pimpsex",
        "pimpsex_punter",
        "Agizla iliskiye girmek",
        "sakso2",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteDuration = 30000,
            SyncOffsetFront = 0.63
        },
        AdultAnimation = true
    },
    ["sakso2"] = {
        "misscarsteal2pimpsex",
        "pimpsex_hooker",
        "Agizla iliskiye girmek 2",
        "sakso",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteDuration = 30000,
            SyncOffsetFront = 0.63
        },
        AdultAnimation = true
    },
    ["sokaksexierkek"] = {
        "misscarsteal2pimpsex",
        "shagloop_pimp",
        "Sokakta Cinsel iliski Erkek",
        "sokaksexikadin",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            SyncOffsetFront = 0.50
        },
        AdultAnimation = true
    },
    ["sokaksexikadin"] = {
        "misscarsteal2pimpsex",
        "shagloop_hooker",
        "Sokakta Cinsel iliski Kadin",
        "sokaksexierkek",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            SyncOffsetFront = 0.50
        },
        AdultAnimation = true
    },
    ["tasi"] = {
        "missfinale_c2mcs_1",
        "fin_c2_mcs_1_camman",
        "Tasima",
        "tasi2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true,
        }
    },
    ["tasi2"] = {
        "nm",
        "firemans_carry",
        "Tasinmak",
        "tasi",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            bone = 40269,
            xPos = -0.14,
            yPos = 0.15,
            zPos = 0.14,
            xRot = 0.0,
            yRot = -59.0,
            zRot = -4.5,
        }
    },
    ["tasi3"] = {
        "anim@heists@box_carry@",
        "idle",
        "Tasima 2",
        "tasi4",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true,
        }
    },
    ["tasi4"] = {
        "amb@code_human_in_car_idles@generic@ps@base",
        "base",
        "Tasinmak 3",
        "tasi3",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            bone = 28252,
            xPos = 0.350,
            yPos = 0.15,
            zPos = -0.15,
            xRot = -42.50,
            yRot = -22.50,
            zRot = 22.50,
        }
    },
    ["kopektasi"] = {
        "anim@heists@box_carry@",
        "idle",
        "Kucuk Kopegi Tasima",
        "kopektasindi",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true,
        },
        AnimalEmote = true,
    },
    ["kopektasindi"] = { -- MissSnowie tarafindan yapilan emote
        "misssnowie@little_doggy_lying_down",
        "base",
        "Kucuk Kopek Tasindi",
        "kopektasi",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            xPos = -0.040,
            yPos = 0.330,
            zPos = 0.280,
            xRot = 0.0,
            yRot = 0.0,
            zRot = 80.0,
        },
        AnimalEmote = true,
    },
    ["kopektasi2"] = { -- MissSnowie tarafindan yapilan ozel emote
        "hooman@hugging_little_doggy",
        "base",
        "Kucuk Kopegi Tasima 2",
        "kopektasindi2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true,
        },
        AnimalEmote = true,
    },
    ["kopektasindi2"] = { -- MissSnowie tarafindan yapilan ozel emote
        "little_doggy@hugging_hooman",
        "base",
        "Kucuk Kopek Tasindi 2",
        "kopektasi2",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            bone = 24818,
            xPos = -0.95,
            yPos = 0.16,
            zPos = -0.15,
            xRot = 3.70,
            yRot = 75.00,
            zRot = -161.90,
        },
        AnimalEmote = true,
    },
    ["kopektasi3"] = {
        "anim@heists@box_carry@",
        "idle",
        "Buyuk Kopegi Tasima",
        "cbdog2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true,
        },
        AnimalEmote = true,
    },
    ["kopektasindi3"] = {
        "creatures@rottweiler@amb@sleep_in_kennel@",
        "sleep_in_kennel",
        "Buyuk Kopegi Tasindi",
        "cbdog",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            xPos = -0.100,
            yPos = 0.650,
            zPos = 0.430,
            xRot = 0.0,
            yRot = 0.0,
            zRot = -100.00,
        },
        AnimalEmote = true,
    },
    ["sirtinal"] = {
        "anim@arena@celeb@flat@paired@no_props@",
        "piggyback_c_player_a",
        "Sirtinda Tasima Teklifi",
        "sirtinacik",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true,
        }
    },
    ["sirtinacik"] = {
        "anim@arena@celeb@flat@paired@no_props@",
        "piggyback_c_player_b",
        "Sirtta Tasinmak",
        "sirtinal",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            bone = 0,
            xPos = 0.0,
            yPos = -0.07,
            zPos = 0.4,
            xRot = 0.0,
            yRot = 0.0,
            zRot = 0.0,
        }
    },
    ["kalpmasaji"] = {
        "mini@cpr@char_a@cpr_str",
        "cpr_pumpchest",
        "Kalp Masaji Yap",
        "kalpmasajiol",
        AnimationOptions = {
            EmoteLoop = true,
            StartDelay = 250,
        }
    },
    ["kalpmasajiol"] = {
        "mini@cpr@char_b@cpr_str",
        "cpr_pumpchest",
        "Kalp Masaji Ol",
        "kalpmasaji",
        AnimationOptions = {
            EmoteLoop = true,
            Attachto = true,
            xPos = 0.35,
            yPos = 0.8,
            zPos = 0.0,
            xRot = 0.0,
            yRot = 0.0,
            zRot = 270.0,
        }
    },
    ["hostage"] = {
        "anim@gangops@hostage@",
        "perp_idle",
        "Rehine Al",
        "hostage2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true,
        }
    },
    ["hostage2"] = {
        "anim@gangops@hostage@",
        "victim_idle",
        "Rehin Ol",
        "hostage",
        AnimationOptions = {
            EmoteLoop = true,
            Attachto = true,
            xPos = -0.3,
            yPos = 0.1,
            zPos = 0.0,
            xRot = 0.0,
            yRot = 0.0,
            zRot = 0.0,
        }
    },
    ["search"] = { -- ultrahacx Tarafindan ozel Emote
        "custom@police",
        "police",
        "Arama",
        "search2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = false,
            -- EmoteDuration = 9700,
        }
    },
    ["search2"] = {
        "missfam5_yoga",
        "a2_pose",
        "Aran",
        "search",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = false,
            -- EmoteDuration = 9700,
            Attachto = true,
            xPos = 0.0,
            yPos = 0.5,
            zPos = 0.0,
            xRot = 0.0,
            yRot = 0.0,
            zRot = 0.0,
        }
    },
    ["followa"] = { -- Dollie Mods Tarafindan ozel Emote (onunde Takip)
        "dollie_mods@follow_me_001",
        "follow_me_001",
        "Takip Et A (on)",
        "followb",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
            -- Eglence icin bunu true yapabiliriz, ancak kapilardan gecerken sorun cikarabilir. Her iki oyuncu da paylasilan emote'u iptal etmek icin X tusuna basabilir
        }
    },
    ["followb"] = { -- Dollie Mods Tarafindan ozel Emote (Arkasinda Takip)
        "dollie_mods@follow_me_002",
        "follow_me_002",
        "Takip Et B (Arka)",
        "followa",
        AnimationOptions = {
            EmoteLoop = true,
            Attachto = true,
            xPos = 0.078,
            yPos = 0.018,
            zPos = 0.00,
            xRot = 0.00,
            yRot = 0.00,
            zRot = 0.00,
        }
    },
    ["opusme"] = {
        "hs3_ext-20",
        "cs_lestercrest_3_dual-20",
        "Opusme",
        "kiss2",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteDuration = 10000,
            SyncOffsetFront = 0.08
        }
    },
    ["opusme2"] = {
        "hs3_ext-20",
        "csb_georginacheng_dual-20",
        "Opusme 2",
        "opusme",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteDuration = 10000,
            SyncOffsetFront = 0.08
        }
    },
    ["opusme3"] = {
        "hs3_ext-19",
        "cs_lestercrest_3_dual-19",
        "Opusme 3",
        "opusme4",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteDuration = 10000,
            SyncOffsetFront = 0.08
        }
    },
    ["opusme4"] = {
        "hs3_ext-19",
        "csb_georginacheng_dual-19",
        "Opusme 4",
        "opusme3",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteDuration = 10000,
            SyncOffsetFront = 0.08
        }
    },
    ["cifticiyor"] = {
        "anim@scripted@robbery@tun_prep_uni_ig1_couple@",
        "action_var_01_bank_manager",
        "Cift iciyor (sarap Kadehleri)",
        "cifticiyor2",
        AnimationOptions = {
            Prop = 'p_wine_glass_s',
            PropBone = 60309,
            PropPlacement = {
                -0.0500,
                -0.0100,
                -0.1700,
                0.0,
                0.0,
                0.0,
            },
            EmoteMoving = false,
            EmoteLoop = true,
        }
    },
    ["cifticiyor2"] = {
        "anim@scripted@robbery@tun_prep_uni_ig1_couple@",
        "action_var_01_female",
        "Cift iciyor Kadin (sarap Kadehleri)",
        "cifticiyor",
        AnimationOptions = {
            Prop = 'p_wine_glass_s',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
            },
            SyncOffsetSide = -0.04125,
            SyncOffsetFront = 0.11,
            EmoteMoving = false,
            EmoteLoop = true,
        }
    },
    --[emotename] = {dictionary, animation, displayname, targetemotename, additionalanimationoptions} --
    -- You don't have to specify targetemotename; If you don't, it will just play the same animation on both.--
    -- targetemote is used for animations that have a corresponding animation to the other player, ie Carry and Be Carried --
    -- Emotes will work with either SyncOffset or Attachto. We can attach players either in front of us, to a specific bone, or either side of us. --


    ["beldentut"] = {
        "misscarsteal2chad_goodbye",
        "chad_armsaround_chad",
        "Romantik Cift",
        "boyundantut",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            SyncOffsetSide = -0.05,
            SyncOffsetFront = 0.52
        }
    },
    ["boyundantut"] = {
        "misscarsteal2chad_goodbye",
        "chad_armsaround_girl",
        "Romantik Cift 2",
        "beldentut",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            SyncOffsetSide = -0.05,
            SyncOffsetFront = 0.52
        }
    },
    ["kucaklama5"] = {
        "anim@heists@box_carry@",
        "idle",
        "Kucaklama 4",
        "kucaklama6",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["kucaklama6"] = {
        "amb@code_human_in_car_idles@generic@ps@base",
        "base",
        "Kucaklama 5",
        "kucaklama5",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            bone = 28252,
            xPos = 0.350,
            yPos = 0.15,
            zPos = -0.15,
            xRot = -42.50,
            yRot = -22.50,
            zRot = 22.50
        }
    },
    ["sevimlitasima"] = { -- Amnilka tarafindan ozel erkek emote'u
    "amnilka@photopose@couple@couplefirst",
    "amnilka_couple_mal_002",
    "Beni Sevimli Tasi",
    "sevimlitasima2",
    AnimationOptions = {
        EmoteMoving = true,
        EmoteLoop = true
    }
},
["sevimlitasima2"] = { -- Amnilka tarafindan ozel kadin emote'u
    "amnilka@photopose@couple@couplefirst",
    "amnilka_couple_fem_002",
    "Beni Sevimli Tasi 2",
    "sevimlitasima",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
        Attachto = true,
        bone = 0,
        xPos = 0.0000,
        yPos = 0.0000,
        zPos = 0.0000,
        xRot = 0.0000,
        yRot = 0.0000,
        zRot = 0.0000
    }
},
["sevimlitasima3"] = { -- CMG Mods tarafindan ozel erkek emote'u
    "couplepose1cmg@animation",
    "couplepose1cmg_clip",
    "Beni Sevimli Tasi 3",
    "sevimlitasima4",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true
    }
},
["sevimlitasima4"] = { -- CMG Mods tarafindan ozel kadin emote'u
    "couplepose2cmg@animation",
    "couplepose2cmg_clip",
    "Beni Sevimli Tasi 4",
    "sevimlitasima3",
    AnimationOptions = {
        EmoteLoop = true,
        Attachto = true,
        bone = 0,
        xPos = 0.0100,
        yPos = 0.3440,
        zPos = -0.0100,
        xRot = 180.0000,
        yRot = 180.0000,
        zRot = -1.9999
    }
},
["bffpoz"] = {
    "anim@male_couple_03_b",
    "m_couple_03_b_clip",
    "BFF Poz",
    "bffpoz2",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true
    },
},
["bffpoz2"] = {
    "anim@female_couple_03_b",
    "f_couple_03_b_clip",
    "BFF Poz 2",
    "bffpoz",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
        Attachto = true,
        bone = 0,
        xPos = 0.0100,
        yPos = 0.1300,
        zPos = 0.0,
        xRot = 0.0,
        yRot = 0.0,
        zRot = 76.0000
    },
},
["benimleotur"] = { -- Amnilka tarafindan ozel erkek emote'u
    "amnilka@photopose@couple@couplefirst",
    "amnilka_couple_mal_003",
    "Benimle Otur",
    "benimleotur2",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true
    }
},
["benimleotur2"] = { -- Amnilka tarafindan ozel kadin emote'u
    "amnilka@photopose@couple@couplefirst",
    "amnilka_couple_fem_003",
    "Benimle Otur 2",
    "benimleotur",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
        Attachto = true,
        bone = 0,
        xPos = 0.3540,
        yPos = 0.5110,
        zPos = 0.8310,
        xRot = 0.0000,
        yRot = 0.0000,
        zRot = -2.8000
    }
},
["sarilmapozu"] = { -- Male Custom emote by Amnilka
"amnilka@photopose@couple@couplefirst",
"amnilka_couple_mal_001",
"Sarilma Pozu",
"sarilmapozu2",
AnimationOptions = {
    EmoteMoving = false,
    EmoteLoop = true
}
},
["sarilmapozu2"] = { -- Female Custom emote by Amnilka
"amnilka@photopose@couple@couplefirst",
"amnilka_couple_fem_001",
"Sarilma Pozu 2",
"sarilmapozu",
AnimationOptions = {
    EmoteMoving = false,
    EmoteLoop = true,
    Attachto = true,
    bone = 0,
    xPos = 0.1400,
    yPos = 0.2500,
    zPos = 0.0000,
    xRot = 0.0000,
    yRot = 0.0000,
    zRot = 0.0000
}
},
["sarilmapozu3"] = { -- Male Custom emote by Little Spoon
"littlespoon@friendship007",
"friendship007",
"Sarilma Pozu 3",
"sarilmapozu4",
AnimationOptions = {
    EmoteMoving = false,
    EmoteLoop = true
}
},
["sarilmapozu4"] = { -- Female Custom emote by Little Spoon
"littlespoon@friendship008",
"friendship008",
"Sarilma Pozu 4",
"sarilmapozu3",
AnimationOptions = {
    EmoteMoving = false,
    EmoteLoop = true,
    Attachto = true,
    bone = 0,
    xPos = 0.0100,
    yPos = 0.2700,
    zPos = 0.0,
    xRot = -180.0000,
    yRot = -180.0000,
    zRot = 10.0000
}
},
["sevimlipoz"] = { -- Amnilka tarafindan ozel erkek emote'u
    "amnilka@photopose@couple@couplefirst",
    "amnilka_couple_mal_004",
    "Sevimli Poz",
    "sevimlipoz2",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true
    }
},
["sevimlipoz2"] = { -- Amnilka tarafindan ozel kadin emote'u
    "amnilka@photopose@couple@couplefirst",
    "amnilka_couple_fem_004",
    "Sevimli Poz 2",
    "sevimlipoz",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
        Attachto = true,
        bone = 0,
        xPos = 0.2700,
        yPos = 0.1200,
        zPos = 0.0000,
        xRot = 0.0000,
        yRot = 0.0000,
        zRot = 0.0000
    }
},
    ["ciftkalp"] = { -- Male Custom emote by Amnilka
        "amnilka@photopose@couple@couplefirst",
        "amnilka_couple_mal_005",
        "Cift Yarim kalp",
        "ciftkalp2",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true
        }
    },
    ["ciftkalp2"] = { -- Female Custom emote by Amnilka
        "amnilka@photopose@couple@couplefirst",
        "amnilka_couple_fem_005",
        "Cift Yarim kalp 2",
        "ciftkalp",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            bone = 0,
            xPos = -0.1230,
            yPos = 0.4740,
            zPos = 0.0000,
            xRot = 0.0000,
            yRot = 0.0000,
            zRot = 94.0000
        }
    },
	["kaldirbeni"] = { -- Male Custom emote by -Moses-
        "couplepose1pack1anim2@animation",
        "couplepose1pack1anim2_clip",
        "Kaldir Beni",
        "kaldirbeni2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["kaldirbeni2"] = { -- Female Custom emote by -Moses-
        "couplepose1pack1anim1@animation",
        "couplepose1pack1anim1_clip",
        "Kaldir Beni 2",
        "kaldirbeni",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            bone = 0,
            xPos = 0.0020,
            yPos = 0.2870,
            zPos = 0.2500,
            xRot = 0.0000,
            yRot = 0.0000,
            zRot = 180.0000
        }
    },
	["kaldirbeni3"] = { -- Male Custom emote by -Moses-
        "couplepose2pack1anim2@animation",
        "couplepose2pack1anim2_clip",
        "Kaldir Beni 3",
        "kaldirbeni4",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true
        }
    },
    ["kaldirbeni4"] = { -- Female Custom emote by -Moses-
        "couplepose2pack1anim1@animation",
        "couplepose2pack1anim1_clip",
        "Kaldir Beni 4",
        "kaldirbeni3",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            bone = 0,
            xPos = 0.0100,
            yPos = 0.4800,
            zPos = 0.5300,
            xRot = 0.0000,
            yRot = 0.0000,
            zRot = 180.0000
        }
    },
	["kaldirbeni5"] = { -- Male Custom emote by -Moses-
        "couplepose3pack1anim2@animation",
        "couplepose3pack1anim2_clip",
        "Kaldir Beni 5",
        "kaldirbeni6",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["kaldirbeni6"] = { -- Female Custom emote by -Moses-
        "couplepose3pack1anim1@animation",
        "couplepose3pack1anim1_clip",
        "Kaldir Beni 6",
        "kaldirbeni5",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Attachto = true,
            bone = 0,
            xPos = -0.2120,
            yPos = -0.5400,
            zPos = -0.1000,
            xRot = 0.0000,
            yRot = 0.0000,
            zRot = 0.0000
        }
    },
    ["ustarama"] = { -- Custom Emote By ultrahacx
    "custom@police",
    "police",
    "Ust Aramasi",
    "ustarama2",
    AnimationOptions = {
        EmoteMoving = true,
        EmoteLoop = false,
        -- EmoteDuration = 9700
    }
},
["ustarama2"] = {
    "missfam5_yoga",
    "a2_pose",
    "aranmis",
    "ustarama",
    AnimationOptions = {
        EmoteMoving = true,
        EmoteLoop = false,
        -- EmoteDuration = 9700,
        Attachto = true,
        xPos = 0.0,
        yPos = 0.5,
        zPos = 0.0,
        xRot = 0.0,
        yRot = 0.0,
        zRot = 0.0
    }
},
["beldentut2"] = {
    "genesismods_kissme@kissmale10",
    "kissmale10",
    "Romantik Cift 3",
    "kisscutefh2",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
        Attachto = true,
        --SyncOffsetFront = 0.05,
        --bone = 0,
        xPos = 0.38,
        yPos = 0.0,
        zPos = 0.0,
        xRot = 0.0,
        yRot = 0.0,
        zRot = 0.0,

    }
},
["boyundantut2"] = {
    "genesismods_kissme@kissfemale10",
    "kissfemale10",
    "Romantik Cift 4",
    "kisscutefh",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
        --SyncOffsetFront = 0.05,

    }
},
["kopekciftlesme"] = {
    "creatures@rottweiler@amb@",
    "hump_loop_chop",
    "Kopek Ciftlesmesi (Erkek)",
    "kopekciftlesme2",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
        SyncOffsetFront = 0.0,
        SyncOffsetSide = -0.028,
        SyncOffsetHeading = 0.0
    },
    AdultAnimation = true,
    AnimalEmote = true
},
["kopekciftlesme2"] = {
    "creatures@rottweiler@amb@",
    "hump_loop_ladydog",
    "Kopek Ciftlesmesi (Disi)",
    "kopekciftlesme",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
        SyncOffsetFront = 0.0,
        SyncOffsetSide = -0.028,
        SyncOffsetHeading = 0.0
    },
    AdultAnimation = true,
    AnimalEmote = true
},
["sandalyeotur"] = {
    "myu@fm_couple1_1",
    "fm_couple1_f_clip",
    "Sandalyede Oturma Pozu",
    "sandalyeotur2",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
        Prop = 'hei_heist_stn_chairstrip_01',
        PropBone = 0,
        PropPlacement = {
            -0.0400,
            -0.120,
            -0.600,
            -180.0000,
            -180.0000,
            9.0999,
        },
    },
    gender = "kadin"
},
["sandalyeotur2"] = {
    "myu@fm_couple1_2",
    "fm_couple1_m_clip",
    "Sandalyede Oturma Pozu 2",
    "sandalyeotur",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
        Attachto = true,
        bone = 0,
        xPos = 0.0,
        yPos = 1.2,
        zPos = 0.35,
        xRot = 0.0,
        yRot = 0.0,
        zRot = 0.0
    },
    gender = "erkek"
},

["ciftoturma"] = {
    "couplemale@sarahdiehexe",
    "couplemale_clip",
    "Askla Oturma Pozu",
    "ciftoturma2",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
    },
    gender = "kadin"
},
["ciftoturma2"] = {
    "couplefemale@sarahdiehexe",
    "couplefemale_clip",
    "Askla Oturma Pozu",
    "ciftoturma",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
        Attachto = true,
        bone = 0,
        xPos = -0.31,
        yPos = 0.35,
        zPos = 0.09,
        xRot = -2.99,
        yRot = 0.0,
        zRot = 290.0,
    },
    gender = "erkek"
},
["asktasima"] = {
    "mx@couple4_a",
    "mx@couple4_a_clip",
    "Ask Tasima Pozu",
    "asktasima2",
    AnimationOptions = {
        EmoteMoving = true,
        EmoteLoop = true,
    },
    gender = "kadin"
},
["asktasima2"] = {
    "mx@couple4_b",
    "mx@couple4_b_clip",
    "Ask Tasima Pozu 2",
    "asktasima",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
        Attachto = true,
        bone = 0,
        xPos = 0.0,
        yPos = 0.0,
        zPos = 0.0,
        xRot = 0.0,
        yRot = 0.0,
        zRot = 0.0,
    },
    gender = "erkek"
},
["asklabakma"] = {
    "benchm@spider",
    "benchm_clip",
    "Sandalyede Oturup Askla Bakma",
    "asklabakma2",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
    },
    gender = "kadin"
},
["asklabakma2"] = {
    "benchf@spider",
    "benchf_clip",
    "Sandalyede Oturup Askla Bakma",
    "asklabakma",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
        Attachto = true,
        bone = 0,
        xPos = 0.0,
        yPos = 0.39,
        zPos = 0.36,
        xRot = 0.0,
        yRot = 0.0,
        zRot = 0.0,
    },
    gender = "erkek"
},
["motorbinmepozu"] = {
    "bikefistmale@joker",
    "bikefistmale_clip",
    "Motosiklete Binme Pozu",
    "motorbinmepozu2",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
    },
    gender = "kadin"
},
["motorbinmepozu2"] = {
    "bikefistfemale@joker",
    "bikefistfemale_clip",
    "Motosiklete Binme Pozu",
    "motorbinmepozu",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
        Attachto = false,
        bone = 0,
        xPos = 0.0,
        yPos = 1.0,
        zPos = 0.0,
        xRot = 0.0,
        yRot = 0.0,
        zRot = 180.0,
    },
    gender = "erkek"
},

["sallanmapozu"] = {
    "chocoholic@couple46",
    "couple46_clip",
    "Sandalyede Oturup Sevgiyle Sallanma Pozu",
    "sallanmapozu2",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
    },
    gender = "kadin"
},
["sallanmapozu2"] = {
    "chocoholic@couple45",
    "couple45_clip",
    "Sandalyede Oturup Sevgiyle Sallanma Pozu",
    "sallanmapozu",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
        Attachto = true,
        bone = 0,
        xPos = 0.17,
        yPos = 0.35,
        zPos = 0.15,
        xRot = 0.0,
        yRot = 0.0,
        zRot = 30.0,
    },
    gender = "erkek"
},

["sevgilikesme"] = {
    "chocoholic@couple47_v3",
    "couple47_v3_clip",
    "Sandalyede Oturup Sevgiyle Bakma",
    "sevgilikesme2",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
    },
    gender = "kadin"
},
["sevgilikesme2"] = {
    "chocoholic@couple48_v3",
    "couple48_v3_clip",
    "Sandalyede Oturup Sevgiyle Bakma 2",
    "sevgilikesme",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
        Attachto = true,
        bone = 0,
        xPos = 0.0,
        yPos = 0.85,
        zPos = 0.3,
        xRot = -5.0,
        yRot = 0.0,
        zRot = 0.0,
    },
    gender = "erkek"
},
["sevgiliyegitme"] = {
    "chocoholic@couple50",
    "couple50_clip",
    "Yuruyerek Sevgiyle Gitme",
    "sevgiliyegitme2",
    AnimationOptions = {
        EmoteMoving = true,
        EmoteLoop = true,
    },
    gender = "kadin"
},
["sevgiliyegitme2"] = {
    "chocoholic@couple49",
    "couple49_clip",
    "Yuruyerek Sevgiyle Gitme 2",
    "sevgiliyegitme",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
        Attachto = true,
        bone = 0,
        xPos = -0.34,
        yPos = -0.19,
        zPos = 0.0,
        xRot = 0.0,
        yRot = 0.0,
        zRot = 5.0,
    },
    gender = "erkek"
},

["opusmesevgipozu"] = {
    "chocoholic@couple51",
    "couple51_clip",
    "Opusme Sevgi Pozu",
    "opusmesevgipozu2",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
    },
    gender = "kadin"
},
["opusmesevgipozu2"] = {
    "chocoholic@couple52",
    "couple52_clip",
    "Opusme Sevgi Pozu 2",
    "opusmesevgipozu",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
        Attachto = true,
        bone = 0,
        xPos = 0.0,
        yPos = 0.30,
        zPos = -0.1,
        xRot = 0.0,
        yRot = 0.0,
        zRot = 180.0,
    },
    gender = "erkek"
},
["opusmesevgipozu3"] = {
    "chocoholic@couple54",
    "couple54_clip",
    "Opusme Sevgi Pozu 3",
    "opusmesevgipozu4",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
    },
    gender = "kadin"
},
["opusmesevgipozu4"] = {
    "chocoholic@couple53",
    "couple53_clip",
    "Opusme Sevgi Pozu 4",
    "opusmesevgipozu3",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
        Attachto = true,
        bone = 0,
        xPos = 0.0,
        yPos = 0.28,
        zPos = -0.08,
        xRot = 0.0,
        yRot = 0.0,
        zRot = 50.0,
    },
    gender = "erkek"
},

["opusmesevgipozu5"] = {
    "chocoholic@couple55",
    "couple55_clip",
    "Opusme Sevgi Pozu 5",
    "opusmesevgipozu6",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
    },
    gender = "kadin"
},
["opusmesevgipozu6"] = {
    "chocoholic@couple56",
    "couple56_clip",
    "Opusme Sevgi Pozu 6",
    "opusmesevgipozu5",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
        Attachto = true,
        bone = 0,
        xPos = 0.0,
        yPos = 0.32,
        zPos = -0.05,
        xRot = 0.0,
        yRot = 0.0,
        zRot = 180.0,
    },
    gender = "erkek"
},

["duvardaopusmespozu"] = {
    "wand_pose_01@sharror",
    "wand_pose_01_clip",
    "Duvarda Opusme Sevgi Pozu",
    "duvardaopusmespozu2",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
    },
    gender = "kadin"
},
["duvardaopusmespozu2"] = {
    "wand_pose_02@sharror",
    "wand_pose_02_clip",
    "Duvarda Opusme Sevgi Pozu 2",
    "duvardaopusmespozu",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
        Attachto = true,
        bone = 0,
        xPos = -0.14,
        yPos = -0.2,
        zPos = 0.0,
        xRot = 0.0,
        yRot = 0.0,
        zRot = 180.0,
    },
    gender = "erkek"
},

["asklayurume"] = {
    "chocoholic@couple57",
    "couple57_clip",
    "Askla Yurume Pozu",
    "asklayurume2",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
    },
    gender = "kadin"
},
["asklayurume2"] = {
    "chocoholic@couple58",
    "couple58_clip",
    "Askla Yurume Pozu 2",
    "asklayurume",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
        Attachto = true,
        bone = 0,
        xPos = -0.98,
        yPos = 0.0,
        zPos = 0.0,
        xRot = 0.0,
        yRot = 0.0,
        zRot = 0.0,
    },
    gender = "erkek"
},
["asklayurume3"] = {
    "chocoholic@couple59",
    "couple59_clip",
    "Askla Yurume Pozu 3",
    "asklayurume4",
    AnimationOptions = {
        EmoteMoving = true,
        EmoteLoop = true,
    },
    gender = "kadin"
},
["asklayurume4"] = {
    "chocoholic@couple60",
    "couple60_clip",
    "Askla Yurume Pozu 4",
    "asklayurume3",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
        Attachto = true,
        bone = 0,
        xPos = 0.0,
        yPos = 0.24,
        zPos = 1.2,
        xRot = 0.0,
        yRot = 0.0,
        zRot = 0.0,
    },
    gender = "erkek"
},


["oturarakaskpozu"] = {
    "chocoholic@couple61",
    "couple61_clip",
    "Oturarak Ask Pozu",
    "oturarakaskpozu2",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
    },
    gender = "kadin"
},
["oturarakaskpozu2"] = {
    "chocoholic@couple62",
    "couple62_clip",
    "Oturarak Ask Pozu 2",
    "oturarakaskpozu",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
        Attachto = true,
        bone = 0,
        xPos = -0.2,
        yPos = 0.5,
        zPos = 0.0,
        xRot = 118.0,
        yRot = -215.0,
        zRot = 210.0,
    },
    gender = "erkek"
},


["ayaktaaskpozu"] = {
    "chocoholic@couple63",
    "couple63_clip",
    "Ayak Uzerinde Ask Pozu",
    "footloveposef",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
    },
    gender = "kadin"
},
["ayaktaaskpozu2"] = {
    "chocoholic@couple64",
    "couple64_clip",
    "Ayak Uzerinde Ask Pozu 2",
    "footloveposem",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
        Attachto = true,
        bone = 0,
        xPos = 0.0,
        yPos = 0.09,
        zPos = 0.48,
        xRot = 0.0,
        yRot = 0.0,
        zRot = 180.0,
    },
    gender = "erkek"
},
["ayaktaaskpozu3"] = {
    "schoko3@sharror",
    "schoko3_clip",
    "Ayak Uzerinde Ask Pozu 3",
    "ayaktaaskpozu4",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
    },
    gender = "kadin"
},
["ayaktaaskpozu4"] = {
    "schoko4@sharror",
    "schoko4_clip",
    "Ayak Uzerinde Ask Pozu 4",
    "ayaktaaskpozu3",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
        Attachto = true,
        bone = 0,
        xPos = 0.0,
        yPos = 0.85,
        zPos = 0.0,
        xRot = 0.0,
        yRot = 0.0, 
        zRot = 0.0,
    },
    gender = "erkek"
},

["oturarakaskpozu3"] = {
    "schoko7@sharror",
    "schoko7_clip",
    "Oturarak Ask Pozu 3",
    "oturarakaskpozu4",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
    },
    gender = "kadin"
},
["oturarakaskpozu4"] = {
    "schoko8@sharror",
    "schoko8_clip",
    "Oturarak Ask Pozu 4",
    "oturarakaskpozu3",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
        Attachto = true,
        bone = 0,
        xPos = 0.0,
        yPos = 0.0,
        zPos = 0.7,
        xRot = -7.0,
        yRot = 0.0,
        zRot = 0.0,
    },
    gender = "erkek"
},


["oturarakaskpozu5"] = {
    "couplem4@spider",
    "couplem4_clip",
    "Oturarak Ask Pozu 5",
    "oturarakaskpozu6",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
        bone = 0,
        zPos = -5.0,
    },
    gender = "kadin"
},
["oturarakaskpozu6"] = {
    "couple4@spider",
    "couple4_clip",
    "Oturarak Ask Pozu 6",
    "oturarakaskpozu5",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
        Attachto = true,
        bone = 0,
        xPos = 0.0,
        yPos = 0.55,
        zPos = 0.38,
        xRot = 0.0,
        yRot = 0.0,
        zRot = 0.0,
    },
    gender = "erkek"
},


["duvaraskpozu"] = {
    "couple_wall_01@sharror",
    "couple_wall_01_clip",
    "Duvar Ask Pozu",
    "duvaraskpozu2",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
    },
    gender = "kadin"
},
["duvaraskpozu2"] = {
    "couple_wall_02@sharror",
    "couple_wall_02_clip",
    "Duvar Ask Pozu 2",
    "duvaraskpozu",
    AnimationOptions = {    
        EmoteMoving = false,
        EmoteLoop = true,
        Attachto = true,
        bone = 0,
        xPos = 0.82,
        yPos = -0.21,
        zPos = 0.03,
        xRot = 0.0,
        yRot = 0.0,
        zRot = 180.0,
    },
    gender = "erkek"
},

["oturarakaskpozu7"] = {
    "couplebench_m@gengaranimation",
    "couplebench_m_clip",
    "Oturarak Ask Pozu 7",
    "oturarakaskpozu8",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
    },
    gender = "kadin"
},
["oturarakaskpozu8"] = {
    "couplebench_f@gengaranimation",
    "couplebench_f_clip",
    "Oturarak Ask Pozu 8",
    "oturarakaskpozu7",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
        Attachto = true,
        bone = 0,
        xPos = -1.45,
        yPos = 0.81,
        zPos = 0.35,
        xRot = 0.0,
        yRot = 0.0,
        zRot = 0.0,
    },
    gender = "erkek"
},


["oturarakaskpozu9"] = {
    "anim@male_couple_01",
    "m_couple_01_clip",
    "Oturarak Ask Pozu 9",
    "oturarakaskpozu10",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
    },
    gender = "kadin"
},
["oturarakaskpozu10"] = {
    "anim@female_couple_01",
    "f_couple_01_clip",
    "Oturarak Ask Pozu 10",
    "oturarakaskpozu9",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
        Attachto = true,
        bone = 0,
        xPos = 0.0,
        yPos = 0.47,
        zPos = 0.8,
        xRot = -15.0,
        yRot = 0.0,
        zRot = 0.0,
    },
    gender = "erkek"
},


["askpozu"] = {
    "anim@male_couple_02",
    "m_couple_02_clip",
    "Ask Pozu",
    "askpozu2",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
    },
    gender = "kadin"
},
["askpozu2"] = {
    "anim@female_couple_02",
    "f_couple_02_clip",
    "Ask Pozu 2",
    "askpozu",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
        Attachto = true,
        bone = 0,
        xPos = -0.5,
        yPos = 0.0,
        zPos = 0.0,
        xRot = 0.0,
        yRot = 0.0,
        zRot = 0.0,
    },
    gender = "erkek"
},
["askpozu3"] = {
    "anim@male_couple_03",
    "m_couple_03_clip",
    "Ask Pozu 3",
    "askpozu4",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
    },
    gender = "kadin"
},
["askpozu4"] = {
    "anim@female_couple_03",
    "f_couple_03_clip",
    "Ask Pozu 4",
    "askpozu3",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
        Attachto = true,
        bone = 0,
        xPos = 0.0,
        yPos = 0.13,
        zPos = 0.0,
        xRot = 0.0,
        yRot = 0.0,
        zRot = 95.0,
    },
    gender = "erkek"
},


["askpozu5"] = {
    "anim@male_couple_03_b",
    "m_couple_03_b_clip",
    "Ask Pozu 5",
    "askpozu6",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
    },
    gender = "kadin"
},
["askpozu6"] = {
    "anim@female_couple_03_b",
    "f_couple_03_b_clip",
    "Ask Pozu 6",
    "askpozu5",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
        Attachto = true,
        bone = 0,
        xPos = 0.0,
        yPos = 0.13,
        zPos = 0.0,
        xRot = 0.0,
        yRot = 0.0,
        zRot = 95.0,
    },
    gender = "erkek"
},


["askpozu7"] = {
    "anim@male_couple_04",
    "m_couple_04_clip",
    "Ask Pozu 7",
    "askpozu8",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
    },
    gender = "kadin"
},
["askpozu8"] = {
    "anim@female_couple_04",
    "f_couple_04_clip",
    "Ask Pozu 8",
    "askpozu7",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
        Attachto = true,
        bone = 0,
        xPos = 0.0,
        yPos = 0.26,
        zPos = 0.0,
        xRot = 0.0,
        yRot = 0.0,
        zRot = 0.0,
        Prop = 'prop_phone_ing_03',
        PropBone = 28422,
        PropPlacement = {
            0.1,
            0.03,
            0.0,
            70.0,
            20.0,
            -180.0,
        },
    },
    gender = "erkek"
},


["askpozu9"] = {
    "anim@male_couple_05",
    "m_couple_05_clip",
    "Ask Pozu 9",
    "askpozu10",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
        Prop = 'prop_phone_ing_03',
        PropBone = 60309,
        PropPlacement = {
            0.14,
            0.04,
            0.01,
            10.0,
            112.0,
            -180.0,
        },
    },
    gender = "kadin"
},
["askpozu10"] = {
    "anim@female_couple_05",
    "f_couple_05_clip",
    "Ask Pozu 10",
    "askpozu9",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
        Attachto = true,
        bone = 0,
        xPos = 0.0,
        yPos = 0.9,
        zPos = -0.3,
        xRot = -90.0,
        yRot = 0.0,
        zRot = 0.0,
        Prop = 'prop_phone_ing_03',
        PropBone = 60309,
        PropPlacement = {
            0.08,
            0.019,
            0.03,
            30.0,
            98.0,
            -160.0,
        },
    },
    gender = "erkek"
},


["askpozu11"] = {
    "anim@male_couple_06",
    "m_couple_06_clip",
    "Ask Pozu 11",
    "askpozu12",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
    },
    gender = "kadin"
},
["askpozu12"] = {
    "anim@female_couple_06",
    "f_couple_06_clip",
    "Ask Pozu 12",
    "askpozu11",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
        Attachto = true,
        bone = 0,
        xPos = 0.0,
        yPos = 0.62,
        zPos = -0.14,
        xRot = -50.0,
        yRot = 0.0,
        zRot = 0.0,
    },
    gender = "erkek"
},


["askpozu13"] = {
    "anim@male_couple_07",
    "m_couple_07_clip",
    "Ask Pozu 13",
    "askpozu14",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
    },
    gender = "kadin"
},
["askpozu14"] = {
    "anim@female_couple_07",
    "f_couple_07_clip",
    "Ask Pozu 14",
    "askpozu13",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
        Attachto = true,
        bone = 0,
        xPos = 0.0,
        yPos = 0.72,
        zPos = 0.1,
        xRot = 0.0,
        yRot = 0.0,
        zRot = 0.0,
        Prop = 'prop_phone_ing_03',
        PropBone = 6286,
        PropPlacement = {
            0.12,
            0.016,
            -0.034,
            0.0,
            90.0,
            -180.0,
        },
    },
    gender = "erkek"
},
["askpozu15"] = {
    "myu@fm_couple2_2",
    "fm_couple2_m_clip",
    "Ask Pozu 15",
    "askpozu17",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
    },
    gender = "kadin"
},
["askpozu16"] = {
    "myu@fm_couple2_1",
    "fm_couple2_f_clip",
    "Ask Pozu 16",
    "askpozu15",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
        Attachto = true,
        bone = 0,
        xPos = 0.56,
        yPos = 0.1,
        zPos = -0.15,
        xRot = 0.0,
        yRot = 0.0,
        zRot = 95.0,
    },
    gender = "erkek"
},

["askpozu17"] = {
    "m_engagement@d3vilros3",
    "m_engagement_clip",
    "Ask Pozu 17",
    "askpozu18",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
    },
    gender = "kadin"
},
["askpozu18"] = {
    "f_engagement@d3vilros3",
    "f_engagement_clip",
    "Ask Pozu 18",
    "askpozu16",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
        Attachto = true,
        bone = 0,
        xPos = -0.1,
        yPos = 0.32,
        zPos = 0.0,
        xRot = 0.0,
        yRot = 0.0,
        zRot = 189.0,
    },
    gender = "erkek"
},
["askpozu19"] = {
    "mx@couple6_2_a",
    "mx@couple6_2_a_clip",
    "Ask Pozu 19",
    "askpozu20",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
    },
    gender = "kadin"
},
["askpozu20"] = {
    "mx@couple6_2_b",
    "mx@couple6_2_b_clip",
    "Ask Pozu 20",
    "askpozu19",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
        Attachto = true,
        bone = 0,
        xPos = -0.12,
        yPos = 0.3,
        zPos = -0.1,
        xRot = 28.0,
        yRot = 0.0,
        zRot = 0.0,
    },
    gender = "erkek"
},

["askpozu21"] = {
    "mx@couple6_3_a",
    "mx@couple6_3_a_clip",
    "Ask Pozu 21",
    "askpozu22",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
    },
    gender = "kadin"
},
["askpozu22"] = {
    "mx@couple6_3_b",
    "mx@couple6_3_b_clip",
    "Ask Pozu 22",
    "askpozu21",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
        Attachto = true,
        bone = 0,
        xPos = 0.52,
        yPos = 0.25,
        zPos = 0.05,
        xRot = 13.5,
        yRot = 0.0,
        zRot = 0.0,
    },
    gender = "erkek"
},
["askpozu23"] = {
    "mx@pack4.1_a",
    "mx@pack4.1_a_clip",
    "Ask Pozu 23",
    "askpozu24",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
    },
    gender = "kadin"
},
["askpozu24"] = {
    "mx@pack4.1_b",
    "mx@pack4.1_b_clip",
    "Ask Pozu 24",
    "askpozu23",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
        Attachto = true,
        bone = 0,
        xPos = 0.52,
        yPos = 0.0,
        zPos = 0.0,
        xRot = 0.0,
        yRot = 0.0,
        zRot = 0.0,
    },
    gender = "erkek"
},

["askpozu25"] = {
    "mx@couple4.2_a",
    "mx@couple4.2_a_clip",
    "Ask Pozu 25",
    "askpozu26",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
    },
    gender = "kadin"
},
["askpozu26"] = {
    "mx@couple4.2_b",
    "mx@couple4.2_b_clip",
    "Ask Pozu 26",
    "askpozu25",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
        Attachto = true,
        bone = 0,
        xPos = 0.0,
        yPos = 0.31,
        zPos = -0.02,
        xRot = 0.0,
        yRot = 0.0,
        zRot = 180.0,
    },
    gender = "erkek"
},
["askpozu27"] = {
    "mx@couple4.3_a",
    "mx@couple4.3_a_clip",
    "Ask Pozu 27",
    "askpozu28",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
    },
    gender = "kadin"
},
["askpozu28"] = {
    "mx@couple4.3_b",
    "mx@couple4.3_b_clip",
    "Ask Pozu 28",
    "askpozu27",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
        Attachto = true,
        bone = 0,
        xPos = 0.48,
        yPos = 0.02,
        zPos = -0.02,
        xRot = 0.0,
        yRot = 0.0,
        zRot = 152.0,
    },
    gender = "erkek"
},    

["askpozu29"] = {
    "mx@couple4.4_a",
    "mx@couple4.4_a_clip",
    "Ask Pozu 29",
    "askpozu30",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
    },
    gender = "kadin"
},
["askpozu30"] = {
    "mx@couple4.4_b",
    "mx@couple4.4_b_clip",
    "Ask Pozu 30",
    "askpozu29",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
        Attachto = true,
        bone = 0,
        xPos = 0.0,
        yPos = 1.47,
        zPos = 0.7,
        xRot = 0.1,
        yRot = 0.5,
        zRot = 0.0,
    },
    gender = "erkek"
},     

["askpozu31"] = {
    "mx@couple4.5_a",
    "mx@couple4.5_a_clip",
    "Ask Pozu 31",
    "askpozu32",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
    },
    gender = "kadin"
},
["askpozu32"] = {
    "mx@couple4.5_b",
    "mx@couple4.5_b_clip",
    "Ask Pozu 32",
    "askpozu31",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
        Attachto = true,
        bone = 0,
        xPos = 0.0,
        yPos = 0.3,
        zPos = 0.16,
        xRot = 0.0,
        yRot = 0.0,
        zRot = 180.0,
    },
    gender = "erkek"
},  
["askpozu33"] = {
    "couplemale_leancar@joker",
    "couplemale_leancar_clip",
    "Ask Pozu 33",
    "askpozu33",
    AnimationOptions = {
        EmoteMoving = false,
        EmoteLoop = true,
    },
    gender = "kadin"
},
}

--- DANCING EMOTES, SOME WITH PROPS ---

DP.Dances = {
    ["kadindans"] = {"femaledancesbygoldiemods2@animation", "femaledancesbygoldiemods2_clip", "Kadin Dansi", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["kadindans2"] = {"femaledancesbygoldiemods6@animation", "femaledancesbygoldiemods6_clip", "Kadin Dansi 2", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["kadindans3"] = {"femaledancesbygoldiemods7@animation", "femaledancesbygoldiemods7_clip", "Kadin Dansi 3", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["kadindans4"] = {"femaledancesbygoldiemods8@animation", "femaledancesbygoldiemods8_clip", "Kadin Dansi 4", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["kadindans5"] = {"femaledancesbygoldiemods8@animation", "femaledancesbygoldiemods8_clip", "Kadin Dansi 5", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
["kadindans6"] = {"femaledancesbygoldiemods30@animation", "femaledancesbygoldiemods30_clip", "Kadin Dansi 6", AnimationOptions =
{
    EmoteLoop = true,
    EmoteMoving = false,
}},
["kadindans7"] = {"femaledancesbygoldiemods31@animation", "femaledancesbygoldiemods31_clip", "Kadin Dansi 7", AnimationOptions =
{
    EmoteLoop = true,
    EmoteMoving = false,
}},
["kadindans8"] = {"femaledancesbygoldiemods39@animation", "femaledancesbygoldiemods39_clip", "Kadin Dansi 8", AnimationOptions =
{
    EmoteLoop = true,
    EmoteMoving = false,
}},
["kadindans9"] = {"femaledancesbygoldiemods49@animation", "femaledancesbygoldiemods49_clip", "Kadin Dansi 9", AnimationOptions =
{
    EmoteLoop = true,
    EmoteMoving = false,
}},
["kadindans10"] = {"femaledancesbygoldiemods40@animation", "femaledancesbygoldiemods40_clip", "Kadin Dansi 10", AnimationOptions =
{
    EmoteLoop = true,
    EmoteMoving = false,
}},
["kadindans11"] = {"femaledancesbygoldiemods52@animation", "femaledancesbygoldiemods52_clip", "Kadin Dansi 11", AnimationOptions =
{
    EmoteLoop = true,
    EmoteMoving = false,
}},
["kadindans12"] = {"femaledancesbygoldiemods11@animation", "femaledancesbygoldiemods11_clip", "Kadin Dansi 12", AnimationOptions =
{
    EmoteLoop = true,
    EmoteMoving = false,
}},
["kadindans13"] = {"femaledancesbygoldiemods13@animation", "femaledancesbygoldiemods13_clip", "Kadin Dansi 13", AnimationOptions =
{
    EmoteLoop = true,
    EmoteMoving = false,
}},
["kadindans14"] = {"femaledancesbygoldiemods15@animation", "femaledancesbygoldiemods15_clip", "Kadin Dansi 14", AnimationOptions =
{
    EmoteLoop = true,
    EmoteMoving = false,
}},
["kadindans15"] = {"femaledancesbygoldiemods18@animation", "femaledancesbygoldiemods18_clip", "Kadin Dansi 15", AnimationOptions =
{
    EmoteLoop = true,
    EmoteMoving = false,
}},
["kadindans16"] = {"femaledancesbygoldiemods21@animation", "femaledancesbygoldiemods21_clip", "Kadin Dansi 16", AnimationOptions =
{
    EmoteLoop = true,
    EmoteMoving = false,
}},
["kadindans17"] = {"femaledancesbygoldiemods24@animation", "femaledancesbygoldiemods24_clip", "Kadin Dansi 17", AnimationOptions =
{
    EmoteLoop = true,
    EmoteMoving = false,
}},
["kadindans18"] = {"femaledancesbygoldiemods27@animation", "femaledancesbygoldiemods27_clip", "Kadin Dansi 18", AnimationOptions =
{
    EmoteLoop = true,
    EmoteMoving = false,
}},
["bandodansi"] = {"divined@tdances@new", "dtdance1", "Bando Dansi", AnimationOptions =
{
   EmoteLoop = true,
}},
["bopdans"] = {"divined@tdances@new", "dtdance2", "Bop Dansi", AnimationOptions =
{
   EmoteLoop = true,
}},
["Bboydansi"] = {"divined@tdances@new", "dtdance3", "Bboy Dansi", AnimationOptions =
{
   EmoteLoop = true,
}},
["capoeiradansi"] = {"divined@tdances@new", "dtdance4", "Capoeira Dansi", AnimationOptions =
{
   EmoteLoop = true,
}},
["hiphopdansi"] = {"divined@tdances@new", "dtdance5", "Hip Hop Dansi", AnimationOptions =
{
   EmoteLoop = true,
}},
["hipsterdans"] = {"divined@tdances@new", "dtdance6", "Hipster Dansi", AnimationOptions =
{
   EmoteLoop = true,
}},
["hippiedans"] = {"divined@tdances@new", "dtdance7", "Hippie Dansi", AnimationOptions =
{
   EmoteLoop = true,
}},
["hiphoptaunt"] = {"divined@tdances@new", "dtdance8", "Hip Hop Taunt", AnimationOptions =
{
   EmoteLoop = true,
}},
["dalgadans"] = {"divined@tdances@new", "dtdance9", "Dalga Dansi", AnimationOptions =
{
   EmoteLoop = true,
}},
["meydandans"] = {"divined@tdances@new", "dtdance10", "Meydan Dansi", AnimationOptions =
{
   EmoteLoop = true,
}},
["ateslidans"] = {"divined@tdances@new", "dtdance11", "Atesli Dance", AnimationOptions =
{
   EmoteLoop = true,
}},
["hulahula"] = {"divined@tdances@new", "dtdance12", "Hula-Hula", AnimationOptions =
{
   EmoteLoop = true,
}},
["dabloop"] = {"divined@tdances@new", "dtdance13", "Dab Dongusu", AnimationOptions =
{
   EmoteLoop = true,
}},
["kraldans"] = {"divined@tdances@new", "dtdance14", "Kral Dansi", AnimationOptions =
{
   EmoteLoop = true,
}},
["danshatti"] = {"divined@tdances@new", "dtdance15", "Dans Hatti", AnimationOptions =
{
   EmoteLoop = true,
}},
["sihirliadam"] = {"divined@tdances@new", "dtdance16", "Sihirli Adam", AnimationOptions =
{
   EmoteLoop = true,
}},
["marat"] = {"divined@tdances@new", "dtdance17", "Marat", AnimationOptions =
{
   EmoteLoop = true,
}},
["ucubedans"] = {"divined@tdances@new", "dtdance18", "Ucube dansi", AnimationOptions =
{
   EmoteLoop = true,
}},
["yumusakdans"] = {"divined@tdances@new", "dtdance19", "Yumusak dans", AnimationOptions =
{
   EmoteLoop = true,
}},
["gosteridansi"] = {"divined@tdances@new", "dtdance20", "Gosteri Dansi", AnimationOptions =
{
   EmoteLoop = true,
}},
["fortnitedans"] = {"divined@tdances@new", "dtdance21", "Fortnite Dansi", AnimationOptions =
{
   EmoteLoop = true,
}},
["woahdance"] = {"divined@tdances@new", "dtdance22", "Woah Dansi", AnimationOptions =
{
   EmoteLoop = true,
}},
["drill"] = {"anim@amb@nightclub_island@dancers@crowddance_single_props@", "mi_dance_prop_13_v1_male^3", "Erkek Drill", AnimationOptions =
{
   EmoteLoop = true
}},
["drill2"] = {"anim@amb@nightclub_island@dancers@crowddance_groups@groupd@", "mi_dance_crowd_13_v2_male^1", "Erkek Drill 2", AnimationOptions =
{
   EmoteLoop = true
}},
["drill3"] = {"anim@amb@nightclub_island@dancers@crowddance_facedj@", "mi_dance_facedj_17_v2_male^4", "Erkek Drill 3", AnimationOptions =
{
   EmoteLoop = true
}},
["drill4"] = {"anim@amb@nightclub_island@dancers@crowddance_facedj@", "mi_dance_facedj_15_v2_male^4", "Erkek Drill 4", AnimationOptions =
{
   EmoteLoop = true
}},
["drill5"] = {"anim@amb@nightclub_island@dancers@crowddance_facedj@", "hi_dance_facedj_hu_15_v2_male^5", "Erkek Drill 5", AnimationOptions =
{
   EmoteLoop = true
}},
["drill6"] = {"anim@amb@nightclub_island@dancers@crowddance_facedj@", "hi_dance_facedj_hu_17_male^5", "Erkek Drill 6", AnimationOptions =
{
   EmoteLoop = true
}},
["drill7"] = {"anim@amb@nightclub@mini@dance@dance_solo@shuffle@", "high_right_up", "Yalniz Drill 1", AnimationOptions =
{
   EmoteLoop = true
}},
["drill8"] = {"anim@amb@nightclub@mini@dance@dance_solo@shuffle@", "med_center", "Yalniz Drill 2", AnimationOptions =
{
   EmoteLoop = true
}},
["drill9"] = {"anim@amb@nightclub@mini@dance@dance_solo@shuffle@", "high_right_down", "Yalniz Drill 3", AnimationOptions =
{
   EmoteLoop = true
}}, 
["drill10"] = {"anim@amb@nightclub@mini@dance@dance_solo@shuffle@", "high_center", "Yalniz Drill 4", AnimationOptions =
{
   EmoteLoop = true
}}, 
["drill11"] = {"anim@amb@nightclub@mini@dance@dance_solo@shuffle@", "high_left_down", "Yalniz Drill 5", AnimationOptions =
{
   EmoteLoop = true
}},
["maymundansi3"] = {"anim@amb@nightclub@mini@dance@dance_solo@techno_monkey@", "med_center_down", "Maymun Dansi 3", AnimationOptions =
{
   EmoteLoop = true
}},
["boxdans"] = {"anim@amb@nightclub@mini@dance@dance_solo@beach_boxing@", "med_right_down", "Box Dansi Yalniz", AnimationOptions =
{
   EmoteLoop = true
}},
["yavasdans"] = {"anim@amb@casino@mini@dance@dance_solo@female@var_a@", "low_center", "Yavas Dans · Kadin ", AnimationOptions =
{
   EmoteLoop = true
}},
["yavasdans2"] = {"anim@amb@casino@mini@dance@dance_solo@female@var_a@", "high_center", "Yavas Dans · Kadin 2", AnimationOptions =
{
   EmoteLoop = true
}},
["jhiphop"] = {"anim@amb@nightclub@mini@dance@dance_paired@dance_d@", "ped_a_dance_idle", "Hip Hop Dans", AnimationOptions =
{
   EmoteLoop = true
}},
["jhiphop2"] = {"anim@amb@nightclub@mini@dance@dance_paired@dance_b@", "ped_a_dance_idle", "Hip Hop Dans 2", AnimationOptions =
{
   EmoteLoop = true
}},
["jhiphop3"] = {"anim@amb@nightclub@mini@dance@dance_paired@dance_a@", "ped_a_dance_idle", "Hip Hop Dans 3", AnimationOptions =
{
   EmoteLoop = true
}},
["dj"] = {"anim@amb@nightclub_island@dancers@crowddance_facedj_transitions@from_low_intensity", "trans_dance_facedj_li_to_mi_11_v1_male^3", "DJ Dans", AnimationOptions =
{
   EmoteLoop = true
}},
["clubdans"] = {"anim@amb@nightclub@mini@dance@dance_solo@female@var_a@", "high_center", "Club Dansi", AnimationOptions =
{
    EmoteLoop = true,
}},
["clubdans2"] = {"anim@amb@nightclub@mini@dance@dance_solo@female@var_a@", "high_center_up", "Club Dansi 2", AnimationOptions =
{
    EmoteLoop = true,
}},
["clubdans3"] = {"anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", "hi_dance_facedj_09_v2_female^1", "Club Dansi 3", AnimationOptions =
{
    EmoteLoop = true,
}},
["clubdans4"] = {"anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", "hi_dance_facedj_09_v2_female^3", "Club Dansi 4", AnimationOptions =
{
    EmoteLoop = true,
}},
["clubdans5"] = {"anim@amb@nightclub@mini@dance@dance_solo@female@var_a@", "high_center_up", "Club Dansi 5", AnimationOptions =
{
    EmoteLoop = true,
}},
["yavasdans3"] = {"anim@amb@nightclub@mini@dance@dance_solo@female@var_a@", "low_center", "Yavas Dans", AnimationOptions =
{
    EmoteLoop = true,
}},
["yavasdans4"] = {"anim@amb@nightclub@mini@dance@dance_solo@female@var_a@", "low_center_down", "Yavas Dans 2", AnimationOptions =
{
    EmoteLoop = true,
}},
["yavasdans5"] = {"anim@amb@nightclub@mini@dance@dance_solo@female@var_b@", "low_center", "Yavas Dans 3", AnimationOptions =
{
    EmoteLoop = true,
}},
["dans"] = {"anim@amb@nightclub@dancers@podium_dancers@", "hi_dance_facedj_17_v2_male^5", "Dans", AnimationOptions =
{
    EmoteLoop = true,
}},
["dans2"] = {"anim@amb@nightclub@mini@dance@dance_solo@male@var_b@", "high_center_down", "Dans 2", AnimationOptions =
{
    EmoteLoop = true,
}},
["dans3"] = {"anim@amb@nightclub@mini@dance@dance_solo@male@var_a@", "high_center", "Dans 3", AnimationOptions =
{
    EmoteLoop = true,
}},
["dans4"] = {"anim@amb@nightclub@mini@dance@dance_solo@male@var_b@", "high_center_up", "Dans 4", AnimationOptions =
{
    EmoteLoop = true,
}},
["dansust"] = {"anim@amb@nightclub@mini@dance@dance_solo@female@var_b@", "high_center", "Dans Ust", AnimationOptions =
{
    EmoteLoop = true,
    EmoteMoving = true,
}},
["dansust2"] = {"anim@amb@nightclub@mini@dance@dance_solo@female@var_b@", "high_center_up", "Dans Ust 2", AnimationOptions =
{
    EmoteLoop = true,
    EmoteMoving = true,
}},
["dansUtangac"] = {"anim@amb@nightclub@mini@dance@dance_solo@male@var_a@", "low_center", "Dans Utangac", AnimationOptions =
{
    EmoteLoop = true,
}},
["dansUtangac2"] = {"anim@amb@nightclub@mini@dance@dance_solo@female@var_b@", "low_center_down", "Dans Utangac 2", AnimationOptions =
{
    EmoteLoop = true,
}},
["yavasdans6"] = {"anim@amb@nightclub@mini@dance@dance_solo@male@var_b@", "low_center", "Yavas Dans 4", AnimationOptions =
{
    EmoteLoop = true,
}},
["aptaldans"] = {"rcmnigel1bnmt_1b", "dance_loop_tyler", "Aptal Dansi", AnimationOptions =
{
    EmoteLoop = true,
}},
["dans5"] = {"misschinese2_crystalmazemcs1_cs", "dance_loop_tao", "Dans 5", AnimationOptions =
{
    EmoteLoop = true,
}},
["dans6"] = {"misschinese2_crystalmazemcs1_ig", "dance_loop_tao", "Dans 6", AnimationOptions =
{
    EmoteLoop = true,
}},
["dans7"] = {"missfbi3_sniping", "dance_m_default", "Dans 7", AnimationOptions =
{
    EmoteLoop = true,
}},
["aptaldans2"] = {"special_ped@mountain_dancer@monologue_3@monologue_3a", "mnt_dnc_buttwag", "Aptal Dansi 2", AnimationOptions =
{
    EmoteLoop = true,
}},
["aptaldans3"] = {"move_clown@p_m_zero_idles@", "fidget_short_dance", "Aptal Dansi 3", AnimationOptions =
{
    EmoteLoop = true,
}},
["aptaldans4"] = {"move_clown@p_m_two_idles@", "fidget_short_dance", "Aptal Dansi 4", AnimationOptions =
{
    EmoteLoop = true,
}},
["aptaldans5"] = {"anim@amb@nightclub@lazlow@hi_podium@", "danceidle_hi_11_buttwiggle_b_laz", "Aptal Dansi 5", AnimationOptions =
{
    EmoteLoop = true,
}},
["aptaldans6"] = {"timetable@tracy@ig_5@idle_a", "idle_a", "Aptal Dansi 6", AnimationOptions =
{
    EmoteLoop = true,
}},
["aptaldans7"] = {"timetable@tracy@ig_8@idle_b", "idle_d", "Aptal Dansi 7", AnimationOptions =
{
    EmoteLoop = true,
}},
["dans8"] = {"anim@amb@nightclub@mini@dance@dance_solo@female@var_a@", "med_center_up", "Dans 8", AnimationOptions =
{
    EmoteLoop = true,
}},
["aptaldans8"] = {"anim@mp_player_intcelebrationfemale@the_woogie", "the_woogie", "Aptal Dansi 8", AnimationOptions =
{
    EmoteLoop = true
}},
["aptaldans9"] = {"anim@amb@casino@mini@dance@dance_solo@female@var_b@", "high_center", "Aptal Dansi 9", AnimationOptions =
{
    EmoteLoop = true
}},
["dans9"] = {"anim@amb@casino@mini@dance@dance_solo@female@var_a@", "med_center", "Dans 9", AnimationOptions =
{
    EmoteLoop = true
}},

    -----------------------------------------------
    ["cubukludans"] = {"anim@amb@nightclub@lazlow@hi_railing@", "ambclub_13_mi_hi_sexualgriding_laz", "Cubuklu Dans", AnimationOptions =
    {
        Prop = 'ba_prop_battle_glowstick_01',
        PropBone = 28422,
        PropPlacement = {0.0700,0.1400,0.0,-80.0,20.0},
        SecondProp = 'ba_prop_battle_glowstick_01',
        SecondPropBone = 60309,
        SecondPropPlacement = {0.0700,0.0900,0.0,-120.0,-20.0},
        EmoteLoop = true,
        EmoteMoving = true,
    }},
    ["cubukludans2"] = {"anim@amb@nightclub@lazlow@hi_railing@", "ambclub_12_mi_hi_bootyshake_laz", "Cubuklu Dans 3", AnimationOptions =
    {
        Prop = 'ba_prop_battle_glowstick_01',
        PropBone = 28422,
        PropPlacement = {0.0700,0.1400,0.0,-80.0,20.0},
        SecondProp = 'ba_prop_battle_glowstick_01',
        SecondPropBone = 60309,
        SecondPropPlacement = {0.0700,0.0900,0.0,-120.0,-20.0},
        EmoteLoop = true,
    }},
    ["cubukludans3"] = {"anim@amb@nightclub@lazlow@hi_railing@", "ambclub_09_mi_hi_bellydancer_laz", "Cubuklu Dans 4", AnimationOptions =
    {
        Prop = 'ba_prop_battle_glowstick_01',
        PropBone = 28422,
        PropPlacement = {0.0700,0.1400,0.0,-80.0,20.0},
        SecondProp = 'ba_prop_battle_glowstick_01',
        SecondPropBone = 60309,
        SecondPropPlacement = {0.0700,0.0900,0.0,-120.0,-20.0},
        EmoteLoop = true,
    }},
    ["atdans"] = {"anim@amb@nightclub@lazlow@hi_dancefloor@", "dancecrowd_li_15_handup_laz", "Atla Dans", AnimationOptions =
    {
        Prop = "ba_prop_battle_hobby_horse",
        PropBone = 28422,
        PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
        EmoteLoop = true,
        EmoteMoving = true,
    }},
    ["atdans2"] = {"anim@amb@nightclub@lazlow@hi_dancefloor@", "crowddance_hi_11_handup_laz", "Atla Dans 2", AnimationOptions =
    {
        Prop = "ba_prop_battle_hobby_horse",
        PropBone = 28422,
        PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
        EmoteLoop = true,
    }},
    ["atdans3"] = {"anim@amb@nightclub@lazlow@hi_dancefloor@", "dancecrowd_li_11_hu_shimmy_laz", "Atla Dans 3", AnimationOptions =
    {
        Prop = "ba_prop_battle_hobby_horse",
        PropBone = 28422,
        PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
        EmoteLoop = true,
    }},
    ["varsayilandans"] = {"custom@dancemoves", "dancemoves", "Varsayilan Dans", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    
    ["discodansi"] = {"custom@disco_dance", "disco_dance", "Disco Dansi", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    
    ["electrodans"] = {"custom@electroshuffle_original", "electroshuffle_original", "Electro Dans", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    
    ["electrodans2"] = {"custom@electroshuffle", "electroshuffle", "Electro Dans 2", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    
    ["vuronadans"] = {"custom@hitit", "hitit", "Vur Dans", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    
    ["fortnitedans2"] = {"custom@floss", "floss", "Fortnite Dansi 2", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    
    ["meyvesuyudans"] = {"custom@orangejustice", "orangejustice", "MeyveSuyu Dansi", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    
    ["ldans"] = {"custom@take_l", "take_l", "L Dansi", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["haindans"] = {"custom@renegade", "renegade", "Hain Dans", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["vahsidans"] = {"custom@savage", "savage", "Vahsi Dans", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["akimdansi"] = {"custom@sayso", "sayso", "Akim Dansi", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["kayarakdans"] = {"custom@toosie_slide", "toosie_slide", "Kayarak Dans", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    -----------------------------------------------
    ["dans"] = {
        "anim@amb@nightclub@dancers@podium_dancers@",
        "hi_dance_facedj_17_v2_male^5",
        "dans",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dans2"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@male@var_b@",
        "high_center_down",
        "Dans 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dans3"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@male@var_a@",
        "high_center",
        "Dans 3",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dans4"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@male@var_b@",
        "high_center_up",
        "Dans 4",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dans5"] = {
        "anim@amb@casino@mini@dance@dance_solo@female@var_a@",
        "med_center",
        "Dans 5",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dans6"] = {
        "misschinese2_crystalmazemcs1_cs",
        "dance_loop_tao",
        "Dans 6",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dans7"] = {
        "misschinese2_crystalmazemcs1_ig",
        "dance_loop_tao",
        "Dans 7",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dans8"] = {
        "missfbi3_sniping",
        "dance_m_default",
        "Dans 8",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dans9"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@",
        "med_center_up",
        "Dans 9",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["clubdans"] = {
        "anim@amb@nightclub@dancers@solomun_entourage@",
        "mi_dance_facedj_17_v1_female^1",
        "Club Dansi",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["clubdans2"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@",
        "high_center",
        "Club Dansi 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["clubdans3"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@",
        "high_center_up",
        "Club Dansi 3",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["clubdans4"] = {
        "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity",
        "hi_dance_facedj_09_v2_female^1",
        "Club Dansi 4",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["clubdans5"] = {
        "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity",
        "hi_dance_facedj_09_v2_female^3",
        "Club Dansi 5",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["clubdans6"] = {
        "anim@amb@nightclub_island@dancers@beachdance@",
        "hi_idle_a_m03",
        "Club Dansi 6",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["clubdans7"] = {
        "anim@amb@nightclub_island@dancers@beachdance@",
        "hi_idle_a_m05",
        "Club Dansi 7",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["clubdans8"] = {
        "anim@amb@nightclub_island@dancers@beachdance@",
        "hi_idle_a_m02",
        "Club Dansi 8",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["clubdans9"] = {
        "anim@amb@nightclub_island@dancers@beachdance@",
        "hi_idle_b_f01",
        "Club Dansi 9",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["clubdans10"] = {
        "anim@amb@nightclub_island@dancers@club@",
        "hi_idle_a_f02",
        "Club Dansi 10",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["clubdans11"] = {
        "anim@amb@nightclub_island@dancers@club@",
        "hi_idle_b_m03",
        "Club Dansi 11",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["clubdans12"] = {
        "anim@amb@nightclub_island@dancers@club@",
        "hi_idle_d_f01",
        "Club Dansi 12",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["clubdans13"] = {
        "anim@amb@nightclub_island@dancers@crowddance_facedj@",
        "mi_dance_facedj_17_v2_male^4",
        "Club Dansi 13",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["clubdans14"] = {
        "anim@amb@nightclub_island@dancers@crowddance_single_props@",
        "mi_dance_prop_13_v1_male^3",
        "Club Dansi 14",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["clubdans15"] = {
        "anim@amb@nightclub_island@dancers@crowddance_groups@groupd@",
        "mi_dance_crowd_13_v2_male^1",
        "Club Dansi 15",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["clubdans16"] = {
        "anim@amb@nightclub_island@dancers@crowddance_facedj@",
        "mi_dance_facedj_15_v2_male^4",
        "Club Dansi 16 ",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["clubdans17"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@",
        "high_center_up",
        "Club Dansi 17",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["clubdans18"] = {
        "anim@amb@nightclub_island@dancers@crowddance_facedj@",
        "hi_dance_facedj_hu_15_v2_male^5",
        "Club Dansi 18",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["clubdans19"] = {
        "anim@amb@nightclub_island@dancers@crowddance_facedj@",
        "hi_dance_facedj_hu_17_male^5",
        "Club Dansi 19",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["clubdans20"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@shuffle@",
        "high_center",
        "Club Dansi 20",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["clubdans21"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@shuffle@",
        "high_left_down",
        "Club Dansi 21",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["alkolludans"] = {
        "anim@amb@nightclub_island@dancers@beachdanceprop@",
        "mi_idle_c_m01",
        "Alkollu Dans (Bira)",
        AnimationOptions = {
            Prop = 'prop_beer_amopen',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.00,
                0.0,
                0.0,
                0.0,
                20.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["alkolludans2"] = {
        "anim@amb@nightclub_island@dancers@beachdanceprop@",
        "mi_loop_f1",
        "Alkollu Dans 2 (Sarap)",
        AnimationOptions = {
            Prop = 'p_wine_glass_s',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                -0.0900,
                0.0,
                0.0,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["alkolludans3"] = {
        "anim@amb@nightclub_island@dancers@beachdanceprop@",
        "mi_loop_m04",
        "Alkollu Dans 3 (Viski)",
        AnimationOptions = {
            Prop = 'ba_prop_battle_whiskey_opaque_s',
            PropBone = 28422,
            PropPlacement = {
                -0.0100,
                0.00,
                0.0,
                0.0,
                0.0,
                10.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["alkolludans4"] = {
        "anim@amb@nightclub_island@dancers@beachdanceprops@male@",
        "mi_idle_b_m04",
        "Alkollu Dans 4 (Viski)",
        AnimationOptions = {
            Prop = 'ba_prop_battle_whiskey_opaque_s',
            PropBone = 28422,
            PropPlacement = {
                -0.0100,
                0.00,
                0.0,
                0.0,
                0.0,
                10.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["alkolludans5"] = {
        "anim@amb@nightclub_island@dancers@crowddance_single_props@",
        "hi_dance_prop_09_v1_female^3",
        "Alkollu Dans 5 (Sarap)",
        AnimationOptions = {
            Prop = 'p_wine_glass_s',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                -0.0900,
                0.0,
                0.0,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["alkolludans6"] = {
        "anim@amb@nightclub_island@dancers@crowddance_single_props@",
        "hi_dance_prop_09_v1_male^3",
        "Alkollu Dans 6 (Bira)",
        AnimationOptions = {
            Prop = 'prop_beer_logopen',
            PropBone = 28422,
            PropPlacement = {
                0.0090,
                0.0010,
                -0.0310,
                180.0,
                180.0,
                -69.99
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["alkolludans7"] = {
        "anim@amb@nightclub_island@dancers@crowddance_single_props@",
        "hi_dance_prop_11_v1_female^3",
        "Alkollu Dans 7 (Sarap)",
        AnimationOptions = {
            Prop = 'p_wine_glass_s',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                -0.0900,
                0.0,
                0.0,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["alkolludans8"] = {
        "anim@amb@nightclub_island@dancers@crowddance_single_props@",
        "hi_dance_prop_11_v1_female^1",
        "Alkollu Dans 8 (Sarap)",
        AnimationOptions = {
            Prop = 'p_wine_glass_s',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                -0.0900,
                0.0,
                0.0,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["yavasdans3"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@",
        "low_center",
        "Yavas Dans",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["yavasdans4"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@",
        "low_center_down",
        "Yavas Dans 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["yavasdans5"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@female@var_b@",
        "low_center",
        "Yavas Dans 3",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dansust"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@female@var_b@",
        "high_center",
        "Dans Ust",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["dansust2"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@female@var_b@",
        "high_center_up",
        "Dans Ust 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["dansUtangac"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@male@var_a@",
        "low_center",
        "Dans Utangac",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dansUtangac2"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@female@var_b@",
        "low_center_down",
        "Dans Utangac 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["yavasdans6"] = {
        "anim@amb@nightclub@mini@dance@dance_solo@male@var_b@",
        "low_center",
        "Yavas Dans 4",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["aptaldans"] = {
        "rcmnigel1bnmt_1b",
        "dance_loop_tyler",
        "Aptal Dansi",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["aptaldans2"] = {
        "move_clown@p_m_zero_idles@",
        "fidget_short_dance",
        "Aptal Dansi 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["aptaldans3"] = {
        "move_clown@p_m_two_idles@",
        "fidget_short_dance",
        "Aptal Dansi 3",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["aptaldans4"] = {
        "anim@amb@nightclub@lazlow@hi_podium@",
        "danceidle_hi_11_buttwiggle_b_laz",
        "Aptal Dansi 4",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["aptaldans5"] = {
        "timetable@tracy@ig_5@idle_a",
        "idle_a",
        "Aptal Dansi 5",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["aptaldans6"] = {
        "timetable@tracy@ig_8@idle_b",
        "idle_d",
        "Aptal Dansi 6",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["aptaldans7"] = {
        "anim@amb@casino@mini@dance@dance_solo@female@var_b@",
        "med_center",
        "Aptal Dansi 7",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["aptaldans8"] = {
        "anim@amb@casino@mini@dance@dance_solo@female@var_b@",
        "high_center",
        "Aptal Dansi 8",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["aptaldans9"] = {
        "anim@mp_player_intcelebrationfemale@the_woogie",
        "the_woogie",
        "Aptal Dansi 9",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["yavasdans7"] = {
        "anim@mp_player_intupperuncle_disco",
        "idle_a",
        "Yavas Dans 5",
        AnimationOptions = {
            EmoteLoop = true,
            --			EmoteMoving = true,-- Removing the comment will allow for you to mix and match Dans emotes, ie /e danceold and /e Dans to control the bottom half of the body.
        }
    },
    ["cubukludans"] = {
    "anim@amb@nightclub@lazlow@hi_railing@",
    "ambclub_13_mi_hi_sexualgriding_laz",
    "Cubuklu Dans",
    AnimationOptions = {
        Prop = 'ba_prop_battle_glowstick_01',
        PropBone = 28422,
        PropPlacement = {
            0.0700,
            0.1400,
            0.0,
            -80.0,
            20.0
        },
        SecondProp = 'ba_prop_battle_glowstick_01',
        SecondPropBone = 60309,
        SecondPropPlacement = {
            0.0700,
            0.0900,
            0.0,
            -120.0,
            -20.0
        },
        EmoteLoop = true,
        EmoteMoving = true
    }
},
["cubukludans2"] = {
    "anim@amb@nightclub@lazlow@hi_railing@",
    "ambclub_12_mi_hi_bootyshake_laz",
    "Cubuklu Dans 2",
    AnimationOptions = {
        Prop = 'ba_prop_battle_glowstick_01',
        PropBone = 28422,
        PropPlacement = {
            0.0700,
            0.1400,
            0.0,
            -80.0,
            20.0
        },
        SecondProp = 'ba_prop_battle_glowstick_01',
        SecondPropBone = 60309,
        SecondPropPlacement = {
            0.0700,
            0.0900,
            0.0,
            -120.0,
            -20.0
        },
        EmoteLoop = true
    }
},
["cubukludans3"] = {
    "anim@amb@nightclub@lazlow@hi_railing@",
    "ambclub_09_mi_hi_bellydancer_laz",
    "Cubuklu Dans 3",
    AnimationOptions = {
        Prop = 'ba_prop_battle_glowstick_01',
        PropBone = 28422,
        PropPlacement = {
            0.0700,
            0.1400,
            0.0,
            -80.0,
            20.0
        },
        SecondProp = 'ba_prop_battle_glowstick_01',
        SecondPropBone = 60309,
        SecondPropPlacement = {
            0.0700,
            0.0900,
            0.0,
            -120.0,
            -20.0
        },
        EmoteLoop = true
    }
},    ["atdans"] = {
    "anim@amb@nightclub@lazlow@hi_dancefloor@",
    "dancecrowd_li_15_handup_laz",
    "Atla Dans",
    AnimationOptions = {
        Prop = "ba_prop_battle_hobby_horse",
        PropBone = 28422,
        PropPlacement = {
            0.0,
            0.0,
            0.0,
            0.0,
            0.0,
            0.0
        },
        EmoteLoop = true,
        EmoteMoving = true
    }
},
["atdans2"] = {
    "anim@amb@nightclub@lazlow@hi_dancefloor@",
    "crowddance_hi_11_handup_laz",
    "Atla Dans 2",
    AnimationOptions = {
        Prop = "ba_prop_battle_hobby_horse",
        PropBone = 28422,
        PropPlacement = {
            0.0,
            0.0,
            0.0,
            0.0,
            0.0,
            0.0
        },
        EmoteLoop = true
    }
},
["atdans3"] = {
    "anim@amb@nightclub@lazlow@hi_dancefloor@",
    "dancecrowd_li_11_hu_shimmy_laz",
    "Atla Dans 3",
    AnimationOptions = {
        Prop = "ba_prop_battle_hobby_horse",
        PropBone = 28422,
        PropPlacement = {
            0.0,
            0.0,
            0.0,
            0.0,
            0.0,
            0.0
        },
        EmoteLoop = true,
    }
    },    ["dalgadans"] = { -- Custom Emote By BoringNeptune
    "dancing_wave_part_one@anim",
    "wave_dance_1",
    "Dalga Dansi",
    AnimationOptions = {
        EmoteLoop = true
    }
},
["dalgadans2"] = { -- Custom Emote By BoringNeptune
    "dancing_wave_part_one@anim",
    "wave_dance_2",
    "Dalga Dansi 2",
    AnimationOptions = {
        EmoteLoop = true
    }
},
["dalgadans3"] = { -- Custom Emote By BoringNeptune
    "dancing_wave_part_one@anim",
    "wave_dance_3",
    "Dalga Dansi 3",
    AnimationOptions = {
        EmoteLoop = true
    }
},
["dalgadans4"] = { -- Custom Emote By BoringNeptune
    "dancing_wave_part_one@anim",
    "wave_dance_4",
    "Dalga Dansi 4",
    AnimationOptions = {
        EmoteLoop = true
    }
},
["dalgadans5"] = { -- Custom Emote By BoringNeptune
    "dancing_wave_part_one@anim",
    "tutankhamun_dance_1",
    "Dalga Dansi 5 - Tutankhamen",
    AnimationOptions = {
        EmoteLoop = true
    }
},
["dalgadans6"] = { -- Custom Emote By BoringNeptune
    "dancing_wave_part_one@anim",
    "tutankhamun_dance_2",
    "Dalga Dansi 6 - Tutankhamen 2",
    AnimationOptions = {
        EmoteLoop = true
    }
},
["dalgadans7"] = { -- Custom Emote By BoringNeptune
    "dancing_wave_part_one@anim",
    "snake_dance_1",
    "Dalga Dansi 7 - Snake Dance",
    AnimationOptions = {
        EmoteLoop = true
    }
},
["dalgadans8"] = { -- Custom Emote By BoringNeptune
    "dancing_wave_part_one@anim",
    "slide_dance",
    "Dalga Dansi 8 - Slide Dance",
    AnimationOptions = {
        EmoteLoop = true
    }
},
["dalgadans9"] = { -- Custom Emote By BoringNeptune
    "dancing_wave_part_one@anim",
    "slide_dance_2",
    "Dalga Dansi 9 - Slide Dans 2",
    AnimationOptions = {
        EmoteLoop = true
    }
},
["dalgadans10"] = { -- Custom Emote By BoringNeptune
    "dancing_wave_part_one@anim",
    "robot_dance",
    "Dalga Dansi 10 - Robot Dance",
    AnimationOptions = {
        EmoteLoop = true
    }
},
["dalgadans11"] = { -- Custom Emote By BoringNeptune
    "dancing_wave_part_one@anim",
    "locking_dance",
    "Dalga Dansi 11 - Locking Dance",
    AnimationOptions = {
        EmoteLoop = true
    }
},
["dalgadans12"] = { -- Custom Emote By BoringNeptune
    "dancing_wave_part_one@anim",
    "headspin",
    "Dalga Dansi 12 - Headspin",
    AnimationOptions = {
        EmoteLoop = false
    }
},
["dalgadans13"] = { -- Custom Emote By BoringNeptune
    "dancing_wave_part_one@anim",
    "flaire_dance",
    "Dalga Dansi 13 - Flaire Dance",
    AnimationOptions = {
        EmoteLoop = false
    }
},
["dalgadans14"] = { -- Custom Emote By BoringNeptune
    "dancing_wave_part_one@anim",
    "crowd_girl_dance",
    "Dalga Dansi 14 - Female Crowd Dance",
    AnimationOptions = {
        EmoteLoop = false
    }
},
["dalgadans15"] = { -- Custom Emote By BoringNeptune
    "dancing_wave_part_one@anim",
    "uprock_dance_1",
    "Dalga Dansi 15 - Uprock Dance",
    AnimationOptions = {
        EmoteLoop = true
    }
},    ["dj"] = {
    "anim@amb@nightclub@djs@dixon@",
    "dixn_dance_cntr_open_dix",
    "DJ",
    AnimationOptions = {
        EmoteLoop = true,
        EmoteMoving = true
    }
},
["dj2"] = {
    "anim@amb@nightclub@djs@solomun@",
    "sol_idle_ctr_mid_a_sol",
    "DJ 2",
    AnimationOptions = {
        EmoteLoop = true,
        EmoteMoving = false
    }
},
["dj3"] = {
    "anim@amb@nightclub@djs@solomun@",
    "sol_dance_l_sol",
    "DJ 3",
    AnimationOptions = {
        EmoteLoop = true,
        EmoteMoving = false
    }
},
["dj4"] = {
    "anim@amb@nightclub@djs@black_madonna@",
    "dance_b_idle_a_blamadon",
    "DJ 4",
    AnimationOptions = {
        EmoteLoop = true,
        EmoteMoving = false
    }
},
["dj1"] = {
    "anim@amb@nightclub@djs@dixon@",
    "dixn_end_dix",
    "DJ 1",
    AnimationOptions = {
        EmoteLoop = true,
        EmoteMoving = false
    }
},
["dj5"] = {
    "anim@amb@nightclub@djs@dixon@",
    "dixn_idle_cntr_a_dix",
    "DJ 5",
    AnimationOptions = {
        EmoteLoop = true,
        EmoteMoving = false
    }
},
["dj6"] = {
    "anim@amb@nightclub@djs@dixon@",
    "dixn_idle_cntr_b_dix",
    "DJ 6",
    AnimationOptions = {
        EmoteLoop = true,
        EmoteMoving = false
    }
},
["dj7"] = {
    "anim@amb@nightclub@djs@dixon@",
    "dixn_idle_cntr_g_dix",
    "DJ 7",
    AnimationOptions = {
        EmoteLoop = true,
        EmoteMoving = false
    }
},
["dj8"] = {
    "anim@amb@nightclub@djs@dixon@",
    "dixn_idle_cntr_gb_dix",
    "DJ 8",
    AnimationOptions = {
        EmoteLoop = true,
        EmoteMoving = false
    }
},
["dj9"] = {
    "anim@amb@nightclub@djs@dixon@",
    "dixn_sync_cntr_j_dix",
    "DJ 9",
    AnimationOptions = {
        EmoteLoop = true,
        EmoteMoving = false
    }
},
["twerk"] = {
    "switch@trevor@mocks_lapdance",
    "001443_01_trvs_28_idle_stripper",
    "Twerk",
    AnimationOptions = {
        EmoteLoop = true
    }
},    ["kucakdansi"] = {
    "mp_safehouse",
    "lap_dance_girl",
    "Kucak Dansi"
},
["kucakdansi2"] = {
    "mini@strip_club@private_dance@idle",
    "priv_dance_idle",
    "Kucak Dansi 2",
    AnimationOptions = {
        EmoteLoop = true
    }
},
["kucakdansi3"] = {
    "mini@strip_club@private_dance@part1",
    "priv_dance_p1",
    "Kucak Dansi 3",
    AnimationOptions = {
        EmoteLoop = true
    }
},
["kucakdansi4"] = {
    "mini@strip_club@private_dance@part2",
    "priv_dance_p2",
    "Kucak Dansi 4",
    AnimationOptions = {
        EmoteLoop = true
    }
},
["kucakdansi5"] = {
    "mini@strip_club@private_dance@part3",
    "priv_dance_p3",
    "Kucak Dansi 5",
    AnimationOptions = {
        EmoteLoop = true
    }
},
["kucakdansi6"] = {
    "oddjobs@assassinate@multi@yachttarget@lapdance",
    "yacht_ld_f",
    "Kucak Dansi 6",
    AnimationOptions = {
        EmoteLoop = true
    }
},    ["yavaskucakdansi"] = {
    "mini@strip_club@lap_dance_2g@ld_2g_p3",
    "ld_2g_p3_s2",
    "Yavas Kucak Dansi",
    AnimationOptions = {
        EmoteLoop = true
    }
},
["yavaskucakdansi2"] = {
    "mini@strip_club@lap_dance_2g@ld_2g_p2",
    "ld_2g_p2_s2",
    "Yavas Kucak Dansi 2",
    AnimationOptions = {
        EmoteLoop = true
    }
},
["yavaskucakdansi3"] = {
    "mini@strip_club@lap_dance_2g@ld_2g_p1",
    "ld_2g_p1_s2",
    "Yavas Kucak Dansi 3",
    AnimationOptions = {
        EmoteLoop = true
    }
},    ["kucakdanssandalye"] = {
    "mini@strip_club@lap_dance@ld_girl_a_song_a_p1",
    "ld_girl_a_song_a_p1_f",
    "Sandalye Kucak Dansi",
    AnimationOptions = {
        EmoteLoop = true
    }
},
["kucakdanssandalye2"] = {
    "mini@strip_club@lap_dance@ld_girl_a_song_a_p2",
    "ld_girl_a_song_a_p2_f",
    "Sandalye Kucak Dansi 2",
    AnimationOptions = {
        EmoteLoop = true
    }
},
["kucakdanssandalye3"] = {
    "mini@strip_club@lap_dance@ld_girl_a_song_a_p3",
    "ld_girl_a_song_a_p3_f",
    "Sandalye Kucak Dansi 3",
    AnimationOptions = {
        EmoteLoop = true
    }
},    ["salsa"] = {
    "anim@mp_player_intuppersalsa_roll",
    "idle_a",
    "Salso Roll",
    AnimationOptions = {
        EmoteLoop = true
    }
},    ["sebekdansi"] = {
    "anim@amb@nightclub@mini@dance@dance_solo@shuffle@",
    "high_right_up",
    "Sebek Dansi",
    AnimationOptions = {
        EmoteLoop = true
    }
},
["sebekdansi2"] = {
    "anim@amb@nightclub@mini@dance@dance_solo@shuffle@",
    "high_right_down",
    "Sebek Dansi 2",
    AnimationOptions = {
        EmoteLoop = true
    }
},
["maymundansi"] = {
    "anim@amb@nightclub@mini@dance@dance_solo@techno_monkey@",
    "high_center",
    "Maymun Dansi",
    AnimationOptions = {
        EmoteLoop = true
    }
},
["maymundansi2"] = {
    "anim@amb@nightclub@mini@dance@dance_solo@techno_monkey@",
    "high_center_down",
    "Maymun Dansi 2",
    AnimationOptions = {
        EmoteLoop = true
    }
},
["maymundansi3"] = {
    "anim@amb@nightclub@mini@dance@dance_solo@techno_monkey@",
    "med_center_down",
    "Maymun Dansi 3",
    AnimationOptions = {
        EmoteLoop = true
    }
},    ["boxdansi"] = {
    "anim@amb@nightclub@mini@dance@dance_solo@beach_boxing@",
    "med_right_down",
    "Box Dansi Yalniz",
    AnimationOptions = {
        EmoteLoop = true
    }
},    ["hiphopdansi"] = {
    "anim@amb@nightclub@mini@dance@dance_paired@dance_d@",
    "ped_a_dance_idle",
    "Hip Hop Dansi ",
    AnimationOptions = {
        EmoteLoop = true
    }
},
["hiphopdansi2"] = {
    "anim@amb@nightclub@mini@dance@dance_paired@dance_b@",
    "ped_a_dance_idle",
    "Hip Hop Dansi 2 ",
    AnimationOptions = {
        EmoteLoop = true
    }
},
["hiphopdansi3"] = {
    "anim@amb@nightclub@mini@dance@dance_paired@dance_a@",
    "ped_a_dance_idle",
    "Hip Hop Dansi 3 ",
    AnimationOptions = {
        EmoteLoop = true
    }
},["lqbtdans"] = {
    "anim@amb@nightclub@lazlow@hi_railing@",
    "ambclub_09_mi_hi_bellydancer_laz",
    "LQBTQ Dansi 3",
    AnimationOptions = {
        Prop = 'lilprideflag1', --- Rainbow
        PropBone = 18905,
        PropPlacement = {
            0.0900,
            0.0000,
            0.0300,
            -39.911,
            93.9166,
            -5.8062
        },
        SecondProp = 'lilprideflag1',
        SecondPropBone = 57005,
        SecondPropPlacement = {
            0.0900,
            -0.0200,
            -0.0300,
            -90.2454,
            5.7068,
            -28.7797
        },
        EmoteLoop = true,
        EmoteMoving = false
    }
},
["lqbtdans2"] = {
    "anim@amb@nightclub@lazlow@hi_railing@",
    "ambclub_09_mi_hi_bellydancer_laz",
    "LQBTQ Dansi 2",
    AnimationOptions = {
        Prop = 'lilprideflag2', -- LGBTQIA
        PropBone = 18905,
        PropPlacement = {
            0.0900,
            0.0000,
            0.0300,
            -39.911,
            93.9166,
            -5.8062
        },
        SecondProp = 'lilprideflag2',
        SecondPropBone = 57005,
        SecondPropPlacement = {
            0.0900,
            -0.0200,
            -0.0300,
            -90.2454,
            5.7068,
            -28.7797
        },
        EmoteLoop = true,
        EmoteMoving = false
    }
},    ["lqbtdans3"] = {
    "anim@amb@nightclub@lazlow@hi_railing@",
    "ambclub_09_mi_hi_bellydancer_laz",
    "LQBTQ Dansi 3",
    AnimationOptions = {
        Prop = 'lilprideflag3', -- Bisexual
        PropBone = 18905,
        PropPlacement = {
            0.0900,
            0.0000,
            0.0300,
            -39.911,
            93.9166,
            -5.8062
        },
        SecondProp = 'lilprideflag3',
        SecondPropBone = 57005,
        SecondPropPlacement = {
            0.0900,
            -0.0200,
            -0.0300,
            -90.2454,
            5.7068,
            -28.7797
        },
        EmoteLoop = true,
        EmoteMoving = false
    }
},    ["lqbtdans4"] = {
    "anim@amb@nightclub@lazlow@hi_railing@",
    "ambclub_09_mi_hi_bellydancer_laz",
    "LQBTQ Dansi 4",
    AnimationOptions = {
        Prop = 'lilprideflag4', -- Lesbian
        PropBone = 18905,
        PropPlacement = {
            0.0900,
            0.0000,
            0.0300,
            -39.911,
            93.9166,
            -5.8062
        },
        SecondProp = 'lilprideflag4',
        SecondPropBone = 57005,
        SecondPropPlacement = {
            0.0900,
            -0.0200,
            -0.0300,
            -90.2454,
            5.7068,
            -28.7797
        },
        EmoteLoop = true,
        EmoteMoving = false
    }
},    ["lqbtdans5"] = {
    "anim@amb@nightclub@lazlow@hi_railing@",
    "ambclub_09_mi_hi_bellydancer_laz",
    "LQBTQ Dansi 5",
    AnimationOptions = {
        Prop = 'lilprideflag5', -- Pansexual
        PropBone = 18905,
        PropPlacement = {
            0.0900,
            0.0000,
            0.0300,
            -39.911,
            93.9166,
            -5.8062
        },
        SecondProp = 'lilprideflag5',
        SecondPropBone = 57005,
        SecondPropPlacement = {
            0.0900,
            -0.0200,
            -0.0300,
            -90.2454,
            5.7068,
            -28.7797
        },
        EmoteLoop = true,
        EmoteMoving = false
    }
},
["lqbtdans6"] = {
    "anim@amb@nightclub@lazlow@hi_railing@",
    "ambclub_09_mi_hi_bellydancer_laz",
    "LQBTQ Dansi 6 ",
    AnimationOptions = {
        Prop = 'lilprideflag6', -- Transgender
        PropBone = 18905,
        PropPlacement = {
            0.0900,
            0.0000,
            0.0300,
            -39.911,
            93.9166,
            -5.8062
        },
        SecondProp = 'lilprideflag6',
        SecondPropBone = 57005,
        SecondPropPlacement = {
            0.0900,
            -0.0200,
            -0.0300,
            -90.2454,
            5.7068,
            -28.7797
        },
        EmoteLoop = true,
        EmoteMoving = false
    }
},
["lqbtdans7"] = {
    "anim@amb@nightclub@lazlow@hi_railing@",
    "ambclub_09_mi_hi_bellydancer_laz",
    "LQBTQ Dansi 7",
    AnimationOptions = {
        Prop = 'lilprideflag7', -- Lesbian
        PropBone = 18905,
        PropPlacement = {
            0.0900,
            0.0000,
            0.0300,
            -39.911,
            93.9166,
            -5.8062
        },
        SecondProp = 'lilprideflag7',
        SecondPropBone = 57005,
        SecondPropPlacement = {
            0.0900,
            -0.0200,
            -0.0300,
            -90.2454,
            5.7068,
            -28.7797
        },
        EmoteLoop = true,
        EmoteMoving = false
    }
},
["lqbtdans8"] = {
    "anim@amb@nightclub@lazlow@hi_railing@",
    "ambclub_09_mi_hi_bellydancer_laz",
    "LQBTQ Dansi 8",
    AnimationOptions = {
        Prop = 'lilprideflag8', -- Asexual
        PropBone = 18905,
        PropPlacement = {
            0.0900,
            0.0000,
            0.0300,
            -39.911,
            93.9166,
            -5.8062
        },
        SecondProp = 'lilprideflag8',
        SecondPropBone = 57005,
        SecondPropPlacement = {
            0.0900,
            -0.0200,
            -0.0300,
            -90.2454,
            5.7068,
            -28.7797
        },
        EmoteLoop = true,
        EmoteMoving = false
    }
},    ["lqbtdans9"] = {
    "anim@amb@nightclub@lazlow@hi_railing@",
    "ambclub_09_mi_hi_bellydancer_laz",
    "LQBTQ Dansi 9",
    AnimationOptions = {
        Prop = 'lilprideflag9', -- Straight Ally
        PropBone = 18905,
        PropPlacement = {
            0.0900,
            0.0000,
            0.0300,
            -39.911,
            93.9166,
            -5.8062
        },
        SecondProp = 'lilprideflag9',
        SecondPropBone = 57005,
        SecondPropPlacement = {
            0.0900,
            -0.0200,
            -0.0300,
            -90.2454,
            5.7068,
            -28.7797
        },
        EmoteLoop = true,
        EmoteMoving = false
    }
},
}
DP.AnimalEmotes = {
    ["bdogbark"] = {
        "creatures@rottweiler@amb@world_dog_barking@idle_a",
        "idle_a",
        "Bark (big dog)",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["bdogfris"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "nill",
        "Frisbee (big dog)",
        AnimationOptions = {
            Prop = 'p_ld_frisbee_01',
            PropBone = 31086,
            PropPlacement = {
                0.2600,
                0.0200,
               -0.0600,
               -173.7526,
               -169.4149,
                21.4173
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["bdogindicateahead"] = {
        "creatures@rottweiler@indication@",
        "indicate_ahead",
        "Indicate Ahead (big dog)",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["bdogindicatehigh"] = {
        "creatures@rottweiler@indication@",
        "indicate_high",
        "Indicate High (big dog)",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["bdogindicatelow"] = {
        "creatures@rottweiler@indication@",
        "indicate_low",
        "Indicate Low (big dog)",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["bdogbeg"] = {
        "creatures@rottweiler@tricks@",
        "beg_loop",
        "Beg (big dog)",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["bdogbeg2"] = {
        "creatures@rottweiler@tricks@",
        "paw_right_loop",
        "Beg 2 (big dog)",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["bdoglayright"] = {
        "creatures@rottweiler@move",
        "dead_right",
        "Lay Right (big dog)",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["bdoglayleft"] = {
        "creatures@rottweiler@move",
        "dead_left",
        "Lay Left (big dog)",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["bdogsitcar"] = {
        "creatures@rottweiler@incar@",
        "sit",
        "Sit in car (big dog)",
        AnimationOptions = {
            EmoteLoop = true,
        }
    },
    ["bdogfhump"] = {
        "creatures@rottweiler@amb@",
        "hump_loop_ladydog",
        "Female Hump (big dog)",
        AnimationOptions = {
            EmoteLoop = true
        },
        AdultAnimation = true,
	AnimalEmote = true
    },
    ["bdogmhump"] = {
        "creatures@rottweiler@amb@",
        "hump_loop_chop",
        "Male Hump (big dog)",
        AnimationOptions = {
            EmoteLoop = true
        },
        AdultAnimation = true,
	AnimalEmote = true
    },
    ["bdogshit"] = {
        "creatures@rottweiler@move",
        "dump_loop",
        "Shit (big dog)",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_amb_chop",
            PtfxName = "ent_anim_dog_poo",
            PtfxNoProp = true,
            PtfxPlacement = {
                0.10,
                -0.08,
                0.0,
                0.0,
                90.0,
                180.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['poop'],
            PtfxWait = 200,
            PtfxCanHold = true
        }
    },
    ["bdogitch"] = {
        "creatures@rottweiler@amb@world_dog_sitting@idle_a",
        "idle_a",
        "Itch (big dog)",
        AnimationOptions = {
            EmoteDuration = 2000
        }
    },
    ["bdogsleep"] = {
        "creatures@rottweiler@amb@sleep_in_kennel@",
        "sleep_in_kennel",
        "Sleep (big dog)",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "bdogupk",
            ExitEmoteType = "Exits",
            PtfxWait = 500,
        }
    },
    ["bdogsit"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "base",
        "Sit (big dog)",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "bdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["bdogpee"] = {
        "creatures@rottweiler@move",
        "pee_left_idle",
        "Pee (big dog)",
        AnimationOptions = {
            EmoteLoop = true,
            PtfxAsset = "scr_amb_chop",
            PtfxName = "ent_anim_dog_peeing",
            PtfxNoProp = true,
            PtfxPlacement = {
                -0.15,
                -0.35,
                0.0,
                0.0,
                90.0,
                180.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['pee'],
            PtfxWait = 3000,
            PtfxCanHold = true
        }
    },
    ["bdogpee2"] = {
        "creatures@rottweiler@move",
        "pee_right_idle",
        "Pee 2 (big dog)",
        AnimationOptions = {
            EmoteLoop = true,
            PtfxAsset = "scr_amb_chop",
            PtfxName = "ent_anim_dog_peeing",
            PtfxNoProp = true,
            PtfxPlacement = {
                0.15,
                -0.35,
                0.0,
                0.0,
                90.0,
                0.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['pee'],
            PtfxWait = 3000,
            PtfxCanHold = true
        }
    },
    ["bdogglowa"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "nill",
        "Glow Stick (big dog)",
        AnimationOptions = {
            Prop = 'ba_prop_battle_glowstick_01',
            PropBone = 31086,
            PropPlacement = {
                0.2000,
                0.000,
                -0.0600,
                90.00,
                0.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["bdogglowb"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "base",
        "Glow Stick Sitting (big dog)",
        AnimationOptions = {
            Prop = 'ba_prop_battle_glowstick_01',
            PropBone = 31086,
            PropPlacement = {
                0.2000,
                0.000,
                -0.0600,
                90.00,
                0.00,
                0.00
            },
            EmoteLoop = true,
            ExitEmote = "bdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["bdogpridea"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "base",
        "Sit Pride A (big dog)",
        AnimationOptions = {
            Prop = 'lilprideflag1', -- Rainbow
            PropBone = 31086,
            PropPlacement = {
                0.1900,
                0.0000,
                -0.0500,
                100.0000,
                90.0000,
                0.0000
            },
            SecondProp = 'lilprideflag1',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.1940,
                0.020,
                -0.0500,
                -90.0000,
                -90.0000,
                0.0000
            },
            EmoteLoop = true,
            ExitEmote = "bdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["bdogprideb"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "base",
        "Sit Pride B - LGBTQIA (big dog)",
        AnimationOptions = {
            Prop = 'lilprideflag2', -- LGBTQIA
            PropBone = 31086,
            PropPlacement = {
                0.1900,
                0.0000,
                -0.0500,
                100.0000,
                90.0000,
                0.0000
            },
            SecondProp = 'lilprideflag2',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.1940,
                0.020,
                -0.0500,
                -90.0000,
                -90.0000,
                0.0000
             },
            EmoteLoop = true,
            ExitEmote = "bdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["bdogpridec"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "base",
        "Sit Pride C - Bisexual (big dog)",
        AnimationOptions = {
            Prop = 'lilprideflag3', -- Bisexual
            PropBone = 31086,
            PropPlacement = {
                0.1900,
                0.0000,
                -0.0500,
                100.0000,
                90.0000,
                0.0000
            },
            SecondProp = 'lilprideflag3',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.1940,
                0.020,
                -0.0500,
                -90.0000,
                -90.0000,
                0.0000
             },
            EmoteLoop = true,
            ExitEmote = "bdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["bdogprided"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "base",
        "Sit Pride D - Lesbian (big dog)",
        AnimationOptions = {
            Prop = 'lilprideflag4', -- Lesbian
            PropBone = 31086,
            PropPlacement = {
                0.1900,
                0.0000,
                -0.0500,
                100.0000,
                90.0000,
                0.0000
            },
            SecondProp = 'lilprideflag4',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.1940,
                0.020,
                -0.0500,
                -90.0000,
                -90.0000,
                0.0000
             },
            EmoteLoop = true,
            ExitEmote = "bdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["bdogpridee"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "base",
        "Sit Pride E - Pansexual (big dog)",
        AnimationOptions = {
            Prop = 'lilprideflag5', -- Pansexual
            PropBone = 31086,
            PropPlacement = {
                0.1900,
                0.0000,
                -0.0500,
                100.0000,
                90.0000,
                0.0000
            },
            SecondProp = 'lilprideflag5',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.1940,
                0.020,
                -0.0500,
                -90.0000,
                -90.0000,
                0.0000
             },
            EmoteLoop = true,
            ExitEmote = "bdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["bdogpridef"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "base",
        "Sit Pride F - Transgender  (big dog)",
        AnimationOptions = {
            Prop = 'lilprideflag6', -- Transgender
            PropBone = 31086,
            PropPlacement = {
                0.1900,
                0.0000,
                -0.0500,
                100.0000,
                90.0000,
                0.0000
            },
            SecondProp = 'lilprideflag6',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.1940,
                0.020,
                -0.0500,
                -90.0000,
                -90.0000,
                0.0000
             },
            EmoteLoop = true,
            ExitEmote = "bdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["bdogprideg"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "base",
        "Sit Pride G - Non Binary (big dog)",
        AnimationOptions = {
            Prop = 'lilprideflag7', -- Non Binary
            PropBone = 31086,
            PropPlacement = {
                0.1900,
                0.0000,
                -0.0500,
                100.0000,
                90.0000,
                0.0000
            },
            SecondProp = 'lilprideflag7',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.1940,
                0.020,
                -0.0500,
                -90.0000,
                -90.0000,
                0.0000
             },
            EmoteLoop = true,
            ExitEmote = "bdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["bdogprideh"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "base",
        "Sit Pride H - Asexual (big dog)",
        AnimationOptions = {
            Prop = 'lilprideflag8', -- Asexual
            PropBone = 31086,
            PropPlacement = {
                0.1900,
                0.0000,
                -0.0500,
                100.0000,
                90.0000,
                0.0000
            },
            SecondProp = 'lilprideflag8',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.1940,
                0.020,
                -0.0500,
                -90.0000,
                -90.0000,
                0.0000
             },
            EmoteLoop = true,
            ExitEmote = "bdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["bdogpridei"] = {
        "creatures@rottweiler@amb@world_dog_sitting@base",
        "base",
        "Sit Pride I - Straight Ally (big dog)",
        AnimationOptions = {
            Prop = 'lilprideflag9', -- Straight Ally
            PropBone = 31086,
            PropPlacement = {
                0.1900,
                0.0000,
                -0.0500,
                100.0000,
                90.0000,
                0.0000
            },
            SecondProp = 'lilprideflag9',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.1940,
                0.020,
                -0.0500,
                -90.0000,
                -90.0000,
                0.0000
             },
            EmoteLoop = true,
            ExitEmote = "bdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["bdogfw"] = {
       "creatures@rottweiler@amb@world_dog_sitting@base",
        "nill",
        "Firework - Big Dog",
        AnimationOptions = {
            Prop = 'ind_prop_firework_01', --- blue, green, red, purple pink, cyan, yellow, white
			 PtfxColor = {{R = 255, G = 0, B = 0, A = 1.0}, {R = 0, G = 255, B = 0, A = 1.0}, {R = 0, G = 0, B = 255, A = 1.0}, {R = 177, G = 5, B = 245, A = 1.0}, {R = 251, G = 3, B = 255, A = 1.0}, {R = 2, G = 238, B = 250, A = 1.0}, {R = 252, G = 248, B = 0, A = 1.0}, {R = 245, G = 245, B = 245, A = 1.0}},
            PropBone = 31086,
            PropPlacement = {
                0.1400,
                0.3300,
               -0.0800,
               -85.6060,
                -176.7400,
                -9.8767
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_indep_fireworks",
            PtfxName = "scr_indep_firework_trail_spawn",
            PtfxPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.6
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['firework'],
            PtfxWait = 200
        }
    },

    ---- ANIMAL EMOTES ----
    ----   SMALL DOG   ----

    ["sdogbark"] = {
        "creatures@pug@amb@world_dog_barking@idle_a",
        "idle_a",
        "Bark (small dog)",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["sdogitch"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_a",
        "Itch (small dog)",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdogsit"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Sit (small dog)",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdogld"] = {
        "misssnowie@little_doggy_lying_down",
        "base",
        "Lay Down (small dog)",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdogshake"] = {
        "creatures@pug@amb@world_dog_barking@idle_a",
        "idle_c",
        "Shake (small dog)",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["sdogdance"] = {
        "creatures@pug@move",
        "idle_turn_0",
        "Dance (small dog)",
        AnimationOptions = {
            Prop = 'ba_prop_battle_glowstick_01',
            PropBone = 31086,
            PropPlacement = {
                0.1500,
                -0.0300,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogdance2"] = {
        "creatures@pug@move",
        "idle_turn_0",
        "Dance 2 (small dog)",
        AnimationOptions = {
            Prop = 'ba_prop_battle_glowstick_01',
            PropBone = 31086,
            PropPlacement = {
                0.1500,
                -0.0300,
                0.0,
                0.0,
                0.0
            },
            SecondProp = 'prop_cs_sol_glasses',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.0500,
                0.0300,
                0.000,
                -100.0000003,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogdancepridea"] = {
        "creatures@pug@move",
        "idle_turn_0",
        "Dance Pride A (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag1',
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            SecondProp = 'prop_cs_sol_glasses',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.0500,
                0.0300,
                0.000,
                -100.0000003,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogdanceprideb"] = {
        "creatures@pug@move",
        "idle_turn_0",
        "Dance Pride B - LGBTQIA (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag2', -- LGBTQIA
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            SecondProp = 'prop_cs_sol_glasses',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.0500,
                0.0300,
                0.000,
                -100.0000003,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogdancepridec"] = {
        "creatures@pug@move",
        "idle_turn_0",
        "Dance Pride C - Bisexual (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag3', -- Bisexual
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            SecondProp = 'prop_cs_sol_glasses',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.0500,
                0.0300,
                0.000,
                -100.0000003,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogdanceprided"] = {
        "creatures@pug@move",
        "idle_turn_0",
        "Dance Pride D - Lesbian (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag4', -- Lesbian
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            SecondProp = 'prop_cs_sol_glasses',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.0500,
                0.0300,
                0.000,
                -100.0000003,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogdancepridee"] = {
        "creatures@pug@move",
        "idle_turn_0",
        "Dance Pride E - Pansexual (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag5', -- Pansexual
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            SecondProp = 'prop_cs_sol_glasses',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.0500,
                0.0300,
                0.000,
                -100.0000003,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogdancepridef"] = {
        "creatures@pug@move",
        "idle_turn_0",
        "Dance Pride F - Transgender  (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag6', -- Transgender
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            SecondProp = 'prop_cs_sol_glasses',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.0500,
                0.0300,
                0.000,
                -100.0000003,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogdanceprideg"] = {
        "creatures@pug@move",
        "idle_turn_0",
        "Dance Pride G - Non Binary (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag7', -- Non Binary
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            SecondProp = 'prop_cs_sol_glasses',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.0500,
                0.0300,
                0.000,
                -100.0000003,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogdanceprideh"] = {
        "creatures@pug@move",
        "idle_turn_0",
        "Dance Pride H - Asexual (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag8', -- Asexual
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            SecondProp = 'prop_cs_sol_glasses',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.0500,
                0.0300,
                0.000,
                -100.0000003,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogdancepridei"] = {
        "creatures@pug@move",
        "idle_turn_0",
        "Dance Pride I - Straight Ally (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag9', -- Straight Ally
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            SecondProp = 'prop_cs_sol_glasses',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.0500,
                0.0300,
                0.000,
                -100.0000003,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogbb"] = {
        "creatures@pug@move",
        "nill",
        "Baseball (small dog)",
        AnimationOptions = {
            Prop = 'w_am_baseball',
            PropBone = 31086,
            PropPlacement = {
                0.1500,
                -0.0500,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogburger"] = {
        "creatures@pug@move",
        "nill",
        "Burger (small dog)",
        AnimationOptions = {
            Prop = 'prop_cs_burger_01',
            PropBone = 31086,
            PropPlacement = {
                0.1500,
                -0.0400,
                0.0000,
                -90.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogcontroller"] = {
        "creatures@pug@move",
        "nill",
        "Controller (small dog)",
        AnimationOptions = {
            Prop = 'prop_controller_01',
            PropBone = 31086,
            PropPlacement = {
                0.1800,
                -0.0300,
                0.0000,
                -180.000,
                90.0000,
                0.0000
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogdolla"] = {
        "creatures@pug@move",
        "nill",
        "Dollar Bill (small dog)",
        AnimationOptions = {
            Prop = 'p_banknote_onedollar_s',
            PropBone = 31086,
            PropPlacement = {
                0.1700,
                -0.0100,
                0.0000,
                90.0000,
                0.0000,
                0.000
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogdolla2"] = {
        "creatures@pug@move",
        "nill",
        "Dollar Bill Scrunched  (small dog)",
        AnimationOptions = {
            Prop = 'bkr_prop_scrunched_moneypage',
            PropBone = 31086,
            PropPlacement = {
                0.1700,
                0.000,
                0.0000,
                90.0000,
                00.0000,
                00.0000
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogdolla3"] = {
        "creatures@pug@move",
        "nill",
        "Money Stack  (small dog)",
        AnimationOptions = {
            Prop = 'bkr_prop_money_wrapped_01',
            PropBone = 31086,
            PropPlacement = {
                0.1700,
                -0.0100,
                0.0000,
                90.0000,
                0.0000,
                0.000
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogdolla4"] = {
        "creatures@pug@move",
        "nill",
        "Money Bag  (small dog)",
        AnimationOptions = {
            Prop = 'ch_prop_ch_moneybag_01a',
            PropBone = 31086,
            PropPlacement = {
                0.1200,
                -0.2000,
                0.0000,
                -79.9999997,
                90.00,
                0.0000
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogmic"] = {
        "creatures@pug@move",
        "nill",
        "Microphone (small dog)",
        AnimationOptions = {
            Prop = 'p_ing_microphonel_01',
            PropBone = 31086,
            PropPlacement = {
                0.1500,
                -0.0170,
                0.0300,
                0.000,
                0.0000,
                0.0000
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogteddy"] = {
        "creatures@pug@move",
        "nill",
        "Teddy (small dog)",
        AnimationOptions = {
            Prop = 'v_ilev_mr_rasberryclean',
            PropBone = 31086,
            PropPlacement = {
                0.1500,
                -0.1100,
                -0.23,
                0.000,
                0.0000,
                0.0000
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogteddy2"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Teddy 2 (small dog)",
        AnimationOptions = {
            Prop = 'v_ilev_mr_rasberryclean',
            PropBone = 31086,
            PropPlacement = {
                0.1500,
                -0.1100,
                -0.23,
                0.000,
                0.0000,
                0.0000
            },
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdogtennis"] = {
        "creatures@pug@move",
        "nill",
        "Tennis Ball (small dog)",
        AnimationOptions = {
            Prop = 'prop_tennis_ball',
            PropBone = 31086,
            PropPlacement = {
                0.1500,
                -0.0600,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogtennisr"] = {
        "creatures@pug@move",
        "nill",
        "Tennis Racket (small dog)",
        AnimationOptions = {
            Prop = 'prop_tennis_rack_01',
            PropBone = 31086,
            PropPlacement = {
                0.1500,
                -0.0200,
                0.00,
                0.000,
                0.0000,
                -28.0000
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogrose"] = {
        "creatures@pug@move",
        "nill",
        "Rose (small dog)",
        AnimationOptions = {
            Prop = 'prop_single_rose',
            PropBone = 12844,
            PropPlacement = {
                0.1090,
                -0.0140,
                0.0500,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogrose2"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Rose Sit (small dog)",
        AnimationOptions = {
            Prop = 'prop_single_rose',
            PropBone = 12844,
            PropPlacement = {
                0.1090,
                -0.0140,
                0.0500,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdogggun"] = {
        "creatures@pug@move",
        "nill",
        "Gun Gold (small dog)",
        AnimationOptions = {
            Prop = 'w_pi_pistol_luxe',
            PropBone = 12844,
            PropPlacement = {
                0.2010,
                -0.0080,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdoggun2"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Gun Gold Sit (small dog)",
        AnimationOptions = {
            Prop = 'w_pi_pistol_luxe',
            PropBone = 12844,
            PropPlacement = {
                0.2010,
                -0.0080,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdogstun"] = {
        "creatures@pug@move",
        "nill",
        "Stun Gun (small dog)",
        AnimationOptions = {
            Prop = 'w_pi_stungun',
            PropBone = 12844,
            PropPlacement = {
                0.1400,
                -0.0100,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "core",
            PtfxName = "blood_stungun",
            PtfxPlacement = {
                0.208,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['stun'],
            PtfxWait = 200
        }
    },
    ["sdoggl1"] = {
        "creatures@pug@move",
        "nill",
        "Aviators (small dog)",
        AnimationOptions = {
            Prop = 'prop_aviators_01',
            PropBone = 31086,
            PropPlacement = {
                0.0500,
                0.0400,
                0.000,
                -90.00,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdoggl2"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Aviators Sitting (small dog)",
        AnimationOptions = {
            Prop = 'prop_aviators_01',
            PropBone = 31086,
            PropPlacement = {
                0.0500,
                0.0400,
                0.000,
                -90.00,
                90.00,
                0.00
            },
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdoggl3"] = {
        "creatures@pug@move",
        "nill",
        "Sunglasses (small dog)",
        AnimationOptions = {
            Prop = 'prop_cs_sol_glasses',
            PropBone = 31086,
            PropPlacement = {
                0.0500,
                0.0300,
                0.000,
                -100.0000003,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdoggl4"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Sunglasses Sitting (small dog)",
        AnimationOptions = {
            Prop = 'prop_cs_sol_glasses',
            PropBone = 31086,
            PropPlacement = {
                0.0500,
                0.0300,
                0.000,
                -100.0000003,
                90.00,
                0.00
            },
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdoghd1"] = {
        "creatures@pug@move",
        "nill",
        "Hot Dog (small dog)",
        AnimationOptions = {
            Prop = 'prop_cs_hotdog_01',
            PropBone = 31086,
            PropPlacement = {
                0.1300,
                -0.0250,
                0.000,
                -88.272053,
                -9.8465858,
                -0.1488562
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdoghd2"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Hot Dog Sitting (small dog)",
        AnimationOptions = {
            Prop = 'prop_cs_hotdog_01',
            PropBone = 31086,
            PropPlacement = {
                0.1300,
                -0.0250,
                0.000,
                -88.272053,
                -9.8465858,
                -0.1488562
            },
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdoghlmt1"] = {
        "creatures@pug@move",
        "nill",
        "Helmet 1 (small dog)",
        AnimationOptions = {
            Prop = 'ba_prop_battle_sports_helmet',
            PropBone = 31086,
            PropPlacement = {
                0.00,
                -0.0200,
                0.000,
                -90.00,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdoghlmt2"] = {
        "creatures@pug@move",
        "nill",
        "Helmet 2 (small dog)",
        AnimationOptions = {
            Prop = 'prop_hard_hat_01',
            PropBone = 31086,
            PropPlacement = {
                0.00,
                0.1300,
                0.000,
                -90.00,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdoghat"] = {
        "creatures@pug@move",
        "nill",
        "Hat 1 (small dog)",
        AnimationOptions = {
            Prop = 'prop_proxy_hat_01',
            PropBone = 31086,
            PropPlacement = {
                0.0,
                0.1200,
                0.000,
                -99.8510766,
                80.1489234,
                1.7279411
            },
            SecondProp = 'prop_aviators_01',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.0500,
                0.0400,
                0.000,
                -90.00,
                90.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdoghat2"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Hat 2 Sitting (small dog)",
        AnimationOptions = {
            Prop = 'prop_proxy_hat_01',
            PropBone = 31086,
            PropPlacement = {
                0.0,
                0.1200,
                0.000,
                -99.8510766,
                80.1489234,
                1.7279411
            },
            SecondProp = 'prop_aviators_01',
            SecondPropBone = 31086,
            SecondPropPlacement = {
                0.0500,
                0.0400,
                0.000,
                -90.00,
                90.00,
                0.00
            },
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdogsteak"] = {
        "creatures@pug@move",
        "nill",
        "Steak (small dog)",
        AnimationOptions = {
            Prop = 'prop_cs_steak',
            PropBone = 31086,
            PropPlacement = {
                0.1800,
                -0.0200,
                0.000,
                90.00,
                0.00,
                0.00
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogsteak2"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_c",
        "Steak 2 Lay Down (small dog)",
        AnimationOptions = {
            Prop = 'prop_cs_steak',
            PropBone = 31086,
            PropPlacement = {
                0.1800,
                -0.0200,
                0.000,
                90.00,
                0.00,
                0.00
            },
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdogpridea"] = {
        "creatures@pug@move",
        "nill",
        "Pride A (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag1',
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogprideb"] = {
        "creatures@pug@move",
        "nill",
        "Pride B - LGBTQIA (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag2', -- LGBTQIA
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogpridec"] = {
        "creatures@pug@move",
        "nill",
        "Pride C - Bisexual (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag3', -- Bisexual
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogprided"] = {
        "creatures@pug@move",
        "nill",
        "Pride D - Lesbian (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag4', -- Lesbian
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogpridee"] = {
        "creatures@pug@move",
        "nill",
        "Pride E - Pansexual (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag5', -- Pansexual
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogpridef"] = {
        "creatures@pug@move",
        "nill",
        "Pride F - Transgender  (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag6', -- Transgender
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogprideg"] = {
        "creatures@pug@move",
        "nill",
        "Pride G - Non Binary (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag6', -- Non Binary
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogprideh"] = {
        "creatures@pug@move",
        "nill",
        "Pride H - Non Binary (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag7', -- Non Binary
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogpridei"] = {
        "creatures@pug@move",
        "nill",
        "Pride I - Asexual (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag8', -- Asexual
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sdogpridesita"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Pride A Sit (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag1',
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdogpridesitb"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Pride B Sit LGBTQIA  (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag2', -- LGBTQIA
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdogpridesitc"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Pride C Sit Bisexual  (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag3', -- Bisexual
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdogpridesitd"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Pride D Sit Lesbian (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag4', -- Lesbian
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
           },
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdogpridesite"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Pride E Sit Pansexual  (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag5', -- Pansexual
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdogpridesitf"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Pride F Sit Transgender   (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag6', -- Transgender
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdogpridesitg"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Pride G Sit Non Binary (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag7', -- Non Binary
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdogpridesith"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Pride H Sit Asexual  (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag8',
            -- Asexual
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
           },
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdogpridesiti"] = {
        "creatures@pug@amb@world_dog_sitting@idle_a",
        "idle_b",
        "Pride I Sit Straight Ally  (small dog)",
        AnimationOptions = {
            Prop = 'lilprideflag9', -- Straight Ally
            PropBone = 31086,
            PropPlacement = {
                0.1240,
                -0.0080,
                0.000,
                0.0,
                0.0,
                -74.6999
            },
            EmoteLoop = true,
            ExitEmote = "sdogup",
            ExitEmoteType = "Exits"
        }
    },
    ["sdogpee"] = {
        "creatures@pug@move",
        "nill",
        "Pee (Small Dog)",
        AnimationOptions = {
            EmoteLoop = true,
            PtfxAsset = "scr_amb_chop",
            PtfxName = "ent_anim_dog_peeing",
            PtfxNoProp = true,
            PtfxPlacement = {
                -0.01,
                -0.17,
                0.09,
                0.0,
                90.0,
                140.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['pee'],
            PtfxWait = 3000,
            PtfxCanHold = true
        }
    },
    ["sdogshit"] = {
        "creatures@pug@move",
        "nill",
        "Shit (Small Dog)",
        AnimationOptions = {
            EmoteLoop = true,
			EmoteMoving = true,
            PtfxAsset = "scr_amb_chop",
            PtfxName = "ent_anim_dog_poo",
            PtfxNoProp = true,
			PtfxBone = 11816,
            PtfxPlacement = {
               -0.0330,
                0.0210,
               -0.0040,
                0.0,
                0.0,
                0.0,
                0.4
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['poop'],
            PtfxWait = 2000,
            PtfxCanHold = true
        }
    },
    ["sdogfw"] = {
       "creatures@pug@move",
        "nill",
        "Firework - Small Dog",
        AnimationOptions = {
            Prop = 'ind_prop_firework_01', --- blue, green, red, purple pink, cyan, yellow, white
			 PtfxColor = {{R = 255, G = 0, B = 0, A = 1.0}, {R = 0, G = 255, B = 0, A = 1.0}, {R = 0, G = 0, B = 255, A = 1.0}, {R = 177, G = 5, B = 245, A = 1.0}, {R = 251, G = 3, B = 255, A = 1.0}, {R = 2, G = 238, B = 250, A = 1.0}, {R = 252, G = 248, B = 0, A = 1.0}, {R = 245, G = 245, B = 245, A = 1.0}},
            PropBone = 31086,
            PropPlacement = {
                0.1330,
               -0.0210,
               -0.2760,
                0.0,
               -180.0,
                44.0000
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_indep_fireworks",
            PtfxName = "scr_indep_firework_trail_spawn",
            PtfxPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.6
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['firework'],
            PtfxWait = 200,
        }
    }
}



--- EMOTES NO PROPS ---
DP.Emotes = {

    ["dagitici"] = {
        "mini@sprunk",
        "plyr_buy_drink_pt1",
        "Dagitici",
        AnimationOptions =
        {
            EmoteLoop = false
        }
    },
    ["canavar"] = {
        "anim@mp_fm_event@intro",
        "beast_transform",
        "Canavar",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 5000
        }
    },
    ["rahatla"] = {
        "switch@trevor@scares_tramp",
        "trev_scares_tramp_idle_tramp",
        "Rahatla",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["bulutbak"] = {
        "switch@trevor@annoys_sunbathers",
        "trev_annoys_sunbathers_loop_girl",
        "Bulutlara Bak",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["bulutbak2"] = {
        "switch@trevor@annoys_sunbathers",
        "trev_annoys_sunbathers_loop_guy",
        "Bulutlara Bak 2",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["uzan"] = {
        "missfbi3_sniping",
        "prone_dave",
        "Yere Uzan",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["pullover"] = {
        "misscarsteal3pullover",
        "pull_over_right",
        "Dur",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 1300
        }
    },
    ["bosta"] = {
        "anim@heists@heist_corona@team_idles@male_a",
        "idle",
        "Bosta 1",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["bosta2"] = {
        "amb@world_human_hang_out_street@male_b@idle_a",
        "idle_b",
        "Boşta 2"
    },
    ["bosta3"] = {
        "friends@fra@ig_1",
        "base_idle",
        "Boşta 3",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["bosta 4"] = {
        "mp_move@prostitute@m@french",
        "idle",
        "Bosta 4",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["bosta5"] = {
        "random@countrysiderobbery",
        "idle_a",
        "Bosta 5",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["bosta6"] = {
        "anim@heists@heist_corona@team_idles@female_a",
        "idle",
        "Bosta 6",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["bosta7"] = {
        "anim@heists@humane_labs@finale@strip_club",
        "ped_b_celebrate_loop",
        "Bosta 7",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["bosta8"] = {
        "anim@mp_celebration@idles@female",
        "celebration_idle_f_a",
        "Bosta 8",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["bosta9"] = {
        "anim@mp_corona_idles@female_b@idle_a",
        "idle_a",
        "Bosta 9",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["bosta10"] = {
        "anim@mp_corona_idles@male_c@idle_a",
        "idle_a",
        "Bosta 10",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["bosta11"] = {
        "anim@mp_corona_idles@male_d@idle_a",
        "idle_a",
        "Bosta 11",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["sbosta"] = {
        "random@drunk_driver_1",
        "drunk_driver_stand_loop_dd1",
        "Sarhos Bosta",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["sbosta2"] = {
        "random@drunk_driver_1",
        "drunk_driver_stand_loop_dd2",
        "Sarhos Bosta 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["sbosta3"] = {
        "missarmenian2",
        "standing_idle_loop_drunk",
        "Sarhos Bosta 3",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["havaligitar"] = {
        "anim@mp_player_intcelebrationfemale@air_guitar",
        "air_guitar",
        "Havali Gitar"
    },
    ["gitardinleyis"] = {
        "anim@mp_player_intcelebrationfemale@air_synth",
        "air_synth",
        "Gitar Dinleyisi"
    },
    ["tartisma"] = {
        "misscarsteal4@actor",
        "actor_berating_loop",
        "Tartisma",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["tartisma2"] = {
        "oddjobs@assassinate@vice@hooker",
        "argue_a",
        "Tartisma 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },    
    ["barmen"] = {
        "anim@amb@clubhouse@bar@drink@idle_a",
        "idle_a_bartender",
        "Barmen",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["opucukatma"] = {
        "anim@mp_player_intcelebrationfemale@blow_kiss",
        "blow_kiss",
        "Opucuk Atmak"
    },
    ["opucukatma2"] = {
        "anim@mp_player_intselfieblow_kiss",
        "exit",
        "Opucuk Atmak 2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 2000
        }
    },
    ["kendinigoster"] = {
        "anim@mp_player_intcelebrationpaired@f_f_sarcastic",
        "sarcastic_left",
        "Kendini Goster"
    },
    ["devamet"] = {
        "misscommon@response",
        "bring_it_on",
        "Devam Et",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 3000
        }
    },
    ["banagelkardesim"] = {
        "mini@triathlon",
        "want_some_of_this",
        "Bana gel Kardesim",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 2000
        }
    },
    ["polis"] = {
        "anim@amb@nightclub@peds@",
        "rcmme_amanda1_stand_loop_cop",
        "Polis",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["polis2"] = {
        "amb@code_human_police_investigate@idle_a",
        "idle_b",
        "Polis 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["caprazkollar"] = {
        "amb@world_human_hang_out_street@female_arms_crossed@idle_a",
        "idle_a",
        "Kollar Capraz",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["caprazkollar2"] = {
        "amb@world_human_hang_out_street@male_c@idle_a",
        "idle_b",
        "Kollar Capraz 2",
        AnimationOptions = {
            EmoteMoving = true
        }
    },
    ["caprazkollar3"] = {
        "anim@heists@heist_corona@single_team",
        "single_team_loop_boss",
        "Kollar Capraz 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["caprazkollar4"] = {
        "random@street_race",
        "_car_b_lookout",
        "Kollar Capraz 4",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["caprazkollar5"] = {
        "anim@amb@nightclub@peds@",
        "rcmme_amanda1_stand_loop_cop",
        "Kollar Capraz 5",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["kapatkollar"] = {
        "anim@amb@nightclub@peds@",
        "rcmme_amanda1_stand_loop_cop",
        "Kollari Kapat",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["caprazkollar6"] = {
        "random@shop_gunstore",
        "_idle",
        "Kollar Capraz 6",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["kapatkollar2"] = {
        "anim@amb@business@bgen@bgen_no_work@",
        "stand_phone_phoneputdown_idle_nowork",
        "Kollari Kapat 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["caprazkollar7"] = {
        "rcmnigel1a_band_groupies",
        "base_m2",
        "Kollar Capraz 7",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["lanetolsun"] = {
        "gestures@m@standing@casual",
        "gesture_damn",
        "Lanet Olsun",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 1000
        }
    },
    ["lanetolsun2"] = {
        "anim@am_hold_up@male",
        "shoplift_mid",
        "Lanet Olsun 2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 1000
        }
    },
    ["assagiisaret"] = {
        "gestures@f@standing@casual",
        "gesture_hand_down",
        "Asagi isaret Et",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 1000
        }
    },
    ["teslimol"] = {
        "random@arrests@busted",
        "idle_a",
        "Teslim Ol",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["teslimol2"] = {
        "mp_bank_heist_1",
        "f_cower_02",
        "Teslim Ol 2",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["teslimol3"] = {
        "mp_bank_heist_1",
        "m_cower_01",
        "Teslim Ol 3",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["teslimol4"] = {
        "mp_bank_heist_1",
        "m_cower_02",
        "Teslim Ol 4",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["teslimol5"] = {
        "random@arrests",
        "kneeling_arrest_idle",
        "Teslim Ol 5",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["teslimol6"] = {
        "rcmbarry",
        "m_cower_01",
        "Teslim Ol 6",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["yuzavucla"] = {
        "anim@mp_player_intcelebrationfemale@face_palm",
        "face_palm",
        "Yuzunu Avucla",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 8000
        }
    },
    ["yuzavucla2"] = {
        "random@car_thief@agitated@idle_a",
        "agitated_idle_a",
        "Yuzunu Avucla 2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 8000
        }
    },
    ["yuzavucla3"] = {
        "missminuteman_1ig_2",
        "tasered_2",
        "Yuzunu Avucla 3",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 8000
        }
    },
    ["yuzavucla4"] = {
        "anim@mp_player_intupperface_palm",
        "idle_a",
        "Yuzunu Avucla 4",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["yeredus"] = {
        "random@drunk_driver_1",
        "drunk_fall_over",
        "Yere Dus"
    },
    ["yeredus2"] = {
        "mp_suicide",
        "pistol",
        "Yere Dus 2"
    },
    ["yeredus3"] = {
        "mp_suicide",
        "pill",
        "Yere Dus 3"
    },
    ["yeredus4"] = {
        "friends@frf@ig_2",
        "knockout_plyr",
        "Yere Dus 4"
    },
    ["yeredus5"] = {
        "anim@gangops@hostage@",
        "victim_fail",
        "Yere Dus 5"
    },
    ["ayaktauyu"] = {
        "mp_sleep",
        "sleep_loop",
        "Ayakta Uyu",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["benimledovus"] = {
        "anim@deathmatch_intros@unarmed",
        "intro_male_unarmed_c",
        "Benimle Dovus"
    },
    ["benimledovus2"] = {
        "anim@deathmatch_intros@unarmed",
        "intro_male_unarmed_e",
        "Benimle Dovus 2"
    },
    ["ortaparmak"] = {
        "anim@mp_player_intselfiethe_bird",
        "idle_a",
        "Orta Parmak",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["ortaparmak2"] = {
        "anim@mp_player_intupperfinger",
        "idle_a_fp",
        "Orta Parmak 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["bekle"] = {
        "random@shop_tattoo",
        "_idle_a",
        "Bekle",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["bekle2"] = {
        "missbigscore2aig_3",
        "wait_for_van_c",
        "Bekle 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["bekle3"] = {
        "amb@world_human_hang_out_street@female_hold_arm@idle_a",
        "idle_a",
        "Bekle 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["bekle4"] = {
        "amb@world_human_hang_out_street@Female_arm_side@idle_a",
        "idle_a",
        "Bekle 4",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["bekle5"] = {
        "missclothing",
        "idle_storeclerk",
        "Bekle 5",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["bekle6"] = {
        "timetable@amanda@ig_2",
        "ig_2_base_amanda",
        "Bekle 6",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["bekle7"] = {
        "rcmnigel1cnmt_1c",
        "base",
        "Bekle 7",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["bekle8"] = {
        "rcmjosh1",
        "idle",
        "Bekle 8",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["bekle9"] = {
        "rcmjosh2",
        "josh_2_intp1_base",
        "Bekle 9",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["bekle10"] = {
        "timetable@amanda@ig_3",
        "ig_3_base_tracy",
        "Bekle 10",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["bekle11"] = {
        "misshair_shop@hair_dressers",
        "keeper_base",
        "Bekle 11",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["bekle12"] = {
        "rcmjosh1",
        "keeper_base",
        "Bekle 12",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["bekle13"] = {
        "rcmnigel1a",
        "base",
        "Bekle 13",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["dagcilik"] = {
        "move_m@hiking",
        "idle",
        "Dagcilik",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    
    ["saril"] = {
        "mp_ped_interaction",
        "kisses_guy_a",
        "Saril"
    },
    ["saril2"] = {
        "mp_ped_interaction",
        "kisses_guy_b",
        "Saril 2"
    },
    ["incele"] = {
        "random@train_tracks",
        "idle_e",
        "incele"
    },
    ["cazeller"] = {
        "anim@mp_player_intcelebrationfemale@jazz_hands",
        "jazz_hands",
        "Caz Eller",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 6000
        }
    },
    ["kosu"] = {
        "amb@world_human_jog_standing@male@idle_a",
        "idle_a",
        "Kosu",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["kosu2"] = {
        "amb@world_human_jog_standing@female@idle_a",
        "idle_a",
        "Kosu 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["kosu3"] = {
        "amb@world_human_power_walker@female@idle_a",
        "idle_a",
        "Kosu 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["kosu4"] = {
        "move_m@joy@a",
        "walk",
        "Kosu 4",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["isinmahareketi"] = {
        "timetable@reunited@ig_2",
        "jimmy_getknocked",
        "isinma Hareketi",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dizcok"] = {
        "rcmextreme3",
        "idle",
        "Diz Cok",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dizcok2"] = {
        "amb@world_human_bum_wash@male@low@idle_a",
        "idle_a",
        "Diz Cok 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["kekooturusu"] = {
        "anim@model_kylie_insta",
        "kylie_insta_clip",
        "Keko Oturusu",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["vurma"] = {
        "timetable@jimmy@doorknock@",
        "knockdoor_idle",
        "Vurma",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["vurma2"] = {
        "missheistfbi3b_ig7",
        "lift_fibagent_loop",
        "Vurma 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["elcatirdat"] = {
        "anim@mp_player_intcelebrationfemale@knuckle_crunch",
        "knuckle_crunch",
        "Elleri Çatirdat",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["yaslan"] = {
        "amb@world_human_leaning@female@wall@back@hand_up@idle_a",
        "idle_a",
        "Yaslan",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["yaslan2"] = {
        "amb@world_human_leaning@female@wall@back@holding_elbow@idle_a",
        "idle_a",
        "Yaslan 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["yaslan3"] = {
        "amb@world_human_leaning@male@wall@back@foot_up@idle_a",
        "idle_a",
        "Yaslan 3",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["yaslan4"] = {
        "amb@world_human_leaning@male@wall@back@hands_together@idle_b",
        "idle_b",
        "Yaslan 4",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["egilflort"] = {
        "random@street_race",
        "_car_a_flirt_girl",
        "Egilerek Flortoz",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["ybar"] = {
        "amb@prop_human_bum_shopping_cart@male@idle_a",
        "idle_c",
        "Bara Yaslan",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["ybar2"] = {
        "anim@amb@nightclub@lazlow@ig1_vip@",
        "clubvip_base_laz",
        "Bara Yaslan 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["ybar3"] = {
        "anim@heists@prison_heist",
        "ped_b_loop_a",
        "Bara Yaslan 3",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["ybar4"] = {
        "anim@mp_ferris_wheel",
        "idle_a_player_one",
        "Bara Yaslan 4",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["ybar5"] = {
        "anim@mp_ferris_wheel",
        "idle_a_player_two",
        "Bara Yaslan 5",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["yyaslan"] = {
        "timetable@mime@01_gc",
        "idle_a",
        "Yana Yaslan",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["yyaslan2"] = {
        "misscarstealfinale",
        "packer_idle_1_trevor",
        "Yana Yaslan 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["yyaslan3"] = {
        "misscarstealfinalecar_5_ig_1",
        "waitloop_lamar",
        "Yana Yaslan 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["yyaslan4"] = {
        "misscarstealfinalecar_5_ig_1",
        "waitloop_lamar",
        "Yana Yaslan 4",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["yyaslan5"] = {
        "rcmjosh2",
        "josh_2_intp1_base",
        "Yana Yaslan 5",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["ben"] = {
        "gestures@f@standing@casual",
        "gesture_me_hard",
        "Ben",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 1000
        }
    },
    ["mekanik"] = {
        "mini@repair",
        "fixing_a_ped",
        "mekanik",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["mekanik2"] = {
        "mini@repair",
        "fixing_a_player",
        "Mekanik 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["mekanik3"] = {
        "amb@world_human_vehicle_mechanic@male@base",
        "base",
        "Mekanik 3",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["mekanik4"] = {
        "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
        "machinic_loop_mechandplayer",
        "Mekanik 4",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["mekanik5"] = {
        "amb@prop_human_movie_bulb@idle_a",
        "idle_b",
        "Mekanik 5",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["doktor"] = {
        "amb@medic@standing@tendtodead@base",
        "base",
        "Doktor",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["meditasyon"] = {
        "rcmcollect_paperleadinout@",
        "meditiate_idle",
        "Meditasyon",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["meditasyon2"] = {
        "rcmepsilonism3",
        "ep_3_rcm_marnie_meditating",
        "Meditasyon 2",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["meditasyon3"] = {
        "rcmepsilonism3",
        "base_loop",
        "Meditasyon 3",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["metal"] = {
        "anim@mp_player_intincarrockstd@ps@",
        "idle_a",
        "Metal",
        AnimationOptions = {
            -- CHANGE ME
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["hayir"] = {
        "anim@heists@ornate_bank@chat_manager",
        "fail",
        "Hayir",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["hayir2"] = {
        "mp_player_int_upper_nod",
        "mp_player_int_nod_no",
        "Hayir 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["buruntikaci"] = {
        "anim@mp_player_intcelebrationfemale@nose_pick",
        "nose_pick",
        "Burun Tikaci",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["olamaz"] = {
        "gestures@m@standing@casual",
        "gesture_no_way",
        "Olamaz",
        AnimationOptions = {
            EmoteDuration = 1500,
            EmoteMoving = true
        }
    },
    ["tamam"] = {
        "anim@mp_player_intselfiedock",
        "idle_a",
        "Tamam",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["elhareketi"] = {
        "anim@mp_player_intincardockstd@rds@",
        "idle_a",
        "El Hareketi",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["ustunucikar"] = {
        "re@construction",
        "out_of_breath",
        "Ustunu Cikarma",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["pikap"] = {
        "random@domestic",
        "pickup_low",
        "Pikap"
    },
    ["itmek"] = {
        "missfinale_c2ig_11",
        "pushcar_offcliff_f",
        "itmek",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["itmek2"] = {
        "missfinale_c2ig_11",
        "pushcar_offcliff_m",
        "itmek 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["burasi"] = {
        "gestures@f@standing@casual",
        "gesture_point",
        "Burasi",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["sinav"] = {
        "amb@world_human_push_ups@male@idle_a",
        "idle_d",
        "Sinav Cek",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["gerisay"] = {
        "random@street_race",
        "grid_girl_race_start",
        "Geri Sayim",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["sagtaraf"] = {
        "mp_gun_shop_tut",
        "indicate_right",
        "Sag Taraf",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["aselam"] = {
        "anim@mp_player_intincarsalutestd@ds@",
        "idle_a",
        "Asker Selami",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["aselam2"] = {
        "anim@mp_player_intincarsalutestd@ps@",
        "idle_a",
        "Asker Selami 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["aselam3"] = {
        "anim@mp_player_intuppersalute",
        "idle_a",
        "Asker Selami 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["korkmus"] = {
        "random@domestic",
        "f_distressed_loop",
        "Korkmus",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["korkmus2"] = {
        "random@homelandsecurity",
        "knees_loop_girl",
        "Korkmus 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["elhareketi2"] = {
        "misscommon@response",
        "screw_you",
        "El Haraketi 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["usirkele"] = {
        "move_m@_idles@shake_off",
        "shakeoff_1",
        "Ustunu Sirkele",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 3500
        }
    },
    ["vurulmus"] = {
        "random@dealgonewrong",
        "idle_a",
        "Vurulmus",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["Uyu"] = {
        "timetable@tracy@sleep@",
        "idle_c",
        "Uyumak",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["omuzsilk"] = {
        "gestures@f@standing@casual",
        "gesture_shrug_hard",
        "Omuz Silkme",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 1000
        }
    },
    ["omuzsilk2"] = {
        "gestures@m@standing@casual",
        "gesture_shrug_hard",
        "Omuz Silkme 2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 1000
        }
    },
    ["otur"] = {
        "anim@amb@business@bgen@bgen_no_work@",
        "sit_phone_phoneputdown_idle_nowork",
        "Otur",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["otur2"] = {
        "rcm_barry3",
        "barry_3_sit_loop",
        "Otur 2",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["otur3"] = {
        "amb@world_human_picnic@male@idle_a",
        "idle_a",
        "Otur 3",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["otur4"] = {
        "amb@world_human_picnic@female@idle_a",
        "idle_a",
        "Otur 4",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["otur5"] = {
        "anim@heists@fleeca_bank@ig_7_jetski_owner",
        "owner_idle",
        "Otur 5",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["otur6"] = {
        "timetable@jimmy@mics3_ig_15@",
        "idle_a_jimmy",
        "Otur 6",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["otur7"] = {
        "anim@amb@nightclub@lazlow@lo_alone@",
        "lowalone_base_laz",
        "Otur 7",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["otur8"] = {
        "timetable@jimmy@mics3_ig_15@",
        "mics3_15_base_jimmy",
        "Otur 8",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["otur9"] = {
        "amb@world_human_stupor@male@idle_a",
        "idle_a",
        "Otur 9",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["otur10"] = {
        "timetable@tracy@ig_14@",
        "ig_14_base_tracy",
        "Otur 10",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["uotur"] = {
        "anim@amb@business@bgen@bgen_no_work@",
        "sit_phone_phoneputdown_sleeping-noworkfemale",
        "Otur (Uzgun)",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["kotur"] = {
        "anim@heists@ornate_bank@hostages@hit",
        "hit_loop_ped_b",
        "Otur (Korkmus)",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["kotur2"] = {
        "anim@heists@ornate_bank@hostages@ped_c@",
        "flinch_loop",
        "Otur (Korkmus) 2",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["kotur3"] = {
        "anim@heists@ornate_bank@hostages@ped_e@",
        "flinch_loop",
        "Otur (Korkmus) 3",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["otursarhos"] = {
        "timetable@amanda@drunk@base",
        "base",
        "Otur (Sarhos)",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["sotur"] = {
        "timetable@ron@ig_5_p3",
        "ig_5_p3_base",
        "Sanldaye Otur",
        AnimationOptions = {
            EmoteLoop = true,
			ExitEmote = "offchair",
            ExitEmoteType = "Exits"
        }
    },
    ["sotur2"] = {
        "timetable@reunited@ig_10",
        "base_amanda",
        "Sanldaye Otur 2",
        AnimationOptions = {
            EmoteLoop = true,
			ExitEmote = "offchair",
            ExitEmoteType = "Exits"
        }
    },
    ["sotur3"] = {
        "timetable@ron@ig_3_couch",
        "base",
        "Sanldaye Otur 3",
        AnimationOptions = {
            EmoteLoop = true,
			ExitEmote = "offchair",
            ExitEmoteType = "Exits"
        }
    },
    ["sotur4"] = {
        "timetable@jimmy@mics3_ig_15@",
        "mics3_15_base_tracy",
        "Sanldaye Otur 4",
        AnimationOptions = {
            EmoteLoop = true,
			ExitEmote = "offchair",
            ExitEmoteType = "Exits"
        }
    },
    ["sotur5"] = {
        "timetable@maid@couch@",
        "base",
        "Sanldaye Otur 5",
        AnimationOptions = {
            EmoteLoop = true,
			ExitEmote = "offchair",
            ExitEmoteType = "Exits"
        }
    },
    ["sotur6"] = {
        "timetable@ron@ron_ig_2_alt1",
        "ig_2_alt1_base",
        "Sanldaye Otur 6",
        AnimationOptions = {
            EmoteLoop = true,
			ExitEmote = "offchair",
            ExitEmoteType = "Exits"
        }
    },
    ["sotur7"] = { -- Custom Emote By QueenSistersAnimations
        "sitkylie@queensisters",
        "kylie_clip",
        "Sanldaye Otur 7",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
			ExitEmote = "offchair",
            ExitEmoteType = "Exits"
       }
    },
    ["mekik"] = {
        "amb@world_human_sit_ups@male@idle_a",
        "idle_a",
        "Mekik Cek",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["alkis2"] = {
        "anim@arena@celeb@flat@solo@no_props@",
        "angry_clap_a_player_a",
        "Alkis Sinirli",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["alkis3"] = {
        "anim@mp_player_intupperslow_clap",
        "idle_a",
        "Alkis Yavas",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["alkis"] = {
        "amb@world_human_cheering@male_a",
        "base",
        "Alkis",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["alkis4"] = {
        "anim@mp_player_intcelebrationfemale@slow_clap",
        "slow_clap",
        "Alkis Yavas 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["alkis5"] = {
        "anim@mp_player_intcelebrationmale@slow_clap",
        "slow_clap",
        "Alkis Yavas 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["koku"] = {
        "move_p_m_two_idles@generic",
        "fidget_sniff_fingers",
        "Kotu Kok",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["teslimol6"] = {
        "random@countryside_gang_fight",
        "biker_02_stickup_loop",
        "Teslim Ol 6",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["tokezlemek"] = {
        "misscarsteal4@actor",
        "stumble",
        "Tokezlemek",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["sersemlemek"] = {
        "stungun@standing",
        "damage",
        "Sersemlemek",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["guneslenmek"] = {
        "amb@world_human_sunbathe@male@back@base",
        "base",
        "Guneslenmek",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["guneslenmek2"] = {
        "amb@world_human_sunbathe@female@back@base",
        "base",
        "Guneslenmek 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["t"] = {
        "missfam5_yoga",
        "a2_pose",
        "T Pozu",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["t2"] = {
        "mp_sleep",
        "bind_pose_180",
        "T Pozu 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["dusun5"] = {
        "mp_cp_welcome_tutthink",
        "b_think",
        "Dusunmek 5",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 2000
        }
    },
    ["dusun"] = {
        "misscarsteal4@aliens",
        "rehearsal_base_idle_director",
        "Dusunmek",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["dusun3"] = {
        "timetable@tracy@ig_8@base",
        "base",
        "Dusunmek 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["dusun2"] = {
        "missheist_jewelleadinout",
        "jh_int_outro_loop_a",
        "Dusunmek 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["tamamdir3"] = {
        "anim@mp_player_intincarthumbs_uplow@ds@",
        "enter",
        "Tamamdir 3",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 3000
        }
    },
    ["tamamdir2"] = {
        "anim@mp_player_intselfiethumbs_up",
        "idle_a",
        "Tamamdir 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["tamamdir"] = {
        "anim@mp_player_intupperthumbs_up",
        "idle_a",
        "Tamamdir",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["yazma"] = {
        "anim@heists@prison_heiststation@cop_reactions",
        "cop_b_idle",
        "Yazmak",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["yazma2"] = {
        "anim@heists@prison_heistig1_p1_guard_checks_bus",
        "loop",
        "Yazmak 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["yazma3"] = {
        "mp_prison_break",
        "hack_loop",
        "Yazmak 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["yazma4"] = {
        "mp_fbi_heist",
        "loop",
        "Yazmak 4",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["elisit"] = {
        "amb@world_human_stand_fire@male@idle_a",
        "idle_a",
        "Elini isitma",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["selam4"] = {
        "random@mugging5",
        "001445_01_gangintimidation_1_female_idle_b",
        "Selam Ver 4",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 3000
        }
    },
    ["selam2"] = {
        "anim@mp_player_intcelebrationfemale@wave",
        "wave",
        "Selam Ver 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["selam3"] = {
        "friends@fra@ig_1",
        "over_here_idle_a",
        "Selam Ver 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["selam"] = {
        "friends@frj@ig_1",
        "wave_a",
        "Selam Ver",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["selam5"] = {
        "friends@frj@ig_1",
        "wave_b",
        "Selam Ver 5",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["selam6"] = {
        "friends@frj@ig_1",
        "wave_c",
        "Selam Ver 6",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["selam7"] = {
        "friends@frj@ig_1",
        "wave_d",
        "Selam Ver 7",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["selam8"] = {
        "friends@frj@ig_1",
        "wave_e",
        "Selam Ver 8",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["selam9"] = {
        "gestures@m@standing@casual",
        "gesture_hello",
        "Selam Ver 9",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["islik"] = {
        "taxi_hail",
        "hail_taxi",
        "islik",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 1300
        }
    },
    ["islik2"] = {
        "rcmnigel1c",
        "hailing_whistle_waive_a",
        "islik 2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 2000
        }
    },
    ["yeah"] = {
        "anim@mp_player_intupperair_shagging",
        "idle_a",
        "Yeah",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["lift"] = {
        "random@hitch_lift",
        "idle_f",
        "Lift",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["lol"] = {
        "anim@arena@celeb@flat@paired@no_props@",
        "laugh_a_player_b",
        "LOL",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["lol2"] = {
        "anim@arena@celeb@flat@solo@no_props@",
        "giggle_a_player_b",
        "LOL 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["statue2"] = {
        "fra_0_int-1",
        "cs_lamardavis_dual-1",
        "Statue 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["statue3"] = {
        "club_intro2-0",
        "csb_englishdave_dual-0",
        "Statue 3",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["gangsign"] = {
        "mp_player_int_uppergang_sign_a",
        "mp_player_int_gang_sign_a",
        "Gang Sign",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["gangsign2"] = {
        "mp_player_int_uppergang_sign_b",
        "mp_player_int_gang_sign_b",
        "Gang Sign 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["passout"] = {
        "missarmenian2",
        "drunk_loop",
        "Passout",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["passout2"] = {
        "missarmenian2",
        "corpse_search_exit_ped",
        "Passout 2",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["passout3"] = {
        "anim@gangops@morgue@table@",
        "body_search",
        "Passout 3",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["passout4"] = {
        "mini@cpr@char_b@cpr_def",
        "cpr_pumpchest_idle",
        "Passout 4",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["passout5"] = {
        "random@mugging4",
        "flee_backward_loop_shopkeeper",
        "Passout 5",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["petting"] = {
        "creatures@rottweiler@tricks@",
        "petting_franklin",
        "Petting",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["crawl"] = {
        "move_injured_ground",
        "front_loop",
        "Crawl",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["flip2"] = {
        "anim@arena@celeb@flat@solo@no_props@",
        "cap_a_player_a",
        "Flip 2"
    },
    ["flip"] = {
        "anim@arena@celeb@flat@solo@no_props@",
        "flip_a_player_a",
        "Flip"
    },
    ["slide"] = {
        "anim@arena@celeb@flat@solo@no_props@",
        "slide_a_player_a",
        "Slide"
    },
    ["slide2"] = {
        "anim@arena@celeb@flat@solo@no_props@",
        "slide_b_player_a",
        "Slide 2"
    },
    ["slide3"] = {
        "anim@arena@celeb@flat@solo@no_props@",
        "slide_c_player_a",
        "Slide 3"
    },
    ["slugger"] = {
        "anim@arena@celeb@flat@solo@no_props@",
        "slugger_a_player_a",
        "Slugger"
    },
    ["flipoff"] = {
        "anim@arena@celeb@podium@no_prop@",
        "flip_off_a_1st",
        "Flip Off",
        AnimationOptions = {
            EmoteMoving = true
        }
    },
    ["flipoff2"] = {
        "anim@arena@celeb@podium@no_prop@",
        "flip_off_c_1st",
        "Flip Off 2",
        AnimationOptions = {
            EmoteMoving = true
        }
    },
    ["bow"] = {
        "anim@arena@celeb@podium@no_prop@",
        "regal_c_1st",
        "Bow",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["bow2"] = {
        "anim@arena@celeb@podium@no_prop@",
        "regal_a_1st",
        "Bow 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["keyfob"] = {
        "anim@mp_player_intmenu@key_fob@",
        "fob_click",
        "Key Fob",
        AnimationOptions = {
            EmoteLoop = false,
            EmoteMoving = true,
            EmoteDuration = 1000
        }
    },
    ["reaching"] = {
        "move_m@intimidation@cop@unarmed",
        "idle",
        "Reaching",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["slap"] = {
        "melee@unarmed@streamed_variations",
        "plyr_takedown_front_slap",
        "Slap",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true,
            EmoteDuration = 2000
        }
    },
    ["headbutt"] = {
        "melee@unarmed@streamed_variations",
        "plyr_takedown_front_headbutt",
        "Headbutt"
    },
    ["fishdance"] = {
        "anim@mp_player_intupperfind_the_fish",
        "idle_a",
        "Fish Dance",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["peace"] = {
        "mp_player_int_upperpeace_sign",
        "mp_player_int_peace_sign",
        "Peace",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["peace2"] = {
        "anim@mp_player_intupperpeace",
        "idle_a",
        "Peace 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["peace3"] = {
        "anim@mp_player_intupperpeace",
        "idle_a_fp",
        "Peace 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["peace4"] = {
        "anim@mp_player_intincarpeacestd@ds@",
        "idle_a",
        "Peace 4",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["peace5"] = {
        "anim@mp_player_intincarpeacestd@ds@",
        "idle_a_fp",
        "Peace 5",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["peace6"] = {
        "anim@mp_player_intincarpeacebodhi@ds@",
        "idle_a",
        "Peace 6",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["peace7"] = {
        "anim@mp_player_intincarpeacebodhi@ds@",
        "idle_a_fp",
        "Peace 7",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["peacef"] = {
        "anim@mp_player_intcelebrationfemale@peace",
        "peace",
        "Peace Female",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["cpr"] = {
        "mini@cpr@char_a@cpr_str",
        "cpr_pumpchest",
        "CPR",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["cpr2"] = {
        "mini@cpr@char_a@cpr_str",
        "cpr_pumpchest",
        "CPR 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["ledge"] = {
        "missfbi1",
        "ledge_loop",
        "Ledge",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["airplane"] = {
        "missfbi1",
        "ledge_loop",
        "Air Plane",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["peek"] = {
        "random@paparazzi@peek",
        "left_peek_a",
        "Peek",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["cough"] = {
        "timetable@gardener@smoking_joint",
        "idle_cough",
        "Cough",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["stretch"] = {
        "mini@triathlon",
        "idle_e",
        "Stretch",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["stretch2"] = {
        "mini@triathlon",
        "idle_f",
        "Stretch 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["stretch3"] = {
        "mini@triathlon",
        "idle_d",
        "Stretch 3",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["stretch4"] = {
        "rcmfanatic1maryann_stretchidle_b",
        "idle_e",
        "Stretch 4",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["celebrate"] = {
        "rcmfanatic1celebrate",
        "celebrate",
        "Celebrate",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["punching"] = {
        "rcmextreme2",
        "loop_punching",
        "Punching",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["superhero"] = {
        "rcmbarry",
        "base",
        "Superhero",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["superhero2"] = {
        "rcmbarry",
        "base",
        "Superhero 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["mindcontrol"] = {
        "rcmbarry",
        "mind_control_b_loop",
        "Mind Control",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["mindcontrol2"] = {
        "rcmbarry",
        "bar_1_attack_idle_aln",
        "Mind Control 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["clown"] = {
        "rcm_barry2",
        "clown_idle_0",
        "Clown",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["clown2"] = {
        "rcm_barry2",
        "clown_idle_1",
        "Clown 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["clown3"] = {
        "rcm_barry2",
        "clown_idle_2",
        "Clown 3",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["clown4"] = {
        "rcm_barry2",
        "clown_idle_3",
        "Clown 4",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["clown5"] = {
        "rcm_barry2",
        "clown_idle_6",
        "Clown 5",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["tryclothes"] = {
        "mp_clothing@female@trousers",
        "try_trousers_neutral_a",
        "Try Clothes",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["tryclothes2"] = {
        "mp_clothing@female@shirt",
        "try_shirt_positive_a",
        "Try Clothes 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["tryclothes3"] = {
        "mp_clothing@female@shoes",
        "try_shoes_positive_a",
        "Try Clothes 3",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["nervous2"] = {
        "mp_missheist_countrybank@nervous",
        "nervous_idle",
        "Nervous 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["nervous"] = {
        "amb@world_human_bum_standing@twitchy@idle_a",
        "idle_c",
        "Nervous",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["nervous3"] = {
        "rcmme_tracey1",
        "nervous_loop",
        "Nervous 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["uncuff"] = {
        "mp_arresting",
        "a_uncuff",
        "Uncuff",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["namaste"] = {
        "timetable@amanda@ig_4",
        "ig_4_base",
        "Namaste",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["threaten"] = {
        "random@atmrobberygen",
        "b_atm_mugging",
        "Threaten",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["telsiz"] = {
        "random@arrests",
        "generic_radio_chatter",
        "Radio",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["pull"] = {
        "random@mugging4",
        "struggle_loop_b_thief",
        "Pull",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["bird"] = {
        "random@peyote@bird",
        "wakeup",
        "Bird"
    },
    ["chicken"] = {
        "random@peyote@chicken",
        "wakeup",
        "Chicken",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["bark"] = {
        "random@peyote@dog",
        "wakeup",
        "Bark"
    },
    ["rabbit"] = {
        "random@peyote@rabbit",
        "wakeup",
        "Rabbit"
    },
    ["spiderman"] = {
        "missexile3",
        "ex03_train_roof_idle",
        "Spider-Man",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["boi"] = {
        "special_ped@jane@monologue_5@monologue_5c",
        "brotheradrianhasshown_2",
        "BOI",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 3000
        }
    },
    ["adjust"] = {
        "missmic4",
        "michael_tux_fidget",
        "Adjust",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 4000
        }
    },
    ["handsup"] = {
        "missminuteman_1ig_2",
        "handsup_base",
        "Hands Up",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["handsup2"] = {
        "anim@mp_player_intuppersurrender",
        "idle_a_fp",
        "Hands Up 2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ['handsup3'] = {
        'anim@mp_rollarcoaster',
        'hands_up_idle_a_player_one',
        'Hands Up 3',
        AnimationOptions = {
          EmoteMoving = true,
          EmoteLoop = true
        }
    },
    ["valet"] = {
        "anim@amb@casino@valet_scenario@pose_a@",
        "base_a_m_y_vinewood_01",
        "Valet",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["valet2"] = {
        "anim@amb@casino@valet_scenario@pose_b@",
        "base_a_m_y_vinewood_01",
        "Valet 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["valet3"] = {
        "anim@amb@casino@valet_scenario@pose_d@",
        "base_a_m_y_vinewood_01",
        "Valet 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["tighten"] = {
        "timetable@denice@ig_1",
        "idle_b",
        "Tigten (Yoga)",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["fspose"] = {
        "missfam5_yoga",
        "c2_pose",
        "F Sex Pose",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
        },
        AdultAnimation = true
    },
    ["fspose2"] = {
        "missfam5_yoga",
        "c6_pose",
        "F Sex Pose 2",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
        },
        AdultAnimation = true
    },
    ["fspose3"] = {
        "anim@amb@carmeet@checkout_car@",
        "female_c_idle_d",
        "F Sex Pose 3",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
        },
        AdultAnimation = true
    },
    ["showerf"] = {
        "mp_safehouseshower@female@",
        "shower_enter_into_idle",
        "Shower Enter Female",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true
        }
    },
    ["showerf2"] = {
        "mp_safehouseshower@female@",
        "shower_idle_a",
        "Shower Female",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true
        }
    },
    ["showerf3"] = {
        "mp_safehouseshower@female@",
        "shower_idle_b",
        "Shower Female 2",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true
        }
    },
    ["showerm"] = {
        "mp_safehouseshower@male@",
        "male_shower_idle_a",
        "Shower Enter Male",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true
        }
    },
    ["showerm2"] = {
        "mp_safehouseshower@male@",
        "male_shower_idle_b",
        "Shower Male 2",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true
        }
    },
    ["showerm3"] = {
        "mp_safehouseshower@male@",
        "male_shower_idle_c",
        "Shower Male 3",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true
        }
    },
    ["showerm4"] = {
        "mp_safehouseshower@male@",
        "male_shower_idle_d",
        "Shower Male 4",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true
        }
    },
    ["picklock"] = {
        "missheistfbisetup1",
        "hassle_intro_loop_f",
        "Picklock",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["cleanhands"] = {
        "missheist_agency3aig_23",
        "urinal_sink_loop",
        "Clean Them Filthy Hands",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["cleanface"] = {
        "switch@michael@wash_face",
        "loop_michael",
        "Clean Your Face",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["buzz"] = {
        "anim@apt_trans@buzzer",
        "buzz_reg",
        "Buzz Door",
        AnimationOptions = {
            EmoteLoop = false,
            EmoteMoving = false
        }
    },
    ["grieve"] = {
        "anim@miss@low@fin@vagos@",
        "idle_ped05",
        "Grieve The Dead",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["respect"] = {
        "anim@mp_player_intcelebrationmale@respect",
        "respect",
        "Respect Male",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = false
        }
    },
    ["respectf"] = {
        "anim@mp_player_intcelebrationfemale@respect",
        "respect",
        "Respect Female",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = false
        }
    },
    ["bang"] = {
        "anim@mp_player_intcelebrationfemale@bang_bang",
        "bang_bang",
        "Bang Bang ",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteDuration = 2500
        }
    },
    ["checkcar"] = {
        "anim@amb@carmeet@checkout_car@male_a@idles",
        "idle_b",
        "Check Out · Female ",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["checkcar2"] = {
        "anim@amb@carmeet@checkout_car@male_c@idles",
        "idle_a",
        "Check Out 2 · Male ",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["showboobs"] = {
        "mini@strip_club@backroom@",
        "stripper_b_backroom_idle_b",
        "Show Boobs ",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteDuration = 6000,
        },
        AdultAnimation = true
    },
    ["showboobs2"] = {
        "mini@strip_club@idles@stripper",
        "stripper_idle_05",
        "Show Boobs 2",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteDuration = 6000,
        },
        AdultAnimation = true
    },
    ["watchstripper"] = {
        "amb@world_human_strip_watch_stand@male_c@idle_a",
        "idle_b",
        "Watch Stripper ",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteDuration = 6000,
        },
        AdultAnimation = true
    },
    ["hhands"] = {
        "misssnowie@hearthands",
        "base",
        "Heart Hands",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["posecutef"] = { -- Custom Emote By Pupppy
        "pupppy@freepose01",
        "freepose01",
        "Cute Pose Female",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
   },
    ["posecutef2"] = { -- Custom Emote By Pupppy
        "pupppy@freepose03",
        "freepose03",
        "Cute Pose Female 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
	["posecutef3"] = { -- Custom Emote By Pupppy
        "pupppy@freepose04",
        "freepose04",
        "Cute Pose Female 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
	["posecutef4"] = { -- Custom Emote By QueenSistersAnimations
        "handkylie@queensisters",
        "kylie_clip",
        "Cute Pose Female 4",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["posecutem"] = { -- Custom Emote By Pupppy
        "pupppy@freepose02",
        "freepose02",
        "Cute Pose Male",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["checkwatch"] = { -- Custom Emote By MissSnowie
        "watch@looking_at",
        "base",
        "Check Watch",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["pee"] = {
        "misscarsteal2peeing",
        "peeing_loop",
        "Pee (Male)",
        AnimationOptions = {
            EmoteStuck = true,
            PtfxAsset = "scr_amb_chop",
            PtfxName = "ent_anim_dog_peeing",
            PtfxNoProp = true,
            PtfxPlacement = {
                -0.05,
                0.3,
                0.0,
                0.0,
                90.0,
                90.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['pee'],
            PtfxWait = 3000,
            PtfxCanHold = true,
        },
        AdultAnimation = true
    },
    ["pee2"] = {
        "missbigscore1switch_trevor_piss",
        "piss_loop",
        "Pee 2 (Male)",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            PtfxAsset = "scr_amb_chop",
            PtfxName = "ent_anim_dog_peeing",
            PtfxNoProp = true,
            PtfxPlacement = {
                0.0130,
                0.1030,
                0.0,
                0.0,
                90.0,
                90.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['pee'],
            PtfxWait = 3000,
            PtfxCanHold = true,
        },
        AdultAnimation = true
    },
    ["hump"] = {
        "timetable@trevor@skull_loving_bear",
        "skull_loving_bear",
        "Hump",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
        },
        AdultAnimation = true
    },
    ["wank"] = {
        "anim@mp_player_intselfiewank",
        "idle_a",
        "Wank",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true,
        },
        AdultAnimation = true
    },
    ["wank2"] = {
        "anim@mp_player_intupperwank",
        "idle_a",
        "Wank 2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true,
        },
        AdultAnimation = true
    },
    ["wank3"] = {
        "mp_player_int_upperwank",
        "mp_player_int_wank_02",
        "Wank 3",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true,
        },
        AdultAnimation = true
    },
    ["wank4"] = {
        "mp_player_int_upperwank",
        "mp_player_int_wank_02_fp",
        "Wank 4",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true,
        },
        AdultAnimation = true
    },
    ["wank5"] = {
        "mp_player_intwank",
        "mp_player_int_wank",
        "Wank 5",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = false,
        },
        AdultAnimation = true
    },
    ["calldog"] = {
        "switch@franklin@plays_w_dog",
        "001916_01_fras_v2_9_plays_w_dog_idle",
        "Call Dog",
        AnimationOptions = {
            EmoteLoop = true,
        }
    },
    ["calldogr"] = {
        "missfra0_chop_find",
        "call_chop_r",
        "Call Dog - Right",
        AnimationOptions = {
            EmoteLoop = false,
        }
    },
    ["calldogl"] = {
        "missfra0_chop_find",
        "call_chop_l",
        "Call Dog - Left",
        AnimationOptions = {
            EmoteLoop = false,
        }
    },

    -----------------------------------------------------------------------------------------------------------
    ------ The male and female 'interaction menu' emotes from GTA Online can be found under the following animation directories:
    ------
    ------ Male: anim@mp_player_intcelebrationmale
    ------
    ------ Female: anim@mp_player_intcelebrationfemale

    -----------------------------------------------------------------------------------------------------------




    -----------------------------------------------------------------------------------------------------------
    ------ These are Scenarios, some of these dont work on women and some other issues, but still good to have.
    -----------------------------------------------------------------------------------------------------------
    ["atm"] = {
        "Scenario",
        "PROP_HUMAN_ATM",
        "ATM"
    },
    ["bbq"] = {
        "MaleScenario",
        "PROP_HUMAN_BBQ",
        "BBQ"
    },
    ["bumbin"] = {
        "Scenario",
        "PROP_HUMAN_BUM_BIN",
        "Bum Bin"
    },
    ["bumsleep"] = {
        "Scenario",
        "WORLD_HUMAN_BUM_SLUMPED",
        "Bum Sleep"
    },
    ["cheer"] = {
        "Scenario",
        "WORLD_HUMAN_CHEERING",
        "Cheer"
    },
    ["chinup"] = {
        "Scenario",
        "PROP_HUMAN_MUSCLE_CHIN_UPS",
        "Chinup"
    },
    ["clipboard2"] = {
        "MaleScenario",
        "WORLD_HUMAN_CLIPBOARD",
        "Clipboard 2"
    },
    ["cop"] = {
        "Scenario",
        "WORLD_HUMAN_COP_IDLES",
        "Cop"
    },
    ["drill"] = {
        "Scenario",
        "WORLD_HUMAN_CONST_DRILL",
        "Construction Drilling"
    },
    ["filmshocking"] = {
        "Scenario",
        "WORLD_HUMAN_MOBILE_FILM_SHOCKING",
        "Film Shocking"
    },
    ["flex"] = {
        "Scenario",
        "WORLD_HUMAN_MUSCLE_FLEX",
        "Flex"
    },
    ["flex2"] = { -- Custom Emote By Amnilka
        "frabi@malepose@solo@firstsport",
        "pose_sport_002",
        "Flex 2",
        AnimationOptions = {
            EmoteLoop = true,
			EmoteMoving = true, --- Allows us to flex while performing another animation
        }
    },
	 ["gympose"] = { -- Custom Emote By Amnilka
        "frabi@malepose@solo@firstsport",
        "pose_sport_001",
        "Gym Pose",
        AnimationOptions = {

            EmoteLoop = true,
        }
   },
	 ["gympose2"] = { -- Custom Emote By Amnilka
        "frabi@malepose@solo@firstsport",
        "pose_sport_005",
        "Gym Pose 2 - One Handed Push Up",
        AnimationOptions = {

            EmoteLoop = true
        }
    },
	 ["gympose3"] = { -- Custom Female Emote By Frabi
        "frabi@femalepose@solo@firstsport",
        "fem_pose_sport_004",
        "Gym Pose 3 - Planking Pose",
        AnimationOptions = {

            EmoteLoop = true
        }
    },
	 ["gympose4"] = { -- Custom Female Emote By Frabi
        "frabi@femalepose@solo@firstsport",
        "fem_pose_sport_005",
        "Gym Pose 4 - Sit Ups Pose",
        AnimationOptions = {

            EmoteLoop = true
        }
    },
    ["guard"] = {
        "Scenario",
        "WORLD_HUMAN_GUARD_STAND",
        "Guard"
    },
    ["garden"] = {
        "Scenario",
        "WORLD_HUMAN_GARDENER_PLANT",
        "Gardening"
    },
    ["hammer"] = {
        "Scenario",
        "WORLD_HUMAN_HAMMERING",
        "Hammer"
    },
    ["hangout"] = {
        "Scenario",
        "WORLD_HUMAN_HANG_OUT_STREET",
        "Hangout"
    },
    ["impatient"] = {
        "Scenario",
        "WORLD_HUMAN_STAND_IMPATIENT",
        "Impatient"
    },
    ["janitor"] = {
        "Scenario",
        "WORLD_HUMAN_JANITOR",
        "Janitor"
    },
    ["jog"] = {
        "Scenario",
        "WORLD_HUMAN_JOG_STANDING",
        "Jog"
    },
    ["kneel"] = {
        "Scenario",
        "CODE_HUMAN_MEDIC_KNEEL",
        "Kneel"
    },
    ["lean"] = {
        "Scenario",
        "WORLD_HUMAN_LEANING",
        "Lean"
    },
    ["leanbar"] = {
        "Scenario",
        "PROP_HUMAN_BUM_SHOPPING_CART",
        "Lean Bar"
    },
    ["lookout"] = {
        "Scenario",
        "CODE_HUMAN_CROSS_ROAD_WAIT",
        "Lookout"
    },
    ["maid"] = {
        "Scenario",
        "WORLD_HUMAN_MAID_CLEAN",
        "Maid"
    },
    ["medic"] = {
        "Scenario",
        "CODE_HUMAN_MEDIC_TEND_TO_DEAD",
        "Medic"
    },
    ["musician"] = {
        "MaleScenario",
        "WORLD_HUMAN_MUSICIAN",
        "Musician"
    },
    -- Ambient Music Doesn't Seem To Work For Female, Hence It's Male Only
    ["notepad2"] = {
        "Scenario",
        "CODE_HUMAN_MEDIC_TIME_OF_DEATH",
        "Notepad 2"
    },
    ["parkingmeter"] = {
        "Scenario",
        "PROP_HUMAN_PARKING_METER",
        "Parking Meter"
    },
    ["party"] = {
        "Scenario",
        "WORLD_HUMAN_PARTYING",
        "Party"
    },
    ["texting"] = {
        "Scenario",
        "WORLD_HUMAN_STAND_MOBILE",
        "Texting"
    },
    ["prosthigh"] = {
        "Scenario",
        "WORLD_HUMAN_PROSTITUTE_HIGH_CLASS",
        "Prostitue High"
    },
    ["prostlow"] = {
        "Scenario",
        "WORLD_HUMAN_PROSTITUTE_LOW_CLASS",
        "Prostitue Low"
    },
    ["puddle"] = {
        "Scenario",
        "WORLD_HUMAN_BUM_WASH",
        "Puddle"
    },
    ["record"] = {
        "Scenario",
        "WORLD_HUMAN_MOBILE_FILM_SHOCKING",
        "Record"
    },

    -- Sitchair is a litte special, since you want the player to be seated correctly.
    -- So we set it as "ScenarioObject" and do TaskStartScenarioAtPosition() instead of "AtPlace"
    ["sitchair"] = {
        "ScenarioObject",
        "PROP_HUMAN_SEAT_CHAIR_MP_PLAYER",
        "Sit Chair"
    },
    ["smoke"] = {
        "Scenario",
        "WORLD_HUMAN_SMOKING",
        "Smoke"
    },
    ["smokeweed"] = {
        "MaleScenario",
        "WORLD_HUMAN_DRUG_DEALER",
        "Smoke Weed (Male)"
    },
    -- Male
    ["smokepot"] = {
        "Scenario",
        "WORLD_HUMAN_SMOKING_POT",
        "Smoke Weed (Female)"
    },
    -- Female
    ["statue"] = {
        "Scenario",
        "WORLD_HUMAN_HUMAN_STATUE",
        "Statue"
    },
    ["sunbathe3"] = {
        "Scenario",
        "WORLD_HUMAN_SUNBATHE",
        "Sunbathe 3"
    },
    ["sunbatheback"] = {
        "Scenario",
        "WORLD_HUMAN_SUNBATHE_BACK",
        "Sunbathe Back"
    },
    ["weld"] = {
        "Scenario",
        "WORLD_HUMAN_WELDING",
        "Weld"
    },
    ["windowshop"] = {
        "Scenario",
        "WORLD_HUMAN_WINDOW_SHOP_BROWSE",
        "Window Shop"
    },
    ["yoga"] = {
        "Scenario",
        "WORLD_HUMAN_YOGA",
        "Yoga"
    },

    -- CASINO DLC EMOTES (Requires gamebuild 2060 or higher)
    ["karate"] = {
        "anim@mp_player_intcelebrationfemale@karate_chops",
        "karate_chops",
        "Karate"
    },
    ["karate2"] = {
        "anim@mp_player_intcelebrationmale@karate_chops",
        "karate_chops",
        "Karate 2"
    },
    ["cutthroat"] = {
        "anim@mp_player_intcelebrationmale@cut_throat",
        "cut_throat",
        "Cut Throat"
    },
    ["cutthroat2"] = {
        "anim@mp_player_intcelebrationfemale@cut_throat",
        "cut_throat",
        "Cut Throat 2"
    },
    ["mindblown"] = {
        "anim@mp_player_intcelebrationmale@mind_blown",
        "mind_blown",
        "Mind Blown",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 4000
        }
    },
    ["mindblown2"] = {
        "anim@mp_player_intcelebrationfemale@mind_blown",
        "mind_blown",
        "Mind Blown 2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 4000
        }
    },
    ["boxing"] = {
        "anim@mp_player_intcelebrationmale@shadow_boxing",
        "shadow_boxing",
        "Boxing",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 4000
        }
    },
    ["boxing2"] = {
        "anim@mp_player_intcelebrationfemale@shadow_boxing",
        "shadow_boxing",
        "Boxing 2",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 4000
        }
    },
    ["stink"] = {
        "anim@mp_player_intcelebrationfemale@stinker",
        "stinker",
        "Stink",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["dusun4"] = {
        "anim@amb@casino@hangout@ped_male@stand@02b@idles",
        "idle_a",
        "Dusunmek 4",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["adjusttie"] = {
        "clothingtie",
        "try_tie_positive_a",
        "Adjust Tie",
        AnimationOptions = {
            EmoteMoving = true,
            EmoteDuration = 5000
        }
    },
    ["shaka"] = {
        "sign@hang_loose",
        "base",
        "Shaka 'Hang Loose'",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["shaka2"] = {
        "sign@hang_loose_casual",
        "base",
        "Shaka 'Hang Loose Casual'",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["relax"] = {
        "lying@on_grass",
        "base",
        "Relax ",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["relax2"] = {
        "lying@on_couch_legs_crossed",
        "base",
        "Relax 2",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["uwu"] = {
        "uwu@egirl",
        "base",
        "UwU",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["sexypose"] = { -- Custom Emote By Little Spoon
        "littlespoon@sexy003",
        "sexy003",
        "Sexy Pose",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
   },
    ["sexypose2"] = { -- Custom Emote By Little Spoon
        "littlespoon@sexy004",
        "sexy004",
        "Sexy Pose 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
        }
     },
    ["sexypose3"] = { -- Custom Emote By Little Spoon
        "littlespoon@sexy005",
        "sexy005",
        "Sexy Pose 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sexypose4"] = { -- Custom Emote By Little Spoon
        "littlespoon@sexy006",
        "sexy006",
        "Sexy Pose 4",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sexypose5"] = { -- Custom Emote By Little Spoon
        "littlespoon@sexy009",
        "sexy009",
        "Sexy Pose 5",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sexypose6"] = { -- Custom Emote By Little Spoon
        "littlespoon@sexy012",
        "sexy012",
        "Sexy Pose 5",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
	["laydownsexy"] = { -- Custom emote by Struggleville
        "anim@female_laying_sexy",
        "laying_sexy_clip",
        "Laying Down Sexy",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
	["model"] = { -- Custom emote by Struggleville
        "anim@female_model_showoff",
        "model_showoff_clip",
        "Model Pose Sexy",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
	["model2"] = { -- Custom Emote By QueenSistersAnimations
        "sitdownonknees@queensisters",
        "sitdown_clip",
        "Model Pose 2",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
       }
    },
	["model3"] = { -- Custom emote by Struggleville
        "anim@female_model_photo_cute",
        "photo_cute_clip",
        "Model Pose 3",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
	["layncry"] = {
        "anim@amb@nightclub@lazlow@lo_sofa@",
        "lowsofa_dlg_fuckedup_laz",
        "Lay & Cry",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
	["layncry2"] = {
        "anim@amb@nightclub@lazlow@lo_sofa@",
        "lowsofa_base_laz",
        "Lay & Cry 2",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
	["layncry3"] = {
        "anim@amb@nightclub@lazlow@lo_sofa@",
        "lowsofa_dlg_notagain_laz",
        "Lay & Cry 3",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
	["layncry4"] = {
        "anim@amb@nightclub@lazlow@lo_sofa@",
        "lowsofa_dlg_notagain_laz",
        "Lay & Cry 4",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
	["layncry5"] = {
        "anim@amb@nightclub@lazlow@lo_sofa@",
        "lowsofa_dlg_shit2strong_laz",
        "Lay & Cry 5",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
	["layncry6"] = {
        "misschinese2_crystalmaze",
        "2int_loop_a_taocheng",
        "Lay & Cry 6",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
	["airforce01"] = { -- MissSnowie
        "airforce@at_ease",
        "base",
        "Airforce - At Ease", -- MissSnowie
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
       }
    },
	["airforce02"] = { -- MissSnowie
        "airforce@attention",
        "base",
        "Airforce - Attention",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
       }
    },
	["airforce03"] = { -- MissSnowie
        "airforce@parade_rest",
        "base",
        "Airforce - Parade Rest",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
       }
    },
	["airforce04"] = {
        "airforce@salute",
        "base",
        "Airforce - Salute",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
       }
    },
	["zombiewalk"] = { -- Custom Emote By BoringNeptune
        "zombies_animations",
        "zombi_walk_01",
        "Zombie Walk",
        AnimationOptions = {
            EmoteLoop = true,
			EmoteMoving = false, -- true looks weird but the option is here
        }
    },
	["zombiewalk2"] = { -- Custom Emote By BoringNeptune
        "zombies_animations",
        "zombi_walk_02",
        "Zombie Walk 2",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
	["zombieagony"] = { -- Custom Emote By BoringNeptune
        "zombies_animations",
        "agony",
        "Zombie Agony",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
	["zombiescream"] = { -- Custom Emote By BoringNeptune
        "zombies_animations",
        "scream",
        "Zombie Scream",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
	["zombiecrawl"] = { -- Custom Emote By BoringNeptune
        "zombies_animations",
        "crawl_01",
        "Zombie Crawl",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
	["laysexy"] = { -- Custom Emote By Amnilka
        "amnilka@photopose@female@homepack001",
        "amnilka_femalehome_photopose_004",
        "Lay Sexy",
        AnimationOptions = {
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
	["gungirl1"] = { -- Custom Emote By Struggleville
        "anim@female_gunbunny_rifle_photo",
        "rifle_photo_clip",
        "Rifle Pose",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
}

--- EMOTES WITH 1 OR 2 PROPS ---
DP.PropEmotes = {
    ["babe1"] = {
        "anim@heists@box_carry@",
        "idle",
        "Baby Seat 1",
        AnimationOptions = {
            Prop = "prop_busbebek_dark_01",
            PropBone = 28422,
            PropPlacement = {
                0.00,
                -0.420,
                -1.290,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["babe2"] = {
        "anim@heists@box_carry@",
        "idle",
        "Baby Seat 2",
        AnimationOptions = {
            Prop = "prop_busbebek_light_01",
            PropBone = 28422,
            PropPlacement = {
                0.00,
                -0.420,
                -1.290,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
    },
    ["jselfie5"] = {"cellphone@self", "selfie", "Selfie 3", AnimationOptions =
    {
       EmoteMoving = false,
       Prop = "prop_npc_phone_02",
       PropBone = 28422,
       PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
       EmoteLoop = true
    }},
    ["jselfiewc"] = {"cellphone@self@franklin@", "west_coast", "Selfie West Coast", AnimationOptions =
    {
       EmoteMoving = false,
       Prop = "prop_npc_phone_02",
       PropBone = 28422,
       PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
       EmoteLoop = true
    }},
    ["jselfie3"] = {"cellphone@self@michael@", "finger_point", "Selfie Finger", AnimationOptions =
    {
       Prop = "prop_npc_phone_02",
       PropBone = 28422,
       PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
       EmoteMoving = false,
       EmoteLoop = true
    }},
    ["jselfie4"] = {"cellphone@self@franklin@", "chest_bump", "Selfie Chest Bump", AnimationOptions =
    {
       Prop = "prop_npc_phone_02",
       PropBone = 28422,
       PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
       EmoteMoving = false,
       EmoteLoop = true
    }},
    ["jselfie1"] = {"cellphone@self@trevor@", "throat_slit", "Selfie", AnimationOptions =
    {
       Prop = "prop_npc_phone_02",
       PropBone = 28422,
       PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
       EmoteMoving = false,
       EmoteLoop = true
    }},
    ["jselfie2"] = {"cellphone@self@trevor@", "proud_finger", "Selfie2", AnimationOptions =
    {
       Prop = "prop_npc_phone_02",
       PropBone = 28422,
       PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
       EmoteMoving = false,
       EmoteLoop = true
    }},
    ["jleaningwallback"] = {"anim@amb@casino@peds@", "amb_world_human_leaning_male_wall_back_mobile_idle_a", "Leaning Wall Back · Male", AnimationOptions =
    {
       Prop = "prop_npc_phone_02",
       PropBone = 28422,
       PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
       EmoteMoving = true,
       EmoteLoop = true
    }},
    ["jreadmessages"] = {"anim@amb@carmeet@take_photos@male_a@base", "base", "Read Messages · Male", AnimationOptions =
    {
       Prop = "prop_npc_phone_02",
       PropBone = 28422,
       PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
       EmoteMoving = false,
       EmoteLoop = true
    }},
    ["jreadmessages2"] = {"anim@amb@carmeet@take_photos@female_b@base", "base", "Read Messages 2 · Female", AnimationOptions =
    {
       Prop = "prop_npc_phone_02",
       PropBone = 28422,
       PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
       EmoteMoving = false,
       EmoteLoop = true
    }},
    ["jdgrave"] = {"anim@amb@drug_field_workers@rake@male_a@base", "base", "Digging Grave", AnimationOptions =
    {
       Prop = 'prop_tool_shovel006',
       PropBone = 28422,
       PropPlacement = {0.0, 0.1, -0.6, 0.0, 0.0, 180.0},
       EmoteMoving = false,
       EmoteLoop = true
    }},
    ["jgangdrink"] = {"amb@world_human_drinking_fat@beer@male@base", "base", "Gang Drink", AnimationOptions =
    {
       Prop = 'prop_cs_beer_bot_40oz_03',
       PropBone = 28422,
       PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
       EmoteMoving = true,
       EmoteLoop = true
    }},
    ["jgangdrink"] = {"amb@world_human_drinking_fat@beer@male@idle_a", "idle_b", "Gang Drink 2", AnimationOptions =
    {
       Prop = 'prop_cs_beer_bot_40oz_03',
       PropBone = 28422,
       PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
       EmoteMoving = true,
       EmoteLoop = true
    }},
    ["jmleaning"] = {"amb@world_human_leaning@male@wall@back@mobile@base", "base", "Mobile Leaning · Male", AnimationOptions =
    {
       Prop = "prop_npc_phone_02",
       PropBone = 28422,
       PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
       EmoteMoving = false,
       EmoteLoop = true
    }},
    ["jtextingmale"] = {"amb@world_human_stand_mobile_fat@male@text@base", "base", "Texting · Male", AnimationOptions =
    {
       Prop = "prop_npc_phone_02",
       PropBone = 28422,
       PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
       EmoteMoving = true,
       EmoteLoop = true
    }},
    ["Custom353"] = {"christiandior@animation", "christiandior_clip", "Custom353", AnimationOptions =
    {
     Prop = 'p_ld_heist_bag_s_2',
     PropBone = 24817,
     PropPlacement = {-0.75, 0.18, -0.016, 180.0, -90.0, 90.0},
     EmoteMoving = false,
     EmoteLoop = true
    }},
    ["Custom354"] = {"christiandior2@animation", "christiandior2_clip", "Custom354", AnimationOptions =
    {
        Prop = "p_ld_heist_bag_s_2",
        PropBone = 57005,
        PropPlacement = {-0.335, -0.345, 0.245, 300.0, 180.0, 30.0},
        EmoteLoop = true,
        EmoteMoving = true,
    }},
    ["Custom355"] = {"christiandior2@animation", "christiandior2_clip", "Custom355", AnimationOptions =
    {
        Prop = "p_ld_heist_bag_s_2",
        PropBone = 57005,
        PropPlacement = {-0.335, -0.345, 0.245, 300.0, 180.0, 30.0},
        EmoteLoop = true,
        EmoteMoving = false,
    }},

    ["umbrella"] = {
        "amb@world_human_drinking@coffee@male@base",
        "base",
        "Umbrella",
        AnimationOptions = {
            Prop = "p_amb_brolly_01",
            PropBone = 57005,
            PropPlacement = {
                0.15,
                0.005,
                0.0,
                87.0,
                -20.0,
                180.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ['umbrella2'] = {
        'rcmnigel1d',
        'base_club_shoulder',
        'Umbrella 2',
        AnimationOptions = {
            Prop = 'p_amb_brolly_01',
            PropBone = 28422,
            PropPlacement = {
                0.0700,
                0.0100,
                0.1100,
                2.3402393,
                -150.9605721,
                57.3374916
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    -----------------------------------------------------------------------------------------------------
    ------ This is an example of an emote with 2 props, pretty simple! ----------------------------------
    -----------------------------------------------------------------------------------------------------
    ["notepad"] = {
        "missheistdockssetup1clipboard@base",
        "base",
        "Notepad",
        AnimationOptions = {
            Prop = 'prop_notepad_01',
            PropBone = 18905,
            PropPlacement = {
                0.1,
                0.02,
                0.05,
                10.0,
                0.0,
                0.0
            },
            SecondProp = 'prop_pencil_01',
            SecondPropBone = 58866,
            SecondPropPlacement = {
                0.11,
                -0.02,
                0.001,
                -120.0,
                0.0,
                0.0
            },
            -- EmoteLoop is used for emotes that should loop, its as simple as that.
            -- Then EmoteMoving is used for emotes that should only play on the upperbody.
            -- The code then checks both values and sets the MovementType to the correct one
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["box"] = {
        "anim@heists@box_carry@",
        "idle",
        "Box",
        AnimationOptions = {
            Prop = "hei_prop_heist_box",
            PropBone = 60309,
            PropPlacement = {
                0.025,
                0.08,
                0.255,
                -145.0,
                290.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["gift"] = { --- Custom Prop & Emote By BzZzi
       "bz@give_love@anim",
	   "bz_give",
	   "Gift",
        AnimationOptions = {
            Prop = 'bzzz_prop_gift_orange',
            PropBone = 57005,
            PropPlacement = {
               0.15,
			  -0.03,
			  -0.14,
			  -77.0,
			  -120.0,
			  40.0
            },
            EmoteMoving = true
        }
   },
    ["gift2"] = { --- Custom Prop & Emote By BzZzi
       "bz@give_love@anim",
	   "bz_give",
	   "Gift 2",
        AnimationOptions = {
            Prop = 'bzzz_prop_gift_purple',
            PropBone = 57005,
            PropPlacement = {
                0.15,
			   -0.03,
			   -0.14,
			   -77.0,
			   -120.0,
			     40.0
            },
            EmoteMoving = true
        }
    },
    ["cake"] = { --- Custom Prop & Emote By BzZzi
       "anim@heists@box_carry@",
	   "idle",
	   "Birthday Cake",
        AnimationOptions = {
            Prop = 'bzzz_prop_cake_birthday_001',
            PropBone = 18905,
            PropPlacement = {
                0.33,
				0.09,
				0.2,
			   -128.0,
			   -245.0,
			    2.0
            },
            EmoteMoving = true
        }
   },
    ["cake2"] = { --- Custom Prop & Emote By BzZzi
       "anim@heists@box_carry@",
	   "idle",
	   "Baby Cake",
        AnimationOptions = {
            Prop = 'bzzz_prop_cake_baby_001',
            PropBone = 18905,
            PropPlacement = {
                0.33,
				0.09,
				0.2,
			   -94.0,
			   -162.0,
			    -44.0
            },
            EmoteMoving = true
        }
    },
    ["cake3"] = { --- Custom Prop & Emote By BzZzi
       "anim@heists@box_carry@",
	   "idle",
	   "Casino Cake",
        AnimationOptions = {
            Prop = 'bzzz_prop_cake_casino001',
            PropBone = 18905,
            PropPlacement = {
                0.33,
				0.09,
				0.2,
			   -54.0,
			   -72.0,
			    -6.0
            },
            EmoteMoving = true
        }
   },
   ["cake4"] = { --- Custom Prop & Emote By BzZzi
       "anim@heists@box_carry@",
	   "idle",
	   "Love Cake",
        AnimationOptions = {
            Prop = 'bzzz_prop_cake_love_001',
            PropBone = 18905,
            PropPlacement = {
                0.28,
				0.06,
				0.2,
			   -54.0,
			   -72.0,
			    -6.0
            },
            EmoteMoving = true
        }
   },
    ["cakew"] = {
        "anim@move_f@waitress",
        "idle",
        "Cake Waiter - Birthday",
        AnimationOptions = {
            Prop = "bzzz_prop_cake_birthday_001",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0100,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["cakew2"] = { --- Custom Prop & Emote By BzZzi
        "anim@move_f@waitress",
        "idle",
        "Cake Waiter - Baby",
        AnimationOptions = {
            Prop = "bzzz_prop_cake_baby_001",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0100,
                0.0,
                0.0,
                80.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["cakew3"] = { --- Custom Prop & Emote By BzZzi
        "anim@move_f@waitress",
        "idle",
        "Cake Waiter - Casino",
        AnimationOptions = {
            Prop = "bzzz_prop_cake_casino001",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0100,
                0.0,
                0.0,
             -160.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
     },
    ["cakew4"] = { --- Custom Prop & Emote By BzZzi
        "anim@move_f@waitress",
        "idle",
        "Cake Waiter - Love",
        AnimationOptions = {
            Prop = "bzzz_prop_cake_love_001",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0100,
                0.0,
                0.0,
              180.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["rose"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Rose",
        AnimationOptions = {
            Prop = "prop_single_rose",
            PropBone = 18905,
            PropPlacement = {
                0.13,
                0.15,
                0.0,
                -100.0,
                0.0,
                -20.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["smoke2"] = {
        "amb@world_human_aa_smoke@male@idle_a",
        "idle_c",
        "Smoke 2",
        AnimationOptions = {
            Prop = 'prop_cs_ciggy_01',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["smoke3"] = {
        "amb@world_human_aa_smoke@male@idle_a",
        "idle_b",
        "Smoke 3",
        AnimationOptions = {
            Prop = 'prop_cs_ciggy_01',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["smoke4"] = {
        "amb@world_human_smoking@female@idle_a",
        "idle_b",
        "Smoke 4",
        AnimationOptions = {
            Prop = 'prop_cs_ciggy_01',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
	["vape"] = {
        "amb@world_human_smoking@male@male_b@base",
        "base",
         "Vape",
        AnimationOptions = {
            Prop = 'ba_prop_battle_vape_01',
            PropBone = 28422,
            PropPlacement = {
                -0.0290,
                0.0070,
                -0.0050,
                91.0,
                270.0,
                -360.0
            },
            EmoteMoving = true,
            EmoteLoop = true,
            PtfxAsset = "core",
            PtfxName = "exp_grd_bzgas_smoke",
			PtfxNoProp = true,
            PtfxPlacement = {
                -0.0100,
				0.0600,
				0.6600,
                0.0,
                0.0,
                0.0,
                2.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['vape'],
            PtfxWait = 0,
            PtfxCanHold = true
        }
    },
    ["vape2"] = {
        "amb@world_human_smoking@male@male_b@base",
        "base",
         "Vape 2",
        AnimationOptions = {
            Prop = 'xm3_prop_xm3_vape_01a',
            PropBone = 28422,
            PropPlacement = {
                -0.02,
                -0.02,
                0.02,
                58.0,
                110.0,
                10.0
            },
            EmoteMoving = true,
            EmoteLoop = true,
            PtfxAsset = "core",
            PtfxName = "exp_grd_bzgas_smoke",
			PtfxNoProp = true,
            PtfxPlacement = {
                -0.0100,
				0.0600,
				0.6600,
                0.0,
                0.0,
                0.0,
                2.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['vape'],
            PtfxWait = 0,
            PtfxCanHold = true
        }
    },
    ["bong"] = {
        "anim@safehouse@bong",
        "bong_stage3",
        "Bong",
        AnimationOptions = {
            Prop = 'hei_heist_sh_bong_01',
            PropBone = 18905,
            PropPlacement = {
                0.10,
                -0.25,
                0.0,
                95.0,
                190.0,
                180.0
            }
        }
    },
    ["bong2"] = {
        "anim@safehouse@bong",
        "bong_stage3",
        "Bong 2",
        AnimationOptions = {
            Prop = 'xm3_prop_xm3_bong_01a',
            PropBone = 18905,
            PropPlacement = {
                0.10,
                -0.25,
                0.0,
                95.0,
                190.0,
                180.0
            }
        }
    },
    ["fishing1"] = {
        "amb@world_human_stand_fishing@idle_a",
        "idle_a",
        "Fishing 1",
        AnimationOptions = {
            Prop = 'prop_fishing_rod_01',
            PropBone = 60309,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["fishing2"] = {
        "amb@world_human_stand_fishing@idle_a",
        "idle_b",
        "Fishing 2",
        AnimationOptions = {
            Prop = 'prop_fishing_rod_01',
            PropBone = 60309,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["fishing3"] = {
        "amb@world_human_stand_fishing@idle_a",
        "idle_c",
        "Fishing 3",
        AnimationOptions = {
            Prop = 'prop_fishing_rod_01',
            PropBone = 60309,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["suitcase"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Suitcase",
        AnimationOptions = {
            Prop = "prop_ld_suitcase_01",
            PropBone = 57005,
            PropPlacement = {
                0.35,
                0.0,
                0.0,
                0.0,
                266.0,
                90.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["suitcase2"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Suitcase 2",
        AnimationOptions = {
            Prop = "prop_security_case_01",
            PropBone = 57005,
            PropPlacement = {
                0.13,
                0.0,
                -0.01,
                0.0,
                280.0,
                90.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["boombox"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Boombox",
        AnimationOptions = {
            Prop = "prop_boombox_01",
            PropBone = 57005,
            PropPlacement = {
                0.27,
                0.0,
                0.0,
                0.0,
                263.0,
                58.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["boombox2"] = {
        "molly@boombox1",
        "boombox1_clip",
        "Boombox 2",
        AnimationOptions = {
            Prop = "prop_cs_sol_glasses",
            PropBone = 31086,
            PropPlacement = {
                0.0440,
                0.0740,
                0.0000,
                -160.9843,
                -88.7288,
                -0.6197
            },
            SecondProp = 'prop_ghettoblast_02',
            SecondPropBone = 10706,
            SecondPropPlacement = {
                -0.2310,
                -0.0770,
                0.2410,
                -179.7256,
                176.7406,
                23.0190
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["toolbox"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Toolbox",
        AnimationOptions = {
            Prop = "prop_tool_box_04",
            PropBone = 28422,
            PropPlacement = {
                0.3960,
                0.0410,
                -0.0030,
                -90.00,
                0.0,
                90.00
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["toolbox2"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Toolbox 2",
        AnimationOptions = {
            Prop = "imp_prop_tool_box_01a",
            PropBone = 28422,
            PropPlacement = {
                0.3700,
                0.0200,
                0.0,
                90.00,
                0.0,
                -90.00
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["toolbox3"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Toolbox 3",
        AnimationOptions = {
            Prop = "xm3_prop_xm3_tool_box_01a",
            PropBone = 28422,
            PropPlacement = {
                0.3700,
                0.0200,
                0.0,
                90.00,
                0.0,
                -90.00
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["toolbox4"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Toolbox 4",
        AnimationOptions = {
            Prop = "xm3_prop_xm3_tool_box_02a",
            PropBone = 28422,
            PropPlacement = {
                0.3700,
                0.0200,
                0.0,
                90.00,
                0.0,
                -90.00
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["gbag"] = {
        "missfbi4prepp1",
        "_idle_garbage_man",
        "Garbage Bag",
        AnimationOptions = {
            Prop = "prop_cs_street_binbag_01",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0400,
                -0.0200,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["beerbox"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Beer Box 1",
        AnimationOptions = {
            Prop = "v_ret_ml_beerdus",
            PropBone = 57005,
            PropPlacement = {
                0.22,
                0.0,
                0.0,
                0.0,
                266.0,
                48.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["beerbox2"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Beer Box 2",
        AnimationOptions = {
            Prop = "v_ret_ml_beeram",
            PropBone = 57005,
            PropPlacement = {
                0.22,
                0.0,
                0.0,
                0.0,
                266.0,
                48.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["beerbox3"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Beer Box 3",
        AnimationOptions = {
            Prop = "v_ret_ml_beerpride",
            PropBone = 57005,
            PropPlacement = {
                0.22,
                0.0,
                0.0,
                0.0,
                266.0,
                48.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["beerbox4"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Beer Box 4",
        AnimationOptions = {
            Prop = "v_ret_ml_beerbar",
            PropBone = 57005,
            PropPlacement = {
                0.22,
                0.0,
                0.0,
                0.0,
                266.0,
                60.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["mugshot"] = {
        "mp_character_creation@customise@male_a",
        "loop",
        "Mugshot",
        AnimationOptions = {
            Prop = 'prop_police_id_board',
            PropBone = 58868,
            PropPlacement = {
                0.12,
                0.24,
                0.0,
                5.0,
                0.0,
                70.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["coffee"] = {
        "amb@world_human_drinking@coffee@male@idle_a",
        "idle_c",
        "Coffee",
        AnimationOptions = {
            Prop = 'p_amb_coffeecup_01',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["whiskey"] = {
        "amb@world_human_drinking@coffee@male@idle_a",
        "idle_c",
        "Whiskey",
        AnimationOptions = {
            Prop = 'prop_drink_whisky',
            PropBone = 28422,
            PropPlacement = {
                0.01,
                -0.01,
                -0.06,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["whiskeyb"] = {
        "amb@world_human_drinking@beer@male@idle_a",
        "idle_a",
        "Whiskey Bottle",
        AnimationOptions = {
            Prop = 'ba_prop_battle_whiskey_bottle_2_s',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.05,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["beer"] = {
        "amb@world_human_drinking@beer@male@idle_a",
        "idle_c",
        "Beer",
        AnimationOptions = {
            Prop = 'prop_amb_beer_bottle',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.06,
                0.0,
                15.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["whiskeyb2"] = {
        "amb@world_human_drinking@beer@male@idle_a",
        "idle_a",
        "Whiskey Bottle 2",
        AnimationOptions = {
            Prop = 'ba_prop_battle_whiskey_bottle_2_s',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.05,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["beer2"] = {
        "amb@world_human_drinking@beer@male@idle_a",
        "idle_c",
        "Beer 2",
        AnimationOptions = {
            Prop = 'prop_amb_beer_bottle',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.06,
                0.0,
                15.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["whiskeyb3"] = {
        "amb@world_human_drinking@beer@male@idle_a",
        "idle_a",
        "Whiskey Bottle 3",
        AnimationOptions = {
            Prop = 'ba_prop_battle_whiskey_bottle_2_s',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.05,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["beerf"] = {
        "amb@world_human_drinking@beer@female@idle_a",
        "idle_a",
        "Beer Female",
        AnimationOptions = {
            Prop = 'prop_amb_beer_bottle',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                -0.0,
                0.05,
                15.0,
                15.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["wine2"] = {
        "amb@world_human_drinking@beer@female@idle_a",
        "idle_e",
        "Wine 2 - Bottle",
        AnimationOptions = {
            Prop = 'prop_wine_rose',
            PropBone = 28422,
            PropPlacement = {
                -0.0,
                0.04,
                -0.19,
                10.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
            ---       PropPlacement = {-0.0, 0.03, -0.20, 5.0, 0.0, 0.0},
            ---     F&B   L&R   U&D  R.F&B
        }
    },
    ["beerf3"] = {
        "amb@world_human_drinking@beer@female@idle_a",
        "idle_a",
        "Beer Female 3",
        AnimationOptions = {
            Prop = 'prop_amb_beer_bottle',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                -0.0,
                0.05,
                15.0,
                15.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["wine3"] = {
        "amb@world_human_drinking@beer@female@idle_a",
        "idle_e",
        "Wine 3 - Bottle",
        AnimationOptions = {
            Prop = 'prop_wine_rose',
            PropBone = 28422,
            PropPlacement = {
                -0.0,
                0.04,
                -0.19,
                10.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["cup"] = {
        "amb@world_human_drinking@coffee@male@idle_a",
        "idle_c",
        "Cup",
        AnimationOptions = {
            Prop = 'prop_plastic_cup_02',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["apple"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Apple",
        AnimationOptions = {
            Prop = 'sf_prop_sf_apple_01b',
            PropBone = 60309,
            PropPlacement = {
                0.0,
                0.0150,
                -0.0200,
                -124.6964,
                -166.5760,
                8.4572
            },
            EmoteMoving = true
        }
    },
    ["taco"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Taco",
        AnimationOptions = {
            Prop = 'prop_taco_01',
            PropBone = 60309,
            PropPlacement = {
                -0.0170,
                0.0070,
                -0.0210,
                107.9846,
                -105.0251,
                55.7779
            },
            EmoteMoving = true
        }
    },
    ["hotdog"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Hotdog",
        AnimationOptions = {
            Prop = 'prop_cs_hotdog_02',
            PropBone = 60309,
            PropPlacement = {
                -0.0300,
                0.0100,
                -0.0100,
                95.1071,
                94.7001,
                -66.9179
            },
            EmoteMoving = true
        }
    },
    ["donut"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Donut",
        AnimationOptions = {
            Prop = 'prop_amb_donut',
            PropBone = 18905,
            PropPlacement = {
                0.13,
                0.05,
                0.02,
                -50.0,
                16.0,
                60.0
            },
            EmoteMoving = true
        }
    },
    ["donut2"] = { --- Custom Prop by Bzzzi
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Donut Chocolate",
        AnimationOptions = {
            Prop = 'bzzz_foodpack_donut002',
            PropBone = 60309,
            PropPlacement = {
                0.0000,
                -0.0300,
                -0.0100,
                10.0000,
                0.0000,
                -1.0000
            },
            EmoteMoving = true
        }
    },
    ["donut3"] = { --- Custom Prop by Bzzzi
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Donut Raspberry",
        AnimationOptions = {
            Prop = 'bzzz_foodpack_donut001',
            PropBone = 60309,
            PropPlacement = {
                0.0000,
                -0.0300,
                -0.0100,
                10.0000,
                0.0000,
                -1.0000
            },
            EmoteMoving = true
        }
    },
    ["desert"] = { --- Custom Prop by Bzzzi
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Eat dessert",
        AnimationOptions = {
            Prop = 'bzzz_food_dessert_a',
            PropBone = 18905,
            PropPlacement = {
                0.15,
                0.03,
                0.03,
                -42.0,
                -36.0,
                0.0
            },
            EmoteMoving = true
        }
    },
    ["croissant"] = { --- Custom Prop by Bzzzi
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Croissant",
        AnimationOptions = {
            Prop = 'bzzz_foodpack_croissant001',
            PropBone = 60309,
            PropPlacement = {
                0.0000,
                0.0000,
                -0.0100,
                0.0000,
                0.0000,
                90.0000
            },
            EmoteMoving = true
        }
    },
    ["gingerbread"] = { --- Custom Prop by Bzzzi
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Xmas Gingerbread Man",
        AnimationOptions = {
            Prop = 'bzzz_food_xmas_gingerbread_a',
            PropBone = 18905,
            PropPlacement = {
                0.16,
                0.04,
                0.03,
                18.0,
                164.0,
                -5.0
            },
            EmoteMoving = true
        }
    },
    ["candycane"] = { --- Custom Prop by Bzzzi
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Xmas Candy Cane - Red",
        AnimationOptions = {
            Prop = 'bzzz_food_xmas_lollipop_a',
            PropBone = 18905,
            PropPlacement = {
                0.16,
                0.02,
                0.03,
               -73.0,
                146.0,
                -5.0
            },
            EmoteMoving = true
        }
    },
    ["candycaneb"] = { --- Custom Prop by Bzzzi
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Xmas Candy Cane - Green",
        AnimationOptions = {
            Prop = 'bzzz_food_xmas_lollipop_b',
            PropBone = 18905,
            PropPlacement = {
                0.16,
                0.02,
                0.03,
               -73.0,
                146.0,
                -5.0
            },
            EmoteMoving = true
        }
    },
    ["candycanec"] = { --- Custom Prop by Bzzzi
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Xmas Candy Cane - Purple",
        AnimationOptions = {
            Prop = 'bzzz_food_xmas_lollipop_c',
            PropBone = 18905,
            PropPlacement = {
                0.16,
                0.02,
                0.03,
               -73.0,
                146.0,
                -5.0
            },
            EmoteMoving = true
        }
    },
    ["candycaned"] = { --- Custom Prop by Bzzzi
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Xmas Candy Cane - Yellow",
        AnimationOptions = {
            Prop = 'bzzz_food_xmas_lollipop_d',
            PropBone = 18905,
            PropPlacement = {
                0.16,
                0.02,
                0.03,
               -73.0,
                146.0,
                -5.0
            },
            EmoteMoving = true
        }
    },
    ["candycanee"] = { --- Custom Prop by Bzzzi
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Xmas Candy Cane - Blue",
        AnimationOptions = {
            Prop = 'bzzz_food_xmas_lollipop_e',
            PropBone = 18905,
            PropPlacement = {
                0.16,
                0.02,
                0.03,
               -73.0,
                146.0,
                -5.0
            },
            EmoteMoving = true
        }
    },
    ["macaroon"] = { --- Custom Prop by Bzzzi
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Macaroon",
        AnimationOptions = {
            Prop = 'bzzz_food_xmas_macaroon_a',
            PropBone = 18905,
            PropPlacement = {
                0.15,
                0.07,
                0.00,
                38.0,
                7.0,
                7.0
            },
            EmoteMoving = true
        }
    },
    ["xmasmug"] = { --- Custom Prop by Bzzzi
        "mp_player_intdrink",
        "loop_bottle",
        "Xmas Mug - Tea",
        AnimationOptions = {
            Prop = 'bzzz_food_xmas_mug_a',
            PropBone = 18905,
            PropPlacement = {
                0.09,
               -0.01,
                0.08,
               -44.0,
                137.0,
                9.0
            },
            EmoteMoving = true
        }
    },
    ["xmasmug2"] = { --- Custom Prop by Bzzzi
        "mp_player_intdrink",
        "loop_bottle",
        "Xmas Mug - Coffee",
        AnimationOptions = {
            Prop = 'bzzz_food_xmas_mug_b',
            PropBone = 18905,
            PropPlacement = {
                0.09,
               -0.01,
                0.08,
               -44.0,
                137.0,
                9.0
            },
            EmoteMoving = true
        }
    },
    ["xmaswine"] = { --- Custom Prop by Bzzzi
        "mp_player_intdrink",
        "loop_bottle",
        "Xmas Mulled Wine",
        AnimationOptions = {
            Prop = 'bzzz_food_xmas_mulled_wine_a',
            PropBone = 18905,
            PropPlacement = {
                0.13,
               0.03,
                0.05,
               -110.0,
               -47.0,
                7.0
            },
            EmoteMoving = true
        }
    },
	 ["cocoa"] = {
        "amb@world_human_aa_coffee@base",
        "base",
        "Xmas Cocoa",
        AnimationOptions = {
            Prop = 'pata_christmasfood1',
            PropBone = 28422,
            PropPlacement = {
                0.0100,
                -0.1100,
                -0.1300,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["xmassf"] = { --- Custom Prop by PataMods
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Xmas Snowflake Cookie",
        AnimationOptions = {
            Prop = 'pata_christmasfood2',
            PropBone = 60309,
            PropPlacement = {
                0.0200,
                -0.0500,
                0.0200,
                0.0,
                0.0,
                0.0
            },
            EmoteMoving = true
        }
    },
    ["xmascc"] = { --- Custom Prop by PataMods
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Xmas Cupcake",
        AnimationOptions = {
            Prop = 'pata_christmasfood6',
            PropBone = 60309,
            PropPlacement = {
                0.0100,
                0.0200,
               -0.0100,
               -170.1788,
                87.6716,
                30.0540
            },
            EmoteMoving = true
        }
    },
    ["xmascc2"] = { --- Custom Prop by PataMods
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Xmas Cupcake 2",
        AnimationOptions = {
            Prop = 'pata_christmasfood8',
            PropBone = 60309,
            PropPlacement = {
                0.0200,
                0.0,
               -0.0100,
                9.3608,
              -90.1809,
               66.3689
            },
            EmoteMoving = true
        }
   },
    ["xmasic"] = {
        "anim@scripted@island@special_peds@pavel@hs4_pavel_ig5_caviar_p1",
        "base_idle",
        "Xmas Ice Cream",
        AnimationOptions = {
            Prop = "pata_christmasfood7",
            PropBone = 60309,
            PropPlacement = {
               -0.0460,
                0.0000,
               -0.0300,
                0.0,
                0.0,
               -50.0000
            },
            SecondProp = 'h4_prop_h4_coke_spoon_01',
            SecondPropBone = 28422,
            SecondPropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
               20.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["pizzaslice"] = { --- Custom Prop by knjgh
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Pizza Slice - Jalapeño And Peperoni",
        AnimationOptions = {
            Prop = 'knjgh_pizzaslice1',
            PropBone = 60309,
            PropPlacement = {
                0.0500,
                -0.0200,
                -0.0200,
                73.6928,
                -66.7427,
                68.3677
            },
            EmoteMoving = true
        }
    },
    ["pizzas"] = { --- Custom Prop by knjgh
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Pizza Slice - Jalapeño And Peperoni",
        AnimationOptions = {
            Prop = 'knjgh_pizzaslice1',
            PropBone = 60309,
            PropPlacement = {
                0.0500,
                -0.0200,
                -0.0200,
                73.6928,
                -66.7427,
                68.3677
            },
            EmoteMoving = true
        }
    },
    ["pizzas2"] = { --- Custom Prop by knjgh
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Pizza Slice - Tomato And Pesto",
        AnimationOptions = {
            Prop = 'knjgh_pizzaslice2',
            PropBone = 60309,
            PropPlacement = {
                0.0500,
                -0.0200,
                -0.0200,
                73.6928,
                -66.7427,
                68.3677
            },
            EmoteMoving = true
        }
    },
    ["pizzas3"] = { --- Custom Prop by knjgh
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Pizza Slice - Mushroom",
        AnimationOptions = {
            Prop = 'knjgh_pizzaslice3',
            PropBone = 60309,
            PropPlacement = {
                0.0500,
                -0.0200,
                -0.0200,
                73.6928,
                -66.7427,
                68.3677
            },
            EmoteMoving = true
        }
    },
    ["pizzas4"] = { --- Custom Prop by knjgh
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Pizza Slice - Margherita",
        AnimationOptions = {
            Prop = 'knjgh_pizzaslice4',
            PropBone = 60309,
            PropPlacement = {
                0.0500,
                -0.0200,
                -0.0200,
                73.6928,
                -66.7427,
                68.3677
            },
            EmoteMoving = true
        }
    },
    ["pizzas5"] = { --- Custom Prop by knjgh
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Pizza Slice - Double Peperoni",
        AnimationOptions = {
            Prop = 'knjgh_pizzaslice5',
            PropBone = 60309,
            PropPlacement = {
                0.0500,
                -0.0200,
                -0.0200,
                73.6928,
                -66.7427,
                68.3677
            },
            EmoteMoving = true
        }
    },
    ["burger"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Burger",
        AnimationOptions = {
            Prop = 'prop_cs_burger_01',
            PropBone = 18905,
            PropPlacement = {
                0.13,
                0.05,
                0.02,
                -50.0,
                16.0,
                60.0
            },
            EmoteMoving = true
        }
    },
    ["sandwich"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Sandwich",
        AnimationOptions = {
            Prop = 'prop_sandwich_01',
            PropBone = 18905,
            PropPlacement = {
                0.13,
                0.05,
                0.02,
                -50.0,
                16.0,
                60.0
            },
            EmoteMoving = true
        }
    },
    ["soda"] = {
        "amb@world_human_drinking@coffee@male@idle_a",
        "idle_c",
        "Soda",
        AnimationOptions = {
            Prop = 'prop_ecola_can',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                130.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["water"] = {
        "amb@world_human_drinking@coffee@male@idle_a",
        "idle_c",
        "Water",
        AnimationOptions = {
            Prop = 'ba_prop_club_water_bottle',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                -0.090,
                0.0,
                0.0,
                130.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["egobar"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Ego Bar",
        AnimationOptions = {
            Prop = 'prop_choc_ego',
            PropBone = 60309,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteMoving = true
        }
    },
    ["candy"] = {
        "mp_player_inteat@pnq",
        "loop",
        "Candy",
        AnimationOptions = {
            Prop = 'prop_candy_pqs',
            PropBone = 60309,
            PropPlacement = {
                -0.0300,
                0.0180,
                0.0,
                180.0,
                180.0,
                -88.099
            },
            EmoteMoving = true
        }
    },
    ["lollipop1"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Lollipop Spiral Red",
        AnimationOptions = {
            Prop = 'natty_lollipop_spiral01',
            PropBone = 60309,
            PropPlacement = {
                -0.0100,
                0.0200,
                -0.0100,
                -175.1935,
                97.6975,
                20.9598
            },
            EmoteMoving = true
        }
    },
    ["lollipop1b"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Lollipop Spiral Pink",
        AnimationOptions = {
            Prop = 'natty_lollipop_spiral02',
            PropBone = 60309,
            PropPlacement = {
                -0.0100,
                0.0200,
                -0.0100,
                -175.1935,
                97.6975,
                20.9598
            },
            EmoteMoving = true
        }
    },
    ["lollipop1c"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Lollipop Spiral Green",
        AnimationOptions = {
            Prop = 'natty_lollipop_spiral03',
            PropBone = 60309,
            PropPlacement = {
                -0.0100,
                0.0200,
                -0.0100,
                -175.1935,
                97.6975,
                20.9598
            },
            EmoteMoving = true
        }
    },
    ["lollipop1d"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Lollipop Spiral Blue",
        AnimationOptions = {
            Prop = 'natty_lollipop_spiral04',
            PropBone = 60309,
            PropPlacement = {
                -0.0100,
                0.0200,
                -0.0100,
                -175.1935,
                97.6975,
                20.9598
            },
            EmoteMoving = true
        }
    },
    ["lollipop1e"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Lollipop Spiral Yellow",
        AnimationOptions = {
            Prop = 'natty_lollipop_spiral05',
            PropBone = 60309,
            PropPlacement = {
                -0.0100,
                0.0200,
                -0.0100,
                -175.1935,
                97.6975,
                20.9598
            },
            EmoteMoving = true
        }
    },
    ["lollipop1f"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Lollipop Spiral Purple",
        AnimationOptions = {
            Prop = 'natty_lollipop_spiral06',
            PropBone = 60309,
            PropPlacement = {
                -0.0100,
                0.0200,
                -0.0100,
                -175.1935,
                97.6975,
                20.9598
            },
            EmoteMoving = true
        }
    },
    ["lollipop2a"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Lollipop Spin Red",
        AnimationOptions = {
            Prop = "natty_lollipop_spin01",
            PropBone = 60309,
            PropPlacement = {
                -0.0300,
                -0.0500,
                0.0500,
                112.4227,
                -128.8559,
                15.6107
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["lollipop2b"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Lollipop Spin Yellow And Pink",
        AnimationOptions = {
            Prop = "natty_lollipop_spin02",
            PropBone = 60309,
            PropPlacement = {
                -0.0300,
                -0.0500,
                0.0500,
                112.4227,
                -128.8559,
                15.6107
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["lollipop2c"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Lollipop Spin Yellow And Green",
        AnimationOptions = {
            Prop = "natty_lollipop_spin03",
            PropBone = 60309,
            PropPlacement = {
                -0.0300,
                -0.0500,
                0.0500,
                112.4227,
                -128.8559,
                15.6107
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["lollipop2d"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Lollipop Spin Yellow And White",
        AnimationOptions = {
            Prop = "natty_lollipop_spin04",
            PropBone = 60309,
            PropPlacement = {
                -0.0300,
                -0.0500,
                0.0500,
                112.4227,
                -128.8559,
                15.6107
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["lollipop2e"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Lollipop Spin Pink And White",
        AnimationOptions = {
            Prop = "natty_lollipop_spin05",
            PropBone = 60309,
            PropPlacement = {
                -0.0300,
                -0.0500,
                0.0500,
                112.4227,
                -128.8559,
                15.6107
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["lollipop3a"] = {
        "amb@world_human_smoking@male@male_a@enter",
        "enter",
        "Lollipop Suck",
        AnimationOptions = {
            Prop = 'natty_lollipop01',
            PropBone = 47419,
            PropPlacement = {
                0.0100,
                0.0300,
                0.0100,
                -90.0000,
                10.0000,
                -10.0000
            },
            EmoteMoving = true,
            EmoteDuration = 2600
        }
        },
    ["icecreama"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Ice cream Cherry",
        AnimationOptions = {
            Prop = 'bzzz_icecream_cherry',
            PropBone = 18905,
            PropPlacement = {
                0.14,
                0.03,
                0.01,
                85.0,
                70.0,
                -203.0
            },
            EmoteMoving = true
        }
    },
    ["icecreamb"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Ice cream Chocolate",
        AnimationOptions = {
            Prop = 'bzzz_icecream_chocolate',
            PropBone = 18905,
            PropPlacement = {
                0.14,
                0.03,
                0.01,
                85.0,
                70.0,
                -203.0
            },
            EmoteMoving = true
        }
    },
    ["icecreamc"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Ice cream Lemon",
        AnimationOptions = {
            Prop = 'bzzz_icecream_lemon',
            PropBone = 18905,
            PropPlacement = {
                0.14,
                0.03,
                0.01,
                85.0,
                70.0,
                -203.0
            },
            EmoteMoving = true
        }
    },
    ["icecreamd"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Ice cream Pistachio",
        AnimationOptions = {
            Prop = 'bzzz_icecream_pistachio',
            PropBone = 18905,
            PropPlacement = {
                0.14,
                0.03,
                0.01,
                85.0,
                70.0,
                -203.0
            },
            EmoteMoving = true
        }
    },
    ["icecreame"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Ice cream Raspberry",
        AnimationOptions = {
            Prop = 'bzzz_icecream_raspberry',
            PropBone = 18905,
            PropPlacement = {
                0.14,
                0.03,
                0.01,
                85.0,
                70.0,
                -203.0
            },
            EmoteMoving = true
        }
    },
    ["icecreamf"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Ice cream Stracciatella",
        AnimationOptions = {
            Prop = 'bzzz_icecream_stracciatella',
            PropBone = 18905,
            PropPlacement = {
                0.14,
                0.03,
                0.01,
                85.0,
                70.0,
                -203.0
            },
            EmoteMoving = true
        }
    },
    ["icecreamg"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Ice cream Strawberry",
        AnimationOptions = {
            Prop = 'bzzz_icecream_strawberry',
            PropBone = 18905,
            PropPlacement = {
                0.14,
                0.03,
                0.01,
                85.0,
                70.0,
                -203.0
            },
            EmoteMoving = true
        }
    },
    ["icecreamh"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Ice cream Walnut",
        AnimationOptions = {
            Prop = 'bzzz_icecream_walnut',
            PropBone = 18905,
            PropPlacement = {
                0.14,
                0.03,
                0.01,
                85.0,
                70.0,
                -203.0
            },
            EmoteMoving = true
        }
    },
    ["wine"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Wine",
        AnimationOptions = {
            Prop = 'prop_drink_redwine',
            PropBone = 18905,
            PropPlacement = {
                0.10,
                -0.03,
                0.03,
                -100.0,
                0.0,
                -10.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["flute"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Flute",
        AnimationOptions = {
            Prop = 'prop_champ_flute',
            PropBone = 18905,
            PropPlacement = {
                0.10,
                -0.03,
                0.03,
                -100.0,
                0.0,
                -10.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["champagne"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Champagne",
        AnimationOptions = {
            Prop = 'prop_drink_champ',
            PropBone = 18905,
            PropPlacement = {
                0.10,
                -0.03,
                0.03,
                -100.0,
                0.0,
                -10.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["cigar"] = {
        "amb@world_human_smoking@male@male_a@enter",
        "enter",
        "Cigar",
        AnimationOptions = {
            Prop = 'prop_cigar_02',
            PropBone = 47419,
            PropPlacement = {
                0.010,
                0.0,
                0.0,
                50.0,
                0.0,
                -80.0
            },
            EmoteMoving = true,
            EmoteDuration = 2600
        }
    },
    ["cigar2"] = {
        "amb@world_human_smoking@male@male_a@enter",
        "enter",
        "Cigar 2",
        AnimationOptions = {
            Prop = 'prop_cigar_01',
            PropBone = 47419,
            PropPlacement = {
                0.010,
                0.0,
                0.0,
                50.0,
                0.0,
                -80.0
            },
            EmoteMoving = true,
            EmoteDuration = 2600
        }
    },
    ["guitar"] = {
        "amb@world_human_musician@guitar@male@idle_a",
        "idle_b",
        "Guitar",
        AnimationOptions = {
            Prop = 'prop_acc_guitar_01',
            PropBone = 24818,
            PropPlacement = {
                -0.1,
                0.31,
                0.1,
                0.0,
                20.0,
                150.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["guitar2"] = {
        "switch@trevor@guitar_beatdown",
        "001370_02_trvs_8_guitar_beatdown_idle_busker",
        "Guitar 2",
        AnimationOptions = {
            Prop = 'prop_acc_guitar_01',
            PropBone = 24818,
            PropPlacement = {
                -0.05,
                0.31,
                0.1,
                0.0,
                20.0,
                150.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["guitarelectric"] = {
        "amb@world_human_musician@guitar@male@idle_a",
        "idle_b",
        "Guitar Electric",
        AnimationOptions = {
            Prop = 'prop_el_guitar_01',
            PropBone = 24818,
            PropPlacement = {
                -0.1,
                0.31,
                0.1,
                0.0,
                20.0,
                150.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["guitarelectric2"] = {
        "amb@world_human_musician@guitar@male@idle_a",
        "idle_b",
        "Guitar Electric 2",
        AnimationOptions = {
            Prop = 'prop_el_guitar_03',
            PropBone = 24818,
            PropPlacement = {
                -0.1,
                0.31,
                0.1,
                0.0,
                20.0,
                150.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["guitarcarry"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Guitar Case Carry",
        AnimationOptions = {
            Prop = "sf_prop_sf_guitar_case_01a",
            PropBone = 28422,
            PropPlacement = {
                0.2800,
                -0.2000,
                -0.0600,
                0.0,
                0.0,
                15.0000
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["guitarcarry2"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Guitar Carry Accoustic",
        AnimationOptions = {
            Prop = "prop_acc_guitar_01",
            PropBone = 28422,
            PropPlacement = {
                0.1500,
                -0.1400,
                -0.0200,
                -101.5083,
                5.7251,
                29.4987
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["guitarcarry3"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Guitar Carry Electric ",
        AnimationOptions = {
            Prop = "prop_el_guitar_01",
            PropBone = 28422,
            PropPlacement = {
                0.1100,
                -0.1200,
                -0.0500,
                -80.0000,
                0.0,
                21.9999
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["guitarcarry4"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Guitar Carry Electric 2 ",
        AnimationOptions = {
            Prop = "prop_el_guitar_02",
            PropBone = 28422,
            PropPlacement = {
                0.1100,
                -0.1200,
                -0.0500,
                -80.0000,
                0.0,
                21.9999
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["guitarcarry5"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Guitar Carry Electric 3 ",
        AnimationOptions = {
            Prop = "prop_el_guitar_03",
            PropBone = 28422,
            PropPlacement = {
                0.1100,
                -0.1200,
                -0.0500,
                -80.0000,
                0.0,
                21.9999
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["guitarcarry6"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Guitar Carry Electric 4 ",
        AnimationOptions = {
            Prop = "vw_prop_casino_art_guitar_01a",
            PropBone = 28422,
            PropPlacement = {
                0.1100,
                -0.1200,
                -0.0500,
                -80.0000,
                0.0,
                21.9999
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["guitarcarry7"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Guitar Carry Electric 5 ",
        AnimationOptions = {
            Prop = "sf_prop_sf_el_guitar_02a",
            PropBone = 28422,
            PropPlacement = {
                0.1100,
                -0.1200,
                -0.0500,
                -80.0000,
                0.0,
                21.9999
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["guitarsit"] = {
        "misssnowie@gatlax",
        "base",
        "Guitar Sit And Play",
        AnimationOptions = {
            Prop = "prop_acc_guitar_01",
            PropBone = 24818,
            PropPlacement = {
                -0.0510,
                0.2770,
                -0.0299,
                -140.3349,
                166.3300,
                29.7590
            },
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
    ["book"] = {
        "cellphone@",
        "cellphone_text_read_base",
        "Book",
        AnimationOptions = {
            Prop = 'prop_novel_01',
            PropBone = 6286,
            PropPlacement = {
                0.15,
                0.03,
                -0.065,
                0.0,
                180.0,
                90.0
            },
            -- This positioning isnt too great, was to much of a hassle
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["bouquet"] = {
        "impexp_int-0",
        "mp_m_waremech_01_dual-0",
        "Bouquet",
        AnimationOptions = {
            Prop = 'prop_snow_flower_02',
            PropBone = 24817,
            PropPlacement = {
                -0.29,
                0.40,
                -0.02,
                -90.0,
                -90.0,
                0.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["teddy"] = {
        "impexp_int-0",
        "mp_m_waremech_01_dual-0",
        "Teddy",
        AnimationOptions = {
            Prop = 'v_ilev_mr_rasberryclean',
            PropBone = 24817,
            PropPlacement = {
                -0.20,
                0.46,
                -0.016,
                -180.0,
                -90.0,
                0.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["backpack"] = {
        "move_p_m_zero_rucksack",
        "nill",
        "Backpack",
        AnimationOptions = {
            Prop = 'p_michael_backpack_s',
            PropBone = 24818,
            PropPlacement = {
                0.07,
                -0.11,
                -0.05,
                0.0,
                90.0,
                175.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["clipboard"] = {
        "missfam4",
        "base",
        "Clipboard",
        AnimationOptions = {
            Prop = 'p_amb_clipboard_01',
            PropBone = 36029,
            PropPlacement = {
                0.16,
                0.08,
                0.1,
                -130.0,
                -50.0,
                0.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["map"] = {
        "amb@world_human_tourist_map@male@base",
        "base",
        "Map",
        AnimationOptions = {
            Prop = 'prop_tourist_map_01',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["map2"] = {
        "amb@code_human_in_bus_passenger_idles@female@tablet@idle_a",
        "idle_a",
        "Map 2",
        AnimationOptions = {
            Prop = "prop_tourist_map_01",
            PropBone = 28422,
            PropPlacement = {
                -0.05,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["beg"] = {
        "amb@world_human_bum_freeway@male@base",
        "base",
        "Beg",
        AnimationOptions = {
            Prop = 'prop_beggers_sign_03',
            PropBone = 58868,
            PropPlacement = {
                0.19,
                0.18,
                0.0,
                5.0,
                0.0,
                40.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["newspaper"] = {
        "amb@world_human_clipboard@male@idle_a",
        "idle_a",
        "Newspaper",
        AnimationOptions = {
            Prop = 'prop_cliff_paper',
            PropBone = 60309,
            PropPlacement = {
                0.0970,
                -0.0280,
                -0.0170,
                107.4008,
                3.2712,
                -10.5080
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["newspaper2"] = {
        "amb@world_human_clipboard@male@idle_a",
        "idle_a",
        "Newspaper 2",
        AnimationOptions = {
            Prop = 'ng_proc_paper_news_quik',
            PropBone = 60309,
            PropPlacement = {
                0.1590,
                0.0290,
                -0.0100,
                90.9998,
                0.0087,
                0.5000
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["newspaper3"] = {
        "amb@world_human_clipboard@male@idle_a",
        "idle_a",
        "Newspaper 3",
        AnimationOptions = {
            Prop = 'ng_proc_paper_news_rag',
            PropBone = 60309,
            PropPlacement = {
                0.1760,
                -0.00070,
                0.0200,
                99.8306,
                3.2841,
                -4.7185
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["pornmag"] = {
        "amb@world_human_clipboard@male@base",
        "base",
        "Porn Magazine",
        AnimationOptions = {
            Prop = 'prop_porn_mag_02',
            PropBone = 60309,
            PropPlacement = {
                0.1000,
                -0.0360,
                -0.0300,
                -86.9096,
                179.2527,
                13.8804
            },
            EmoteMoving = true,
            EmoteLoop = true
        },
        AdultAnimation = true
    },
    ["pornmag2"] = {
        "amb@world_human_clipboard@male@base",
        "base",
        "Porn Magazine 2",
        AnimationOptions = {
            Prop = 'prop_cs_magazine',
            PropBone = 60309,
            PropPlacement = {
                0.0800,
                -0.0490,
                -0.0500,
                87.9369,
                -0.4292,
                -14.3925
            },
            EmoteMoving = true,
            EmoteLoop = true
        },
        AdultAnimation = true
    },
    ["pornmag3"] = {
        "amb@world_human_clipboard@male@base",
        "base",
        "Porn Magazine 3",
        AnimationOptions = {
            Prop = 'prop_porn_mag_03',
            PropBone = 60309,
            PropPlacement = {
                0.1000,
                -0.0700,
                -0.0200,
                -90.0000,
                -180.0000,
                22.7007
            },
            EmoteMoving = true,
            EmoteLoop = true
        },
        AdultAnimation = true
    },
    ["pornmag4"] = {
        "amb@world_human_clipboard@male@base",
        "base",
        "Porn Magazine 4",
        AnimationOptions = {
            Prop = 'v_res_tt_pornmag01',
            PropBone = 60309,
            PropPlacement = {
                -0.0200,
                -0.0300,
                0.0000,
                88.9862,
                0.2032,
                -20.0016
            },
            EmoteMoving = true,
            EmoteLoop = true
        },
        AdultAnimation = true
    },
    ["pornmag5"] = {
        "amb@world_human_clipboard@male@base",
        "base",
        "Porn Magazine 5",
        AnimationOptions = {
            Prop = 'v_res_tt_pornmag02',
            PropBone = 60309,
            PropPlacement = {
                -0.0200,
                -0.0300,
                0.0000,
                88.9862,
                0.2032,
                -20.0016
            },
            EmoteMoving = true,
            EmoteLoop = true
        },
        AdultAnimation = true
    },
    ["pornmag6"] = {
        "amb@world_human_clipboard@male@base",
        "base",
        "Porn Magazine 6",
        AnimationOptions = {
            Prop = 'v_res_tt_pornmag03',
            PropBone = 60309,
            PropPlacement = {
                -0.0200,
                -0.0300,
                0.0000,
                88.9862,
                0.2032,
                -20.0016
            },
            EmoteMoving = true,
            EmoteLoop = true
        },
        AdultAnimation = true
    },
    ["pornmag7"] = {
        "amb@world_human_clipboard@male@base",
        "base",
        "Porn Magazine 7",
        AnimationOptions = {
            Prop = 'v_res_tt_pornmag04',
            PropBone = 60309,
            PropPlacement = {
                -0.0200,
                -0.0300,
                0.0000,
                88.9862,
                0.2032,
                -20.0016
            },
            EmoteMoving = true,
            EmoteLoop = true
        },
        AdultAnimation = true
    },
    ["makeitrain"] = {
        "anim@mp_player_intupperraining_cash",
        "idle_a",
        "Make It Rain",
        AnimationOptions = {
            Prop = 'prop_anim_cash_pile_01',
            PropBone = 60309,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                180.0,
                0.0,
                70.0
            },
            EmoteMoving = true,
            EmoteLoop = true,
            PtfxAsset = "scr_xs_celebration",
            PtfxName = "scr_xs_money_rain",
            PtfxPlacement = {
                0.0,
                0.0,
                -0.09,
                -80.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['makeitrain'],
            PtfxWait = 500,
            PtfxCanHold = true
        }
    },
    ["camera"] = {
        "amb@world_human_paparazzi@male@base",
        "base",
        "Camera",
        AnimationOptions = {
            Prop = 'prop_pap_camera_01',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_bike_business",
            PtfxName = "scr_bike_cfid_camera_flash",
            PtfxPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['camera'],
            PtfxWait = 200
        }
    },
    ["camera2"] = {
        "cellphone@female",
        "cellphone_text_read_base_cover_low",
        "Camera 2",
        AnimationOptions = {
            Prop = "prop_ing_camera_01",
            PropBone = 28422,
            PropPlacement = {
                0.0100,
                -0.0300,
                0.0520,
                -172.0487,
                -163.9389,
                -29.0221
            },
            EmoteLoop = false,
            EmoteMoving = true,
            PtfxAsset = "scr_bike_business",
            PtfxName = "scr_bike_cfid_camera_flash",
            PtfxPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['camera'],
            PtfxWait = 200
        }
    },
    ["champagnespray"] = {
        "anim@mp_player_intupperspray_champagne",
        "idle_a",
        "Champagne Spray",
        AnimationOptions = {
            Prop = 'ba_prop_battle_champ_open',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteMoving = true,
            EmoteLoop = true,
            PtfxAsset = "scr_ba_club",
            PtfxName = "scr_ba_club_champagne_spray",
            PtfxPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['spraychamp'],
            PtfxWait = 500,
            PtfxCanHold = true
        }
    },
    ["joint"] = {
        "amb@world_human_smoking@male@male_a@enter",
        "enter",
        "Joint",
        AnimationOptions = {
            Prop = 'p_cs_joint_02',
            PropBone = 47419,
            PropPlacement = {
                0.015,
                -0.009,
                0.003,
                55.0,
                0.0,
                110.0
            },
            EmoteMoving = true,
            EmoteDuration = 2600
        }
    },
    ["cig"] = {
        "amb@world_human_smoking@male@male_a@enter",
        "enter",
        "Cig",
        AnimationOptions = {
            Prop = 'prop_amb_ciggy_01',
            PropBone = 47419,
            PropPlacement = {
                0.015,
                -0.009,
                0.003,
                55.0,
                0.0,
                110.0
            },
            EmoteMoving = true,
            EmoteDuration = 2600
        }
    },
    ["brief"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Briefcase",
        AnimationOptions = {
            Prop = "prop_ld_case_01",
            PropBone = 57005,
            PropPlacement = {
                0.12,
                0.0,
                0.0,
                0.0,
                255.0,
                80.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["brief2"] = { -- Added for compatibility
        "missheistdocksprep1hold_cellphone",
        "static",
        "Briefcase 2",
        AnimationOptions =
        {
            Prop = "prop_ld_case_01",
            PropBone = 57005,
            PropPlacement = {
                0.10,
                0.0,
                0.0,
                0.0,
                280.0,
                53.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["guncase"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Guncase",
        AnimationOptions =
        {
            Prop = "prop_gun_case_01",
            PropBone = 57005,
            PropPlacement = {
                0.10,
                0.02,
                -0.02,
                40.0,
                145.0,
                115.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["tablet"] = {
        "amb@world_human_tourist_map@male@base",
        "base",
        "Tablet",
        AnimationOptions = {
            Prop = "prop_cs_tablet",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                -0.03,
                0.0,
                20.0,
                -90.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["tablet2"] = {
        "amb@code_human_in_bus_passenger_idles@female@tablet@idle_a",
        "idle_a",
        "Tablet 2",
        AnimationOptions = {
            Prop = "prop_cs_tablet",
            PropBone = 28422,
            PropPlacement = {
                -0.05,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["phonecall"] = {
        "cellphone@",
        "cellphone_call_listen_base",
        "Phone Call",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7},
            },
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["phonecall2"] = {
        "random@kidnap_girl",
        "ig_1_girl_on_phone_loop",
        "Phone Call 2",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7},
            },
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["wt"] = {
        "cellphone@",
        "cellphone_text_read_base",
        "Walkie Talkie",
        AnimationOptions = {
            Prop = "prop_cs_hand_radio",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["clean"] = {
        "timetable@floyd@clean_kitchen@base",
        "base",
        "Clean",
        AnimationOptions = {
            Prop = "prop_sponge_01",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                -0.01,
                90.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["clean2"] = {
        "amb@world_human_maid_clean@",
        "base",
        "Clean 2",
        AnimationOptions = {
            Prop = "prop_sponge_01",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                -0.01,
                90.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["protest"] = {
        "rcmnigel1d",
        "base_club_shoulder",
        "Protest",
        AnimationOptions = {
            Prop = "prop_cs_protest_sign_01",
            PropBone = 57005,
            PropPlacement = {
                0.1820,
                0.2400,
                0.0600,
                -69.3774235,
                5.9142048,
                -13.9572354
            },
            --
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["protest2"] = {
        "rcmnigel1d",
        "base_club_shoulder",
        "Protest 2 - Pride ",
        AnimationOptions = {
            Prop = "pride_sign_01",
            PropBone = 57005,
            PropPlacement = {
                0.1820,
                0.2400,
                0.0600,
                -69.3774235,
                5.9142048,
                -13.9572354
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["binoculars"] = {
        "amb@world_human_binoculars@male@idle_b",
        "idle_f",
        "Binoculars",
        AnimationOptions = {
            Prop = "prop_binoc_01",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["binoculars2"] = {
        "amb@world_human_binoculars@male@idle_a",
        "idle_c",
        "Binoculars 2",
        AnimationOptions = {
            Prop = "prop_binoc_01",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["tennisplay"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Tennis Play",
        AnimationOptions = {
            Prop = "prop_tennis_bag_01",
            PropBone = 57005,
            PropPlacement = {
                0.27,
                0.0,
                0.0,
                91.0,
                0.0,
                -82.9999951
            },
            SecondProp = 'prop_tennis_rack_01',
            SecondPropBone = 60309,
            SecondPropPlacement = {
                0.0800,
                0.0300,
                0.0,
                -130.2907295,
                3.8782324,
                6.588224
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["weights"] = {
        "amb@world_human_muscle_free_weights@male@barbell@base",
        "base",
        "Weights",
        AnimationOptions = {
            Prop = "prop_curl_bar_01",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["weights2"] = {
        "amb@world_human_muscle_free_weights@male@barbell@idle_a",
        "idle_d",
        "Weights 2",
        AnimationOptions = {
            Prop = "prop_curl_bar_01",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
     },
	 ["weights3"] = { -- Custom Emote By Amnilka
        "frabi@malepose@solo@firstsport",
        "pose_sport_004",
        "Weights 3 - Pose",
        AnimationOptions = {
		Prop = 'prop_barbell_01',
            PropBone = 28422,
            PropPlacement = {
                0.0660,
				0.0100,
				-0.0300,
				90.0000,
				90.0000,
				-79.9999
            },
            EmoteLoop = true,
         }
    },
	 ["weights4"] = { -- Custom Emote By Amnilka
        "frabi@malepose@solo@firstsport",
        "pose_sport_003",
        "Weights 4 - Pose",
        AnimationOptions = {
		Prop = 'prop_barbell_01', -- Left Wrist
            PropBone = 60309,
            PropPlacement = {
                0.0520,
                -0.0010,
                0.0131,
                21.5428,
                70.2098,
				74.5019
            },
            SecondProp = 'prop_barbell_01', -- Right Wrist
            SecondPropBone = 28422,
            SecondPropPlacement = {
                0.0660,
				0.0100,
				-0.0300,
				90.0000,
				90.0000,
				-79.9999
            },
            EmoteLoop = true,
         }
    },
	["weights5"] = { -- Custom Female Emote By Frabi
        "frabi@femalepose@solo@firstsport",
        "fem_pose_sport_001",
        "Weights 5 - Female Pose",
        AnimationOptions = {
		Prop = 'v_res_tre_weight',
            PropBone = 28422, -- Right Wrist
            PropPlacement = {
                0.0580,
                -0.0060,
                0.0300,
                -11.8498,
                170.2644,
				7.8352
            },
            SecondProp = 'v_res_tre_weight',
            SecondPropBone = 60309, -- Left Wrist
            SecondPropPlacement = {
                0.0880,
				0.0000,
				0.0590,
				-29.1132,
				-128.5627,
				13.7517
            },
            EmoteLoop = true,
         }
    },
	["weights6"] = { -- Custom Female Emote By Frabi
        "frabi@femalepose@solo@firstsport",
        "fem_pose_sport_002",
        "Weights 6 - Female Pose 2",
        AnimationOptions = {
		Prop = 'v_res_tre_weight',
            PropBone = 28422, -- Right Wrist
            PropPlacement = {
                0.0700,
                0.0400,
                -0.0600,
                24.5966,
                6.4814,
				-13.9845
            },
            SecondProp = 'v_res_tre_weight',
            SecondPropBone = 60309, -- Left Wrist
            SecondPropPlacement = {
                0.0550,
				-0.0070,
				-0.0309,
				-20.5854,
				-15.0123,
				0.5710
            },
            EmoteLoop = true,
			EmoteMoving = false,
         }
   },
	["weights7"] = { -- Custom Female Emote By Frabi
        "frabi@femalepose@solo@firstsport",
        "fem_pose_sport_003",
        "Weights 7 - Female Pose 3",
        AnimationOptions = {
		Prop = 'prop_freeweight_01',
            PropBone = 28422, -- Right Wrist
            PropPlacement = {
                0.0500,
                0.0100,
                -0.0200,
                88.6283,
                -51.8805,
				54.3903
            },
            EmoteLoop = true,
			EmoteMoving = false,
         }
    },
    ["fuel"] = {
        "weapons@misc@jerrycan@",
        "fire",
        "Fuel",
        AnimationOptions = {
            Prop = "w_am_jerrycan",
            PropBone = 57005,
            PropPlacement = {
                0.1800,
                0.1300,
                -0.2400,
                -165.8693883,
                -11.2122753,
                -32.9453021
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["fuel2"] = {
        "weapons@misc@jerrycan@franklin",
        "idle",
        "Fuel 2 (Carry)",
        AnimationOptions = {
            Prop = "w_am_jerrycan",
            PropBone = 28422,
            PropPlacement = {
                0.26,
                0.050,
                0.0300,
                80.00,
                180.000,
                79.99
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["hitchhike"] = {
        "random@hitch_lift",
        "idle_f",
        "Hitchhike",
        AnimationOptions = {
            Prop = "w_am_jerrycan",
            PropBone = 18905,
            PropPlacement = {
                0.32,
                -0.0100,
                0.0,
                -162.423,
                74.83,
                58.79
            },
            SecondProp = 'prop_michael_backpack',
            SecondPropBone = 40269,
            SecondPropPlacement = {
                -0.07,
                -0.21,
                -0.11,
                -144.93,
                117.358,
                -6.16
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["ssign"] = {
        "rcmnigel1d",
        "base_club_shoulder",
        "Steal Stop Sign ",
        AnimationOptions = {
            Prop = "prop_sign_road_01a",
            PropBone = 60309,
            PropPlacement = {
                -0.1390,
                -0.9870,
                0.4300,
                -67.3315314,
                145.0627869,
                -4.4318885
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["ssign2"] = {
        "rcmnigel1d",
        "base_club_shoulder",
        "Steal Yield Sign ",
        AnimationOptions = {
            Prop = "prop_sign_road_02a",
            PropBone = 60309,
            PropPlacement = {
                -0.1390,
                -0.9870,
                0.4300,
                -67.3315314,
                145.0627869,
                -4.4318885
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["ssign3"] = {
        "rcmnigel1d",
        "base_club_shoulder",
        "Steal Hospital Sign ",
        AnimationOptions = {
            Prop = "prop_sign_road_03d",
            PropBone = 60309,
            PropPlacement = {
                -0.1390,
                -0.9870,
                0.4300,
                -67.3315314,
                145.0627869,
                -4.4318885
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["ssign4"] = {
        "rcmnigel1d",
        "base_club_shoulder",
        "Steal Parking Sign ",
        AnimationOptions = {
            Prop = "prop_sign_road_04a",
            PropBone = 60309,
            PropPlacement = {
                -0.1390,
                -0.9870,
                0.4300,
                -67.3315314,
                145.0627869,
                -4.4318885
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["ssign5"] = {
        "rcmnigel1d",
        "base_club_shoulder",
        "Steal Parking Sign 2 ",
        AnimationOptions = {
            Prop = "prop_sign_road_04w",
            PropBone = 60309,
            PropPlacement = {
                -0.1390,
                -0.9870,
                0.4300,
                -67.3315314,
                145.0627869,
                -4.4318885
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["ssign6"] = {
        "rcmnigel1d",
        "base_club_shoulder",
        "Steal Pedestrian Sign ",
        AnimationOptions = {
            Prop = "prop_sign_road_05a",
            PropBone = 60309,
            PropPlacement = {
                -0.1390,
                -0.9870,
                0.4300,
                -67.3315314,
                145.0627869,
                -4.4318885
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["ssign7"] = {
        "rcmnigel1d",
        "base_club_shoulder",
        "Steal Street Sign ",
        AnimationOptions = {
            Prop = "prop_sign_road_05t",
            PropBone = 60309,
            PropPlacement = {
                -0.1390,
                -0.9870,
                0.4300,
                -67.3315314,
                145.0627869,
                -4.4318885
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["ssign8"] = {
        "rcmnigel1d",
        "base_club_shoulder",
        "Steal Freeway Sign ",
        AnimationOptions = {
            Prop = "prop_sign_freewayentrance",
            PropBone = 60309,
            PropPlacement = {
                -0.1390,
                -0.9870,
                0.4300,
                -67.3315314,
                145.0627869,
                -4.4318885
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["ssign9"] = {
        "rcmnigel1d",
        "base_club_shoulder",
        "Steal Stop Sign Snow ",
        AnimationOptions = {
            Prop = "prop_snow_sign_road_01a",
            PropBone = 60309,
            PropPlacement = {
                -0.1390,
                -0.9870,
                0.4300,
                -67.3315314,
                145.0627869,
                -4.4318885
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["conehead"] = {
        "move_m@drunk@verydrunk_idles@",
        "fidget_07",
        "Cone Head ",
        AnimationOptions = {
            Prop = "prop_roadcone02b",
            PropBone = 31086,
            PropPlacement = {
                0.0500,
                0.0200,
                -0.000,
                30.0000004,
                90.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["foodtraya"] = {
        "anim@heists@box_carry@",
        "idle",
        "Food Tray",
        AnimationOptions = {
            Prop = "prop_food_bs_tray_03",
            PropBone = 28422,
            PropPlacement = {
                0.0100,
                -0.0400,
                -0.1390,
                20.0000007,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["foodtrayb"] = {
        "anim@heists@box_carry@",
        "idle",
        "Food Tray B",
        AnimationOptions = {
            Prop = "prop_food_bs_tray_02",
            PropBone = 28422,
            PropPlacement = {
                0.0100,
                -0.0400,
                -0.1390,
                20.0000007,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["foodtrayc"] = {
        "anim@heists@box_carry@",
        "idle",
        "Food Tray C",
        AnimationOptions = {
            Prop = "prop_food_cb_tray_02",
            PropBone = 28422,
            PropPlacement = {
                0.0100,
                -0.0400,
                -0.1390,
                20.0000007,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["foodtrayd"] = {
        "anim@heists@box_carry@",
        "idle",
        "Food Tray D",
        AnimationOptions = {
            Prop = "prop_food_tray_02",
            PropBone = 28422,
            PropPlacement = {
                0.0100,
                -0.0400,
                -0.1390,
                20.0000007,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["foodtraye"] = {
        "anim@heists@box_carry@",
        "idle",
        "Food Tray E",
        AnimationOptions = {
            Prop = "prop_food_tray_03",
            PropBone = 28422,
            PropPlacement = {
                0.0100,
                -0.0400,
                -0.1390,
                20.0000007,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["foodtrayf"] = {
        "anim@heists@box_carry@",
        "idle",
        "Food Tray F",
        AnimationOptions = {
            Prop = "prop_food_bs_tray_02",
            PropBone = 57005,
            PropPlacement = {
                0.2500,
                0.1000,
                0.0700,
                -110.5483936,
                73.3529273,
                -16.338362
            },
            SecondProp = 'prop_food_bs_tray_03',
            SecondPropBone = 18905,
            SecondPropPlacement = {
                0.2200,
                0.1300,
                -0.1000,
                -127.7725487,
                110.2074758,
                -3.5886263
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["foodtrayg"] = {
        "anim@heists@box_carry@",
        "idle",
        "Food Tray G",
        AnimationOptions = {
            Prop = "prop_food_cb_tray_02",
            PropBone = 57005,
            PropPlacement = {
                0.2500,
                0.1000,
                0.0700,
                -110.5483936,
                73.3529273,
                -16.338362
            },
            SecondProp = 'prop_food_cb_tray_02',
            SecondPropBone = 18905,
            SecondPropPlacement = {
                0.2200,
                0.1300,
                -0.1000,
                -127.7725487,
                110.2074758,
                -3.5886263
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["foodtrayh"] = {
        "anim@heists@box_carry@",
        "idle",
        "Food Tray H",
        AnimationOptions = {
            Prop = "prop_food_tray_02",
            PropBone = 57005,
            PropPlacement = {
                0.2500,
                0.1000,
                0.0700,
                -110.5483936,
                73.3529273,
                -16.338362
            },
            SecondProp = 'prop_food_tray_03',
            SecondPropBone = 18905,
            SecondPropPlacement = {
                0.2200,
                0.1300,
                -0.1000,
                -127.7725487,
                110.2074758,
                -3.5886263
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["foodtrayi"] = {
        "anim@heists@box_carry@",
        "idle",
        "Food Tray I",
        AnimationOptions = {
            Prop = "prop_food_tray_02",
            PropBone = 57005,
            PropPlacement = {
                0.2500,
                0.1000,
                0.0700,
                -110.5483936,
                73.3529273,
                -16.338362
            },
            SecondProp = 'prop_food_tray_02',
            SecondPropBone = 18905,
            SecondPropPlacement = {
                0.2200,
                0.1300,
                -0.1000,
                -127.7725487,
                110.2074758,
                -3.5886263
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["foodtrayj"] = {
        "anim@move_f@waitress",
        "idle",
        "Food Tray J",
        AnimationOptions = {
            Prop = "prop_food_bs_tray_02",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0200,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["foodtrayk"] = {
        "anim@move_f@waitress",
        "idle",
        "Food Tray K",
        AnimationOptions = {
            Prop = "prop_food_bs_tray_02",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0200,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["foodtrayl"] = {
        "anim@move_f@waitress",
        "idle",
        "Food Tray L",
        AnimationOptions = {
            Prop = "prop_food_bs_tray_03",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0200,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["foodtraym"] = {
        "anim@move_f@waitress",
        "idle",
        "Food Tray M",
        AnimationOptions = {
            Prop = "prop_food_cb_tray_02",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0200,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["foodtrayn"] = {
        "anim@move_f@waitress",
        "idle",
        "Food Tray N",
        AnimationOptions = {
            Prop = "prop_food_tray_02",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0200,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["foodtrayo"] = {
        "anim@move_f@waitress",
        "idle",
        "Food Tray O",
        AnimationOptions = {
            Prop = "prop_food_tray_02",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0200,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["carrypizza"] = {
        "anim@heists@box_carry@",
        "idle",
        "Carry Pizza Box",
        AnimationOptions = {
            Prop = "prop_pizza_box_02",
            PropBone = 28422,
            PropPlacement = {
                0.0100,
                -0.1000,
                -0.1590,
                20.0000007,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["carryfoodbag"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Carry Food Bag",
        AnimationOptions = {
            Prop = "prop_food_bs_bag_01",
            PropBone = 57005,
            PropPlacement = {
                0.3300,
                0.0,
                -0.0300,
                0.0017365,
                -79.9999997,
                110.0651988
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["carryfoodbag2"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Carry Food Bag 2",
        AnimationOptions = {
            Prop = "prop_food_cb_bag_01",
            PropBone = 57005,
            PropPlacement = {
                0.3800,
                0.0,
                -0.0300,
                0.0017365,
                -79.9999997,
                110.0651988
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["carryfoodbag3"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Carry Food Bag 3",
        AnimationOptions = {
            Prop = "prop_food_bag1",
            PropBone = 57005,
            PropPlacement = {
                0.3800,
                0.0,
                -0.0300,
                0.0017365,
                -79.9999997,
                110.0651988
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["tag"] = {
        "anim@scripted@freemode@postertag@graffiti_spray@male@",
        "shake_can_male",
        "Tagging Shake Can Male",
        AnimationOptions = {
            Prop = "prop_cs_spray_can",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0700,
                0.0017365,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["tag2"] = {
        "anim@scripted@freemode@postertag@graffiti_spray@heeled@",
        "shake_can_female",
        "Tagging Shake Can Female",
        AnimationOptions = {
            Prop = "prop_cs_spray_can",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0700,
                0.0017365,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["tag3"] = {
        "anim@scripted@freemode@postertag@graffiti_spray@male@",
        "spray_can_var_01_male",
        "Tagging Male 1",
        AnimationOptions = {
            Prop = "prop_cs_spray_can",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0700,
                0.0017365,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["tag4"] = {
        "anim@scripted@freemode@postertag@graffiti_spray@male@",
        "spray_can_var_02_male",
        "Tagging Male 2",
        AnimationOptions = {
            Prop = "prop_cs_spray_can",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0700,
                0.0017365,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["tag5"] = {
        "anim@scripted@freemode@postertag@graffiti_spray@heeled@",
        "spray_can_var_01_female",
        "Tagging Female 1",
        AnimationOptions = {
            Prop = "prop_cs_spray_can",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0700,
                0.0017365,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["tag6"] = {
        "anim@scripted@freemode@postertag@graffiti_spray@heeled@",
        "spray_can_var_02_female",
        "Tagging Female 2",
        AnimationOptions = {
            Prop = "prop_cs_spray_can",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0700,
                0.0017365,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["beans"] = {
        "anim@scripted@island@special_peds@pavel@hs4_pavel_ig5_caviar_p1",
        "base_idle",
        "Beans",
        AnimationOptions = {
            Prop = "h4_prop_h4_caviar_tin_01a",
            PropBone = 60309,
            PropPlacement = {
                0.0,
                0.0300,
                0.0100,
                0.0,
                0.0,
                0.0
            },
            SecondProp = 'h4_prop_h4_caviar_spoon_01a',
            SecondPropBone = 28422,
            SecondPropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["dinner"] = {
        "anim@scripted@island@special_peds@pavel@hs4_pavel_ig5_caviar_p1",
        "base_idle",
        "Dinner",
        AnimationOptions = {
            Prop = "prop_cs_plate_01",
            PropBone = 60309,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
				 0.0
            },
            SecondProp = 'h4_prop_h4_caviar_spoon_01a',
            SecondPropBone = 28422,
            SecondPropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["newscam"] = {
        "missfinale_c2mcs_1",
        "fin_c2_mcs_1_camman",
        "News Camera",
        AnimationOptions = {
            Prop = "prop_v_cam_01",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0300,
                0.0100,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["newsmic"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "News Microphone",
        AnimationOptions = {
            Prop = "p_ing_microphonel_01",
            PropBone = 4154,
            PropPlacement = {
                -0.00,
                -0.0200,
                0.1100,
                0.00,
                0.0,
                60.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["newsbmic"] = {
        "missfra1",
        "mcs2_crew_idle_m_boom",
        "News Boom Microphone",
        AnimationOptions = {
            Prop = "prop_v_bmike_01",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["microck"] = { --- Custom Emote Provided To RpEmotes By Prue颜
        "lunyx@mic@p1",
        "mic@p1",
        "Microphone Rock",
        AnimationOptions = {
            Prop = "sf_prop_sf_mic_01a",
            PropBone = 28422,
            PropPlacement = {
                0.0300,
                0.0200,
                -0.0300,
                162.9608,
                -91.1712,
                -3.8249
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["microckb"] = { --- Custom Emote Provided To RpEmotes By Prue颜
        "lunyx@mic@p2",
        "mic@p2",
        "Microphone Rock 2",
        AnimationOptions = {
            Prop = "sf_prop_sf_mic_01a",
            PropBone = 60309, -- Left Wrist
            PropPlacement = {
                0.0350,
                0.0180,
				0.0290,
               -180.0000,
                -13.0000,
                0.0000
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["microckc"] = { --- Custom Emote Provided To RpEmotes By Prue颜
        "lunyx@mic@p3",
        "mic@p3",
        "Microphone Rock 3",
        AnimationOptions = {
            Prop = "sf_prop_sf_mic_01a",
            PropBone = 28422,
            PropPlacement = {
                0.0300,
                0.0200,
                -0.0300,
                162.9608,
                -91.1712,
                -3.8249
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["microckd"] = { --- Custom Emote Provided To RpEmotes By Prue颜
        "lunyx@mic@p4",
        "mic@p4",
        "Microphone Rock 4",
        AnimationOptions = {
            Prop = "sf_prop_sf_mic_01a",
            PropBone = 28422,
            PropPlacement = {
                0.0300,
                0.0200,
                -0.0300,
                162.9608,
                -91.1712,
                -3.8249
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["microcke"] = { --- Custom Emote Provided To RpEmotes By Prue颜
        "lunyx@mic@p5",
        "mic@p5",
        "Microphone Rock 5",
        AnimationOptions = {
            Prop = "sf_prop_sf_mic_01a",
            PropBone = 60309,
            PropPlacement = {
                0.0370,
                0.0130,
                0.0150,
               -173.6259,
               -93.5253,
                4.6450
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["microckf"] = { --- Custom Emote Provided To RpEmotes By Prue颜
        "lunyx@mic@p6",
        "mic@p6",
        "Microphone Rock 6",
        AnimationOptions = {
            Prop = "v_ilev_fos_mic",
            PropBone = 28422,
            PropPlacement = {
                -0.4410,
                -1.0600,
                -0.4800,
                -57.7266,
                51.8164,
                3.0976
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["microckg"] = { --- Custom Emote Provided To RpEmotes By Prue颜
        "lunyx@mic@p7",
        "mic@p7",
        "Microphone Rock 7",
        AnimationOptions = {
            Prop = "v_ilev_fos_mic",
            PropBone = 28422,
            PropPlacement = {
                -0.8210,
                -0.0900,
                -1.1900,
                -2.5478,
                36.3684,
                -11.7503
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["microckh"] = { --- Custom Emote Provided To RpEmotes By Prue颜
        "lunyx@mic@p8",
        "mic@p8",
        "Microphone Rock 8",
        AnimationOptions = {
             Prop = "sf_prop_sf_mic_01a",
            PropBone = 60309,
            PropPlacement = {
                0.0370,
                0.0130,
                0.0150,
               -173.6259,
               -93.5253,
                4.6450
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["microcki"] = { --- Custom Emote Provided To RpEmotes By Prue颜
        "lunyx@mic@p9",
        "mic@p9",
        "Microphone Rock 9",
        AnimationOptions = {
            Prop = "sf_prop_sf_mic_01a",
            PropBone = 28422,
            PropPlacement = {
                0.0300,
                0.0200,
                -0.0300,
                162.9608,
                -91.1712,
                -3.8249
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["microckj"] = { --- Custom Emote Provided To RpEmotes By Prue颜
        "lunyx@mic@p10",
        "mic@p10",
        "Microphone Rock 10",
        AnimationOptions = {
            Prop = "sf_prop_sf_mic_01a",
            PropBone = 28422,
            PropPlacement = {
                0.0300,
                0.0200,
                -0.0300,
                162.9608,
                -91.1712,
                -3.8249
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["leafblower"] = {
        "amb@world_human_gardener_leaf_blower@base",
        "base",
        "Leaf Blower",
        AnimationOptions = {
            Prop = "prop_leaf_blower_01",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_armenian3",
            PtfxName = "ent_anim_leaf_blower",
            PtfxPlacement = {
                1.0,
                0.0,
                -0.25,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['useleafblower'],
            PtfxWait = 2000,
            PtfxCanHold = true
        }
    },
    ["bbqf"] = {
        "amb@prop_human_bbq@male@idle_a",
        "idle_b",
        "BBQ (Female)",
        AnimationOptions = {
            Prop = "prop_fish_slice_01",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["pump"] = {
        "missfbi4prepp1",
        "idle",
        "Pumpkin",
        AnimationOptions = {
            Prop = "prop_veg_crop_03_pump",
            PropBone = 28422,
            PropPlacement = {
                0.0200,
                0.0600,
                -0.1200,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["pump2"] = {
        "anim@heists@box_carry@",
        "idle",
        "Pumpkin 2",
        AnimationOptions = {
            Prop = "prop_veg_crop_03_pump",
            PropBone = 28422,
            PropPlacement = {
                0.0100,
                -0.16000,
                -0.2100,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["pump3"] = {
        "missfbi4prepp1",
        "idle",
        "Pumpkin 3",
        AnimationOptions = {
            Prop = "reh_prop_reh_lantern_pk_01a",
            PropBone = 28422,
            PropPlacement = {
                0.0010,
				0.0660,
				-0.0120,
				171.9169,
				179.8707,
				-39.9860
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["pump4"] = {
        "missfbi4prepp1",
        "idle",
        "Pumpkin 4",
        AnimationOptions = {
            Prop = "reh_prop_reh_lantern_pk_01b",
            PropBone = 28422,
            PropPlacement = {
                0.0010,
				0.0660,
				-0.0120,
				171.9169,
				179.8707,
				-39.9860
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["pump5"] = {
        "missfbi4prepp1",
        "idle",
        "Pumpkin 5",
        AnimationOptions = {
            Prop = "reh_prop_reh_lantern_pk_01c",
            PropBone = 28422,
            PropPlacement = {
                0.0010,
				0.0660,
				-0.0120,
				171.9169,
				179.8707,
				-39.9860
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["mop"] = {
        "missfbi4prepp1",
        "idle",
        "Mop",
        AnimationOptions = {
            Prop = "prop_cs_mop_s",
            PropBone = 28422,
            PropPlacement = {
                -0.0200,
                -0.0600,
                -0.2000,
                -13.377,
                10.3568,
                17.9681
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["mop2"] = {
        "move_mop",
        "idle_scrub_small_player",
        "Mop 2",
        AnimationOptions = {
            Prop = "prop_cs_mop_s",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.1200,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["jerkf"] = {
        "switch@trevor@jerking_off",
        "trev_jerking_off_loop",
        "JerkOff! Female",
        AnimationOptions = {
            Prop = 'prop_cs_dildo_01',
            PropBone = 28422,
            PropPlacement = {
                0.09,
                0.05,
                -0.03,
                90.0,
                80.0,
                30.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        },
        AdultAnimation = true
    },
    ["rake"] = {
        "anim@amb@drug_field_workers@rake@male_a@base",
        "base",
        "Rake",
        AnimationOptions = {
            Prop = "prop_tool_rake",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                -0.0300,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true
        }
    },
    ["rake2"] = {
        "anim@amb@drug_field_workers@rake@male_a@idles",
        "idle_b",
        "Rake 2",
        AnimationOptions = {
            Prop = "prop_tool_rake",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                -0.0300,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true
        }
    },
    ["rake3"] = {
        "anim@amb@drug_field_workers@rake@male_b@base",
        "base",
        "Rake 3",
        AnimationOptions = {
            Prop = "prop_tool_rake",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                -0.0300,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true
        }
    },
    ["rake4"] = {
        "anim@amb@drug_field_workers@rake@male_b@idles",
        "idle_d",
        "Rake 4",
        AnimationOptions = {
            Prop = "prop_tool_rake",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                -0.0300,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true
        }
    },
    ["broom"] = {
        "anim@amb@drug_field_workers@rake@male_a@base",
        "base",
        "Broom",
        AnimationOptions = {
            Prop = "prop_tool_broom",
            PropBone = 28422,
            PropPlacement = {
                -0.0100,
                0.0400,
                -0.0300,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true
        }
    },
    ["broom2"] = {
        "anim@amb@drug_field_workers@rake@male_a@idles",
        "idle_b",
        "Broom 2",
        AnimationOptions = {
            Prop = "prop_tool_broom",
            PropBone = 28422,
            PropPlacement = {
                -0.0100,
                0.0400,
                -0.0300,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true
        }
    },
    ["broom3"] = {
        "anim@amb@drug_field_workers@rake@male_b@base",
        "base",
        "Broom 3",
        AnimationOptions = {
            Prop = "prop_tool_broom",
            PropBone = 28422,
            PropPlacement = {
                -0.0100,
                0.0400,
                -0.0300,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true
        }
    },
    ["broom4"] = {
        "anim@amb@drug_field_workers@rake@male_b@idles",
        "idle_d",
        "Broom 4",
        AnimationOptions = {
            Prop = "prop_tool_broom",
            PropBone = 28422,
            PropPlacement = {
                -0.0100,
                0.0400,
                -0.0300,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true
        }
    },
    ["champw"] = {
        "anim@move_f@waitress",
        "idle",
        "Champagne Waiter",
        AnimationOptions = {
            Prop = "vw_prop_vw_tray_01a",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0100,
                0.0,
                0.0,
                0.0
            },
            SecondProp = 'prop_champ_cool',
            SecondPropBone = 28422,
            SecondPropPlacement = {
                0.0,
                0.0,
                0.010,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["shit"] = {
    "missfbi3ig_0",
    "shit_loop_trev",
    "Shit",
    AnimationOptions = {
        Prop = "prop_toilet_roll_01",
        PropBone = 28422,
        PropPlacement = {
            0.0700,
            -0.02000,
            -0.2100,
            0,
            0,
            0.0,
            0.0
        },
        EmoteLoop = true,
        EmoteMoving = false,
        PtfxAsset = "scr_amb_chop",
        PtfxName = "ent_anim_dog_poo",
        PtfxNoProp = true,
        PtfxBone = 11816,
        PtfxPlacement = {
            0.0,
            0.0,
            -0.1,
            0.0,
            0.0,
            0.0,
            1.0
        },
        PtfxInfo = Config.Languages[Config.MenuLanguage]['poop'],
        PtfxWait = 200,
        PtfxCanHold = true
        }
    },
    ["puke"] = {
    "missheistpaletoscore1leadinout",
    "trv_puking_leadout",
    "Puke",
    AnimationOptions = {
        EmoteLoop = false,
        EmoteMoving = true,
        PtfxAsset = "scr_paletoscore",
        PtfxName = "scr_trev_puke",
        PtfxNoProp = true,
        PtfxBone = 31086,
        PtfxPlacement = {
            0.0,
            0.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0
        },
        PtfxInfo = Config.Languages[Config.MenuLanguage]['puke'],
        PtfxWait = 200,
        PtfxCanHold = true
    },
},
    ["selfie"] = {
        "anim@mp_player_intuppertake_selfie",
        "idle_a",
        "Selfie",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7},
            },
            PropBone = 60309,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["selfie2"] = {
        "cellphone@self@franklin@",
        "peace",
        "Selfie 2",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7},
            },
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["selfie3"] = {
        "cellphone@self@franklin@",
        "west_coast",
        "Selfie 3 - West Side",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7},
            },
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["selfie4"] = {
        "cellphone@self@trevor@",
        "aggressive_finger",
        "Selfie 4 - Finger",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7},
            },
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["selfie5"] = {
        "cellphone@self@trevor@",
        "proud_finger",
        "Selfie 5 - Finger 2",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7},
            },
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["selfie6"] = {
        "cellphone@self@trevor@",
        "throat_slit",
        "Selfie 6 - Throat Slit",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7},
            },
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["selfie7"] = {
        "cellphone@self@franklin@",
        "chest_bump",
        "Selfie 7 - Chest Bump",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7},
            },
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["selfiepeace"] = { -- MissSnowie Custom Emote
        "mirror_selfie@peace_sign",
        "base",
        "Selfie Peace",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7},
            },
            PropBone = 57005,
            PropPlacement = {
                0.1700,
                0.0299,
                -0.0159,
                -126.2687,
                -139.9058,
                35.6203
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['camera'],
            PtfxWait = 200
        }
    },
    ["selfiecrouch"] = { -- MissSnowie Custom Emote
        "crouching@taking_selfie",
        "base",
        "Selfie Crouching",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7},
            },
            PropBone = 18905,
            PropPlacement = {
                0.1580,
                0.0180,
                0.0300,
                -150.4798,
                -67.8240,
                -46.0417
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['camera'],
            PtfxWait = 200
        }
    },
    ["selfiecrouch2"] = { -- Wolf's Square Custom Emote
        "eagle@girlphonepose13",
        "girl",
        "Selfie Crouching 2",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7},
            },
            PropBone = 60309,
            PropPlacement = {
                0.0670,
                0.0300,
                0.0300,
                -90.0000,
                0.0000,
                -25.9000
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['camera'],
            PtfxWait = 200
        }
    },
    ["selfiecrouch3"] = { -- Custom Emote By Struggleville
        "anim@male_insta_selfie",
        "insta_selfie_clip",
        "Selfie Crouching 3",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7},
            },
            PropBone = 60309,
            PropPlacement = {
                0.0700,
                0.0100,
                0.0690,
                0.0,
                0.0,
                -150.0000
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['camera'],
            PtfxWait = 200
        }
    },
	 ["selfiecrouch4"] = { -- Custom emote by Struggleville
        "anim@female_selfie_risque",
        "selfie_risque_clip",
        "Selfie Crouching 4",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7},
            },
            PropBone = 18905,
            PropPlacement = {
                0.1580,
                0.0180,
                0.0300,
                -150.4798,
                -67.8240,
                -46.0417
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['camera'],
            PtfxWait = 200
        }
    },
	 ["selfieegirl"] = { -- Custom emote by Struggleville
        "anim@female_egirl_cute_selfie",
        "cute_selfie_clip",
        "Selfie E Girl",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7},
            },
            PropBone = 26613, -- Left Finger 30
            PropPlacement = {
                0.0760,
               -0.0220,
                0.0350,
               -22.0968,
                30.4351,
                -7.9339
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['camera'],
            PtfxWait = 200
        }
    },
    ["selfieslut"] = { -- Custom Emote By Struggleville
        "anim@female_floor_slutarch_selfie",
        "slutarch_selfie_clip",
        "Selfie Slut Pose",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7},
            },
            PropBone = 58868, -- Right Finger 20
            PropPlacement = {
                0.0350,
				0.0140,
                0.0290,
              167.9999,
              180.0000,
               -8.8999
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['camera'],
            PtfxWait = 200

        },
        AdultAnimation = true
    },
    ["selfiesit"] = { -- Emote by WhiskerValeMod. Need to configure camera flash and texture variants
        "mouse@female_sitting_selfie",
        "female_sitting_selfie_clip",
        "Selfie Sitting",
        AnimationOptions = {
            Prop = 'prop_phone_ing',
            PropBone = 57005,
            PropPlacement = {
                0.1380,
                0.0300,
                -0.0430,
                -111.0946,
                -117.8069,
                11.7386
            },
            SecondProp = 'apa_mp_h_stn_chairarm_23',
            SecondPropBone = 0,
            SecondPropPlacement = {
                -0.0100,
                -0.0800,
                -0.6800,
                -180.0000,
                -180.0000,
                10.0000
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["selfiesit2"] = { -- Emote by WolfSquareEmotes
        "eagle@boypose05",
        "boy",
        "Selfie Sitting 2",
        AnimationOptions = {
            Prop = 'prop_phone_ing',
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7},
            },
            PropBone = 4090, -- Left Finger 2
            PropPlacement = {
                0.0130,
                0.0120,
               -0.0070,
               -103.6673,
               -11.0026,
                18.2605
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['camera'],
            PtfxWait = 200
        }
    },
    ["selfiefu"] = { -- Struggleville
        "anim@fuck_you_selfie",
        "fuck_you_selfie_clip",
        "Selfie Middle Finger",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7},
            },
            PropBone = 28422,
            PropPlacement = {
                0.1200,
                0.0220,
                -0.0210,
                98.6822,
                -4.9809,
                109.6216
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['camera'],
            PtfxWait = 200
        }
    },
    ["selfiethot"] = { -- Struggleville
        "anim@sitting_thot",
        "sitting_thot_clip",
        "Selfie Thot Instagram",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7},
            },
            PropBone = 28422,
            PropPlacement = {
                0.1030,
                0.0440,
                -0.0270,
                -160.2802,
                -99.4080,
                -3.4048
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['camera'],
            PtfxWait = 200
        }
    },
    ["selfiefloor"] = { -- Custom Emote By Struggleville
        "anim@selfie_floor_cute",
        "floor_cute_clip",
        "Selfie Floor Instagram",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7},
            },
            PropBone = 60309,
            PropPlacement = {
                0.0930,
                0.0230,
                0.0260,
                -158.8271,
                -82.9040,
                -18.7472
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['camera'],
            PtfxWait = 200
        }
    },
	["selfiesexy"] = { -- Custom Emote By Little Spoon, designed for a custom iFruit phone model, however I am sticking with default game props for now
        "littlespoon@selfie001",
        "selfie001",
        "Selfie Sexy",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7},
            },
            PropBone = 58870, -- Right Finger 40 Bone
            PropPlacement = {
                0.0150,
                0.0230,
                0.0700,
                0.0,
                0.0,
                170.0000
             },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['camera'],
            PtfxWait = 200
        }
    },
    ["selfiesexy2"] = { -- Custom Emote By Little Spoon, designed for a custom iFruit phone model, however I am sticking with default game props for now
        "littlespoon@selfie002",
        "selfie002",
        "Selfie Sexy 2",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7},
            },
            PropBone = 64064, -- Right Finger 31 Bone
            PropPlacement = {
                0.0290,
                0.0140,
                0.0490,
                174.9616,
               -149.6187,
                8.6491
             },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['camera'],
            PtfxWait = 200
        }
    },
    ["selfiesexy3"] = { -- Custom Emote By Little Spoon, designed for a custom iFruit phone model, however I am sticking with default game props for now
        "littlespoon@selfie003",
        "selfie003",
        "Selfie Sexy 3",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7},
            },
            PropBone = 64064, -- Right Finger 31 Bone
            PropPlacement = {
                0.0290,
                0.0140,
                0.0490,
                174.9616,
               -149.6187,
                8.6491
             },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['camera'],
            PtfxWait = 200,
        }
   },
    ["selfiesexy4"] = { -- Custom Emote By Little Spoon, designed for a custom iFruit phone model, however I am sticking with default game props for now
        "littlespoon@selfie004",
        "selfie004",
        "Selfie Sexy 4",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7},
            },
            PropBone = 64064, -- Right Finger 31 Bone
            PropPlacement = {
                0.0290,
                0.0140,
                0.0490,
                174.9616,
               -149.6187,
                8.6491
             },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['camera'],
            PtfxWait = 200
        }
    },
    ["selfiesexy5"] = { -- Custom Emote By Little Spoon, designed for a custom iFruit phone model, however I am sticking with default game props for now
        "littlespoon@selfie005",
        "selfie005",
        "Selfie Sexy 5",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7},
            },
            PropBone = 64064, -- Right Finger 31 Bone
            PropPlacement = {
                0.0290,
                0.0140,
                0.0490,
                174.9616,
               -149.6187,
                8.6491
             },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['camera'],
            PtfxWait = 200
        }
    },
    ["selfiecute"] = { -- Custom Emote By Puppy, designed for a custom iFruit phone model, however I am sticking with default game props for now
        "pupppy@freeselfie01",
        "freeselfie01",
        "Selfie Cute",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7},
            },
            PropBone = 26613, -- Left Finger 30 Bone
            PropPlacement = {
                0.0380,
                -0.0310,
                0.0590,
                0.0000,
               0.0000,
               10.0000
             },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['camera'],
            PtfxWait = 200,
        }
   },
    ["selfiecute2"] = { -- Custom Emote By Puppy, designed for a custom iFruit phone model, however I am sticking with default game props for now
        "pupppy@freeselfie02",
        "freeselfie02",
        "Selfie Cute 2",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7},
            },
            PropBone = 60309, -- Left Wrist, worked better.
            PropPlacement = {
                0.0960,
				0.0160,
				0.0420,
				-155.3515,
				-84.4828,
				4.7551
             },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['camera'],
            PtfxWait = 200
        }
    },
    ["selfiecute3"] = { -- Custom Emote By Puppy, designed for a custom iFruit phone model, however I am sticking with default game props for now
        "pupppy@freeselfie03",
        "freeselfie03",
        "Selfie Cute 3",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7},
            },
            PropBone = 26614, -- Left Finger 40, worked better.
            PropPlacement = {
                 0.0310,
                -0.0430,
                0.0720,
                0.0000,
               3.9999,
               0.0000
             },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['camera'],
            PtfxWait = 200
        }
    },
    ["selfiecute4"] = { -- Custom Emote By Struggleville, designed for a custom iFruit phone model, however I am sticking with default game props for now
        "anim@egirl_1foot_selfie",
        "1foot_selfie_clip",
        "Selfie Cute 4",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7},
            },
            PropBone = 4185, -- Left Finger 21
            PropPlacement = {
                0.0290,
			   -0.0230,
			    0.0190,
			   -14.7860,
			    67.8030,
				6.1827
             },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['camera'],
            PtfxWait = 200,
        }
   },
    ["selfiecute5"] = { -- Custom Emote By Wolf's Square
        "eagle@girlphonepose21",
        "girl",
        "Selfie Cute 5",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7},
            },
            PropBone = 4185,
            PropPlacement = {
                0.0210,
               -0.0150,
                0.0110,
               -45.8936,
                41.8372,
                -26.6415
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['camera'],
            PtfxWait = 200,
        }
   },
    ["selfiebbum"] = { -- Custom Emote By Struggleville, designed for a custom iFruit phone model, however I am sticking with default game props for now
        "anim@female_beach_booty_selfie",
        "booty_selfie_clip",
        "Selfie Beach Bum",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7},
            },
            PropBone = 26613, -- Left Finger 30
            PropPlacement = {
                0.0680,
			   -0.0250,
			    0.0340,
			   -13.4299,
			    47.2288,
			   -14.9588
             },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['camera'],
            PtfxWait = 200
        }
    },
	['selfiehb'] = { -- Custom prop by crowded1337, unbranded by TayMcKenzieNZ
        'anim@female_selfie_cute',
        'selfie_cute_clip',
        'Selfie Hand Bag',
        AnimationOptions = {
            Prop = 'prop_amb_handbag_01',
            PropBone = 28422, -- Right Wrist
            PropPlacement = {
                0.1700,
                0.0020,
                -0.1000,
                105.4525,
                -178.3549,
                69.1794
            },
            SecondProp = 'prop_phone_ing',-- Cell Phone Left Finger 21
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7},
            },
            SecondPropBone = 4185,
            SecondPropPlacement = {
                0.0200,
               -0.0250,
                0.0000,
               -8.5947,
                30.6141,
               -5.1311
            },
            EmoteLoop = true,
            EmoteMoving = false,
			PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['camera'],
            PtfxWait = 200
        }
    },
    ["selfiehhands"] = { -- Custom Emote By QueenSistersAnimations, designed for a custom iFruit phone model, however I am sticking with default game props for now
        "heartselfiemirror@queensisters",
        "heartselfie_clip",
        "Selfie Heart Hands",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7},
            },
            PropBone = 64096, -- Right Finger 11
            PropPlacement = {
                0.0390,
				0.0200,
				0.0330,
			    90.0000,
			   180.0000,
			   13.0000
             },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['camera'],
            PtfxWait = 200,
        }
   },
    ["selfiefu2"] = { -- Custom Emote By QueenSistersAnimations, designed for a custom iFruit phone model, however I am sticking with default game props for now
        "fuckyouselfie@queensisters",
        "mirrorselfie_clip",
        "Selfie Middle Finger 2",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7},
            },
            PropBone = 64097, -- Right Finger 12
            PropPlacement = {
               -0.0210,
			    0.0300,
			   -0.0030,
			   -180.0000,
			   -180.0000,
			    0.0000
             },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['camera'],
            PtfxWait = 200
        }
    },
    ["selfiefu3"] = { -- Custom Emote By QueenSistersAnimations, designed for a custom iFruit phone model, however I am sticking with default game props for now
        "selfiekilye@queensisters",
        "kilye_clip",
        "Selfie Middle Finger Thot Pose",
        AnimationOptions = {
            Prop = 'prop_cs_dildo_01',
            PropBone = 28422, -- Right Wrist
            PropPlacement = {
                0.0450,
                0.0050,
               -0.0150,
                92.0810,
				1.3049,
			   -2.8863

            },

            SecondProp = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7},
            },
            SecondPropBone = 26613, -- Left Finger 30
            SecondPropPlacement = {
                0.0650,
                -0.0280,
                0.0440,
                10.6808,
                13.7526,
                2.6457
            },
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['camera'],
            PtfxWait = 200,

        },
        AdultAnimation = true
    },
    ["selfiemale"] = { -- Custom Emote By Wolf's Square
        "eagle@boypose04",
        "boy",
        "Selfie Male Pose",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7},
            },
            PropBone = 60309,
            PropPlacement = {
                0.0730,
                0.0220,
                0.0460,
               -142.1374,
                -92.4142,
                33.1691
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['camera'],
            PtfxWait = 200
        }
    },
    ["selfiewine"] = { -- Custom Emote By Wolf's Square
        "holding_wine@taking_selfie",
        "base",
        "Selfie Wine",
        AnimationOptions = {
            Prop = 'p_wine_glass_s',
            PropBone = 28422,
            PropPlacement = {
                0.0420,
                -0.0700,
                -0.0440,
                -82.6657,
                 1.2898,
                -19.9222
            },
            SecondProp = 'prop_phone_ing',
            PropTextureVariations = {
                { Name = "<font color=\"#00A0F4\">Blue", Value = 0 },
                { Name = "<font color=\"#1AA20E\">Green", Value = 1 },
                { Name = "<font color=\"#800B0B\">Dark Red", Value = 2 },
                { Name = "<font color=\"#FF7B00\">Orange", Value = 3 },
                { Name = "<font color=\"#5F5F5F\">Grey", Value = 4 },
                { Name = "<font color=\"#a356fa\">Purple", Value = 5 },
                { Name = "<font color=\"#FF0099\">Pink", Value = 6 },
                { Name = "Black", Value = 7 },
            },
            SecondPropBone = 4090,
            SecondPropPlacement = {
                0.0250,
                -0.0080,
                -0.0050,
               -140.5541,
               -24.7476,
                 13.7795
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['camera'],
            PtfxWait = 200
        }
    },
    ["sittv"] = {
        "anim@heists@heist_safehouse_intro@variations@male@tv",
        "tv_part_one_loop",
        "Sit TV",
        AnimationOptions = {
            Prop = "v_res_tre_remote",
            PropBone = 57005,
            PropPlacement = {
                0.0990,
                0.0170,
                -0.0300,
                -64.760,
                -109.544,
                18.717
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sitchairf"] = { -- Emote by WhiskerValeModss
        "mouse@femalearmchair",
        "female_armchair_clip_01",
        "Sit Chair - Armchair",
        AnimationOptions = {
            Prop = "p_armchair_01_s",
            PropBone = 11816,
            PropPlacement = {
                0.5320,
                -0.3310,
                0.2000,
                -90.0000,
                -180.0000,
                -40.9999
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sitchairf2"] = { -- Custom Emote by WhiskerValeMods
        "mouse@female_sitting_folded",
        "female_sitting_folded_clip",
        "Sit Chair - Arms Folded",
        AnimationOptions = {
            Prop = "ba_prop_battle_club_chair_03",
            PropBone = 0,
            PropPlacement = { 0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                -170.0000
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sitchairf3"] = { -- Custom Emote by WhiskerValeMods
        "mouse@female_sitting_forward",
        "female_sitting_forward_clip",
        "Sit Chair - Leaning Forward",
        AnimationOptions = {
            Prop = "ba_prop_battle_club_chair_03",
            PropBone = 0,
            PropPlacement = { 0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                -170.0000
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sitchairf4"] = { -- Custom Emote by WhiskerValeMods
        "mouse@female_smart_sitting",
        "female_smart_sitting_clip",
        "Sit Chair - Smart",
        AnimationOptions = {
            Prop = "ba_prop_battle_club_chair_03",
            PropBone = 0,
            PropPlacement = { 0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                -170.0000
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sitchairf5"] = { -- Custom Emote By WhiskerValeMods
        "mouse@female_smart_sitting_crossed",
        "female_smart_sitting_crossed_clip",
        "Sit Chair - Legs Crossed",
        AnimationOptions = {
            Prop = "ba_prop_battle_club_chair_03",
            PropBone = 0,
            PropPlacement = { 0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                -170.0000
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sitchairf6"] = { -- Custom Emote By WhiskerValeMods
        "mouse@female_sitting_laptop",
        "female_sitting_laptop_clip",
        "Sit Chair - Laptop",
        AnimationOptions = {
            Prop = 'ba_prop_club_laptop_dj_02',
            PropBone = 57005,
            PropPlacement = {
                0.0860,
                -0.1370,
                -0.1750,
                -79.9999,
                -90.0000,
                0.0000
            },
            SecondProp = 'ba_prop_battle_club_chair_02',
            SecondPropBone = 0,
            SecondPropPlacement = {
                -0.0400,
                -0.1900,
                0.0000,
                -180.0000,
                -180.0000,
                9.0999
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sitchairf7"] = { -- Custom Emote By Emote by WhiskerValeMods
        "mouse@female_sitting_tablet",
        "female_sitting_tablet_clip",
        "Sit Chair - Tablet",
        AnimationOptions = {
            Prop = 'hei_prop_dlc_tablet',
            PropBone = 28422,
            PropPlacement = {
                0.0870,
                0.1030,
                -0.1240,
                144.3540,
                157.8527,
                -4.6318
            },
            SecondProp = 'ba_prop_battle_club_chair_02',
            SecondPropBone = 0,
            SecondPropPlacement = {
                0.0100,
                -0.0800,
                0.0200,
                150.0000,
                -180.0000,
                10.0000
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["sitchairf8"] = { -- Custom Emote By Emote by WhiskerValeMods
        "mouse@female_sitting_tablet",
        "female_sitting_tablet_clip",
        "Sit Chair - Book",
        AnimationOptions = {
            Prop = 'v_ilev_mp_bedsidebook',
            PropBone = 28422,
            PropPlacement = {
                0.1300,
                0.1100,
                -0.1200,
                120.3356,
                -15.9891,
                26.1497
            },
            SecondProp = 'ba_prop_battle_club_chair_02',
            SecondPropBone = 0,
            SecondPropPlacement = {
                0.0100,
                -0.0800,
                0.0200,
                150.0000,
                -180.0000,
                10.0000
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["dig"] = {
        "random@burial",
        "a_burial",
        "Dig",
        AnimationOptions = {
            Prop = "prop_tool_shovel",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.24,
                0,
                0,
                0.0,
                0.0
            },
            SecondProp = 'prop_ld_shovel_dirt',
            SecondPropBone = 28422,
            SecondPropPlacement = {
                0.0,
                0.0,
                0.24,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["bongos"] = {
        "amb@world_human_musician@bongos@male@base",
        "base",
        "Bongo Drums",
        AnimationOptions = {
            Prop = "prop_bongos_01",
            PropBone = 60309,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["medbag"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Medic Bag",
        AnimationOptions = {
            Prop = "xm_prop_x17_bag_med_01a",
            PropBone = 57005,
            PropPlacement = {
                0.3900,
                -0.0600,
                -0.0600,
                -100.00,
                -180.00,
                -78.00
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["dufbag"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Duffel Bag",
        AnimationOptions = {
            Prop = "bkr_prop_duffel_bag_01a",
            PropBone = 28422,
            PropPlacement = {
                0.2600,
                0.0400,
                0.00,
                90.00,
                0.00,
                -78.99
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["shopbag"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Shopping Bag",
        AnimationOptions = {
            Prop = "vw_prop_casino_shopping_bag_01a",
            PropBone = 28422,
            PropPlacement = {
                0.24,
                0.03,
                -0.04,
                0.00,
                -90.00,
                10.00
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["shopbag2"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Shopping Bag 2",
        AnimationOptions = {
            Prop = "prop_shopping_bags02",
            PropBone = 28422,
            PropPlacement = {
                0.05,
                0.02,
                0.00,
                178.80,
                91.19,
                9.97
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["shopbag3"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Shopping Bag 3",
        AnimationOptions = {
            Prop = "prop_cs_shopping_bag",
            PropBone = 28422,
            PropPlacement = {
                0.24,
                0.03,
                -0.04,
                0.00,
                -90.00,
                10.00
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["guccibag"] = { -- Custom prop by crowded1337, unbranded by TayMcKenzieNZ
        "move_weapon@jerrycan@generic",
        "idle",
        "Gucci Bag",
        AnimationOptions = {
            Prop = 'prop_amb_handbag_01',
            PropBone = 28422, -- Right Wrist
            PropPlacement = {
                0.2000,
                0.0300,
                -0.0200,
                90.4294,
                -177.4267,
                83.0011
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["idcard"] = {
        "paper_1_rcm_alt1-8",
        "player_one_dual-8",
        "ID Card 1",
        AnimationOptions = {
            Prop = "prop_franklin_dl",
            PropBone = 57005,
            PropPlacement = {
                0.1000,
                0.0200,
               -0.0300,
              -90.000,
               170.000,
                78.999
            },
            EmoteStuck = true,
            EmoteLoop = false,
            EmoteMoving = true
        }
    },
    ["idcardb"] = {
        "paper_1_rcm_alt1-8",
        "player_one_dual-8",
        "ID Card 2 - FIB",
        AnimationOptions = {
            Prop = "prop_fib_badge",
            PropBone = 28422,
            PropPlacement = {
                0.0600,
                0.0210,
               -0.0400,
              -90.00,
              -180.00,
                78.999
            },
            EmoteStuck = true,
            EmoteLoop = false,
            EmoteMoving = true
        }
    },
    ["idcardc"] = {
        "paper_1_rcm_alt1-8",
        "player_one_dual-8",
        "ID Card 3",
        AnimationOptions = {
            Prop = "prop_michael_sec_id",
            PropBone = 28422,
            PropPlacement = {
                0.1000,
                0.0200,
               -0.0300,
              -90.00,
             -180.00,
               78.999
            },
            EmoteStuck = true,
            EmoteLoop = false,
            EmoteMoving = true
        }
    },
    ["idcardd"] = {
        "paper_1_rcm_alt1-8",
        "player_one_dual-8",
        "ID Card 4",
        AnimationOptions = {
            Prop = "prop_trev_sec_id",
            PropBone = 28422,
            PropPlacement = {
                0.1000,
                0.0200,
                -0.0300,
                -90.00,
                -180.00,
                78.999
            },
            EmoteStuck = true,
            EmoteLoop = false,
            EmoteMoving = true
        }
    },
    ["idcarde"] = {
        "paper_1_rcm_alt1-8",
        "player_one_dual-8",
        "ID Card 5",
        AnimationOptions = {
            Prop = "p_ld_id_card_002",
            PropBone = 28422,
            PropPlacement = {
                0.1000,
                0.0200,
                -0.0300,
                -90.00,
                -180.00,
                78.999
            },
            EmoteStuck = true,
            EmoteLoop = false,
            EmoteMoving = true
        }
    },
    ["idcardf"] = {
        "paper_1_rcm_alt1-8",
        "player_one_dual-8",
        "ID Card 6",
        AnimationOptions = {
            Prop = "prop_cs_r_business_card",
            PropBone = 28422,
            PropPlacement = {
                0.1000,
                0.0200,
                -0.0300,
                -90.00,
                -180.00,
                78.999
            },
            EmoteStuck = true,
            EmoteLoop = false,
            EmoteMoving = true
        }
    },
    ["idcardg"] = {
        "paper_1_rcm_alt1-8",
        "player_one_dual-8",
        "ID Card 7",
        AnimationOptions = {
            Prop = "prop_michael_sec_id",
            PropBone = 28422,
            PropPlacement = {
                0.1000,
                0.0200,
                -0.0300,
                -90.00,
                -180.00,
                78.999
            },
            EmoteStuck = true,
            EmoteLoop = false,
            EmoteMoving = true
        }
    },
    ["idcardh"] = {
        "paper_1_rcm_alt1-8",
        "player_one_dual-8",
        "ID Card 8",
        AnimationOptions = {
            Prop = "prop_cop_badge",
            PropBone = 28422,
            PropPlacement = {
                0.0800,
               -0.0120,
               -0.0600,
              -90.00,
                180.00,
                 69.99
            },
            EmoteStuck = true,
            EmoteLoop = false,
            EmoteMoving = true
        }
     },
    ["idcardi"] = {
        "paper_1_rcm_alt1-8",
        "player_one_dual-8",
        "ID Card 9 - Drivers License",
        AnimationOptions = {
            Prop = "bkr_prop_fakeid_singledriverl",
            PropBone = 28422,
            PropPlacement = {
                0.0700,
                0.0260,
               -0.0320,
               -10.8683,
              -177.8499,
                23.6377
            },
			EmoteStuck = true,
            EmoteLoop = false,
            EmoteMoving = true
        }
     },
    ["idcardj"] = {
        "amb@code_human_wander_clipboard@male@base",
        "static",
        "ID Card 10 - Passport",
        AnimationOptions = {
            Prop = "bkr_prop_fakeid_openpassport",
            PropBone = 60309,
            PropPlacement = {
                -0.0230,
                 0.0330,
                -0.0600,
               -80.7083,
                90.8670,
                41.4814
            },
            EmoteStuck = true,
            EmoteLoop = false,
            EmoteMoving = true
        }
    },
    ["phone"] = {
        "cellphone@",
        "cellphone_text_read_base",
        "phone",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7},
            },
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["sms"] = {
        "cellphone@",
        "cellphone_text_read_base",
        "SMS",
        AnimationOptions = {
          Prop = "prop_phone_ing",
          PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7},
            },
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["sms2"] = {
        "cellphone@female",
        "cellphone_text_read_base",
        "SMS 2",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7},
            },
            PropBone = 28422,
            PropPlacement = {
                0.00,
                0.00,
                0.0301,
                0.000,
                00.00,
                00.00
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["sms3"] = {
        "cellphone@female",
        "cellphone_email_read_base",
        "SMS 3",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7},
            },
            PropBone = 28422,
            PropPlacement = {
                -0.0190,
                -0.0240,
                0.0300,
                18.99,
                -72.07,
                6.39
            },
            EmoteLoop = false,
            EmoteMoving = true
        }
    },
    ["sms4"] = {
        "cellphone@female",
        "cellphone_text_read_base_cover_low",
        "SMS 4",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7},
            },
            PropBone = 28422,
            PropPlacement = {
                -0.0190,
                -0.0250,
                0.0400,
                19.17,
                -78.50,
                14.97
            },
            EmoteLoop = false,
            EmoteMoving = true,
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['camera'],
            PtfxWait = 200
        }
    },
    ["sms5"] = {
        "amb@code_human_wander_texting_fat@male@base",
        "static",
        "SMS 6",
        AnimationOptions = {
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7},
            },
            PropBone = 28422,
            PropPlacement = {
                -0.0200,
                -0.0100,
                0.00,
                2.309,
                88.845,
                29.979
            },
            EmoteLoop = false,
            EmoteMoving = true
        }
    },
    ["tire"] = {
        "anim@heists@box_carry@",
        "idle",
        "Tire",
        AnimationOptions = {
            Prop = "prop_wheel_tyre",
            PropBone = 60309,
            PropPlacement = {
                -0.05,
                0.16,
                0.32,
                -130.0,
                -55.0,
                150.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["golfswing"] = {
        "rcmnigel1d",
        "swing_a_mark",
        "Golf Swing",
        AnimationOptions = {
            EmoteLoop = true,
            Prop = "prop_golf_wood_01",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            }
        }
    },
    ["register"] = {
        "anim@heists@box_carry@",
        "idle",
        "Register",
        AnimationOptions = {
            Prop = "v_ret_gc_cashreg",
            PropBone = 60309,
            PropPlacement = {
                0.138,
                0.2,
                0.2,
                -50.0,
                290.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["weedbrick"] = {
        "impexp_int-0",
        "mp_m_waremech_01_dual-0",
        "Weed Brick",
        AnimationOptions = {
            Prop = "prop_weed_block_01",
            PropBone = 60309,
            PropPlacement = {
                0.1,
                0.1,
                0.05,
                0.0,
                -90.0,
                90.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["weedbrick2"] = {
        "anim@heists@box_carry@",
        "idle",
        "Weed Brick BIG",
        AnimationOptions = {
            Prop = "bkr_prop_weed_bigbag_01a",
            PropBone = 60309,
            PropPlacement = {
                0.158,
                -0.05,
                0.23,
                -50.0,
                290.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["potplant"] = {
        "anim@heists@box_carry@",
        "idle",
        "Pot Plant (Small)",
        AnimationOptions = {
            Prop = "bkr_prop_weed_01_small_01c",
            PropBone = 60309,
            PropPlacement = {
                0.138,
                -0.05,
                0.23,
                -50.0,
                290.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["potplant2"] = {
        "anim@heists@box_carry@",
        "idle",
        "Pot Plant (Medium)",
        AnimationOptions = {
            Prop = "bkr_prop_weed_01_small_01b",
            PropBone = 60309,
            PropPlacement = {
                0.138,
                -0.05,
                0.23,
                -50.0,
                290.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["potplant3"] = {
        "anim@heists@box_carry@",
        "idle",
        "Pot Plant (Large)",
        AnimationOptions = {
            Prop = "bkr_prop_weed_lrg_01b",
            PropBone = 60309,
            PropPlacement = {
                0.138,
                -0.05,
                0.23,
                -50.0,
                290.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["weedbucket"] = {
        "anim@heists@box_carry@",
        "idle",
        "Weed Bucket",
        AnimationOptions = {
            Prop = "bkr_prop_weed_bucket_open_01a",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                -0.1000,
                -0.1800,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["lawnchair"] = {
        "timetable@ron@ig_5_p3",
        "ig_5_p3_base",
        "Lawnchair",
        AnimationOptions = {
            Prop = "prop_skid_chair_02",
            PropBone = 0,
            PropPlacement = {
                0.025,
                -0.2,
                -0.1,
                45.0,
                -5.0,
                180.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["lawnchair2"] = {
        "timetable@reunited@ig_10",
        "base_amanda",
        "Lawnchair 2",
        AnimationOptions = {
            Prop = "prop_skid_chair_02",
            PropBone = 0,
            PropPlacement = {
                0.025,
                -0.15,
                -0.1,
                45.0,
                5.0,
                180.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["lawnchair3"] = {
        "timetable@ron@ig_3_couch",
        "base",
        "Lawnchair 3",
        AnimationOptions = {
            Prop = "prop_skid_chair_02",
            PropBone = 0,
            PropPlacement = {
                -0.05,
                0.0,
                -0.2,
                5.0,
                0.0,
                180.0
            },
            EmoteLoop = true,
            EmoteMoving = false
        }
    },
    ["rose2"] = {
        "missheistdocksprep1hold_cellphone",
        "static",
        "Rose 2 (Male)",
        AnimationOptions = {
            Prop = "prop_single_rose",
            PropBone = 31086,
            PropPlacement = {
                -0.0140,
                0.1030,
                0.0620,
                -2.932,
                4.564,
                39.910
            },
            EmoteLoop = false,
            EmoteMoving = true
        }
    },
    ["rose3"] = {
        "missheistdocksprep1hold_cellphone",
        "static",
        "Rose 3 (Female)",
        AnimationOptions = {
            Prop = "prop_single_rose",
            PropBone = 31086,
            PropPlacement = {
                -0.0140,
                0.1070,
                0.0720,
                0.00,
                0.00,
                2.99
            },
            EmoteLoop = false,
            EmoteMoving = true
        }
    },
    ["cbbox"] = {
        "anim@heists@box_carry@",
        "idle",
        "Carry Beer Box",
        AnimationOptions = {
            Prop = "v_ret_ml_beerben1",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["cbbox2"] = {
        "anim@heists@box_carry@",
        "idle",
        "Carry Beer Box 2",
        AnimationOptions = {
            Prop = "v_ret_ml_beerbla1",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["cbbox3"] = {
        "anim@heists@box_carry@",
        "idle",
        "Carry Beer Box 3",
        AnimationOptions = {
            Prop = "v_ret_ml_beerjak1",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["cbbox4"] = {
        "anim@heists@box_carry@",
        "idle",
        "Carry Beer Box 4",
        AnimationOptions = {
            Prop = "v_ret_ml_beerlog1",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["cbbox5"] = {
        "anim@heists@box_carry@",
        "idle",
        "Carry Beer Box 5",
        AnimationOptions = {
            Prop = "v_ret_ml_beerpis1",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["cbbox6"] = {
        "anim@heists@box_carry@",
        "idle",
        "Carry Beer Box 6",
        AnimationOptions = {
            Prop = "prop_beer_box_01",
            PropBone = 28422,
            PropPlacement = {
                0.0200,
                -0.0600,
                -0.1200,
                -180.00,
                -180.00,
                1.99
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["gbin"] = {
        "anim@heists@box_carry@",
        "idle",
        "Garbage Bin",
        AnimationOptions = {
            Prop = "prop_bin_08open",
            PropBone = 28422,
            PropPlacement = {
                0.00,
                -0.420,
                -1.290,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["gbin2"] = {
        "anim@heists@box_carry@",
        "idle",
        "Garbage Bin 2",
        AnimationOptions = {
            Prop = "prop_cs_bin_01",
            PropBone = 28422,
            PropPlacement = {
                0.00,
                -0.420,
                -1.290,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["gbin3"] = {
        "anim@heists@box_carry@",
        "idle",
        "Garbage Bin 3",
        AnimationOptions = {
            Prop = "prop_cs_bin_03",
            PropBone = 28422,
            PropPlacement = {
                0.00,
                -0.420,
                -1.290,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["gbin4"] = {
        "anim@heists@box_carry@",
        "idle",
        "Garbage Bin 4",
        AnimationOptions = {
            Prop = "prop_bin_08a",
            PropBone = 28422,
            PropPlacement = {
                0.00,
                -0.420,
                -1.290,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["gbin5"] = {
        "anim@heists@box_carry@",
        "idle",
        "Garbage Bin 5",
        AnimationOptions = {
            Prop = "prop_bin_07d",
            PropBone = 28422,
            PropPlacement = {
                -0.0100,
                -0.2200,
                -0.8600,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ['pflag'] = {
        'rcmnigel1d',
        'base_club_shoulder',
        'Pride Flag - Rainbow',
        AnimationOptions = {
            Prop = 'prideflag1',
            PropBone = 18905,
            PropPlacement = {
                0.0800,
                -0.2090,
                0.0900,
                -82.6677,
                -141.2988,
                12.3308
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ['pflag2'] = {
        'rcmnigel1d',
        'base_club_shoulder',
        'Pride Flag 2 - LGBTQ',
        AnimationOptions = {
            Prop = 'prideflag2',
            PropBone = 18905,
            PropPlacement = {
                0.0800,
                -0.2090,
                0.0900,
                -82.6677,
                -141.2988,
                12.3308
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ['pflag3'] = {
        'rcmnigel1d',
        'base_club_shoulder',
        'Pride Flag 3 - Bisexual ',
        AnimationOptions = {
            Prop = 'prideflag3',
            PropBone = 18905,
            PropPlacement = {
                0.0800,
                -0.2090,
                0.0900,
                -82.6677,
                -141.2988,
                12.3308
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ['pflag4'] = {
        'rcmnigel1d',
        'base_club_shoulder',
        'Pride Flag 4 - Lesbian ',
        AnimationOptions = {
            Prop = 'prideflag4',
            PropBone = 18905,
            PropPlacement = {
                0.0800,
                -0.2090,
                0.0900,
                -82.6677,
                -141.2988,
                12.3308
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ['pflag5'] = {
        'rcmnigel1d',
        'base_club_shoulder',
        'Pride Flag 5 - Pansexual ',
        AnimationOptions = {
            Prop = 'prideflag5',
            PropBone = 18905,
            PropPlacement = {
                0.0800,
                -0.2090,
                0.0900,
                -82.6677,
                -141.2988,
                12.3308
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ['pflag6'] = {
        'rcmnigel1d',
        'base_club_shoulder',
        'Pride Flag 6 - Transgender  ',
        AnimationOptions = {
            Prop = 'prideflag6',
            PropBone = 18905,
            PropPlacement = {
                0.0800,
                -0.2090,
                0.0900,
                -82.6677,
                -141.2988,
                12.3308
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ['pflag7'] = {
        'rcmnigel1d',
        'base_club_shoulder',
        'Pride Flag 7 - Non Binary ',
        AnimationOptions = {
            Prop = 'prideflag7',
            PropBone = 18905,
            PropPlacement = {
                0.0800,
                -0.2090,
                0.0900,
                -82.6677,
                -141.2988,
                12.3308
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ['pflag8'] = {
        'rcmnigel1d',
        'base_club_shoulder',
        'Pride Flag 8 - Asexual ',
        AnimationOptions = {
            Prop = 'prideflag8',
            PropBone = 18905,
            PropPlacement = {
                0.0800,
                -0.2090,
                0.0900,
                -82.6677,
                -141.2988,
                12.3308
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ['pflag9'] = {
        'rcmnigel1d',
        'base_club_shoulder',
        'Pride Flag 9 - Straight Ally ',
        AnimationOptions = {
            Prop = 'prideflag9',
            PropBone = 18905,
            PropPlacement = {
                0.0800,
                -0.2090,
                0.0900,
                -82.6677,
                -141.2988,
                12.3308
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ['old'] = {
        'missbigscore2aleadinout@bs_2a_2b_int',
        'lester_base_idle',
        'Old Man Walking Stick',
        AnimationOptions = {
            Prop = 'prop_cs_walking_stick',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            SecondProp = 'prop_phone_ing',
            PropTextureVariations = {
                { Name = "<font color=\"#00A0F4\">Blue", Value = 0 },
                { Name = "<font color=\"#1AA20E\">Green", Value = 1 },
                { Name = "<font color=\"#800B0B\">Dark Red", Value = 2 },
                { Name = "<font color=\"#FF7B00\">Orange", Value = 3 },
                { Name = "<font color=\"#5F5F5F\">Grey", Value = 4 },
                { Name = "<font color=\"#a356fa\">Purple", Value = 5 },
                { Name = "<font color=\"#FF0099\">Pink", Value = 6 },
                { Name = "Black", Value = 7 },
            },
            SecondPropBone = 60309, -- Left Wrist
            SecondPropPlacement = {
                0.0740,
                0.0410,
                0.0090,
               -127.9136,
               -10.6186,
                 4.7536
            },
            PtfxAsset = "scr_tn_meet",
            PtfxName = "scr_tn_meet_phone_camera_flash",
            PtfxPlacement = {
                -0.015,
                0.0,
                0.041,
                0.0,
                0.0,
                0.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['camera'],
            PtfxWait = 200,
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ['digiscan'] = {
        'weapons@misc@digi_scanner',
        'aim_med_loop',
        'Digiscan 1 ',
        AnimationOptions = {
            Prop = 'w_am_digiscanner',
            PropBone = 28422,
            PropPlacement = {
                0.0480,
                0.0780,
                0.0040,
                -81.6893,
                2.5616,
                -15.7909
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ['digiscan2'] = {
        'weapons@misc@digi_scanner',
        'aim_low_loop',
        'Digiscan 2 ',
        AnimationOptions = {
            Prop = 'w_am_digiscanner',
            PropBone = 28422,
            PropPlacement = {
                0.0480,
                0.0780,
                0.0040,
                -81.6893,
                2.5616,
                -15.7909
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ['digiscan3'] = {
        'weapons@misc@digi_scanner',
        'aim_high_loop',
        'Digiscan 3 ',
        AnimationOptions = {
            Prop = 'w_am_digiscanner',
            PropBone = 28422,
            PropPlacement = {
                0.0480,
                0.0780,
                0.0040,
                -81.6893,
                2.5616,
                -15.7909
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["cop4"] = {
        "amb@world_human_car_park_attendant@male@base",
        "base",
        "Cop 4",
        AnimationOptions = {
            Prop = "prop_parking_wand_01",
            PropBone = 57005,
            PropPlacement = {
                0.12,
                0.05,
                0.0,
                80.0,
                -20.0,
                180.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["copbeacon"] = { -- Added for compatibility
        "amb@world_human_car_park_attendant@male@base",
        "base",
        "Cop Beacon",
        AnimationOptions = {
            Prop = "prop_parking_wand_01",
            PropBone = 57005,
            PropPlacement = {
                0.12,
                0.05,
                0.0,
                80.0,
                -20.0,
                180.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["leanphone"] = {
        "amb@world_human_leaning@male@wall@back@mobile@base",
        "base",
        "Leaning With Phone",
        AnimationOptions = {
            EmoteMoving = false,
            EmoteLoop = true,
            Prop = "prop_phone_ing",
            PropTextureVariations = {
                {Name = "<font color=\"#00A0F4\">Blue", Value = 0},
                {Name = "<font color=\"#1AA20E\">Green", Value = 1},
                {Name = "<font color=\"#800B0B\">Dark Red", Value = 2},
                {Name = "<font color=\"#FF7B00\">Orange", Value = 3},
                {Name = "<font color=\"#5F5F5F\">Grey", Value = 4},
                {Name = "<font color=\"#a356fa\">Purple", Value = 5},
                {Name = "<font color=\"#FF0099\">Pink", Value = 6},
                {Name = "Black", Value = 7},
            },
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            }
        }
    },
    ["hump2"] = {
        "timetable@trevor@skull_loving_bear",
        "skull_loving_bear",
        "Hump (Bear)",
        AnimationOptions = {
            Prop = 'prop_mr_raspberry_01',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteMoving = false,
            EmoteLoop = true,
        },
        AdultAnimation = true
    },
    ["eat"] = {
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Eat",
        AnimationOptions = {
            Prop = 'prop_cs_burger_01',
            PropBone = 18905,
            PropPlacement = {
                0.13,
                0.05,
                0.02,
                -50.0,
                16.0,
                60.0
            },
            EmoteMoving = true
        }
    },
    ["drink"] = {
        "mp_player_intdrink",
        "loop_bottle",
        "Drink",
        AnimationOptions =
        {
            Prop = "prop_ld_flow_bottle",
            PropBone = 18905,
            PropPlacement = {
                0.12,
                0.008,
                0.03,
                240.0,
                -60.0
            },
            EmoteMoving = true,
            EmoteLoop = true
        }
    },
    ["surfboard"] = { -- Emote by Molly
        "beachanims@molly",
        "beachanim_surf_clip",
        "Surf Board",
        AnimationOptions =
        {
            Prop = "prop_surf_board_01",
            PropBone = 28252,
            PropPlacement = {
                0.1020,
                -0.1460,
                -0.1160,
                -85.5416,
                176.1446,
                -2.1500
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["stealtv"] = { -- Emote by Molly
        "beachanims@molly",
        "beachanim_surf_clip",
        "Steal TV",
        AnimationOptions =
        {
            Prop = "xs_prop_arena_screen_tv_01",
            PropBone = 28252,
            PropPlacement = {
                0.2600,
                0.1100,
                -0.1400,
                96.1620,
                168.9069,
                84.2402
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["beachring"] = { -- Emote by Molly
        "beachanims@free",
        "beachanim_clip",
        "Beach Floatie Thingy",
        AnimationOptions = {

            Prop = "prop_beach_ring_01",
            PropBone = 0,
            PropPlacement = {
                0.0,
                0.0,
                0.0100,
                -12.0,
                0.0,
                -2.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["cashcase"] = {
        "move_weapon@jerrycan@generic",
        "idle",
        "Cash Briefcase",
        AnimationOptions = {
            Prop = "bkr_prop_biker_case_shut",
            PropBone = 28422,
            PropPlacement = {
                0.1000,
                0.0100,
                0.0040,
                0.0,
                0.0,
                -90.00
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["cashcase2"] = {
        "anim@heists@box_carry@",
        "idle",
        "Cash Briefcase 2",
        AnimationOptions = {
            Prop = "prop_cash_case_01",
            PropBone = 28422,
            PropPlacement = {
                -0.0050,
                -0.1870,
                -0.1400,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["cashcase3"] = {
        "anim@heists@box_carry@",
        "idle",
        "Cash Briefcase 3",
        AnimationOptions = {
            Prop = "prop_cash_case_02",
            PropBone = 28422,
            PropPlacement = {
                0.0050,
                -0.1170,
                -0.1400,
                14.000,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["cashcase4"] = {
        "anim@heists@box_carry@",
        "idle",
        "Cash Briefcase 4 - Diamonds",
        AnimationOptions = {
            Prop = "ch_prop_ch_security_case_01a",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                -0.0900,
                -0.1800,
                14.4000,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["airportbag"] = {
        "anim@heists@narcotics@trash",
        "idle",
        "Airport Bag",
        AnimationOptions = {
            Prop = "prop_suitcase_01c",
            PropBone = 28422,
            PropPlacement = {
                0.1100,
                -0.2100,
                -0.4300,
                -11.8999,
                0.0,
                30.0000
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["megaphone"] = { -- Custom Emote By MollyEmotes
        "molly@megaphone",
        "megaphone_clip",
        "Megaphone",
        AnimationOptions = {
            Prop = "prop_megaphone_01",
            PropBone = 28422,
            PropPlacement = {
                0.0500,
                0.0540,
                -0.0060,
                -71.8855,
                -13.0889,
                -16.0242
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["megaphone2"] = { -- Custom Emote By MollyEmotes
        "molly@megaphone2",
        "megaphone_clip",
        "Megaphone 2",
        AnimationOptions = {
            Prop = "prop_megaphone_01",
            PropBone = 28422,
            PropPlacement = {
                0.0500,
                0.0540,
                -0.0060,
                -71.8855,
                -13.0889,
                -16.0242
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["bball"] = { -- Custom Emote By Struggleville
        "anim@male_bskball_hold",
        "bskball_hold_clip",
        "Basketball Hold",
        AnimationOptions = {
            Prop = "prop_bskball_01",
            PropBone = 28422,
            PropPlacement = {
                0.0600,
                0.0400,
                -0.1200,
                0.0,
                0.0,
                40.00
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["bball2"] = { -- Custom Emote By Struggleville
        "anim@male_bskball_photo_pose",
        "photo_pose_clip",
        "Basketball Pose",
        AnimationOptions = {
            Prop = "prop_bskball_01",
            PropBone = 60309,
            PropPlacement = {
                -0.0100,
                0.0200,
                0.1300,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["bball3"] = { -- Custom Emote By Struggleville
        "anim@male_basketball_03",
        "m_basketball_03_clip",
        "Basketball Hold 2",
        AnimationOptions = {
            Prop = "prop_bskball_01",
            PropBone = 28422,
            PropPlacement = {
                0.0400,
                0.0200,
               -0.1400,
                90.0000,
               -99.9999,
                79.9999
            },
            EmoteLoop = true,
            EmoteMoving = true,
        }
   },
    ["bball4"] = { -- Custom Emote By SapphireMods
        "mx@pose2",
        "mx_clippose2",
        "Basketball Hold 3",
        AnimationOptions = {
            Prop = "prop_bskball_01",
            PropBone = 28422,
            PropPlacement = {
                0.0400,
                0.0200,
               -0.1400,
                90.0000,
               -99.9999,
                79.9999
            },
            EmoteLoop = true
        }
    },
    ["ftorch"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Fire Torch",
        AnimationOptions = {
            Prop = "bzzz_prop_torch_fire001", -- Custom Prop By Bzzzz Used With Permission
            PropBone = 18905,
            PropPlacement = {
                0.14,
                0.21,
                -0.08,
                -110.0,
               -1.0,
                -10.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ['ftorch2'] = {
        'rcmnigel1d',
        'base_club_shoulder',
        'Fire Torch 2',
        AnimationOptions = {
            Prop = "bzzz_prop_torch_fire001", -- Custom Prop By Bzzzz Used With Permission
            PropBone = 28422,
            PropPlacement = {
               -0.0800,
			   -0.0300,
			   -0.1700,
                11.4181,
				-159.1026,
				15.0338
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["watchstripper2"] = {
        "amb@world_human_strip_watch_stand@male_c@base",
        "base",
        "Watch Stripper 2",
        AnimationOptions = {
            Prop = "prop_beer_am",
            PropBone = 60309,
            PropPlacement = {
                0.0880,
                -0.1360,
                0.1450,
                -102.9624,
                81.7098,
                -39.2734
            },
            EmoteLoop = true,
            EmoteMoving = true,
        },
        AdultAnimation = true
    },
    ["candyapple"] = { -- Custom Prop by hollywoodiownu
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Candy Apple",
        AnimationOptions = {
            Prop = "apple_1",
            PropBone = 18905,
            PropPlacement = {
                0.12,
                0.15,
                0.0,
                -100.0,
                0.0,
                -12.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        },
    },
    ["gamer"] = { --- Custom Emote By MissSnowie
        "playing@with_controller",
        "base",
        "Gamer",
        AnimationOptions = {
            Prop = 'prop_controller_01',
            PropBone = 24818, --- Chest bone, works fine for sitting down, not soo much with emote moving.
            PropPlacement = {
                0.2890,
                0.4110,
                0.0020,
               -44.0174,
                88.6103,
                -1.4385
            },
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
	["crackhead"] = {
        "special_ped@zombie@base",
        "base",
        "Crack Head",
        AnimationOptions = {
            Prop = 'prop_cs_bowie_knife', -- Knife
            PropBone = 28422, -- Right Wrist
            PropPlacement = {
                -0.1280,
                -0.0220,
                 0.0210,
                -150.0005,
                179.9989,
				-30.0105
            },
            SecondProp = 'ng_proc_cigpak01a',
            SecondPropBone = 26614,
            SecondPropPlacement = {
                0.010,
                -0.0190,
                0.0920,
                -82.4073,
                178.6009,
				29.9195
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["propose"] = { --- Custom Emote By ultrahacx
        "ultra@propose",
        "propose",
        "Propose",
        AnimationOptions = {
            Prop = 'ultra_ringcase', --- Custom prop by ultrahacx
            PropBone = 28422,
            PropPlacement = {
               0.0980,
               0.0200,
              -0.0540,
              -138.6571,
               4.4141,
              -79.3552
            },
            EmoteLoop = true
        }
    },
    ["holdfw"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Hold Firework",
        AnimationOptions = {
            Prop = 'ind_prop_firework_01', --- blue, green, red, purple pink, cyan, yellow, white
			 PtfxColor = {{R = 255, G = 0, B = 0, A = 1.0}, {R = 0, G = 255, B = 0, A = 1.0}, {R = 0, G = 0, B = 255, A = 1.0}, {R = 177, G = 5, B = 245, A = 1.0}, {R = 251, G = 3, B = 255, A = 1.0}, {R = 2, G = 238, B = 250, A = 1.0}, {R = 252, G = 248, B = 0, A = 1.0}, {R = 245, G = 245, B = 245, A = 1.0}},
            PropBone = 18905,
            PropPlacement = {
                0.1100,
                0.3200,
               -0.2400,
               -130.0688,
                -2.5736,
                -3.0631
            },
            EmoteLoop = true,
            EmoteMoving = true,
            PtfxAsset = "scr_indep_fireworks",
            PtfxName = "scr_indep_firework_trail_spawn",
            PtfxPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.6
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['firework'],
            PtfxWait = 200,
        }
    },
    ["chillteq"] = { --- Custom Emote By Amnilka
        "amnilka@photopose@female@homepack001",
        "amnilka_femalehome_photopose_003",
        "Chill Tequila",
        AnimationOptions = {
            Prop = 'prop_tequila',
            PropBone = 60309,
            PropPlacement = {
               0.0810,
              -0.0460,
               0.0430,
              -110.1784,
               2.9283,
              -12.5092
            },
            EmoteLoop = true,
            ExitEmote = "getup",
            ExitEmoteType = "Exits"
        }
    },
	["patrolf1"] = {
        "amb@world_human_security_shine_torch@male@base",
        "base",
        "Patrol - On Foot",
        AnimationOptions = {
            Prop = 'prop_cs_police_torch_02',
            PropBone = 60309,
            PropPlacement = {
               0.0,
               0.0,
               0.0,
               0.0,
               0.0,
               80.0000
            },
            EmoteLoop = true,
			EmoteMoving = true
        }
    },
    ["patrolf2"] = {
        "amb@world_human_security_shine_torch@male@idle_b",
        "idle_e",
        "Patrol - On Foot 2",
        AnimationOptions = {
            Prop = 'prop_cs_police_torch_02',
            PropBone = 60309,
            PropPlacement = {
               0.0,
               0.0,
               0.0,
               0.0,
               0.0,
               80.0000
            },
            EmoteLoop = true,
			EmoteMoving = true
        }
    },
    ["patrolf3"] = {
        "amb@world_human_security_shine_torch@male@idle_a",
        "idle_a",
        "Patrol - On Foot 3",
        AnimationOptions = {
            Prop = 'prop_cs_police_torch_02',
            PropBone = 60309,
            PropPlacement = {
               0.0,
               0.0,
               0.0,
               0.0,
               0.0,
               80.0000
            },
            EmoteLoop = true,
			EmoteMoving = true
        }
    },
    ["patrolf4"] = { -- Huge thanks to MadsLeander on GitHub
        "amb@incar@male@patrol@torch@base",
        "base",
        "Patrol - On Foot 4 Over The Shoulder",
        AnimationOptions = {
            Prop = 'prop_cs_police_torch_02',
            PropBone = 28422, -- Right Wrist
            PropPlacement = {
                0.0,
               -0.00100,
                0.0,
                0.0,
				0.0,
                90.0
            },
            SecondProp = 'prop_cs_hand_radio',
            SecondPropBone = 60309, -- Left Wrist
            SecondPropPlacement = {
                0.0560,
                0.0470,
                0.0110,
              -43.82733,
              164.6747,
			   -7.5569
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["patrolcar"] = {
        "amb@incar@male@patrol@torch@base",
        "base",
        "Patrol Car - Front",
        AnimationOptions = {
            Prop = 'prop_cs_police_torch_02',
            PropBone = 28422,
            PropPlacement = {
               0.0,
              -0.0100,
              -0.0100,
               0.0,
               0.0,
             100.0000
            },
            EmoteLoop = true
        }
    },
    ["pineapple"] = { -- Custom Prop by hollywoodiownu
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Pineapple",
        AnimationOptions = {
            Prop = "xm3_prop_xm3_pineapple_01a",
            PropBone = 18905,
            PropPlacement = {
                0.1,
                -0.11,
                0.05,
                -100.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true,
        },
    },
    ["present"] = {
        "anim@heists@box_carry@",
        "idle",
        "Present",
        AnimationOptions = {
            Prop = "xm3_prop_xm3_present_01a",
            PropBone = 28422,
            PropPlacement = {
                0.0,
                -0.18,
                -0.16,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["patrolcarl"] = {
        "amb@incar@male@patrol@torch@idle_b",
        "idle_d",
        "Patrol Car - Left",
        AnimationOptions = {
            Prop = 'prop_cs_police_torch_02',
            PropBone = 28422,
            PropPlacement = {
               0.0,
              -0.0100,
              -0.0100,
               0.0,
               0.0,
             100.0000
            },
            EmoteLoop = true
        }
    },
    ["patrolcarr"] = {
        "amb@incar@male@patrol@torch@idle_a",
        "idle_a",
        "Patrol Car - Right",
        AnimationOptions = {
            Prop = 'prop_cs_police_torch_02',
            PropBone = 28422,
            PropPlacement = {
               0.0,
              -0.0100,
              -0.0100,
               0.0,
               0.0,
             100.0000
            },
            EmoteLoop = true
        }
    },
    ["papers"] = {
        "missheistdocksprep1hold_cellphone",
        "static",
        "Papers",
        AnimationOptions =
        {
            Prop = "xm3_prop_xm3_papers_01a",
            PropBone = 18905,
            PropPlacement = {
                0.13,
                0.0,
                0.04,
                -110.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["vlog"] = {
        "amb@world_human_mobile_film_shocking@male@base",
        "base",
        "Vlog",
        AnimationOptions = {
            Prop = 'prop_ing_camera_01',
            PropBone = 28422,
            PropPlacement = {
               -0.07,
			   -0.01,
			    0.0,
				0.0,
				0.0,
				0.0
            },
            EmoteLoop = true,
			EmoteMoving = true,
        }
    },
    ["vlog2"] = {
        "anim@heists@humane_labs@finale@keycards",
        "ped_a_enter_loop",
        "Vlog 2",
        AnimationOptions = {
            Prop = 'prop_ing_camera_01',
            PropBone = 18905,
            PropPlacement = {
               0.15,
			   0.03,
			   0.1,
			 280.0,
			 110.0,
			 -11.0
            },
            EmoteLoop = true,
			EmoteMoving = true,
        }
    },
}

-- if Config.AdultEmotesDisabled then
--     for _, array in ipairs({
--         "Shared",
--         "Dances",
--         "AnimalEmotes",
--         "Emotes",
--         "PropEmotes",
--         "Bus",
--     }) do
--         for emoteName, emoteData in pairs(DP[array]) do
--             if emoteData.AdultAnimation then
--                 DP[array][emoteName] = nil
--             end
--         end
--     end
-- end

DP.General = {
    ["jpbox"] = {"mp_am_hold_up", "purchase_beerbox_shopkeeper", "Purchase Box", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteDuration = 2500,
    }},
    ["jch"] = {"amb@code_human_police_investigate@idle_b", "idle_f", "Cop Search", AnimationOptions =
    {
        EmoteMoving = false,
        EmoteDuration = 7000,
    }},
    ["jgangsign5"] = {"anim@mp_player_intupperdock", "idle_a", "Gang Sign", AnimationOptions =
    {
        EmoteMoving = true,
        EmoteDuration = 2500,
    }},
    ["jcheckwatch"] = {"amb@code_human_wander_idles_fat@male@idle_a", "idle_a_wristwatch", "Check Watch · Male", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteDuration = 5000,
    }},
    ["jpicking"] = {"amb@prop_human_movie_bulb@idle_a", "idle_a", "Picking", AnimationOptions =
    {
        EmoteMoving = true,
        EmoteDuration = 2500,
    }},
    ["jgangaim"] = {"combat@aim_variations@1h@gang", "aim_variation_b", "Gang Aim", AnimationOptions =
    {
       EmoteMoving = true,
       EmoteLoop = true
    }},
    ["jshowboobs"] = {"mini@strip_club@backroom@", "stripper_b_backroom_idle_b", "Show Boobs", AnimationOptions =
    {
        EmoteMoving = false,
        EmoteDuration = 6000,
    }},
    ["jcleanleg"] = {"mini@strip_club@backroom@", "stripper_c_leadin_backroom_idle_a", "Clean Legs", AnimationOptions =
    {
        EmoteMoving = false,
        EmoteDuration = 6000,
    }},
    ["jshowboobs2"] = {"mini@strip_club@idles@stripper", "stripper_idle_05", "Show Boobs 2", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteDuration = 6000,
    }},
    ["jlockcar"] = {"anim@mp_player_intmenu@key_fob@", "fob_click", "Lock Car", AnimationOptions =
    {
       EmoteMoving = true,
       EmoteDuration = 2500,
    }},
    ["jkhaby"] = {"missarmenian3@simeon_tauntsidle_b", "areyounotman", "Khaby · Special", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteDuration = 2500,
    }},
    ["jdepressed"] = {"oddjobs@bailbond_hobodepressed", "base", "Depressed", AnimationOptions =
    {
       EmoteMoving = true,
    }},
    ["jcarsign"] = {"amb@code_human_in_car_mp_actions@gang_sign_a@bodhi@rds@base", "idle_a", "Gang Sign · Car", AnimationOptions =
    {
       EmoteMoving = true,
       EmoteDuration = 2500,
    }},
    ["jcarsign2"] = {"amb@code_human_in_car_mp_actions@gang_sign_a@low@ds@base", "idle_a", "Gang Signs 2 · Car", AnimationOptions =
    {
       EmoteMoving = true,
       EmoteDuration = 2500,
    }},
    ["jcarlowrider"] = {"anim@veh@lowrider@low@front_ds@arm@base", "sit", "Lowrider Style · Car", AnimationOptions =
    {
       EmoteMoving = true,
       EmoteLoop = true
    }},
    ["jcarlowrider2"] = {"anim@veh@lowrider@std@ds@arm@music@mexicanidle_a", "idle", "Lowrider Mexican Style · Car", AnimationOptions =
    {
       EmoteMoving = true,
       EmoteLoop = true
    }},
    ["jreactiona"] = {"random@shop_robbery_reactions@", "absolutely", "Reaction Absolutely", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteDuration = 2500,
    }},
    ["jreactanger"] = {"random@shop_robbery_reactions@", "anger_a", "Reaction Anger", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteDuration = 2500,
    }},
    ["jreactwhy"] = {"random@shop_robbery_reactions@", "is_this_it", "Reaction Why", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteDuration = 2500,
    }},
    ["jreactscrew"] = {"random@shop_robbery_reactions@", "screw_you", "Reaction Screw You", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteDuration = 2500,
    }},
    ["jreactshock"] = {"random@shop_robbery_reactions@", "shock", "Reaction Shock", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteDuration = 2500,
    }},
    ["jreactgoodc"] = {"missclothing", "good_choice_storeclerk", "Reaction Good Choice", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteDuration = 2500,
    }},
    ["jtrynewc"] = {"clothingtie", "try_tie_neutral_c", "Try New Clothes", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteDuration = 2500,
    }},
    ["jtrynewc2"] = {"clothingtie", "try_tie_neutral_d", "Try New Clothes 2", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteDuration = 2500,
    }},
    ["jreacteasy"] = {"gestures@m@car@std@casual@ds", "gesture_easy_now", "Reaction Easy Now", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteDuration = 2500,
    }},
    ["jreactıwill"] = {"gestures@m@car@std@casual@ds", "gesture_i_will", "Reaction I will", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteDuration = 2500,
    }},
    ["jreactnoway"] = {"gestures@m@car@std@casual@ds", "gesture_no_way", "Reaction No Way", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteDuration = 2500,
    }},
    ["jreactbye"] = {"gestures@f@standing@casual", "gesture_bye_hard", "Reaction Bye Hard", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteDuration = 2500,
    }},
    ["jreacthello"] = {"gestures@f@standing@casual", "gesture_hello", "Reaction Hello", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteDuration = 2500,
    }},
    ["jlookatplayer"] = {"friends@frl@ig_1", "look_lamar", "Look At Player", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteDuration = 2500,
    }},
    ["jreactgreat"] = {"mp_cp_welcome_tutgreet", "greet", "Great", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteDuration = 2500,
    }},
    ["jfakepunch"] = {"missarmenian2", "fake_punch_walk_by_lamar", "Fake Punch", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteDuration = 5000,
    }},
    ["jreactdamn"] = {"missheist_jewel", "damn", "Reaction Damn", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteDuration = 2500,
    }},
    ["jimtellingyou"] = {"missheist_jewel", "im_telling_you", "I'm telling you", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteDuration = 2500,
    }},
    ["jreactno"] = {"missheist_jewel", "despair", "Reaction No", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteDuration = 2500,
    }},
    ["jdontkillme"] = {"missheist_jewel", "manageress_kneel_loop", "Dont Kill Me", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteDuration = 2500,
    }},
    ["jbangbang"] = {"anim@mp_player_intcelebrationfemale@bang_bang", "bang_bang", "Bang Bang", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteDuration = 2500,
    }},
    ["jtryshirtn"] = {"clothingshirt", "try_shirt_negative_a", "Try Shirt Negative", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteDuration = 2500,
    }},
    ["jtryshirtp"] = {"clothingshirt", "try_shirt_positive_a", "Try Shirt Positive", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteDuration = 2500,
    }},
    ["jtryshoes"] = {"clothingshoes", "try_shoes_positive_d", "Try Shoes", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteDuration = 2500,
    }},
    ["jtryshoes2"] = {"clothingshoes", "try_shoes_positive_c", "Try Shoes 2", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteDuration = 2500,
    }},
    ["joverhere"] = {"friends@fra@ig_1", "over_here_idle_a", "Over Here", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteDuration = 2500,
    }},
    ["jwashingface"] = {"missmic2_washing_face", "michael_washing_face", "Washing Face", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteDuration = 5000,
    }},
    ["jlastday"] = {"misstrevor1", "ortega_outro_loop_ort", "Last Day", AnimationOptions =
    {
       EmoteLoop = true
    }},
    ["jtryg"] = {"mp_clothing@female@glasses", "try_glasses_positive_a", "Try Glasses · Female", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteDuration = 2500,
    }},
    ["jpickup"] = {"pickup_object", "pickup_low", "Pick Up", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteDuration = 2500,
    }},
    ["jstretchl"] = {"switch@franklin@bed", "stretch_long", "Stretch Long", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteDuration = 2500,
    }},
    ["jhos"] = {"amb@world_human_hang_out_street@male_a@idle_a", "idle_a", "Hang Out Street · Male", AnimationOptions =
    {
       EmoteLoop = true
    }},
    ["jhos2"] = {"amb@world_human_hang_out_street@male_c@base", "base", "Hang Out Street 2 · Male", AnimationOptions =
    {
       EmoteLoop = true
    }},
    ["jguardaim"] = {"guard_reactions", "1hand_aiming_cycle", "Guard Aim", AnimationOptions =
    {
       EmoteLoop = true
    }},
    ["jgready"] = {"switch@franklin@getting_ready", "002334_02_fras_v2_11_getting_dressed_exit", "Getting Ready", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteDuration = 2500,
    }},
    ["jlao"] = {"move_clown@p_m_two_idles@", "fidget_look_at_outfit", "Look At Outfits", AnimationOptions =
    {
        EmoteMoving = false,
        EmoteDuration = 6000,
    }},
    ["jtoilet"] = {"switch@trevor@on_toilet", "trev_on_toilet_loop", "Have A Shit", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteDuration = 5000,
    }},
    ["jtoilet2"] = {"timetable@trevor@on_the_toilet", "trevonlav_struggleloop", "Have A Shit 2", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteDuration = 5000,
    }},
    ["jcovermale2"] = {"amb@code_human_cower@male@base", "base", "Cover · Male", AnimationOptions =
    {
       EmoteLoop = true
    }},
    ["jvalet"] = {"anim@amb@world_human_valet@normal@base@", "base_a_m_y_vinewood_01", "Valet", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteDuration = 2500,
    }},
    ["jvalet2"] = {"anim@amb@world_human_valet@formal_right@base@", "base_a_m_y_vinewood_01", "Valet 2", AnimationOptions =
    {
       EmoteMoving = true,
       EmoteLoop = true
    }},
    ["jsunbathem"] = {"amb@world_human_sunbathe@male@back@idle_a", "idle_c", "Sunbathe · Male", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true
    }},
    ["jsunbathem2"] = {"amb@world_human_sunbathe@male@front@base", "base", "Sunbathe 2 · Male", AnimationOptions =
    {
       EmoteLoop = true
    }},
    ["jleancar"] = {"anim@scripted@carmeet@tun_meet_ig2_race@", "base", "Lean Car", AnimationOptions =
    {
       EmoteLoop = true,
       EmoteMoving = true,
    }},
    ["jcheckout"] = {"anim@amb@carmeet@checkout_car@male_a@idles", "idle_b", "Check Out · Female", AnimationOptions =
    {
       EmoteLoop = true
    }},
    ["jcheckout2"] = {"anim@amb@carmeet@checkout_car@male_c@idles", "idle_a", "Check Out 2 · Male", AnimationOptions =
    {
       EmoteLoop = true
    }},
    ["jcheckout"] = {"anim@amb@carmeet@checkout_car@female_d@base", "base", "Check Out 3 · Female", AnimationOptions =
    {
       EmoteLoop = true
    }},
    
    ["jlistenmusic"] = {"anim@amb@carmeet@listen_music@male_a@trans", "a_trans_d", "Listen Music", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteDuration = 5000,
    }},
    ["jogger"] = {"move_f@jogger", "idle", "Jogger · Female", AnimationOptions =
    {
       EmoteDuration = 2500,
       EmoteMoving = true,
    }},
    ["jogger2"] = {"move_m@jogger", "idle", "Jogger · Male", AnimationOptions =
    {
       EmoteDuration = 2500,
       EmoteMoving = true,
    }},
    ["jwtf"] = {"mini@triathlon", "wot_the_fuck", "Wot The Fuck", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteDuration = 2500,
    }},
    ["jucdt"] = {"mini@triathlon", "u_cant_do_that", "U Cant Do That", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteDuration = 2500,
    }},
    ["jwarmup"] = {"mini@triathlon", "ig_2_gen_warmup_01", "Warmup", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteDuration = 5000,
    }},
    ["jwarmup2"] = {"mini@triathlon", "ig_2_gen_warmup_02", "Warmup 2", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteDuration = 5000,
    }},
    ["jwarmup3"] = {"mini@triathlon", "jog_idle_f", "Warmup 3", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteDuration = 5000,
    }},
    ["jwarmup4"] = {"mini@triathlon", "jog_idle_e", "Warmup 4", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteDuration = 5000,
    }},
    ["jhmassage"] = {"missheistfbi3b_ig8_2", "cpr_loop_paramedic", "Heart Massage", AnimationOptions =
    {
       EmoteLoop = true
    }},
    ["jpassout"] = {"missheistfbi3b_ig8_2", "cower_loop_victim", "Pass Out", AnimationOptions =
    {
       EmoteLoop = true
    }},
    ["jddealer"] = {"amb@world_human_drug_dealer_hard@male@base", "base", "Drug Dealer · Male", AnimationOptions =
    {
       EmoteLoop = true
    }},
    ["jswatch"] = {"amb@world_human_strip_watch_stand@male_c@idle_a", "idle_b", "Watch Strip · Male", AnimationOptions =
    {
       EmoteLoop = true
    }},
    ["jcheckw"] = {"amb@world_human_bum_wash@male@high@base", "base", "Check Water", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteDuration = 5000,
    }},
    ["jwaitt"] = {"oddjobs@taxi@", "idle_a", "Wait Taxi", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteDuration = 5000,
    }},
    ["jnoway"] = {"oddjobs@towingpleadingbase", "base", "No Way", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteDuration = 2500,
    }},
    ["jtsomething"] = {"oddjobs@bailbond_hobohang_out_street_c", "idle_c", "Tell Something", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteDuration = 2500,
    }},
    ["jlfh"] = {"oddjobs@assassinate@old_lady", "looking_for_help", "Looking For Help", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteDuration = 5000,
    }},
    ["jmstretch"] = {"oddjobs@assassinate@multi@", "idle_a", "Muscle Stretch", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteDuration = 5000,
    }},
    ["jdj"] = {"anim@mp_player_intcelebrationmale@dj", "dj", "DJ", AnimationOptions =
    {
       EmoteLoop = true
    }},
    ["jdj2"] = {"anim@scripted@nightclub@dj@dj_moodm@", "moodm_cdj_left_a_12", "DJ 2", AnimationOptions =
    {
       EmoteLoop = true
    }},
    ["jdj3"] = {"anim@amb@nightclub@djs@switch@dixn_djset_switchover@", "dix_end_bg_female1", "DJ 3", AnimationOptions =
    {
       EmoteLoop = true
    }},
    ["jlmic"] = {"anim@veh@lowrider@std@ds@arm@music@hiphopidle_a", "idle", "Listen Music In Car", AnimationOptions =
    {
       EmoteMoving = true,
       EmoteDuration = 2500,
    }},
    ["jgotc"] = {"random@getawaydriver@thugs", "base_a", "Get Off The Car", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteLoop = true,
    }},
    ["jvsad"] = {"anim@amb@business@bgen@bgen_no_work@", "sit_phone_phoneputdown_sleeping-noworkfemale", "Very Sad", AnimationOptions =
    {
       EmoteLoop = true
    }},
    
    ["jbow3"] = {"missheistdockssetup1ig_10@base", "talk_pipe_base_worker1", "Bend Over Wait", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteDuration = 2500,
    }},
    ["jweeding"] = {"anim@amb@drug_field_workers@weeding@male_a@base", "base", "Weeding · Male", AnimationOptions =
    {
       EmoteLoop = true
    }},
    ["jlookplan"] = {"missheist_agency2aig_4", "look_plan_c_worker2", "Look Plan", AnimationOptions =
    {
       EmoteMoving = false,
       EmoteDuration = 5000,
    }},
    
    ["jthanks"] = {"random@arrests", "thanks_male_05", "Thanks", AnimationOptions =
    {
       EmoteLoop = true
    }},
    ["jffb"] = {"timetable@trevor@skull_loving_bear", "skull_loving_bear", "F*ck From Behind", AnimationOptions =
    {
       EmoteLoop = true
    }},
    ["jsitchair7"] = {"timetable@reunited@ig_10", "isthisthebest_jimmy", "Sit Chair 7", AnimationOptions =
    {
       EmoteLoop = true
    }},
    ["jsitchair8"] = {"timetable@michael@on_sofabase", "sit_sofa_base", "Sit Chair 8", AnimationOptions =
    {
       EmoteLoop = true
    }},
    ["jsitchair9"] = {"timetable@trevor@smoking_meth@base", "base", "Sit Chair 9", AnimationOptions =
    {
       EmoteLoop = true
    }},
    ["jsitchair10"] = {"timetable@tracy@ig_7@base", "base", "Sit Chair 10", AnimationOptions =
    {
       EmoteLoop = true
    }},
    ["jstandingt"] = {"amb@world_human_bum_standing@twitchy@base", "base", "Standing Twitchy", AnimationOptions =
    {
       EmoteLoop = true
    }},
    ["jstandingfit"] = {"amb@world_human_jog_standing@male@fitbase", "base", "Standing Fit", AnimationOptions =
    {
       EmoteLoop = true
    }},
    ["jstandingm"] = {"anim@amb@casino@hangout@ped_male@stand@03b@base", "base", "Standing · Male", AnimationOptions =
    {
       EmoteLoop = true
    }},
    ["jstandingf"] = {"anim@amb@casino@hangout@ped_female@stand@02a@base", "base", "Standing · Female", AnimationOptions =
    {
       EmoteLoop = true
    }},
    ["jgabgtaunt"] = {"switch@franklin@gang_taunt_p1", "gang_taunt_loop_lamar", "Gang Taunt", AnimationOptions =
    {
       EmoteMoving = true,
       EmoteLoop = true
    }},
    ["jdj5"] = {"mini@strip_club@idles@dj@base", "base", "DJ 5" , AnimationOptions = {
       EmoteMoving = false,
       EmoteLoop = true
    }},
}


DP.Customs = {
       --  Custom Gangsigns
       ["myufemale"] = {"myu@female_single6", "female_single6_clip", "Myu", AnimationOptions =
       {
           EmoteLoop = true,
           EmoteMoving = false,
       }},
       ["myufemale2"] = {"myu@female_single8", "female_single8_clip", "Myu 2", AnimationOptions =
       {
           EmoteLoop = true,
           EmoteMoving = false,
       }},
       ["lnxpose1"] = {"lunyx@minipack@v1@pose001", "minipack@v1@pose001", "Lunyx Pose 01", AnimationOptions =
       {
           EmoteLoop = true,
           EmoteMoving = false,
       }},
       ["lnxpose2"] = {"lunyx@minipack@v1@pose002", "minipack@v1@pose002", "Lunyx Pose 02", AnimationOptions =
       {
           EmoteLoop = true,
           EmoteMoving = false,
       }},
       
       ["lnxpose3"] = {"lunyx@minipack@v1@pose003", "minipack@v1@pose003", "Lunyx Pose 03", AnimationOptions =
       {
           EmoteLoop = true,
           EmoteMoving = false,
       }},
       
       ["lnxpose4"] = {"lunyx@minipack@v1@pose004", "minipack@v1@pose004", "Lunyx Pose 04", AnimationOptions =
       {
           EmoteLoop = true,
           EmoteMoving = false,
       }},
       
       ["lnxpose5"] = {"lunyx@minipack@v1@pose005", "minipack@v1@pose005", "Lunyx Pose 05", AnimationOptions =
       {
           EmoteLoop = true,
           EmoteMoving = false,
       }},
      
       ["attention1"] = {"lunyx@attention@001", "attention@001", "Got Me Looking for Attention Pose 1", AnimationOptions =
       {
           EmoteLoop = true,
           EmoteMoving = false,
       }},
       ["attention2"] = {"lunyx@attention@002", "attention@002", "Got Me Looking for Attention Pose 2", AnimationOptions =
       {
           EmoteLoop = true,
           EmoteMoving = false,
       }},
       
       ["attention3"] = {"lunyx@attention@003", "attention@003", "Got Me Looking for Attention Pose 3", AnimationOptions =
       {
           EmoteLoop = true,
           EmoteMoving = false,
       }},
       
       ["attention4"] = {"lunyx@attention@004", "attention@004", "Got Me Looking for Attention Pose 4", AnimationOptions =
       {
           EmoteLoop = true,
           EmoteMoving = false,
       }},
       
       ["attention5"] = {"lunyx@attention@005", "attention@005", "Got Me Looking for Attention Pose 5", AnimationOptions =
       {
           EmoteLoop = true,
           EmoteMoving = false,
       }},
      
       ["lnxpose1"] = {"lunyx@minipack@v1@pose001", "minipack@v1@pose001", "Lunyx Pose 01", AnimationOptions =
       {
           EmoteLoop = true,
           EmoteMoving = false,
       }},
       
       ["lnxpose2"] = {"lunyx@minipack@v1@pose002", "minipack@v1@pose002", "Lunyx Pose 02", AnimationOptions =
       {
           EmoteLoop = true,
           EmoteMoving = false,
       }},
       ["Nhypose"] = {"nhyza@pose7", "pose7_clip", "Nhypose", AnimationOptions =
       {
           EmoteLoop = true,
           EmoteMoving = false,
       }},
       ["Nhypose2"] = {"nhyza@pose8", "pose8_clip", "Nhypose2", AnimationOptions =
       {
           EmoteLoop = true,
           EmoteMoving = false,
       }},
       ["Nhypose3"] = {"nhyza@pose9", "pose9_clip", "Nhypose3", AnimationOptions =
       {
           EmoteLoop = true,
           EmoteMoving = false,
       }},
       ["Nhypose4"] = {"nhyza@pose10", "pose10_clip", "Nhypose4", AnimationOptions =
       {
           EmoteLoop = true,
           EmoteMoving = false,
       }},
       ["Nhypose5"] = {"nhyza@pose11", "pose11_clip", "Nhypose5", AnimationOptions =
       {
           EmoteLoop = true,
           EmoteMoving = false,
       }},
       ["StandingPose"] = {"standing1@blackqueen", "standing1_clip", "Standig Pose", AnimationOptions =
       {
           EmoteLoop = true,
           EmoteMoving = false,
       }},
       ["StandilWall"] = {"perlenfuchs@standing_wall2", "standing_wall2_clip", "Standig Wall", AnimationOptions =
       {
           EmoteLoop = true,
           EmoteMoving = false,
       }},
       ["Sit1"] = {"perlenfuchs@sit_stairs1", "sit_stairs1_clip", "Sit1", AnimationOptions =
       {
           EmoteLoop = true,
           EmoteMoving = false,
       }},
       ["Latto"] = {"latto@animation", "latto_clip", "Latto", AnimationOptions =
       {
           EmoteLoop = true,
           EmoteMoving = false,
       }},
       ["Latto2"] = {"latto777@animation", "latto777_clip", "Latto2", AnimationOptions =
       {
           EmoteLoop = true,
           EmoteMoving = false,
       }},
       ["Cover"] = {"cover@animation", "cover_clip", "Cover", AnimationOptions =
       {
           EmoteLoop = true,
           EmoteMoving = false,
       }},
       ["PrettieSit"] = {"sittinpretti@animation", "sittinpretti_clip", "Prettie Sit", AnimationOptions =
       {
           EmoteLoop = true,
           EmoteMoving = false,
       }},
       ["SelfieBy"] = {"selfiebby@animation", "selfiebby_clip", "Selfie Prettie", AnimationOptions =
       {
           EmoteLoop = true,
           EmoteMoving = false,
       }},
       ["StreetPose"] = {"azzsign@animation", "azzsign_clip", "Street Pose", AnimationOptions =
       {
           EmoteLoop = true,
           EmoteMoving = false,
       }},
       ["Sit2"] = {"perlenfuchs@sit_cute3", "sit_cute3_clip", "Sit2", AnimationOptions =
       {
           EmoteLoop = true,
           EmoteMoving = false,
       }},
       ["PhotoPose"] = {"amnilka@photopose@female@randompack001", "amnilka_femalerandom_photopose_001", "Photo Pose", AnimationOptions =
       {
           EmoteLoop = true,
           EmoteMoving = false,
       }},
       ["PhotoPose2"] = {"amnilka@photopose@female@randompack001", "amnilka_femalerandom_photopose_002", "Photo Pose2", AnimationOptions =
       {
           EmoteLoop = true,
           EmoteMoving = false,
       }},
       ["PhotoPose3"] = {"amnilka@photopose@female@randompack001", "amnilka_femalerandom_photopose_003", "Photo Pose3", AnimationOptions =
       {
           EmoteLoop = true,
           EmoteMoving = false,
       }},
       ["PhotoPose4"] = {"amnilka@photopose@female@randompack001", "amnilka_femalerandom_photopose_004", "Photo Pose4", AnimationOptions =
       {
           EmoteLoop = true,
           EmoteMoving = false,
       }},
       ["PhotoPose5"] = {"amnilka@photopose@female@randompack001", "amnilka_femalerandom_photopose_005", "Photo Pose5", AnimationOptions =
       {
           EmoteLoop = true,
           EmoteMoving = false,
       }},
       ["lnxpose3"] = {"lunyx@minipack@v1@pose003", "minipack@v1@pose003", "Lunyx Pose 03", AnimationOptions =
       {
           EmoteLoop = true,
           EmoteMoving = false,
       }},
       ["SitAt"] = {"ssiat_1@sharror", "ssiat_1_clip", "Sit At", AnimationOptions =
       {
           EmoteLoop = true,
           EmoteMoving = false,
       }},
       ["SitAt2"] = {"ssiat_2@sharror", "ssiat_2_clip", "Sit At2", AnimationOptions =
       {
           EmoteLoop = true,
           EmoteMoving = false,
       }},
       ["SitAt3"] = {"ssiat_3@sharror", "ssiat_3_clip", "Sit At3", AnimationOptions =
       {
           EmoteLoop = true,
           EmoteMoving = false,
       }},
       ["SitAt4"] = {"ssiat_4@sharror", "ssiat_4_clip", "Sit At4", AnimationOptions =
       {
           EmoteLoop = true,
           EmoteMoving = false,
       }},
       ["SitAt5"] = {"ssiat_9@sharror", "ssiat_10_clip", "Sit At5", AnimationOptions =
       {
           EmoteLoop = true,
           EmoteMoving = false,
       }},
       ["SitAt6"] = {"ssiat_11@sharror", "ssiat_11_clip", "Sit At6", AnimationOptions =
       {
           EmoteLoop = true,
           EmoteMoving = false,
       }},
       ["SitAt7"] = {"ssiat_12@sharror", "ssiat_12_clip", "Sit At7", AnimationOptions =
       {
           EmoteLoop = true,
           EmoteMoving = false,
       }},
       ["lnxpose4"] = {"lunyx@minipack@v1@pose004", "minipack@v1@pose004", "Lunyx Pose 04", AnimationOptions =
       {
           EmoteLoop = true,
           EmoteMoving = false,
       }},
       ["2head"] = {"2man2head@animation", "2man2head_clip", "~p~ 2 Man 2 Head", AnimationOptions =
       {
        EmoteLoop = true,
        EmoteMoving = false,
       }},
       ["2fucku"] = {"2manfcku@animation", "2manfcku_clip", "~p~ 2 Man Fuck u", AnimationOptions =
       {
           EmoteLoop = true,
           EmoteMoving = false,
       }},
       ["hd"] = {"hatsdown@animation", "hatsdown_clip", "~r~ Hats Down", AnimationOptions =
       {
        EmoteLoop = true,
        EmoteMoving = false,
       }},
       ["od"] = {"offthat@animation", "offthat_clip", "~p~ Off that", AnimationOptions =
       {
        EmoteLoop = true,
        EmoteMoving = false,
       }},
       ["so"] = {"standon@animation", "standon_clip", "~g~ Top Car", AnimationOptions =
       {
        EmoteLoop = true,
        EmoteMoving = false,
       }},
       ["westbaby"] = {"westbaby@animation", "westbaby_clip", "~o~ WestSide", AnimationOptions =
       {
        EmoteLoop = true,
        EmoteMoving = false,
       }},
       ["eagle"] = {"eagle@girlphonepose02", "girlphonepose02_clip", "Eagle", AnimationOptions =
       {
        EmoteLoop = true,
        EmoteMoving = false,
       }},
       ["eagle2"] = {"eagle@girlposelaying02", "girl", "Eagle2", AnimationOptions =
       {
        EmoteLoop = true,
        EmoteMoving = false,
       }},
       ["StreetPose2"] = {"azzsign2@animation", "azzsign2_clip", "Street Pose", AnimationOptions =
       {
        EmoteLoop = true,
        EmoteMoving = false,
       }},
       ["randompose1"] = {"randompose1@anim", "randompose1_clip", "Random Pose1", AnimationOptions =
       {
        EmoteLoop = true,
        EmoteMoving = false,
       }},
       ["stripper"] = {"stripper1@anim", "stripper1_clip", "Stripper", AnimationOptions =
       {
        EmoteLoop = true,
        EmoteMoving = false,
       }},
       ["lnxpose5"] = {"lunyx@minipack@v1@pose005", "minipack@v1@pose005", "Lunyx Pose 05", AnimationOptions =
       {
           EmoteLoop = true,
           EmoteMoving = false,
       }},
       ["jxbottle"] = {"jxbottle2anims@animation", "jxbottle2anims_clip","Jx Bottle", AnimationOptions =
       {
         EmoteLoop = true,
         EmoteMoving = false,
       }},
       ["jxbottle2"] = {"jxcig5anims@animation", "jxcig5anims_clip", "Jx Bottle2", AnimationOptions =
       {
         EmoteLoop = true,
         EmoteMoving = false,
       }},
       ["jxbottle3"] = {"jxcig7anims@animation", "jxcig7anims_clip", "Jx Bottle3", AnimationOptions =
       {
         EmoteLoop = true,
         EmoteMoving = false,
       }},
       ["chxstand"] = {"chxnchxo@stand_anim", "chxnchxostand_clip", "Chx Stand", AnimationOptions =
       {
         EmoteLoop = true,
         EmoteMoving = false,
       }},
       ["chxstand2"] = {"chxnchxo@stand1_anim", "chxnchxostand1_clip", "Chx Stand2", AnimationOptions =
       {
         EmoteLoop = true,
         EmoteMoving = false,
       }},
       ["chxstand3"] = {"chxnchxo@stand2_anim", "chxnchxostand2_clip",  "Chx Stand3", AnimationOptions =
       {
         EmoteLoop = true,
         EmoteMoving = false,
       }},
       ["solopose"] = {"frabi@femalepose@solo@firstpackage", "frabi_female_soloposepack_001",  "Solopose", AnimationOptions =
       {
         EmoteLoop = true,
         EmoteMoving = false,
       }},
       ["solopose2"] = {"frabi@femalepose@solo@firstpackage", "frabi_female_soloposepack_002",  "Solopose2", AnimationOptions =
       {
         EmoteLoop = true,
         EmoteMoving = false,
       }},
       ["solopose3"] = {"frabi@femalepose@solo@firstpackage", "frabi_female_soloposepack_003",  "Solopose3", AnimationOptions =
       {
         EmoteLoop = true,
         EmoteMoving = false,
       }},
       ["solopose4"] = {"frabi@femalepose@solo@firstpackage", "frabi_female_soloposepack_004",  "Solopose4", AnimationOptions =
       {
         EmoteLoop = true,
         EmoteMoving = false,
       }},
       ["solopose5"] = {"frabi@femalepose@solo@firstpackage", "frabi_female_soloposepack_005",  "Solopose5", AnimationOptions =
       {
         EmoteLoop = true,
         EmoteMoving = false,
       }},
       ["Pose1"] = {"pupppy@freepose03", "freepose03",  "Pose", AnimationOptions =
       {
         EmoteLoop = true,
         EmoteMoving = false,
       }},
       ["Pose2"] = {"pupppy@freepose04", "freepose04",  "Pose2", AnimationOptions =
       {
         EmoteLoop = true,
         EmoteMoving = false,
       }},
       ["Pose3"] = {"pupppy@freeselfie01", "freeselfie01",  "Pose3", AnimationOptions =
       {
         EmoteLoop = true,
         EmoteMoving = false,
       }},
       ["Pose4"] = {"pupppy@freeselfie02", "freeselfie02",  "Pose4", AnimationOptions =
       {
         EmoteLoop = true,
         EmoteMoving = false,
       }},
       ["Pose5"] = {"pupppy@freeselfie03", "freeselfie03",  "Pose5", AnimationOptions =
       {
         EmoteLoop = true,
         EmoteMoving = false,
       }},
       ["SimsPose1"] = {"arron@simspose1", "simspose1",  "SimsPose1", AnimationOptions =
       {
         EmoteLoop = true,
         EmoteMoving = false,
       }},
       ["SimsPose2"] = {"arron@simspose2", "simspose2",  "SimsPose2", AnimationOptions =
       {
         EmoteLoop = true,
         EmoteMoving = false,
       }},
       ["SimsPose3"] = {"arron@simspose3", "simspose3",  "SimsPose3", AnimationOptions =
       {
         EmoteLoop = true,
         EmoteMoving = false,
       }},
       ["SimsPose4"] = {"arron@simspose4", "simspose4",  "SimsPose4", AnimationOptions =
       {
         EmoteLoop = true,
         EmoteMoving = false,
       }},
       ["SimsPose5"] = {"arron@simspose5", "simspose5",  "SimsPose5", AnimationOptions =
       {
         EmoteLoop = true,
         EmoteMoving = false,
       }},
       ["chxstand4"] = {"chxnchxo@stand3_anim", "chxnchxostand3_clip",  "Chx Stand4", AnimationOptions =
       {
         EmoteLoop = true,
         EmoteMoving = false,
       }},
       ["gsign1"] = {"custom@gsign_01", "gsign_01", "Gang Sign 1", AnimationOptions =
       {
         EmoteLoop = true,
         EmoteMoving = false,
       }},
       ["gsign2"] = {"custom@gsign_02", "gsign_02", "Gang Sign 2", AnimationOptions =
       {
         EmoteLoop = true,
         EmoteMoving = false,
       }},
       ["gsign3"] = {"custom@gsign_03", "gsign_03", "Gang Sign 3", AnimationOptions =
       {
         EmoteLoop = true,
         EmoteMoving = false,
       }},
       ["gsign4"] = {"custom@gsign_04", "gsign_04", "Gang Sign 4", AnimationOptions =
       {
         EmoteLoop = true,
         EmoteMoving = false,
       }},
       ["gsign5"] = {"custom@gsign_05", "gsign_05", "Gang Sign 5", AnimationOptions =
       {
         EmoteLoop = true,
         EmoteMoving = false,
       }},
       ["gsign6"] = {"custom@gsign_06", "gsign_06", "Gang Sign 6", AnimationOptions =
       {
         EmoteLoop = true,
         EmoteMoving = false,
       }},
       ["gsign7"] = {"custom@gsign_07", "gsign_07", "Gang Sign 7", AnimationOptions =
       {
         EmoteLoop = true,
         EmoteMoving = false,
       }},
       ["gsign8"] = {"custom@gsign_08", "gsign_08", "Gang Sign 8", AnimationOptions =
       {
         EmoteLoop = true,
         EmoteMoving = false,
       }},
       ["gsign9"] = {"custom@gsign_09", "gsign_09", "Gang Sign 9", AnimationOptions =
       {
         EmoteLoop = true,
         EmoteMoving = false,
       }},
       ["gsign10"] = {"custom@gsign_10", "gsign_10", "Gang Sign 10", AnimationOptions =
       {
         EmoteLoop = true,
         EmoteMoving = false,
       }},
       ["gsign11"] = {"custom@gsign_11", "gsign_11", "Gang Sign 11", AnimationOptions =
       {
         EmoteLoop = true,
         EmoteMoving = false,
       }},
       ["gsign12"] = {"custom@gsign_12", "gsign_12", "Gang Sign 12", AnimationOptions =
       {
         EmoteLoop = true,
         EmoteMoving = false,
       }},
       ["gsign13"] = {"custom@gsign_13", "gsign_13", "Gang Sign 13", AnimationOptions =
       {
         EmoteLoop = true,
         EmoteMoving = false,
       }},
       ["gsign14"] = {"custom@gsign_14", "gsign_14", "Gang Sign 14", AnimationOptions =
       {
         EmoteLoop = true,
         EmoteMoving = false,
       }},
       ["gsign15"] = {"custom@mgsign_01", "mgsign_01", "Gang Sign 15", AnimationOptions =
       {
         EmoteLoop = true,
         EmoteMoving = false,
       }},
       ["gsign16"] = {"custom@mgsign_02", "mgsign_02", "Gang Sign 16", AnimationOptions =
       {
         EmoteLoop = true,
         EmoteMoving = false,
       }},
       ["gsign17"] = {"custom@mgsign_03", "mgsign_03", "Gang Sign 17", AnimationOptions =
       {
         EmoteLoop = true,
         EmoteMoving = false,
       }},
       ["gsign18"] = {"custom@mgsign_04", "mgsign_04", "Crip Sign", AnimationOptions =
       {
         EmoteLoop = true,
         EmoteMoving = false,
       }},
       ["gsign19"] = {"custom@gsign_26", "gsign_26", "Gang Sign 19", AnimationOptions =
       {
          EmoteLoop = true,
          EmoteMoving = false,
       }},
       ["gsign20"] = {"custom@gsign_27", "gsign_27", "Gang Sign 20", AnimationOptions =
       {
          EmoteLoop = true,
          EmoteMoving = false,
       }},
       ["gsign21"] = {"custom@gsign_28", "gsign_28", "Gang Sign 21", AnimationOptions =
       {
          EmoteLoop = true,
          EmoteMoving = false,
       }},
       ["gsign22"] = {"custom@gsign_29", "gsign_29", "Gang Sign 22", AnimationOptions =
       {
          EmoteLoop = true,
          EmoteMoving = true,
       }},
       ["gsign23"] = {"custom@gsign_30", "gsign_30", "Gang Sign 23", AnimationOptions =
       {
          EmoteLoop = true,
          EmoteMoving = false,
       }},
       ["gsign24"] = {"custom@gsign_31", "gsign_31", "Gang Sign 24", AnimationOptions =
       {
          EmoteLoop = true,
          EmoteMoving = true,
       }},
       ["gsign25"] = {"custom@gsign_32", "gsign_32", "Gang Sign 25", AnimationOptions =
       {
          EmoteLoop = true,
          EmoteMoving = true,
       }},
       ["gsign26"] = {"custom@gsign_33", "gsign_33", "Gang Sign 26", AnimationOptions =
       {
          EmoteLoop = true,
          EmoteMoving = true,
       }},
       ["gsign27"] = {"custom@gsign_34", "gsign_34", "Gang Sign 27", AnimationOptions =
       {
          EmoteLoop = true,
          EmoteMoving = true,
       }},
       ["gsign28"] = {"custom@gsign_35", "gsign_35", "Gang Sign 28", AnimationOptions =
       {
          EmoteLoop = true,
          EmoteMoving = true,
       }},
       ["gsign29"] = {"custom@gsign_36", "gsign_36", "Gang Sign 29", AnimationOptions =
       {
          EmoteLoop = true,
          EmoteMoving = true,
       }},
       ["gsign30"] = {"custom@gsign_37", "gsign_37", "Gang Sign 30", AnimationOptions =
       {
          EmoteLoop = true,
          EmoteMoving = true,
       }},
       
       ["fsign"] = {"custom@fsign_1", "fsign_1", "Female Sign 1", AnimationOptions =
       {
          EmoteLoop = true,
          EmoteMoving = false,
       }},
       ["cane"] = {"missheistdocksprep1hold_cellphone", "static", "Cane", AnimationOptions =
       {
           Prop = "prop_cs_walking_stick",
           PropBone = 57005,
           PropPlacement = {0.15, 0.05, -0.03, 0.0, 266.0, 180.0},
           EmoteLoop = true,
           EmoteMoving = true,
       }},
       ["handspocket"] = {"custom@handsinpockets_1", "handsinpockets_1", "Hands in Pocket", AnimationOptions =
       {
          EmoteMoving = true,
          EmoteLoop = true,
       }},

       ---------------------------------------------
       ["cigarettepose"] = {"cigarettestate@queensisters", "cigarette_clip", "Cigarette Pose by QueenSiters", AnimationOptions =
{
    EmoteLoop = true,
    EmoteMoving = false,
  }},
["littlequeen"] = {"littelqueen3@queensisters", "littelqueen3_clip", "Little Queen 3 Pose by QueenSiters", AnimationOptions =
{
    EmoteLoop = true,
    EmoteMoving = false,
  }},
["littlequeen2"] = {"littelqueen@queensisters", "littelqueen_clip", "Little Queen Pose by QueenSiters", AnimationOptions =
{
    EmoteLoop = true,
    EmoteMoving = false,
  }},
["lovethislife"] = {"lovethislife@queensisters", "lovethislife_clip", "Love This Life Pose by QueenSisters", AnimationOptions =
{
    EmoteLoop = true,
    EmoteMoving = false,
  }},
    ["gangpose"] = {"gangpose@queensisters", "gangpose_clip", "gangpose", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["amya/iulia"] = {"premiumladypose@queensisters", "premiumlady_clip", "Premium Lady Pose ~b~", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = true,
    }},
    ["loveupose"] = {"iloveyoupose@queensisters", "iloveyoupose_clip", "loveupose", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["fuckpose"] = {"fuckpose@queensister", "fuckpose_clip", "fuckpose", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["amya171"] = {"cigarettesexypose@queensisters", "cigarette_clip", "CigaretteSexyPose", AnimationOptions ={
    EmoteLoop = true,
    EmoteMoving = false,
  }},

    ["scrolling"] = {"scrollingpose@queensisters", "scrolling_clip", "scrolling", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["selfiekylie"] = {"selfiekilye@queensisters", "kilye_clip", "selfiekylie", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["handkylie"] = {"handkylie@queensisters", "kylie_clip", "handkylie", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["sitkylie"] = {"sitkylie@queensisters", "kylie_clip", "SitKylie", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["sitpose"] = {"perlenfuchs@sit_pose_peace1", "sit_pose_peace1_clip", "SitPose", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["Standbag"] = {"standbag1@blackqueen", "standbag1_clip", "StandBag", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["Standing"] = {"perlenfuchs@standing_wall2", "standing_wall2_clip", "Standing", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},   
   ["ballerin"] = {"perlenfuchs@ballerina_1", "ballerina_1_clip", "Ballerin", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
    ["sport"] = {"perlenfuchs@sport_2", "sport_2_clip", "Sport", AnimationOptions =
    {
        EmoteLoop = true,
        EmoteMoving = false,
    }},
       ["2head"] = {"2man2head@animation", "2man2head_clip", "~p~ 2 Man 2 Head", AnimationOptions =
       {
        EmoteLoop = true,
        EmoteMoving = false,
       }},
       ["2fucku"] = {"2manfcku@animation", "2manfcku_clip", "~p~ 2 Man Fuck u", AnimationOptions =
       {
           EmoteLoop = true,
           EmoteMoving = false,
       }},
       ["hd"] = {"hatsdown@animation", "hatsdown_clip", "~r~ Hats Down", AnimationOptions =
       {
        EmoteLoop = true,
        EmoteMoving = false,
       }},
       ["od"] = {"offthat@animation", "offthat_clip", "~p~ Off that", AnimationOptions =
       {
        EmoteLoop = true,
        EmoteMoving = false,
       }},
       ["so"] = {"standon@animation", "standon_clip", "~g~ Top Car", AnimationOptions =
       {
        EmoteLoop = true,
        EmoteMoving = false,
       }},
       ["westbaby"] = {"westbaby@animation", "westbaby_clip", "~o~ WestSide", AnimationOptions =
       {
        EmoteLoop = true,
        EmoteMoving = false,
       }},
       ["Spider"] = {"spider42@animation", "spider42_clip", "Spider", AnimationOptions =
       {
          EmoteLoop = true,
       }},
       ["Heart"] = {"heart@animation", "heart_clip", "Gang", AnimationOptions =
       {
          EmoteLoop = true,
       }},
       ["Gang"] = {"gang@animation", "gang_clip", "Gang", AnimationOptions =
       {
          EmoteLoop = true,
       }},
       ["Woman2"] = {"perlenfuchs@woman_pose1", "woman_pose1_clip", "Woman2", AnimationOptions =
       {
          EmoteLoop = true,
       }},
       ["SexyWall2"] = {"perlenfuchs@sexy_wall1", "sexy_wall1_clip", "sexywall2", AnimationOptions =
       {
          EmoteLoop = true,
       }},
       ["FreeStyle"] = {"custom@freestyle_lxcky", "freestyle_clip", "freestyle", AnimationOptions =
       {
          EmoteLoop = true,
       }},
       ["Sexywall"] = {"perlenfuchs@sexy_wall", "sexy_wall_clip", "sexywall", AnimationOptions =
       {
          EmoteLoop = true,
       }},
       ["Holdcap"] = {"perlenfuchs@hold_cap", "hold_cap_clip", "holdcap", AnimationOptions =
       {
          EmoteLoop = true,
       }},
       ["Cantseeyou"] = {"perlenfuchs@cant_see_you_male", "cant_see_you_male_clip", "cantseeyou", AnimationOptions =
       {
          EmoteLoop = true,
       }},
       ["Noface"] = {"noface2@spider", "noface2_clip", "noface", AnimationOptions =
       {
          EmoteLoop = true,
       }},
       ["Bike"] = {"bike3@animation", "bike3_clip", "bike", AnimationOptions =
       {
          EmoteLoop = true,
       }},
       ["Posefuchs"] = {"perlenfuchs@pose3", "pose3_clip", "posefuchs", AnimationOptions =
       {
          EmoteLoop = true,
       }},
       ["Malegun"] = {"perlenfuchs@male_gun", "male_gun_clip", "malegun", AnimationOptions =
       {
          EmoteLoop = true,
       }},
       ["Fuchsmale"] = {"perlenfuchs@male_fxckyou", "male_fxckyou_clip", "fuchsmale", AnimationOptions =
       {
          EmoteLoop = true,
       }},
       ["Lamp"] = {"perlenfuchs@lamp", "lamp_clip", "lamp", AnimationOptions =
       {
          EmoteLoop = true,
       }},
       ["Fucs"] = {"perlenfuchs@fxckyou", "fxckyou_clip", "fucs", AnimationOptions =
       {
          EmoteLoop = true,
       }},
       ["Fuchs2"] = {"perlenfuchs@fxckyou2", "fxckyou2_clip", "fuchs2", AnimationOptions =
       {
          EmoteLoop = true,
       }},
}
