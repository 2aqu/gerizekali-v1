Config = {}

Config.DrugImmunity = 100 -- how much the player can withstand the drug acting at the same time (drugStrength)

Config.UsableDrugs = {
    ["marijuana"] = {
        label = "Marijuana",
        animation = 'smoke', -- (smoke/syringe/sniff/pill)
        drugStrength = 30, -- this amount is being removed from immunity of player for effect duration time
        healthEffects = {
            armour = 10,
            health = 5
        },
        addiction = {
            chance = 90, -- 0-100%
            time = 120 -- time until drug wears out and you need other dose (in minutes)
        },
        effect = {
            duration = 30, -- in seconds
            screenFX = "DefaultFlash",
            speedMultiplier = 1.0, -- from 1.0 to 1.49
            walkingStyle = "MOVE_M@DRUNK@SLIGHTLYDRUNK",
            cameraShakeIntensity = 1.0,
        }
    },
    ["cocaine"] = {
        label = "Cocaine",
        animation = 'sniff', -- (smoke/syringe/sniff/pill)
        drugStrength = 10, -- this amount is being removed from immunity of player for effect duration time
        healthEffects = {
            armour = 10,
            health = -10
        },
        addiction = {
            chance = 100,
            time = 60 -- time until drug wears out and you need other dose (in minutes)
        },
        effect = {
            duration = 30, -- in seconds
            screenFX = "DefaultFlash",
            speedMultiplier = 1.0, -- from 1.0 to 1.49
            walkingStyle = "MOVE_M@DRUNK@SLIGHTLYDRUNK",
            cameraShakeIntensity = 1.0,
        }
    },
    ["heroin"] = {
        label = "Heroin",
        animation = 'syringe', -- (smoke/syringe/sniff/pill)
        drugStrength = 5, -- this amount is being removed from immunity of player for effect duration time
        healthEffects = {
            armour = 10,
            health = -10
        },
        addiction = {
            chance = 0,
            time = 60 -- time until drug wears out and you need other dose (in minutes)
        },
        effect = {
            duration = 180, -- in seconds
            screenFX = "DefaultFlash",
            speedMultiplier = 1.0, -- from 1.0 to 1.49
            walkingStyle = "MOVE_M@DRUNK@SLIGHTLYDRUNK",
            cameraShakeIntensity = 1.0,
        }
    },
    ["mdma"] = {
        label = "MDMA",
        animation = 'pill', -- (smoke/syringe/sniff/pill)
        drugStrength = 5, -- this amount is being removed from immunity of player for effect duration time
        healthEffects = {
            armour = 10,
            health = -10
        },
        addiction = {
            chance = 0,
            time = 60 -- time until drug wears out and you need other dose (in minutes)
        },
        effect = {
            duration = 180, -- in seconds
            screenFX = "DefaultFlash",
            speedMultiplier = 1.0, -- from 1.0 to 1.49
            walkingStyle = "MOVE_M@DRUNK@SLIGHTLYDRUNK",
            cameraShakeIntensity = 1.0,
        }
    },
}

Config.Medication = {
    ["marijuana_cure"] = {'marijuana'},
    ["universal_cure"] = {'marijuana', 'cocaine', 'heroin' , 'mdma'}
}

Config.Translations = {
    notification_header = "Dikkat",
    overdose_text = "Şu anda",
    overdose_highlighted_text = "Aşırı Doz",
    overdose_description = "Vücudunuz aldığınız ilaç miktarını kaldıramadı...",
    addiction_text = "Şu anda bağımlılık edindiniz:",
    addiction_description = "Vücuttaki ilaç miktarı azaldıkça daha kötü hissedeceksiniz, bağımlılığı tedavi etmek için doğru türde bir tedavi almanız gerekiyor.",
}