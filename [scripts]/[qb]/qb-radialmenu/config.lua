Config = {}

Config.EnableExtraMenu = true
Config.Fliptime = 15000

Config.MenuItems = {
    [1] = {
        id = 'citizen',
        title = 'Genel',
        icon = 'user',
        items = {{
            id = 'mesaigir',
            title = 'Mesai Gir/Çık',
            icon = 'user-group',
            type = 'client',
            event = 'qb-policejob:ToggleDuty',
            shouldClose = true
        }, --[[{
                id = 'togglehotdogsell',
                title = 'Hotdog Satış',
                icon = 'hotdog',
                type = 'client',
                event = 'qb-hotdogjob:client:ToggleSell',
                shouldClose = true
            },]] {
            id = 'interactions',
            title = 'Etkileşim',
            icon = 'triangle-exclamation',
            items = {{
                id = 'playerinvehicle',
                title = 'Araca Bindir / İndir',
                icon = 'car-side',
                type = 'client',
                event = 'bindir-event',
                shouldClose = true
            }, {
                id = 'playeroutvehicle',
                title = 'Araç (kelepçe)',
                icon = 'car-side',
                type = 'client',
                event = 'bindir-kelepce',
                shouldClose = true
            }, {
                id = 'escort',
                title = 'Sırtla',
                icon = 'user-group',
                type = 'client',
                event = 'police:client:KidnapPlayer',
                shouldClose = true
            }}
        }}
    },

    [2] = {
        id = 'animation0',
        title = 'Animasyonlar',
        icon = 'person-walking',
        type = 'client',
        event = 'busra_animmenu:client:openMenu',
        shouldClose = true
    },
    [3] = {
        id = 'clothe',
        title = 'Aksesuarlar',
        icon = 'hat-cowboy',
        type = 'client',
        event = 'dpc:ToggleMenu',
        shouldClose = true
    },
    [4] = {
        id = 'cross',
        title = 'Crosshair',
        icon = 'crosshairs',
        type = 'client',
        event = 'crosshair:open',
        shouldClose = true
    },
    [5] = {
        id = 'blipackapas',
        title = 'Blip Aç/Kapat',
        icon = 'map-location-dot',
        items = {{
            id = 'store',
            title = 'Marketler',
            icon = 'store',
            type = 'client',
            event = 'blips:toggleMarket',
            shouldClose = true
        }, {
            id = 'garages',
            title = 'Garajlar',
            icon = 'warehouse',
            type = 'client',
            event = 'garaj:blipAcKapa',
            shouldClose = true
        }, {
            id = 'barbershop',
            title = 'Berber',
            icon = 'scissors',
            type = 'client',
            event = 'blips:toggleBarber',
            shouldClose = true
        }, {
            id = 'clothing',
            title = 'Kıyafetci',
            icon = 'shirt',
            type = 'client',
            event = 'blips:toggleClothes',
            shouldClose = true
        }, {
            id = 'tattos',
            title = 'Dövmeci',
            icon = 'pen-fancy',
            type = 'client',
            event = 'blips:toggleTattoo',
            shouldClose = true
        }, {
            id = 'mesleks',
            title = 'Meslekler',
            icon = 'newspaper',
            type = 'client',
            event = 'knoes:isblips',
            shouldClose = true
        }, {
            id = 'isletme',
            title = 'İşletmeler',
            icon = 'mug-saucer',
            type = 'client',
            event = 'knoes:isletmeblips',
            shouldClose = true
        }, {
            id = 'isletme',
            title = 'Çekilmiş Araçlar',
            icon = 'car',
            type = 'client',
            event = 'knoes:cekilmisaraba',
            shouldClose = true
        }, {
            id = 'atm',
            title = 'Banka',
            icon = 'dollar-sign',
            type = 'client',
            event = 'blips:toggleAtm',
            shouldClose = true
        }, {
            id = 'blip',
            title = 'Tüm Blipleri Aç',
            icon = 'user-group',
            type = 'client',
            event = 'blips:toggleAll',
            shouldClose = true
        }}
    },
    [6] = {
        id = 'biils',
        title = 'Fatura Menüsü',
        icon = 'money-bill',
        type = 'command',
        event = 'fatura',
        shouldClose = true
    }
    --[[ [7] = {
        id = 'waypoint',
        title = 'En Yakın',
        icon = 'arrow-pointer',
        items = {
            {
                id = 'waypoint0',
                title = 'Benzinci',
                icon = 'gas-pump',
                type = 'client',
                event = 'sortestblip:fuel',
                shouldClose = true
            },
            {
                id = 'waypoint1',
                title = 'Dövmeci',
                icon = 'syringe',
                type = 'client',
                event = 'sortestblip:tattoo',
                shouldClose = true
            },
            {
                id = 'waypoint2',
                title = 'Kuaför',
                icon = 'hand-scissors',
                type = 'client',
                event = 'sortestblip:berber',
                shouldClose = true
            },
            {
                id = 'waypoint3',
                title = 'Kıyafetçi',
                icon = 'shirt',
                type = 'client',
                event = 'sortestblip:clothes',
                shouldClose = true
            },
            {
                id = 'waypoint4',
                title = 'Garaj',
                icon = 'car',
                type = 'client',
                event = 'sortestblip:garage',
                shouldClose = true
            },
            {
                id = 'waypoint5',
                title = 'Banka',
                icon = 'money-bill',
                type = 'client',
                event = 'sortestblip:bank',
                shouldClose = true
            }
        }
    },]]
}

Config.VehicleDoors = {
    id = 'vehicledoors',
    title = 'Vehicle Doors',
    icon = 'car-side',
    items = {{
        id = 'door0',
        title = 'Drivers door',
        icon = 'car-side',
        type = 'client',
        event = 'qb-radialmenu:client:openDoor',
        shouldClose = false
    }, {
        id = 'door4',
        title = 'Hood',
        icon = 'car',
        type = 'client',
        event = 'qb-radialmenu:client:openDoor',
        shouldClose = false
    }, {
        id = 'door1',
        title = 'Passengers door',
        icon = 'car-side',
        type = 'client',
        event = 'qb-radialmenu:client:openDoor',
        shouldClose = false
    }, {
        id = 'door3',
        title = 'Right rear',
        icon = 'car-side',
        type = 'client',
        event = 'qb-radialmenu:client:openDoor',
        shouldClose = false
    }, {
        id = 'door5',
        title = 'Trunk',
        icon = 'car',
        type = 'client',
        event = 'qb-radialmenu:client:openDoor',
        shouldClose = false
    }, {
        id = 'door2',
        title = 'Left rear',
        icon = 'car-side',
        type = 'client',
        event = 'qb-radialmenu:client:openDoor',
        shouldClose = false
    }}
}

Config.VehicleExtras = {
    id = 'vehicleextras',
    title = 'Vehicle Extras',
    icon = 'plus',
    items = {{
        id = 'extra1',
        title = 'Extra 1',
        icon = 'box-open',
        type = 'client',
        event = 'qb-radialmenu:client:setExtra',
        shouldClose = false
    }, {
        id = 'extra2',
        title = 'Extra 2',
        icon = 'box-open',
        type = 'client',
        event = 'qb-radialmenu:client:setExtra',
        shouldClose = false
    }, {
        id = 'extra3',
        title = 'Extra 3',
        icon = 'box-open',
        type = 'client',
        event = 'qb-radialmenu:client:setExtra',
        shouldClose = false
    }, {
        id = 'extra4',
        title = 'Extra 4',
        icon = 'box-open',
        type = 'client',
        event = 'qb-radialmenu:client:setExtra',
        shouldClose = false
    }, {
        id = 'extra5',
        title = 'Extra 5',
        icon = 'box-open',
        type = 'client',
        event = 'qb-radialmenu:client:setExtra',
        shouldClose = false
    }, {
        id = 'extra6',
        title = 'Extra 6',
        icon = 'box-open',
        type = 'client',
        event = 'qb-radialmenu:client:setExtra',
        shouldClose = false
    }, {
        id = 'extra7',
        title = 'Extra 7',
        icon = 'box-open',
        type = 'client',
        event = 'qb-radialmenu:client:setExtra',
        shouldClose = false
    }, {
        id = 'extra8',
        title = 'Extra 8',
        icon = 'box-open',
        type = 'client',
        event = 'qb-radialmenu:client:setExtra',
        shouldClose = false
    }, {
        id = 'extra9',
        title = 'Extra 9',
        icon = 'box-open',
        type = 'client',
        event = 'qb-radialmenu:client:setExtra',
        shouldClose = false
    }, {
        id = 'extra10',
        title = 'Extra 10',
        icon = 'box-open',
        type = 'client',
        event = 'qb-radialmenu:client:setExtra',
        shouldClose = false
    }, {
        id = 'extra11',
        title = 'Extra 11',
        icon = 'box-open',
        type = 'client',
        event = 'qb-radialmenu:client:setExtra',
        shouldClose = false
    }, {
        id = 'extra12',
        title = 'Extra 12',
        icon = 'box-open',
        type = 'client',
        event = 'qb-radialmenu:client:setExtra',
        shouldClose = false
    }, {
        id = 'extra13',
        title = 'Extra 13',
        icon = 'box-open',
        type = 'client',
        event = 'qb-radialmenu:client:setExtra',
        shouldClose = false
    }}
}

