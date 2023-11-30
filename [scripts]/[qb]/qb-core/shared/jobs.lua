QBShared = QBShared or {}
QBShared.ForceJobDefaultDutyAtLogin = true -- true: Force duty state to jobdefaultDuty | false: set duty state from database last saved
QBShared.QBJobsStatus = false              -- true: integrate qb-jobs into the whole of qb-core | false: treat qb-jobs as an add-on resource.
QBShared.Jobs = {}                         -- All of below has been migrated into qb-jobs
if QBShared.QBJobsStatus then return end
QBShared.Jobs = {
    ['unemployed'] = {
        label = 'Sivil',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'İşsiz',
                payment = 10
            },
        },
    },
    ['police'] = {
        label = 'Polis',
        type = "leo",
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Cadet',
                payment = 1000
            },
            ['1'] = {
                name = 'Officer 1',
                payment = 1200
            },
            ['2'] = {
                name = 'Officer 2',
                payment = 1300
            },
            ['3'] = {
                name = 'Officer 3',
                payment = 1400
            },
            ['4'] = {
                name = 'Officer 3+1',
                payment = 1500
            },
            ['5'] = {
                name = 'Sergeant',
                payment = 1600
            },
            ['6'] = {
                name = 'Sergeant II',
                payment = 1700
            },
            ['7'] = {
                name = 'Lieutenant',
                payment = 1800
            },
            ['8'] = {
                name = 'Lieutenant II',
                payment = 1900
            },
            ['9'] = {
                name = 'Captain',
                payment = 2000
            },
            ['10'] = {
                name = 'Commander',
                payment = 2100
            },
            ['11'] = {
                name = 'Deputy Chief',
                isboss = true,
                payment = 2200
            },
            ['12'] = {
                name = 'Assistan Chief',
                isboss = true,
                payment = 2300
            },
            ['13'] = {
                name = 'Chief',
                isboss = true,
                payment = 2400
            },
        },
    },
    ['fbi'] = {
        label = 'FBI',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Cadet',
                payment = 1000
            },
            ['1'] = {
                name = 'Officer 1',
                payment = 1200
            },
            ['2'] = {
                name = 'Officer 2',
                payment = 1300
            },
            ['3'] = {
                name = 'Officer 3',
                payment = 1400
            },
            ['4'] = {
                name = 'Officer 3+1',
                payment = 1500
            },
            ['5'] = {
                name = 'Sergeant',
                payment = 1600
            },
            ['6'] = {
                name = 'Sergeant II',
                payment = 1700
            },
            ['7'] = {
                name = 'Lieutenant',
                payment = 1800
            },
            ['8'] = {
                name = 'Lieutenant II',
                payment = 1900
            },
            ['9'] = {
                name = 'Captain',
                payment = 2000
            },
            ['10'] = {
                name = 'Commander',
                payment = 2100
            },
            ['11'] = {
                name = 'Deputy Chief',
                isboss = true,
                payment = 2200
            },
            ['12'] = {
                name = 'Assistan Chief',
                isboss = true,
                payment = 2300
            },
            ['13'] = {
                name = 'Chief',
                isboss = true,
                payment = 2400
            },
        },
    },
    ['state'] = {
        label = 'State',
        type = "leo",
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Cadet',
                payment = 1000
            },
            ['1'] = {
                name = 'Officer 1',
                payment = 1200
            },
            ['2'] = {
                name = 'Officer 2',
                payment = 1300
            },
            ['3'] = {
                name = 'Officer 3',
                payment = 1400
            },
            ['4'] = {
                name = 'Officer 3+1',
                payment = 1500
            },
            ['5'] = {
                name = 'Sergeant',
                payment = 1600
            },
            ['6'] = {
                name = 'Sergeant II',
                payment = 1700
            },
            ['7'] = {
                name = 'Lieutenant',
                payment = 1800
            },
            ['8'] = {
                name = 'Lieutenant II',
                payment = 1900
            },
            ['9'] = {
                name = 'Captain',
                payment = 2000
            },
            ['10'] = {
                name = 'Commander',
                payment = 2100
            },
            ['11'] = {
                name = 'Deputy Chief',
                isboss = true,
                payment = 2200
            },
            ['12'] = {
                name = 'Assistan Chief',
                isboss = true,
                payment = 2300
            },
            ['13'] = {
                name = 'Chief',
                isboss = true,
                payment = 2400
            },
        },
    },
    ['sheriff'] = {
        label = 'Şerif',
        type = "leo",
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Cadet',
                payment = 1000
            },
            ['1'] = {
                name = 'Officer 1',
                payment = 1200
            },
            ['2'] = {
                name = 'Officer 2',
                payment = 1300
            },
            ['3'] = {
                name = 'Officer 3',
                payment = 1400
            },
            ['4'] = {
                name = 'Officer 3+1',
                payment = 1500
            },
            ['5'] = {
                name = 'Sergeant',
                payment = 1600
            },
            ['6'] = {
                name = 'Sergeant II',
                payment = 1700
            },
            ['7'] = {
                name = 'Lieutenant',
                payment = 1800
            },
            ['8'] = {
                name = 'Lieutenant II',
                payment = 1900
            },
            ['9'] = {
                name = 'Captain',
                payment = 2000
            },
            ['10'] = {
                name = 'Commander',
                payment = 2100
            },
            ['11'] = {
                name = 'Deputy Chief',
                isboss = true,
                payment = 2200
            },
            ['12'] = {
                name = 'Assistan Chief',
                isboss = true,
                payment = 2300
            },
            ['13'] = {
                name = 'Chief',
                isboss = true,
                payment = 2400
            },
        },
    },
    ['davison'] = {
        label = 'D Şerif',
        type = "leo",
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Cadet',
                payment = 1000
            },
            ['1'] = {
                name = 'Officer 1',
                payment = 1200
            },
            ['2'] = {
                name = 'Officer 2',
                payment = 1300
            },
            ['3'] = {
                name = 'Officer 3',
                payment = 1400
            },
            ['4'] = {
                name = 'Officer 3+1',
                payment = 1500
            },
            ['5'] = {
                name = 'Sergeant',
                payment = 1600
            },
            ['6'] = {
                name = 'Sergeant II',
                payment = 1700
            },
            ['7'] = {
                name = 'Lieutenant',
                payment = 1800
            },
            ['8'] = {
                name = 'Lieutenant II',
                payment = 1900
            },
            ['9'] = {
                name = 'Captain',
                payment = 2000
            },
            ['10'] = {
                name = 'Commander',
                payment = 2100
            },
            ['11'] = {
                name = 'Deputy Chief',
                isboss = true,
                payment = 2200
            },
            ['12'] = {
                name = 'Assistan Chief',
                isboss = true,
                payment = 2300
            },
            ['13'] = {
                name = 'Chief',
                isboss = true,
                payment = 2400
            },
        },
    },
    ['ambulance'] = {
        label = 'EMS',
        type = "ems",
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Stajyer',
                payment = 900
            },
            ['1'] = {
                name = 'Pratisyen',
                payment = 1000
            },
            ['2'] = {
                name = 'Uzman',
                payment = 1200
            },
            ['3'] = {
                name = 'Operatör',
                payment = 1500
            },
            ['4'] = {
                name = 'Yardımcı Doçent',
                payment = 1600
            },
            ['5'] = {
                name = 'Doçent',
                payment = 1700
            },
            ['6'] = {
                name = 'Profesör',
                payment = 1800
            },
            ['7'] = {
                name = 'Ordinaryus',
                payment = 1900
            },
            ['8'] = {
                name = 'Başhekim Yardımcısı',
                payment = 2000
            },
            ['9'] = {
                name = 'Başhekim',
                isboss = true,
                payment = 2500
            },
        },
    },
    ['realestate'] = {
        label = 'Emlakçı',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Sekreter',
                payment = 10
            },
            ['1'] = {
                name = 'Çalışan',
                payment = 20
            },
            ['2'] = {
                name = 'Muhasebeci',
                payment = 30
            },
            ['3'] = {
                name = 'Müdür Yardımcısı',
                payment = 40
            },
            ['4'] = {
                name = 'Patron',
                isboss = true,
                payment = 50
            },
        },
    },
    ['taxi'] = {
        label = 'Taksi',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Sekreter',
                payment = 1000
            },
            ['1'] = {
                name = 'Çalışan',
                payment = 1000
            },
            ['2'] = {
                name = 'Muhasebeci',
                payment = 1200
            },
            ['3'] = {
                name = 'Müdür Yardımcısı',
                payment = 1500
            },
            ['4'] = {
                name = 'Patron',
                isboss = true,
                payment = 1600
            },
        },
    },
    ['bus'] = {
        label = 'Otobüs',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Sürücü',
                payment = 50
            },
        },
    },
    ['cardealer'] = {
        label = 'Galerici',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Çalışan',
                payment = 10
            },
            ['1'] = {
                name = 'Satış Elemanı',
                payment = 20
            },
            ['2'] = {
                name = 'Müdür Yardımcısı',
                payment = 30
            },
            ['3'] = {
                name = 'Müdür',
                payment = 40
            },
            ['4'] = {
                name = 'Patron',
                isboss = true,
                payment = 50

            },
        },
    },
    ['mechanicmc'] = {
        label = 'Sons Of Anarchy',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Çırak',
                payment = 10
            },
            ['1'] = {
                name = 'Usta',
                payment = 20
            },
            ['2'] = {
                name = 'Ustabaşı',
                payment = 30
            },
            ['3'] = {
                name = 'Müdür',
                payment = 40
            },
            ['4'] = {
                name = 'Patron',
                isboss = true,
                payment = 50
            },
        },
    },
    ['mechanic1'] = {
        label = 'Mekanik',
        type = "underground",
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Çırak',
                payment = 10
            },
            ['1'] = {
                name = 'Usta',
                payment = 20
            },
            ['2'] = {
                name = 'Ustabaşı',
                payment = 30
            },
            ['3'] = {
                name = 'Müdür',
                isboss = true,
                payment = 40
            },
            ['4'] = {
                name = 'Patron',
                isboss = true,
                payment = 50
            },
        },
    },
    ['mechanic2'] = {
        label = 'Mekanik',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Çırak',
                payment = 10
            },
            ['1'] = {
                name = 'Usta',
                payment = 20
            },
            ['2'] = {
                name = 'Ustabaşı',
                payment = 30
            },
            ['3'] = {
                name = 'Müdür',
                payment = 40
            },
            ['4'] = {
                name = 'Patron',
                isboss = true,
                payment = 50
            },
        },
    },
    ['mechanic3'] = {
        label = 'Mekanik',
        type = "underground",
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Çırak',
                payment = 10
            },
            ['1'] = {
                name = 'Usta',
                payment = 20
            },
            ['2'] = {
                name = 'Ustabaşı',
                payment = 30
            },
            ['3'] = {
                name = 'Müdür',
                payment = 40
            },
            ['4'] = {
                name = 'Patron',
                isboss = true,
                payment = 50
            },
        },
    },
    ['mechanic4'] = {
        label = 'Mekanik',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Çırak',
                payment = 10
            },
            ['1'] = {
                name = 'Usta',
                payment = 20
            },
            ['2'] = {
                name = 'Ustabaşı',
                payment = 30
            },
            ['3'] = {
                name = 'Müdür',
                payment = 40
            },
            ['4'] = {
                name = 'Patron',
                isboss = true,
                payment = 50
            },
        },
    },
    ['mechanic5'] = {
        label = 'Mekanik',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Çırak',
                payment = 10
            },
            ['1'] = {
                name = 'Usta',
                payment = 20
            },
            ['2'] = {
                name = 'Ustabaşı',
                payment = 30
            },
            ['3'] = {
                name = 'Müdür',
                payment = 40
            },
            ['4'] = {
                name = 'Patron',
                isboss = true,
                payment = 50
            },
        },
    },
    ['mechanic6'] = {
        label = 'Mekanik',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Çırak',
                payment = 10
            },
            ['1'] = {
                name = 'Usta',
                payment = 20
            },
            ['2'] = {
                name = 'Ustabaşı',
                payment = 30
            },
            ['3'] = {
                name = 'Müdür',
                payment = 40
            },
            ['4'] = {
                name = 'Patron',
                isboss = true,
                payment = 50
            },
        },
    },
    ['mechanic7'] = {
        label = 'Mekanik',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Çırak',
                payment = 10
            },
            ['1'] = {
                name = 'Usta',
                payment = 20
            },
            ['2'] = {
                name = 'Ustabaşı',
                payment = 30
            },
            ['3'] = {
                name = 'Müdür',
                payment = 40
            },
            ['4'] = {
                name = 'Patron',
                isboss = true,
                payment = 50
            },
        },
    },
    ['mechanic8'] = {
        label = 'Mekanik',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Çırak',
                payment = 10
            },
            ['1'] = {
                name = 'Usta',
                payment = 20
            },
            ['2'] = {
                name = 'Ustabaşı',
                payment = 30
            },
            ['3'] = {
                name = 'Müdür',
                payment = 40
            },
            ['4'] = {
                name = 'Patron',
                isboss = true,
                payment = 50
            },
        },
    },
    ['mechanic9'] = {
        label = 'Mekanik',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Çırak',
                payment = 10
            },
            ['1'] = {
                name = 'Usta',
                payment = 20
            },
            ['2'] = {
                name = 'Ustabaşı',
                payment = 30
            },
            ['3'] = {
                name = 'Müdür',
                payment = 40
            },
            ['4'] = {
                name = 'Patron',
                isboss = true,
                payment = 50
            },
        },
    },
    ['mechanic10'] = {
        label = 'Mekanik',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Çırak',
                payment = 10
            },
            ['1'] = {
                name = 'Usta',
                payment = 20
            },
            ['2'] = {
                name = 'Ustabaşı',
                payment = 30
            },
            ['3'] = {
                name = 'Müdür',
                payment = 40
            },
            ['4'] = {
                name = 'Patron',
                isboss = true,
                payment = 50
            },
        },
    },
    ['gmg'] = {
        label = 'Felss Mekanik',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Çırak',
                payment = 10
            },
            ['1'] = {
                name = 'Usta',
                payment = 20
            },
            ['2'] = {
                name = 'Ustabaşı',
                payment = 30
            },
            ['3'] = {
                name = 'Müdür',
                payment = 40
            },
            ['4'] = {
                name = 'Patron',
                isboss = true,
                payment = 50
            },
        },
    },
    ['mechanic12'] = {
        label = 'Mekanik',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Çırak',
                payment = 10
            },
            ['1'] = {
                name = 'Usta',
                payment = 20
            },
            ['2'] = {
                name = 'Ustabaşı',
                payment = 30
            },
            ['3'] = {
                name = 'Müdür',
                payment = 40
            },
            ['4'] = {
                name = 'Patron',
                isboss = true,
                payment = 50
            },
        },
    },
    ['mechanic13'] = {
        label = 'FK Community',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Çırak',
                payment = 10
            },
            ['1'] = {
                name = 'Usta',
                payment = 20
            },
            ['2'] = {
                name = 'Ustabaşı',
                payment = 30
            },
            ['3'] = {
                name = 'Müdür',
                payment = 40
            },
            ['4'] = {
                name = 'Patron',
                isboss = true,
                payment = 50
            },
        },
    },
    ['mechanic14'] = {
        label = 'Mekanik',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Çırak',
                payment = 10
            },
            ['1'] = {
                name = 'Usta',
                payment = 20
            },
            ['2'] = {
                name = 'Ustabaşı',
                payment = 30
            },
            ['3'] = {
                name = 'Müdür',
                payment = 40
            },
            ['4'] = {
                name = 'Patron',
                isboss = true,
                payment = 50
            },
        },
    },
    ['mechanic15'] = {
        label = 'Mekanik',
        type = "underground",
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Çırak',
                payment = 10
            },
            ['1'] = {
                name = 'Usta',
                payment = 20
            },
            ['2'] = {
                name = 'Ustabaşı',
                payment = 30
            },
            ['3'] = {
                name = 'Müdür',
                payment = 40
            },
            ['4'] = {
                name = 'Patron',
                isboss = true,
                payment = 50
            },
        },
    },
    ['mechanic16'] = {
        label = 'Shapi Mekanik',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Çırak',
                payment = 10
            },
            ['1'] = {
                name = 'Usta',
                payment = 20
            },
            ['2'] = {
                name = 'Ustabaşı',
                payment = 30
            },
            ['3'] = {
                name = 'Müdür',
                payment = 40
            },
            ['4'] = {
                name = 'Patron',
                isboss = true,
                payment = 50
            },
        },
    },
    ['uwu'] = {
        label = 'UwU Cat Cafe',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Barmen',
                payment = 0
            },
            ['1'] = {
                name = 'Çalışan',
                payment = 0
            },
            ['2'] = {
                name = 'Müdür Yardımcısı',
                payment = 0
            },
            ['3'] = {
                name = 'Müdür',
                payment = 0
            },
            ['4'] = {
                name = 'Patron',
                isboss = true,
                payment = 0
            },
        },
    },
    ['cockatoos'] = {
        label = 'Cockatoos',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Barmen',
                payment = 0
            },
            ['1'] = {
                name = 'Çalışan',
                payment = 0
            },
            ['2'] = {
                name = 'Müdür Yardımcısı',
                payment = 0
            },
            ['3'] = {
                name = 'Müdür',
                payment = 0
            },
            ['4'] = {
                name = 'Patron',
                isboss = true,
                payment = 0
            },
        },
    },
    ['reporter'] = {
        label = 'Haberci',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Stajyer',
                payment = 200
            },
            ['1'] = {
                name = 'Personel',
                payment = 300
            },
            ['2'] = {
                name = 'Muhbir',
                payment = 450
            },
            ['3'] = {
                name = 'Editör',
                payment = 500
            },
            ['4'] = {
                name = 'Patron',
                isboss = true,
                payment = 600
            },
        },

    },
    ['trucker'] = {
        label = 'Lojistik',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Sürücü',
                payment = 10
            },
        },
    },
    ['hotdog'] = {
        label = 'Hotdog',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Hotdog',
                payment = 50
            },
        },
    },
    ['pearls'] = {
        label = 'Pearls',
        type = "pearls",
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Çalışan',
                payment = 50
            },
            ['1'] = {
                name = 'Patron',
                isboss = true,
                payment = 150
            },
        },
    },
    ['burgershot'] = {
        label = 'Burger Shot',
        type = "burgershot",
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Çalışan',
                payment = 50
            },
            ['1'] = {
                name = '99 LEVEL BOSS',
                isboss = true,
                payment = 150
            },
        },
    },
    ['yellowjack'] = {
        label = 'Yellow Jack',
        type = "yellowjack",
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Üye',
                payment = 0
            },
            ['1'] = {
                name = 'Lider',
                isboss = true,
                payment = 0
            },
        },
    },
    ['bahama'] = {
        label = 'Bahama',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Çalışan',
                payment = 0
            },
            ['1'] = {
                name = 'Patron',
                isboss = true,
                payment = 0
            },
        },
    },
    ['ranger'] = {
        label = 'Ranger',
        type = "leo",
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Cadet',
                payment = 1000
            },
            ['1'] = {
                name = 'Officer 1',
                payment = 1200
            },
            ['2'] = {
                name = 'Officer 2',
                payment = 1300
            },
            ['3'] = {
                name = 'Officer 3',
                payment = 1400
            },
            ['4'] = {
                name = 'Officer 3+1',
                payment = 1500
            },
            ['5'] = {
                name = 'Sergeant',
                payment = 1600
            },
            ['6'] = {
                name = 'Sergeant II',
                payment = 1700
            },
            ['7'] = {
                name = 'Lieutenant',
                payment = 1800
            },
            ['8'] = {
                name = 'Lieutenant II',
                payment = 1900
            },
            ['9'] = {
                name = 'Captain',
                payment = 2000
            },
            ['10'] = {
                name = 'Commander',
                payment = 2100
            },
            ['11'] = {
                name = 'Deputy Chief',
                isboss = true,
                payment = 2200
            },
            ['12'] = {
                name = 'Assistan Chief',
                isboss = true,
                payment = 2300
            },
            ['13'] = {
                name = 'Chief',
                isboss = true,
                payment = 2400
            },
        },
    },
    ['doj'] = {
        label = 'DOJ',
        type = "leo",
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Avukat',
                payment = 900
            },
            ['1'] = {
                name = 'U.S Marshall',
                payment = 1050
            },
            ['2'] = {
                name = 'Savcı',
                payment = 1100
            },
            ['3'] = {
                name = 'Yargıç',
                isboss = true,
                payment = 1200
            },
            ['13'] = {
                name = 'Baş Savcı',
                isboss = true,
                payment = 1300
            },
        },
    },
    ['tequila'] = {
        label = 'Tequi-la-la',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Çalışan',
                payment = 0
            },
            ['1'] = {
                name = 'Patron',
                isboss = true,
                payment = 0
            },
        },
    },
    ['vpd'] = {
        label = 'Vinewood Polis',
        type = "leo",
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Cadet',
                payment = 1000
            },
            ['1'] = {
                name = 'Officer 1',
                payment = 1200
            },
            ['2'] = {
                name = 'Officer 2',
                payment = 1300
            },
            ['3'] = {
                name = 'Officer 3',
                payment = 1400
            },
            ['4'] = {
                name = 'Officer 3+1',
                payment = 1500
            },
            ['5'] = {
                name = 'Sergeant',
                payment = 1600
            },
            ['6'] = {
                name = 'Sergeant II',
                payment = 1700
            },
            ['7'] = {
                name = 'Lieutenant',
                payment = 1800
            },
            ['8'] = {
                name = 'Lieutenant II',
                payment = 1900
            },
            ['9'] = {
                name = 'Captain',
                payment = 2000
            },
            ['10'] = {
                name = 'Commander',
                payment = 2100
            },
            ['11'] = {
                name = 'Deputy Chief',
                isboss = true,
                payment = 2200
            },
            ['12'] = {
                name = 'Assistan Chief',
                isboss = true,
                payment = 2300
            },
            ['13'] = {
                name = 'Chief',
                isboss = true,
                payment = 2400
            },
        },
    },
    ['dppd'] = {
        label = 'DPPD',
        type = "leo",
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Cadet',
                payment = 1000
            },
            ['1'] = {
                name = 'Officer 1',
                payment = 1200
            },
            ['2'] = {
                name = 'Officer 2',
                payment = 1300
            },
            ['3'] = {
                name = 'Officer 3',
                payment = 1400
            },
            ['4'] = {
                name = 'Officer 3+1',
                payment = 1500
            },
            ['5'] = {
                name = 'Sergeant',
                payment = 1600
            },
            ['6'] = {
                name = 'Sergeant II',
                payment = 1700
            },
            ['7'] = {
                name = 'Lieutenant',
                payment = 1800
            },
            ['8'] = {
                name = 'Lieutenant II',
                payment = 1900
            },
            ['9'] = {
                name = 'Captain',
                payment = 2000
            },
            ['10'] = {
                name = 'Commander',
                payment = 2100
            },
            ['11'] = {
                name = 'Deputy Chief',
                isboss = true,
                payment = 2200
            },
            ['12'] = {
                name = 'Assistan Chief',
                isboss = true,
                payment = 2300
            },
            ['13'] = {
                name = 'Chief',
                isboss = true,
                payment = 2400
            },
        },
    },
    ["pizzeria"] = {
        label = "Pizzeria",
        offDutyPay = false,
        defaultDuty = false,
        grades = {
            ['0'] = {
                name = 'Çalışan',
                payment = 30,
            },
            ['1'] = {
                name = 'Patron',
                isboss = true,
                payment = 130,
            },
        }
    },
    ["tuner"] = {
        label = "Odin Mekanik",
        offDutyPay = false,
        defaultDuty = true,
        grades = {
            ['0'] = {
                name = 'Çalışan',
                payment = 0,
            },
            ['1'] = {
                name = 'Patron',
                isboss = true,
                payment = 0,
            },
        }
    },
    ["pdm2"] = {
        label = "Rich Autos",
        offDutyPay = false,
        defaultDuty = true,
        grades = {
            ['0'] = {
                name = 'Çalışan',
                payment = 0,
            },
            ['1'] = {
                name = 'Patron',
                isboss = true,
                payment = 0,
            },
        }
    },
    ["irishpub"] = {
        label = "Irish Pub",
        offDutyPay = false,
        defaultDuty = true,
        grades = {
            ['0'] = {
                name = 'Çalışan',
                payment = 30,
            },
            ['1'] = {
                name = 'Patron',
                isboss = true,
                payment = 130,
            },
        }
    },
    ["serendipity"] = {
        label = "Serendipity",
        offDutyPay = false,
        defaultDuty = true,
        grades = {
            ['0'] = {
                name = 'Çalışan',
                payment = 0,
            },
            ['1'] = {
                name = 'Müdür',
                isboss = true,
                payment = 0,
            },
            ['2'] = {
                name = 'Patron',
                isboss = true,
                payment = 0,
            },
        }
    },
    ["wutang"] = {
        label = "Wu-Tang",
        offDutyPay = false,
        defaultDuty = true,
        grades = {
            ['0'] = {
                name = 'Çalışan',
                payment = 0,
            },
            ['1'] = {
                name = 'Patron',
                isboss = true,
                payment = 0,
            },
        }
    },
    ["luxery"] = {
        label = "Rich Cafe",
        offDutyPay = false,
        defaultDuty = true,
        grades = {
            ['0'] = {
                name = 'Çalışan',
                payment = 0,
            },
            ['1'] = {
                name = 'Patron',
                isboss = true,
                payment = 0,
            },
        }
    },

    ["custom"] = {
        label = "Custom Cafe",
        offDutyPay = false,
        defaultDuty = true,
        grades = {
            ['0'] = {
                name = 'Çalışan',
                payment = 0,
            },
            ['1'] = {
                name = 'Patron',
                isboss = true,
                payment = 0,
            },
        }
    },

    ["japanese"] = {
        label = "NoMercy Mekanik",
        type = "underground",
        offDutyPay = false,
        defaultDuty = true,
        grades = {
            ['0'] = {
                name = 'Çalışan',
                payment = 0,
            },
            ['1'] = {
                name = 'Patron',
                isboss = true,
                payment = 0,
            },
        }
    },
    ["unicorn"] = {
        label = "Vanilla Unicorn",
        offDutyPay = false,
        defaultDuty = true,
        grades = {
            ['0'] = {
                name = 'Çalışan',
                payment = 0,
            },
            ['1'] = {
                name = 'Patron',
                isboss = true,
                payment = 0,
            },
        }
    },
    ["tpc"] = {
        label = "Two Planets Coffee",
        offDutyPay = false,
        defaultDuty = true,
        grades = {
            ['0'] = {
                name = 'Çalışan',
                payment = 0,
            },
            ['1'] = {
                name = 'Patron',
                isboss = true,
                payment = 0,
            },
        }
    },
    ['casino'] = {
        label = 'Casino',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Çalışan',
                payment = 0,
            },
            ['1'] = {
                name = 'Patron',
                isboss = true,
                payment = 0,
            },
        },
    },
    ['redline'] = {
        label = 'Redline Mekanik',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Çalışan',
                payment = 0,
            },
            ['1'] = {
                name = 'Patron',
                isboss = true,
                payment = 0,
            },
        },
    },
    ['realestate2'] = {
        label = 'Emlakçı 2',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Çalışan',
                payment = 0,
            },
            ['1'] = {
                name = 'Patron',
                isboss = true,
                payment = 0,
            },
        },
    },
    ['psikolog'] = {
        label = 'Psikolog',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Çalışan',
                payment = 150,
            },
            ['1'] = {
                name = 'Psikolog',
                isboss = true,
                payment = 200,
            },
        },
    },
    ['nail'] = {
        label = "Nail Shop",
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Employed',
                payment = 75
            },
            ['1'] = {
                name = 'Submanager',
                payment = 100
            },
            ['2'] = {
                name = 'Manager',
                payment = 150
            },
            ['3'] = {
                name = 'Boss',
                payment = 200,
                isboss = true
            },
        },
    },
    ['rod'] = {
        label = 'Ravens Of Doom',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Çalışan',
                payment = 0,
            },
            ['1'] = {
                name = 'Boss',
                isboss = true,
                payment = 0,
            },
        },
    },
    ['lost'] = {
        label = 'The Lost MC',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Üye',
                payment = 0,
            },
            ['1'] = {
                name = 'President',
                isboss = true,
                payment = 0,
            },
        },
    },
    ['galaxy'] = {
        label = 'Galaxy Bar',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Çalışan',
                payment = 0,
            },
            ['1'] = {
                name = 'Patron',
                isboss = true,
                payment = 0,
            },
        },
    },
    ['garbage'] = {
        label = 'Çöpçü',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Toplayıcı',
                payment = 50
            },
        },
    },
    ['bong'] = {
        label = 'Bong',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Çalışan',
                payment = 0,
            },
            ['1'] = {
                name = 'Patron',
                isboss = true,
                payment = 0,
            },
        },
    },

}
