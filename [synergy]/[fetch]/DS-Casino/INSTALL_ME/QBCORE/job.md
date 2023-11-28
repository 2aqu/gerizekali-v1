INSERT INTO qb-core/shared/jobs.lua

['casino'] = {
    label = 'Casino',
    defaultDuty = true,
    offDutyPay = false,
    grades = {
        ['0'] = { 
            name = 'Employee', 
            payment = 50 
        },
        ['1'] = { 
            name = 'Boss', 
            isboss = true, 
            payment = 100 
        },
    },
},