Config.VehicleSeats = {
    id = 'vehicleseats',
    title = 'Vehicle Seats',
    icon = 'chair',
    items = {}
}

Config.JobInteractions = {
    ["ambulance"] = {{
        id = 'revivep',
        title = 'Tedavi et',
        icon = 'user-doctor',
        type = 'client',
        event = 'hospital:client:RevivePlayer',
        shouldClose = true
    }, {
        id = 'treatwounds',
        title = 'Yaraları İyileştir',
        icon = 'bandage',
        type = 'client',
        event = 'hospital:client:TreatWounds',
        shouldClose = true
    }, {
        id = 'emergencybutton2',
        title = 'Acil Durum Butonu',
        icon = 'bell',
        type = 'client',
        event = 'police:client:SendPoliceEmergencyAlert',
        shouldClose = true
    }, {
        id = 'escort',
        title = 'Hasta Taşı',
        icon = 'user-group',
        type = 'client',
        event = 'tasi-event',
        shouldClose = true
    }, {
        id = 'billplayer',
        title = 'Fatura Kes',
        icon = 'money-bill',
        type = 'client',
        event = 'g-billing:client:engageChooseBillViewMenu',
        shouldClose = true
    }, {
        id = 'stretcheroptions',
        title = 'Sedye',
        icon = 'bed-pulse',
        items = {{
            id = 'spawnstretcher',
            title = 'Sedye Çıkart',
            icon = 'plus',
            type = 'client',
            event = 'qb-radialmenu:client:TakeStretcher',
            shouldClose = false
        }, {
            id = 'despawnstretcher',
            title = 'Sedye Kaldır',
            icon = 'minus',
            type = 'client',
            event = 'qb-radialmenu:client:RemoveStretcher',
            shouldClose = false
        }}
    }},
    ["taxi"] = {{
        id = 'togglemeter',
        title = 'Taksimetre Göster/Gizle',
        icon = 'eye-slash',
        type = 'client',
        event = 'qb-taxi:client:toggleMeter',
        shouldClose = false
    }, {
        id = 'togglemouse',
        title = 'Taksimetre Aç/Kapat',
        icon = 'hourglass-start',
        type = 'client',
        event = 'qb-taxi:client:enableMeter',
        shouldClose = true
    }, {
        id = 'npc_mission',
        title = 'NPC GÖrevi Al',
        icon = 'taxi',
        type = 'client',
        event = 'qb-taxi:client:DoTaxiNpc',
        shouldClose = true
    }},
    ["tow"] = {{
        id = 'togglenpc',
        title = 'NPC Aç/Kapat',
        icon = 'toggle-on',
        type = 'client',
        event = 'jobs:client:ToggleNpc',
        shouldClose = true
    }, {
        id = 'towvehicle',
        title = 'Çekici Aracı',
        icon = 'truck-pickup',
        type = 'client',
        event = 'qb-tow:client:TowVehicle',
        shouldClose = true
    }},
    ["police"] = {{
        id = 'emergencybutton',
        title = 'Acil Durum Butonu',
        icon = 'bell',
        type = 'client',
        event = 'police:client:SendPoliceEmergencyAlert',
        shouldClose = true
    }, {
        id = 'escort2',
        title = 'Taşı',
        icon = 'user-group',
        type = 'client',
        event = 'tasi-event',
        shouldClose = true
    }, {
        id = 'playerinvehicle',
        title = 'Araca Bindir / İndir',
        icon = 'car-side',
        type = 'client',
        event = 'bindir-event',
        shouldClose = true
    }, {
        id = 'playeroutvehicle',
        title = 'Araç (kelepçe)',
        icon = 'car-side',
        type = 'client',
        event = 'bindir-kelepce',
        shouldClose = true
    }, {
        id = 'checkvehstatus',
        title = 'Çip Kontrolü',
        icon = 'circle-info',
        type = 'client',
        event = 'qb-tunerchip:client:TuneStatus',
        shouldClose = true
    }, --[[{
            id = 'resethouse',
            title = 'Ev kilidini sıfırla',
            icon = 'key',
            type = 'client',
            event = 'qb-houses:client:ResetHouse',
            shouldClose = true
        }, {
            id = 'takedriverlicense',
            title = 'Sürücü Belgesini İptal Et',
            icon = 'id-card',
            type = 'client',
            event = 'police:client:SeizeDriverLicense',
            shouldClose = true
        },]] {
        id = 'policeinteraction',
        title = 'Polis Eylemleri',
        icon = 'list-check',
        items = {{
            id = 'arackit',
            title = 'Araç Kilidi Kır',
            icon = 'key',
            type = 'client',
            event = 'police:client:LockBroke',
            shouldClose = true
        }, {
            id = 'araccek',
            title = 'Araç Çek',
            icon = 'car',
            type = 'client',
            event = 'police:client:ImpoundVehicle',
            shouldClose = true
        }, {
            id = 'searchplayer',
            title = 'Üstünü Ara',
            icon = 'magnifying-glass',
            type = 'client',
            event = 'police:client:SearchPlayer',
            shouldClose = true
        }, {
            id = 'societyplayer',
            title = 'Kamu',
            icon = 'broom',
            type = 'client',
            event = 'police:client:SocietyPlayer',
            shouldClose = true
        }, --[[ {
                    id = 'jailplayer',
                    title = 'Hapis',
                    icon = 'broom',
                    type = 'client',
                    event = 'police:client:JailPlayer',
                    shouldClose = true
                },]] {
            id = 'billplayer',
            title = 'Fatura Kes',
            icon = 'money-bill',
            type = 'client',
            event = 'g-billing:client:engageChooseBillViewMenu',
            shouldClose = true
        }, {
            id = 'kopek',
            title = 'K9 Çağır',
            icon = 'shield-dog',
            type = 'client',
            event = 'qb-k9:client:menu',
            shouldClose = true
        }}
    }, {
        id = 'policeobjects',
        title = 'Objeler',
        icon = 'road',
        items = {{
            id = 'spawnpion',
            title = 'Koni',
            icon = 'triangle-exclamation',
            type = 'client',
            event = 'police:client:spawnCone',
            shouldClose = false
        }, {
            id = 'spawnhek',
            title = 'Kapı',
            icon = 'torii-gate',
            type = 'client',
            event = 'police:client:spawnBarrier',
            shouldClose = false
        }, {
            id = 'spawnschotten',
            title = 'Hız Limit Uyarısı',
            icon = 'sign-hanging',
            type = 'client',
            event = 'police:client:spawnRoadSign',
            shouldClose = false
        }, {
            id = 'spawntent',
            title = 'Çadır',
            icon = 'campground',
            type = 'client',
            event = 'police:client:spawnTent',
            shouldClose = false
        }, {
            id = 'spawnverlichting',
            title = 'Aydınlatma',
            icon = 'lightbulb',
            type = 'client',
            event = 'police:client:spawnLight',
            shouldClose = false
        }, {
            id = 'deleteobject',
            title = 'Ojeyi Kaldır',
            icon = 'trash',
            type = 'client',
            event = 'police:client:deleteObject',
            shouldClose = false
        }}
    }},
    ["dppd"] = {{
        id = 'emergencybutton',
        title = 'Acil Durum Butonu',
        icon = 'bell',
        type = 'client',
        event = 'police:client:SendPoliceEmergencyAlert',
        shouldClose = true
    }, {
        id = 'escort2',
        title = 'Taşı',
        icon = 'user-group',
        type = 'client',
        event = 'tasi-event',
        shouldClose = true
    }, {
        id = 'playerinvehicle',
        title = 'Araca Bindir / İndir',
        icon = 'car-side',
        type = 'client',
        event = 'bindir-event',
        shouldClose = true
    }, {
        id = 'playeroutvehicle',
        title = 'Araç (kelepçe)',
        icon = 'car-side',
        type = 'client',
        event = 'bindir-kelepce',
        shouldClose = true
    }, {
        id = 'checkvehstatus',
        title = 'Çip Kontrolü',
        icon = 'circle-info',
        type = 'client',
        event = 'qb-tunerchip:client:TuneStatus',
        shouldClose = true
    }, --[[{
            id = 'resethouse',
            title = 'Ev kilidini sıfırla',
            icon = 'key',
            type = 'client',
            event = 'qb-houses:client:ResetHouse',
            shouldClose = true
        }, {
            id = 'takedriverlicense',
            title = 'Sürücü Belgesini İptal Et',
            icon = 'id-card',
            type = 'client',
            event = 'police:client:SeizeDriverLicense',
            shouldClose = true
        },]] {
        id = 'policeinteraction',
        title = 'Polis Eylemleri',
        icon = 'list-check',
        items = {{
            id = 'arackit',
            title = 'Araç Kilidi Kır',
            icon = 'key',
            type = 'client',
            event = 'police:client:LockBroke',
            shouldClose = true
        }, {
            id = 'araccek',
            title = 'Araç Çek',
            icon = 'car',
            type = 'client',
            event = 'police:client:ImpoundVehicle',
            shouldClose = true
        }, {
            id = 'searchplayer',
            title = 'Üstünü Ara',
            icon = 'magnifying-glass',
            type = 'client',
            event = 'police:client:SearchPlayer',
            shouldClose = true
        }, {
            id = 'societyplayer',
            title = 'Kamu',
            icon = 'broom',
            type = 'client',
            event = 'police:client:SocietyPlayer',
            shouldClose = true
        }, --[[ {
                    id = 'jailplayer',
                    title = 'Hapis',
                    icon = 'broom',
                    type = 'client',
                    event = 'police:client:JailPlayer',
                    shouldClose = true
                },]] {
            id = 'billplayer',
            title = 'Fatura Kes',
            icon = 'money-bill',
            type = 'client',
            event = 'g-billing:client:engageChooseBillViewMenu',
            shouldClose = true
        }, {
            id = 'kopek',
            title = 'K9 Çağır',
            icon = 'shield-dog',
            type = 'client',
            event = 'qb-k9:client:menu',
            shouldClose = true
        }}
    }, {
        id = 'policeobjects',
        title = 'Objeler',
        icon = 'road',
        items = {{
            id = 'spawnpion',
            title = 'Koni',
            icon = 'triangle-exclamation',
            type = 'client',
            event = 'police:client:spawnCone',
            shouldClose = false
        }, {
            id = 'spawnhek',
            title = 'Kapı',
            icon = 'torii-gate',
            type = 'client',
            event = 'police:client:spawnBarrier',
            shouldClose = false
        }, {
            id = 'spawnschotten',
            title = 'Hız Limit Uyarısı',
            icon = 'sign-hanging',
            type = 'client',
            event = 'police:client:spawnRoadSign',
            shouldClose = false
        }, {
            id = 'spawntent',
            title = 'Çadır',
            icon = 'campground',
            type = 'client',
            event = 'police:client:spawnTent',
            shouldClose = false
        }, {
            id = 'spawnverlichting',
            title = 'Aydınlatma',
            icon = 'lightbulb',
            type = 'client',
            event = 'police:client:spawnLight',
            shouldClose = false
        }, {
            id = 'deleteobject',
            title = 'Ojeyi Kaldır',
            icon = 'trash',
            type = 'client',
            event = 'police:client:deleteObject',
            shouldClose = false
        }}
    }},
    ["vpd"] = {{
        id = 'emergencybutton',
        title = 'Acil Durum Butonu',
        icon = 'bell',
        type = 'client',
        event = 'police:client:SendPoliceEmergencyAlert',
        shouldClose = true
    }, {
        id = 'escort2',
        title = 'Taşı',
        icon = 'user-group',
        type = 'client',
        event = 'tasi-event',
        shouldClose = true
    }, {
        id = 'playerinvehicle',
        title = 'Araca Bindir / İndir',
        icon = 'car-side',
        type = 'client',
        event = 'bindir-event',
        shouldClose = true
    }, {
        id = 'playeroutvehicle',
        title = 'Araç (kelepçe)',
        icon = 'car-side',
        type = 'client',
        event = 'bindir-kelepce',
        shouldClose = true
    }, {
        id = 'checkvehstatus',
        title = 'Çip Kontrolü',
        icon = 'circle-info',
        type = 'client',
        event = 'qb-tunerchip:client:TuneStatus',
        shouldClose = true
    }, --[[ {
            id = 'resethouse',
            title = 'Ev kilidini sıfırla',
            icon = 'key',
            type = 'client',
            event = 'qb-houses:client:ResetHouse',
            shouldClose = true
        }, {
            id = 'takedriverlicense',
            title = 'Sürücü Belgesini İptal Et',
            icon = 'id-card',
            type = 'client',
            event = 'police:client:SeizeDriverLicense',
            shouldClose = true
        },]] {
        id = 'policeinteraction',
        title = 'Polis Eylemleri',
        icon = 'list-check',
        items = {{
            id = 'arackit',
            title = 'Araç Kilidi Kır',
            icon = 'key',
            type = 'client',
            event = 'police:client:LockBroke',
            shouldClose = true
        }, {
            id = 'araccek',
            title = 'Araç Çek',
            icon = 'car',
            type = 'client',
            event = 'police:client:ImpoundVehicle',
            shouldClose = true
        }, {
            id = 'searchplayer',
            title = 'Üstünü Ara',
            icon = 'magnifying-glass',
            type = 'client',
            event = 'police:client:SearchPlayer',
            shouldClose = true
        }, --[[{
                    id = 'jailplayer',
                    title = 'Hapis',
                    icon = 'broom',
                    type = 'client',
                    event = 'police:client:JailPlayer',
                    shouldClose = true
                }, ]] {
            id = 'societyplayer',
            title = 'Kamu',
            icon = 'broom',
            type = 'client',
            event = 'police:client:SocietyPlayer',
            shouldClose = true
        }, {
            id = 'billplayer',
            title = 'Fatura Kes',
            icon = 'money-bill',
            type = 'client',
            event = 'g-billing:client:engageChooseBillViewMenu',
            shouldClose = true
        }, {
            id = 'kopek',
            title = 'K9 Çağır',
            icon = 'shield-dog',
            type = 'client',
            event = 'qb-k9:client:menu',
            shouldClose = true
        }}
    }, {
        id = 'policeobjects',
        title = 'Objeler',
        icon = 'road',
        items = {{
            id = 'spawnpion',
            title = 'Koni',
            icon = 'triangle-exclamation',
            type = 'client',
            event = 'police:client:spawnCone',
            shouldClose = false
        }, {
            id = 'spawnhek',
            title = 'Kapı',
            icon = 'torii-gate',
            type = 'client',
            event = 'police:client:spawnBarrier',
            shouldClose = false
        }, {
            id = 'spawnschotten',
            title = 'Hız Limit Uyarısı',
            icon = 'sign-hanging',
            type = 'client',
            event = 'police:client:spawnRoadSign',
            shouldClose = false
        }, {
            id = 'spawntent',
            title = 'Çadır',
            icon = 'campground',
            type = 'client',
            event = 'police:client:spawnTent',
            shouldClose = false
        }, {
            id = 'spawnverlichting',
            title = 'Aydınlatma',
            icon = 'lightbulb',
            type = 'client',
            event = 'police:client:spawnLight',
            shouldClose = false
        }, {
            id = 'deleteobject',
            title = 'Ojeyi Kaldır',
            icon = 'trash',
            type = 'client',
            event = 'police:client:deleteObject',
            shouldClose = false
        }}
    }},
    ["doj"] = {{
        id = 'emergencybutton',
        title = 'Acil Durum Butonu',
        icon = 'bell',
        type = 'client',
        event = 'police:client:SendPoliceEmergencyAlert',
        shouldClose = true
    }, {
        id = 'escort2',
        title = 'Taşı',
        icon = 'user-group',
        type = 'client',
        event = 'tasi-event',
        shouldClose = true
    }, {
        id = 'playerinvehicle',
        title = 'Araca Bindir / İndir',
        icon = 'car-side',
        type = 'client',
        event = 'bindir-event',
        shouldClose = true
    }, {
        id = 'playeroutvehicle',
        title = 'Araç (kelepçe)',
        icon = 'car-side',
        type = 'client',
        event = 'bindir-kelepce',
        shouldClose = true
    }, --[[{
            id = 'checkvehstatus',
            title = 'Çip Kontrolü',
            icon = 'circle-info',
            type = 'client',
            event = 'qb-tunerchip:client:TuneStatus',
            shouldClose = true
        }, {
            id = 'resethouse',
            title = 'Ev kilidini sıfırla',
            icon = 'key',
            type = 'client',
            event = 'qb-houses:client:ResetHouse',
            shouldClose = true
        }, {
            id = 'takedriverlicense',
            title = 'Sürücü Belgesini İptal Et',
            icon = 'id-card',
            type = 'client',
            event = 'police:client:SeizeDriverLicense',
            shouldClose = true
        },]] {
        id = 'policeinteraction',
        title = 'Polis Eylemleri',
        icon = 'list-check',
        items = {{
            id = 'arackit',
            title = 'Araç Kilidi Kır',
            icon = 'key',
            type = 'client',
            event = 'police:client:LockBroke',
            shouldClose = true
        }, {
            id = 'araccek',
            title = 'Araç Çek',
            icon = 'car',
            type = 'client',
            event = 'police:client:ImpoundVehicle',
            shouldClose = true
        }, {
            id = 'searchplayer',
            title = 'Üstünü Ara',
            icon = 'magnifying-glass',
            type = 'client',
            event = 'police:client:SearchPlayer',
            shouldClose = true
        }, {
            id = 'jailplayer',
            title = 'Hapis',
            icon = 'broom',
            type = 'client',
            event = 'police:client:JailPlayer',
            shouldClose = true
        }, {
            id = 'societyplayer',
            title = 'Kamu',
            icon = 'broom',
            type = 'client',
            event = 'police:client:SocietyPlayer',
            shouldClose = true
        }, {
            id = 'billplayer',
            title = 'Fatura Kes',
            icon = 'money-bill',
            type = 'client',
            event = 'g-billing:client:engageChooseBillViewMenu',
            shouldClose = true
        }, {
            id = 'kopek',
            title = 'K9 Çağır',
            icon = 'shield-dog',
            type = 'client',
            event = 'qb-k9:client:menu',
            shouldClose = true
        }}
    }, {
        id = 'policeobjects',
        title = 'Objeler',
        icon = 'road',
        items = {{
            id = 'spawnpion',
            title = 'Koni',
            icon = 'triangle-exclamation',
            type = 'client',
            event = 'police:client:spawnCone',
            shouldClose = false
        }, {
            id = 'spawnhek',
            title = 'Kapı',
            icon = 'torii-gate',
            type = 'client',
            event = 'police:client:spawnBarrier',
            shouldClose = false
        }, {
            id = 'spawnschotten',
            title = 'Hız Limit Uyarısı',
            icon = 'sign-hanging',
            type = 'client',
            event = 'police:client:spawnRoadSign',
            shouldClose = false
        }, {
            id = 'spawntent',
            title = 'Çadır',
            icon = 'campground',
            type = 'client',
            event = 'police:client:spawnTent',
            shouldClose = false
        }, {
            id = 'spawnverlichting',
            title = 'Aydınlatma',
            icon = 'lightbulb',
            type = 'client',
            event = 'police:client:spawnLight',
            shouldClose = false
        }, {
            id = 'deleteobject',
            title = 'Ojeyi Kaldır',
            icon = 'trash',
            type = 'client',
            event = 'police:client:deleteObject',
            shouldClose = false
        }}
    }},
    ["fbi"] = {{
        id = 'emergencybutton',
        title = 'Acil Durum Butonu',
        icon = 'bell',
        type = 'client',
        event = 'police:client:SendPoliceEmergencyAlert',
        shouldClose = true
    }, {
        id = 'arackit',
        title = 'Araç Kilidi Kır',
        icon = 'anchor-lock',
        type = 'client',
        event = 'police:client:LockBroke',
        shouldClose = true
    }, {
        id = 'araccek',
        title = 'Araç Çek',
        icon = 'car',
        type = 'client',
        event = 'police:client:ImpoundVehicle',
        shouldClose = true
    }, {
        id = 'checkvehstatus',
        title = 'Çip Kontrolü',
        icon = 'circle-info',
        type = 'client',
        event = 'qb-tunerchip:client:TuneStatus',
        shouldClose = true
    }, {
        id = 'resethouse',
        title = 'Ev kilidini sıfırla',
        icon = 'key',
        type = 'client',
        event = 'qb-houses:client:ResetHouse',
        shouldClose = true
    }, {
        id = 'takedriverlicense',
        title = 'Sürücü Belgesini İptal Et',
        icon = 'id-card',
        type = 'client',
        event = 'police:client:SeizeDriverLicense',
        shouldClose = true
    }, {
        id = 'policeinteraction',
        title = 'Polis Eylemleri',
        icon = 'list-check',
        items = {{
            id = 'statuscheck',
            title = 'Durumunu Kontrol Et',
            icon = 'heart-pulse',
            type = 'client',
            event = 'hospital:client:CheckStatus',
            shouldClose = true
        }, {
            id = 'escort',
            title = 'Taşı',
            icon = 'user-group',
            type = 'client',
            event = 'tasi-event',
            shouldClose = true
        }, {
            id = 'searchplayer',
            title = 'Üstünü Ara',
            icon = 'magnifying-glass',
            type = 'client',
            event = 'police:client:SearchPlayer',
            shouldClose = true
        }, {
            id = 'jailplayer',
            title = 'Hapise Gönder',
            icon = 'user-lock',
            type = 'client',
            event = 'police:client:JailPlayer',
            shouldClose = true
        }, {
            id = 'societyplayer',
            title = 'Kamu',
            icon = 'broom',
            type = 'client',
            event = 'police:client:SocietyPlayer',
            shouldClose = true
        }, {
            id = 'billplayer',
            title = 'Fatura Kes',
            icon = 'money-bill',
            type = 'client',
            event = 'g-billing:client:engageChooseBillViewMenu',
            shouldClose = true
        }}
    }, {
        id = 'policeobjects',
        title = 'Objeler',
        icon = 'road',
        items = {{
            id = 'spawnpion',
            title = 'Koni',
            icon = 'triangle-exclamation',
            type = 'client',
            event = 'police:client:spawnCone',
            shouldClose = false
        }, {
            id = 'spawnhek',
            title = 'Kapı',
            icon = 'torii-gate',
            type = 'client',
            event = 'police:client:spawnBarrier',
            shouldClose = false
        }, {
            id = 'spawnschotten',
            title = 'Hız Limit Uyarısı',
            icon = 'sign-hanging',
            type = 'client',
            event = 'police:client:spawnRoadSign',
            shouldClose = false
        }, {
            id = 'spawntent',
            title = 'Çadır',
            icon = 'campground',
            type = 'client',
            event = 'police:client:spawnTent',
            shouldClose = false
        }, {
            id = 'spawnverlichting',
            title = 'Aydınlatma',
            icon = 'lightbulb',
            type = 'client',
            event = 'police:client:spawnLight',
            shouldClose = false
        }, {
            id = 'spikestrip',
            title = 'Spike',
            icon = 'caret-up',
            type = 'client',
            event = 'police:client:SpawnSpikeStrip',
            shouldClose = false
        }, {
            id = 'deleteobject',
            title = 'Ojeyi Kaldır',
            icon = 'trash',
            type = 'client',
            event = 'police:client:deleteObject',
            shouldClose = false
        }}
    }},
    ["state"] = {{
        id = 'emergencybutton',
        title = 'Acil Durum Butonu',
        icon = 'bell',
        type = 'client',
        event = 'police:client:SendPoliceEmergencyAlert',
        shouldClose = true
    }, {
        id = 'escort2',
        title = 'Taşı',
        icon = 'user-group',
        type = 'client',
        event = 'tasi-event',
        shouldClose = true
    }, {
        id = 'playerinvehicle',
        title = 'Araca Bindir / İndir',
        icon = 'car-side',
        type = 'client',
        event = 'bindir-event',
        shouldClose = true
    }, {
        id = 'playeroutvehicle',
        title = 'Araç (kelepçe)',
        icon = 'car-side',
        type = 'client',
        event = 'bindir-kelepce',
        shouldClose = true
    }, {
        id = 'arackit',
        title = 'Araç Kilidi Kır',
        icon = 'anchor-lock',
        type = 'client',
        event = 'police:client:LockBroke',
        shouldClose = true
    }, {
        id = 'araccek',
        title = 'Araç Çek',
        icon = 'car',
        type = 'client',
        event = 'police:client:ImpoundVehicle',
        shouldClose = true
    }, {
        id = 'checkvehstatus',
        title = 'Çip Kontrolü',
        icon = 'circle-info',
        type = 'client',
        event = 'qb-tunerchip:client:TuneStatus',
        shouldClose = true
    }, --[[{
            id = 'resethouse',
            title = 'Ev kilidini sıfırla',
            icon = 'key',
            type = 'client',
            event = 'qb-houses:client:ResetHouse',
            shouldClose = true
        }, {
            id = 'takedriverlicense',
            title = 'Sürücü Belgesini İptal Et',
            icon = 'id-card',
            type = 'client',
            event = 'police:client:SeizeDriverLicense',
            shouldClose = true
        }, ]] {
        id = 'policeinteraction',
        title = 'Polis Eylemleri',
        icon = 'list-check',
        items = {{
            id = 'statuscheck',
            title = 'Durumunu Kontrol Et',
            icon = 'heart-pulse',
            type = 'client',
            event = 'hospital:client:CheckStatus',
            shouldClose = true
        }, {
            id = 'escort',
            title = 'Taşı',
            icon = 'user-group',
            type = 'client',
            event = 'tasi-event',
            shouldClose = true
        }, {
            id = 'searchplayer',
            title = 'Üstünü Ara',
            icon = 'magnifying-glass',
            type = 'client',
            event = 'police:client:SearchPlayer',
            shouldClose = true
        }, {
            id = 'jailplayer',
            title = 'Hapise Gönder',
            icon = 'user-lock',
            type = 'client',
            event = 'police:client:JailPlayer',
            shouldClose = true
        }, {
            id = 'societyplayer',
            title = 'Kamu',
            icon = 'broom',
            type = 'client',
            event = 'police:client:SocietyPlayer',
            shouldClose = true
        }, {
            id = 'billplayer',
            title = 'Fatura Kes',
            icon = 'money-bill',
            type = 'client',
            event = 'g-billing:client:engageChooseBillViewMenu',
            shouldClose = true
        }}
    }, {
        id = 'policeobjects',
        title = 'Objeler',
        icon = 'road',
        items = {{
            id = 'spawnpion',
            title = 'Koni',
            icon = 'triangle-exclamation',
            type = 'client',
            event = 'police:client:spawnCone',
            shouldClose = false
        }, {
            id = 'spawnhek',
            title = 'Kapı',
            icon = 'torii-gate',
            type = 'client',
            event = 'police:client:spawnBarrier',
            shouldClose = false
        }, {
            id = 'spawnschotten',
            title = 'Hız Limit Uyarısı',
            icon = 'sign-hanging',
            type = 'client',
            event = 'police:client:spawnRoadSign',
            shouldClose = false
        }, {
            id = 'spawntent',
            title = 'Çadır',
            icon = 'campground',
            type = 'client',
            event = 'police:client:spawnTent',
            shouldClose = false
        }, {
            id = 'spawnverlichting',
            title = 'Aydınlatma',
            icon = 'lightbulb',
            type = 'client',
            event = 'police:client:spawnLight',
            shouldClose = false
        }, {
            id = 'spikestrip',
            title = 'Spike',
            icon = 'caret-up',
            type = 'client',
            event = 'police:client:SpawnSpikeStrip',
            shouldClose = false
        }, {
            id = 'deleteobject',
            title = 'Ojeyi Kaldır',
            icon = 'trash',
            type = 'client',
            event = 'police:client:deleteObject',
            shouldClose = false
        }}
    }},
    ["sheriff"] = {{
        id = 'emergencybutton',
        title = 'Acil Durum Butonu',
        icon = 'bell',
        type = 'client',
        event = 'police:client:SendPoliceEmergencyAlert',
        shouldClose = true
    }, {
        id = 'escort2',
        title = 'Taşı',
        icon = 'user-group',
        type = 'client',
        event = 'tasi-event',
        shouldClose = true
    }, {
        id = 'playerinvehicle',
        title = 'Araca Bindir / İndir',
        icon = 'car-side',
        type = 'client',
        event = 'bindir-event',
        shouldClose = true
    }, {
        id = 'playeroutvehicle',
        title = 'Araç (kelepçe)',
        icon = 'car-side',
        type = 'client',
        event = 'bindir-kelepce',
        shouldClose = true
    }, {
        id = 'arackit',
        title = 'Araç Kilidi Kır',
        icon = 'anchor-lock',
        type = 'client',
        event = 'police:client:LockBroke',
        shouldClose = true
    }, {
        id = 'araccek',
        title = 'Araç Çek',
        icon = 'car',
        type = 'client',
        event = 'police:client:ImpoundVehicle',
        shouldClose = true
    }, {
        id = 'checkvehstatus',
        title = 'Çip Kontrolü',
        icon = 'circle-info',
        type = 'client',
        event = 'qb-tunerchip:client:TuneStatus',
        shouldClose = true
    }, --[[{
            id = 'resethouse',
            title = 'Ev kilidini sıfırla',
            icon = 'key',
            type = 'client',
            event = 'qb-houses:client:ResetHouse',
            shouldClose = true
        }, {
            id = 'takedriverlicense',
            title = 'Sürücü Belgesini İptal Et',
            icon = 'id-card',
            type = 'client',
            event = 'police:client:SeizeDriverLicense',
            shouldClose = true
        },]] {
        id = 'policeinteraction',
        title = 'Polis Eylemleri',
        icon = 'list-check',
        items = {{
            id = 'statuscheck',
            title = 'Durumunu Kontrol Et',
            icon = 'heart-pulse',
            type = 'client',
            event = 'hospital:client:CheckStatus',
            shouldClose = true
        }, {
            id = 'escort',
            title = 'Taşı',
            icon = 'user-group',
            type = 'client',
            event = 'tasi-event',
            shouldClose = true
        }, {
            id = 'searchplayer',
            title = 'Üstünü Ara',
            icon = 'magnifying-glass',
            type = 'client',
            event = 'police:client:SearchPlayer',
            shouldClose = true
        }, {
            id = 'jailplayer',
            title = 'Hapise Gönder',
            icon = 'user-lock',
            type = 'client',
            event = 'police:client:JailPlayer',
            shouldClose = true
        }, {
            id = 'societyplayer',
            title = 'Kamu',
            icon = 'broom',
            type = 'client',
            event = 'police:client:SocietyPlayer',
            shouldClose = true
        }, {
            id = 'billplayer',
            title = 'Fatura Kes',
            icon = 'money-bill',
            type = 'client',
            event = 'g-billing:client:engageChooseBillViewMenu',
            shouldClose = true
        }}
    }, {
        id = 'policeobjects',
        title = 'Objeler',
        icon = 'road',
        items = {{
            id = 'spawnpion',
            title = 'Koni',
            icon = 'triangle-exclamation',
            type = 'client',
            event = 'police:client:spawnCone',
            shouldClose = false
        }, {
            id = 'spawnhek',
            title = 'Kapı',
            icon = 'torii-gate',
            type = 'client',
            event = 'police:client:spawnBarrier',
            shouldClose = false
        }, {
            id = 'spawnschotten',
            title = 'Hız Limit Uyarısı',
            icon = 'sign-hanging',
            type = 'client',
            event = 'police:client:spawnRoadSign',
            shouldClose = false
        }, {
            id = 'spawntent',
            title = 'Çadır',
            icon = 'campground',
            type = 'client',
            event = 'police:client:spawnTent',
            shouldClose = false
        }, {
            id = 'spawnverlichting',
            title = 'Aydınlatma',
            icon = 'lightbulb',
            type = 'client',
            event = 'police:client:spawnLight',
            shouldClose = false
        }, {
            id = 'spikestrip',
            title = 'Spike',
            icon = 'caret-up',
            type = 'client',
            event = 'police:client:SpawnSpikeStrip',
            shouldClose = false
        }, {
            id = 'deleteobject',
            title = 'Ojeyi Kaldır',
            icon = 'trash',
            type = 'client',
            event = 'police:client:deleteObject',
            shouldClose = false
        }, {
            id = 'billplayer',
            title = 'Fatura Kes',
            icon = 'money-bill',
            type = 'client',
            event = 'g-billing:client:engageChooseBillViewMenu',
            shouldClose = true
        }}
    }},
    ["ranger"] = {{
        id = 'emergencybutton',
        title = 'Acil Durum Butonu',
        icon = 'bell',
        type = 'client',
        event = 'police:client:SendPoliceEmergencyAlert',
        shouldClose = true
    }, {
        id = 'escort2',
        title = 'Taşı',
        icon = 'user-group',
        type = 'client',
        event = 'tasi-event',
        shouldClose = true
    }, {
        id = 'playerinvehicle',
        title = 'Araca Bindir / İndir',
        icon = 'car-side',
        type = 'client',
        event = 'bindir-event',
        shouldClose = true
    }, {
        id = 'playeroutvehicle',
        title = 'Araç (kelepçe)',
        icon = 'car-side',
        type = 'client',
        event = 'bindir-kelepce',
        shouldClose = true
    }, {
        id = 'arackit',
        title = 'Araç Kilidi Kır',
        icon = 'anchor-lock',
        type = 'client',
        event = 'police:client:LockBroke',
        shouldClose = true
    }, {
        id = 'araccek',
        title = 'Araç Çek',
        icon = 'car',
        type = 'client',
        event = 'police:client:ImpoundVehicle',
        shouldClose = true
    }, {
        id = 'checkvehstatus',
        title = 'Çip Kontrolü',
        icon = 'circle-info',
        type = 'client',
        event = 'qb-tunerchip:client:TuneStatus',
        shouldClose = true
    }, {
        id = 'resethouse',
        title = 'Ev kilidini sıfırla',
        icon = 'key',
        type = 'client',
        event = 'qb-houses:client:ResetHouse',
        shouldClose = true
    }, {
        id = 'takedriverlicense',
        title = 'Sürücü Belgesini İptal Et',
        icon = 'id-card',
        type = 'client',
        event = 'police:client:SeizeDriverLicense',
        shouldClose = true
    }, {
        id = 'policeinteraction',
        title = 'Polis Eylemleri',
        icon = 'list-check',
        items = {{
            id = 'statuscheck',
            title = 'Durumunu Kontrol Et',
            icon = 'heart-pulse',
            type = 'client',
            event = 'hospital:client:CheckStatus',
            shouldClose = true
        }, {
            id = 'escort',
            title = 'Taşı',
            icon = 'user-group',
            type = 'client',
            event = 'tasi-event',
            shouldClose = true
        }, {
            id = 'searchplayer',
            title = 'Üstünü Ara',
            icon = 'magnifying-glass',
            type = 'client',
            event = 'police:client:SearchPlayer',
            shouldClose = true
        }, {
            id = 'jailplayer',
            title = 'Hapise Gönder',
            icon = 'user-lock',
            type = 'client',
            event = 'police:client:JailPlayer',
            shouldClose = true
        }, {
            id = 'societyplayer',
            title = 'Kamu',
            icon = 'broom',
            type = 'client',
            event = 'police:client:SocietyPlayer',
            shouldClose = true
        }, {
            id = 'billplayer',
            title = 'Fatura Kes',
            icon = 'money-bill',
            type = 'client',
            event = 'g-billing:client:engageChooseBillViewMenu',
            shouldClose = true
        }}
    }, {
        id = 'policeobjects',
        title = 'Objeler',
        icon = 'road',
        items = {{
            id = 'spawnpion',
            title = 'Koni',
            icon = 'triangle-exclamation',
            type = 'client',
            event = 'police:client:spawnCone',
            shouldClose = false
        }, {
            id = 'spawnhek',
            title = 'Kapı',
            icon = 'torii-gate',
            type = 'client',
            event = 'police:client:spawnBarrier',
            shouldClose = false
        }, {
            id = 'spawnschotten',
            title = 'Hız Limit Uyarısı',
            icon = 'sign-hanging',
            type = 'client',
            event = 'police:client:spawnRoadSign',
            shouldClose = false
        }, {
            id = 'spawntent',
            title = 'Çadır',
            icon = 'campground',
            type = 'client',
            event = 'police:client:spawnTent',
            shouldClose = false
        }, {
            id = 'spawnverlichting',
            title = 'Aydınlatma',
            icon = 'lightbulb',
            type = 'client',
            event = 'police:client:spawnLight',
            shouldClose = false
        }, {
            id = 'spikestrip',
            title = 'Spike',
            icon = 'caret-up',
            type = 'client',
            event = 'police:client:SpawnSpikeStrip',
            shouldClose = false
        }, {
            id = 'deleteobject',
            title = 'Ojeyi Kaldır',
            icon = 'trash',
            type = 'client',
            event = 'police:client:deleteObject',
            shouldClose = false
        }, {
            id = 'billplayer',
            title = 'Fatura Kes',
            icon = 'money-bill',
            type = 'client',
            event = 'g-billing:client:engageChooseBillViewMenu',
            shouldClose = true
        }}
    }},
    ["davison"] = {{
        id = 'emergencybutton',
        title = 'Acil Durum Butonu',
        icon = 'bell',
        type = 'client',
        event = 'police:client:SendPoliceEmergencyAlert',
        shouldClose = true
    }, {
        id = 'escort2',
        title = 'Taşı',
        icon = 'user-group',
        type = 'client',
        event = 'tasi-event',
        shouldClose = true
    }, {
        id = 'playerinvehicle',
        title = 'Araca Bindir / İndir',
        icon = 'car-side',
        type = 'client',
        event = 'bindir-event',
        shouldClose = true
    }, {
        id = 'playeroutvehicle',
        title = 'Araç (kelepçe)',
        icon = 'car-side',
        type = 'client',
        event = 'bindir-kelepce',
        shouldClose = true
    }, {
        id = 'arackit',
        title = 'Araç Kilidi Kır',
        icon = 'anchor-lock',
        type = 'client',
        event = 'police:client:LockBroke',
        shouldClose = true
    }, {
        id = 'araccek',
        title = 'Araç Çek',
        icon = 'car',
        type = 'client',
        event = 'police:client:ImpoundVehicle',
        shouldClose = true
    }, {
        id = 'checkvehstatus',
        title = 'Çip Kontrolü',
        icon = 'circle-info',
        type = 'client',
        event = 'qb-tunerchip:client:TuneStatus',
        shouldClose = true
    }, {
        id = 'resethouse',
        title = 'Ev kilidini sıfırla',
        icon = 'key',
        type = 'client',
        event = 'qb-houses:client:ResetHouse',
        shouldClose = true
    }, {
        id = 'takedriverlicense',
        title = 'Sürücü Belgesini İptal Et',
        icon = 'id-card',
        type = 'client',
        event = 'police:client:SeizeDriverLicense',
        shouldClose = true
    }, {
        id = 'policeinteraction',
        title = 'Polis Eylemleri',
        icon = 'list-check',
        items = {{
            id = 'statuscheck',
            title = 'Durumunu Kontrol Et',
            icon = 'heart-pulse',
            type = 'client',
            event = 'hospital:client:CheckStatus',
            shouldClose = true
        }, {
            id = 'escort',
            title = 'Taşı',
            icon = 'user-group',
            type = 'client',
            event = 'tasi-event',
            shouldClose = true
        }, {
            id = 'searchplayer',
            title = 'Üstünü Ara',
            icon = 'magnifying-glass',
            type = 'client',
            event = 'police:client:SearchPlayer',
            shouldClose = true
        }, {
            id = 'jailplayer',
            title = 'Hapise Gönder',
            icon = 'user-lock',
            type = 'client',
            event = 'police:client:JailPlayer',
            shouldClose = true
        }, {
            id = 'societyplayer',
            title = 'Kamu',
            icon = 'broom',
            type = 'client',
            event = 'police:client:SocietyPlayer',
            shouldClose = true
        }, {
            id = 'billplayer',
            title = 'Fatura Kes',
            icon = 'money-bill',
            type = 'client',
            event = 'g-billing:client:engageChooseBillViewMenu',
            shouldClose = true
        }}
    }, {
        id = 'policeobjects',
        title = 'Objeler',
        icon = 'road',
        items = {{
            id = 'spawnpion',
            title = 'Koni',
            icon = 'triangle-exclamation',
            type = 'client',
            event = 'police:client:spawnCone',
            shouldClose = false
        }, {
            id = 'spawnhek',
            title = 'Kapı',
            icon = 'torii-gate',
            type = 'client',
            event = 'police:client:spawnBarrier',
            shouldClose = false
        }, {
            id = 'spawnschotten',
            title = 'Hız Limit Uyarısı',
            icon = 'sign-hanging',
            type = 'client',
            event = 'police:client:spawnRoadSign',
            shouldClose = false
        }, {
            id = 'spawntent',
            title = 'Çadır',
            icon = 'campground',
            type = 'client',
            event = 'police:client:spawnTent',
            shouldClose = false
        }, {
            id = 'spawnverlichting',
            title = 'Aydınlatma',
            icon = 'lightbulb',
            type = 'client',
            event = 'police:client:spawnLight',
            shouldClose = false
        }, {
            id = 'spikestrip',
            title = 'Spike',
            icon = 'caret-up',
            type = 'client',
            event = 'police:client:SpawnSpikeStrip',
            shouldClose = false
        }, {
            id = 'deleteobject',
            title = 'Ojeyi Kaldır',
            icon = 'trash',
            type = 'client',
            event = 'police:client:deleteObject',
            shouldClose = false
        }}
    }},
    ["mechanic1"] = {{
        id = 'billplayer',
        title = 'Fatura Kes',
        icon = 'money-bill',
        type = 'client',
        event = 'g-billing:client:engageChooseBillViewMenu',
        shouldClose = true
    }, {
        id = 'araccek',
        title = 'Araç Çek',
        icon = 'car',
        type = 'client',
        event = 'police:client:ImpoundVehicle',
        shouldClose = true
    }},
    ["mechanic2"] = {{
        id = 'billplayer',
        title = 'Fatura Kes',
        icon = 'money-bill',
        type = 'client',
        event = 'g-billing:client:engageChooseBillViewMenu',
        shouldClose = true
    }},
    ["mechanic3"] = {{
        id = 'billplayer',
        title = 'Fatura Kes',
        icon = 'money-bill',
        type = 'client',
        event = 'g-billing:client:engageChooseBillViewMenu',
        shouldClose = true
    }},
    ["mechanic4"] = {{
        id = 'billplayer',
        title = 'Fatura Kes',
        icon = 'money-bill',
        type = 'client',
        event = 'g-billing:client:engageChooseBillViewMenu',
        shouldClose = true
    }},
    ["mechanic5"] = {{
        id = 'billplayer',
        title = 'Fatura Kes',
        icon = 'money-bill',
        type = 'client',
        event = 'g-billing:client:engageChooseBillViewMenu',
        shouldClose = true
    }},
    ["mechanic6"] = {{
        id = 'billplayer',
        title = 'Fatura Kes',
        icon = 'money-bill',
        type = 'client',
        event = 'g-billing:client:engageChooseBillViewMenu',
        shouldClose = true
    }},
    ["mechanic7"] = {{
        id = 'billplayer',
        title = 'Fatura Kes',
        icon = 'money-bill',
        type = 'client',
        event = 'g-billing:client:engageChooseBillViewMenu',
        shouldClose = true
    }},
    ["mechanic8"] = {{
        id = 'billplayer',
        title = 'Fatura Kes',
        icon = 'money-bill',
        type = 'client',
        event = 'g-billing:client:engageChooseBillViewMenu',
        shouldClose = true
    }},
    ["mechanic9"] = {{
        id = 'billplayer',
        title = 'Fatura Kes',
        icon = 'money-bill',
        type = 'client',
        event = 'g-billing:client:engageChooseBillViewMenu',
        shouldClose = true
    }},
    ["mechanic10"] = {{
        id = 'billplayer',
        title = 'Fatura Kes',
        icon = 'money-bill',
        type = 'client',
        event = 'g-billing:client:engageChooseBillViewMenu',
        shouldClose = true
    }},
    ["mechanic11"] = {{
        id = 'billplayer',
        title = 'Fatura Kes',
        icon = 'money-bill',
        type = 'client',
        event = 'g-billing:client:engageChooseBillViewMenu',
        shouldClose = true
    }},
    ["mechanic12"] = {{
        id = 'billplayer',
        title = 'Fatura Kes',
        icon = 'money-bill',
        type = 'client',
        event = 'g-billing:client:engageChooseBillViewMenu',
        shouldClose = true
    }},
    ["mechanic13"] = {{
        id = 'billplayer',
        title = 'Fatura Kes',
        icon = 'money-bill',
        type = 'client',
        event = 'g-billing:client:engageChooseBillViewMenu',
        shouldClose = true
    }},
    ["mechanic14"] = {{
        id = 'billplayer',
        title = 'Fatura Kes',
        icon = 'money-bill',
        type = 'client',
        event = 'g-billing:client:engageChooseBillViewMenu',
        shouldClose = true
    }},
    ["mechanic15"] = {{
        id = 'billplayer',
        title = 'Fatura Kes',
        icon = 'money-bill',
        type = 'client',
        event = 'g-billing:client:engageChooseBillViewMenu',
        shouldClose = true
    }},
    ["mechanic16"] = {{
        id = 'billplayer',
        title = 'Fatura Kes',
        icon = 'money-bill',
        type = 'client',
        event = 'g-billing:client:engageChooseBillViewMenu',
        shouldClose = true
    }},
    ["sr"] = {{
        id = 'billplayer',
        title = 'Fatura Kes',
        icon = 'money-bill',
        type = 'client',
        event = 'g-billing:client:engageChooseBillViewMenu',
        shouldClose = true
    }},
    ["burgershot"] = {{
        id = 'billplayer',
        title = 'Fatura Kes',
        icon = 'money-bill',
        type = 'client',
        event = 'g-billing:client:engageChooseBillViewMenu',
        shouldClose = true
    }},
    ["tequila"] = {{
        id = 'billplayer',
        title = 'Fatura Kes',
        icon = 'money-bill',
        type = 'client',
        event = 'g-billing:client:engageChooseBillViewMenu',
        shouldClose = true
    }},
    ["japanese"] = {{
        id = 'billplayer',
        title = 'Fatura Kes',
        icon = 'money-bill',
        type = 'client',
        event = 'g-billing:client:engageChooseBillViewMenu',
        shouldClose = true
    }}
}

Config.TrunkClasses = {
    [0] = {
        allowed = true,
        x = 0.0,
        y = -1.5,
        z = 0.0
    }, -- Coupes
    [1] = {
        allowed = true,
        x = 0.0,
        y = -2.0,
        z = 0.0
    }, -- Sedans
    [2] = {
        allowed = true,
        x = 0.0,
        y = -1.0,
        z = 0.25
    }, -- SUVs
    [3] = {
        allowed = true,
        x = 0.0,
        y = -1.5,
        z = 0.0
    }, -- Coupes
    [4] = {
        allowed = true,
        x = 0.0,
        y = -2.0,
        z = 0.0
    }, -- Muscle
    [5] = {
        allowed = true,
        x = 0.0,
        y = -2.0,
        z = 0.0
    }, -- Sports Classics
    [6] = {
        allowed = true,
        x = 0.0,
        y = -2.0,
        z = 0.0
    }, -- Sports
    [7] = {
        allowed = true,
        x = 0.0,
        y = -2.0,
        z = 0.0
    }, -- Super
    [8] = {
        allowed = false,
        x = 0.0,
        y = -1.0,
        z = 0.25
    }, -- Motorcycles
    [9] = {
        allowed = true,
        x = 0.0,
        y = -1.0,
        z = 0.25
    }, -- Off-road
    [10] = {
        allowed = true,
        x = 0.0,
        y = -1.0,
        z = 0.25
    }, -- Industrial
    [11] = {
        allowed = true,
        x = 0.0,
        y = -1.0,
        z = 0.25
    }, -- Utility
    [12] = {
        allowed = true,
        x = 0.0,
        y = -1.0,
        z = 0.25
    }, -- Vans
    [13] = {
        allowed = true,
        x = 0.0,
        y = -1.0,
        z = 0.25
    }, -- Cycles
    [14] = {
        allowed = true,
        x = 0.0,
        y = -1.0,
        z = 0.25
    }, -- Boats
    [15] = {
        allowed = true,
        x = 0.0,
        y = -1.0,
        z = 0.25
    }, -- Helicopters
    [16] = {
        allowed = true,
        x = 0.0,
        y = -1.0,
        z = 0.25
    }, -- Planes
    [17] = {
        allowed = true,
        x = 0.0,
        y = -1.0,
        z = 0.25
    }, -- Service
    [18] = {
        allowed = true,
        x = 0.0,
        y = -1.0,
        z = 0.25
    }, -- Emergency
    [19] = {
        allowed = true,
        x = 0.0,
        y = -1.0,
        z = 0.25
    }, -- Military
    [20] = {
        allowed = true,
        x = 0.0,
        y = -1.0,
        z = 0.25
    }, -- Commercial
    [21] = {
        allowed = true,
        x = 0.0,
        y = -1.0,
        z = 0.25
    } -- Trains
}

Config.ExtrasEnabled = true

Config.Commands = {
    ["top"] = {
        Func = function()
            ToggleClothing("Top")
        end,
        Sprite = "top",
        Desc = "Take your shirt off/on",
        Button = 1,
        Name = "Torso"
    },
    ["gloves"] = {
        Func = function()
            ToggleClothing("gloves")
        end,
        Sprite = "gloves",
        Desc = "Take your gloves off/on",
        Button = 2,
        Name = "Gloves"
    },
    ["visor"] = {
        Func = function()
            ToggleProps("visor")
        end,
        Sprite = "visor",
        Desc = "Toggle hat variation",
        Button = 3,
        Name = "Visor"
    },
    ["bag"] = {
        Func = function()
            ToggleClothing("Bag")
        end,
        Sprite = "bag",
        Desc = "Opens or closes your bag",
        Button = 8,
        Name = "Bag"
    },
    ["shoes"] = {
        Func = function()
            ToggleClothing("Shoes")
        end,
        Sprite = "shoes",
        Desc = "Take your shoes off/on",
        Button = 5,
        Name = "Shoes"
    },
    ["vest"] = {
        Func = function()
            ToggleClothing("Vest")
        end,
        Sprite = "vest",
        Desc = "Take your vest off/on",
        Button = 14,
        Name = "Vest"
    },
    ["hair"] = {
        Func = function()
            ToggleClothing("hair")
        end,
        Sprite = "hair",
        Desc = "Put your hair up/down/in a bun/ponytail.",
        Button = 7,
        Name = "Hair"
    },
    ["hat"] = {
        Func = function()
            ToggleProps("Hat")
        end,
        Sprite = "hat",
        Desc = "Take your hat off/on",
        Button = 4,
        Name = "Hat"
    },
    ["glasses"] = {
        Func = function()
            ToggleProps("Glasses")
        end,
        Sprite = "glasses",
        Desc = "Take your glasses off/on",
        Button = 9,
        Name = "Glasses"
    },
    ["ear"] = {
        Func = function()
            ToggleProps("Ear")
        end,
        Sprite = "ear",
        Desc = "Take your ear accessory off/on",
        Button = 10,
        Name = "Ear"
    },
    ["neck"] = {
        Func = function()
            ToggleClothing("Neck")
        end,
        Sprite = "neck",
        Desc = "Take your neck accessory off/on",
        Button = 11,
        Name = "Neck"
    },
    ["watch"] = {
        Func = function()
            ToggleProps("Watch")
        end,
        Sprite = "watch",
        Desc = "Take your watch off/on",
        Button = 12,
        Name = "Watch",
        Rotation = 5.0
    },
    ["bracelet"] = {
        Func = function()
            ToggleProps("Bracelet")
        end,
        Sprite = "bracelet",
        Desc = "Take your bracelet off/on",
        Button = 13,
        Name = "Bracelet"
    },
    ["mask"] = {
        Func = function()
            ToggleClothing("Mask")
        end,
        Sprite = "mask",
        Desc = "Take your mask off/on",
        Button = 6,
        Name = "Mask"
    }
}

local bags = {
    [40] = true,
    [41] = true,
    [44] = true,
    [45] = true
}

Config.ExtraCommands = {
    ["pants"] = {
        Func = function()
            ToggleClothing("Pants", true)
        end,
        Sprite = "pants",
        Desc = "Take your pants off/on",
        Name = "Pants",
        OffsetX = -0.04,
        OffsetY = 0.0
    },
    ["shirt"] = {
        Func = function()
            ToggleClothing("Shirt", true)
        end,
        Sprite = "shirt",
        Desc = "Take your shirt off/on",
        Name = "shirt",
        OffsetX = 0.04,
        OffsetY = 0.0
    },
    ["reset"] = {
        Func = function()
            if not ResetClothing(true) then
                Notify('Nothing To Reset', 'error')
            end
        end,
        Sprite = "reset",
        Desc = "Revert everything back to normal",
        Name = "reset",
        OffsetX = 0.12,
        OffsetY = 0.2,
        Rotate = true
    },
    ["bagoff"] = {
        Func = function()
            ToggleClothing("Bagoff", true)
        end,
        Sprite = "bagoff",
        SpriteFunc = function()
            local Bag = GetPedDrawableVariation(PlayerPedId(), 5)
            local BagOff = LastEquipped["Bagoff"]
            if LastEquipped["Bagoff"] then
                if bags[BagOff.Drawable] then
                    return "bagoff"
                else
                    return "paraoff"
                end
            end
            if Bag ~= 0 then
                if bags[Bag] then
                    return "bagoff"
                else
                    return "paraoff"
                end
            else
                return false
            end
        end,
        Desc = "Take your bag off/on",
        Name = "bagoff",
        OffsetX = -0.12,
        OffsetY = 0.2
    }
}
