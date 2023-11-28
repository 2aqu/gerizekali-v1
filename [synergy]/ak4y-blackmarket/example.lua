-- ADD TASK COUNT FOR DAILY TASKS

-- FROM CLIENT SIDE
-- TriggerServerEvent('ak4y-blackmarket:taskCountAdd', taskId, count)

-- FROM SERVER SIDE 
-- TriggerClientEvent('ak4y-blackmarket:addtaskcount', source, taskId, count)

---------------------------------------------

-- ADD EXPERIENCE :

-- FROM CLIENT SIDE; TriggerServerEvent('ak4y-blackmarket:addXP', 1000) -- 1000 xp amount to be added 

---------------------------------------------

-- TASK INTEGRATION:

-- Check task. it says type 'tasktry' in chat and its taskId = 1
-- {taskId = 1, requiredcount = 2, rewardXP = 1500, taskTitle = "Type 'tasktry' in chat", taskDescription = "Lorem ipsum dolor sit amet consectetur adipisicing elit. Odit quibusdam accusamus tempora officia perspiciatis.Veritatis dolorum dolore, amet corporis maiores tempore quaerat similique possimus, ipsam modi id labore sed sequi cumerror recusandae? Ipsum, fugiat."},

-- RegisterCommand('tasktry', function()
--     -- Here is client
--     -- first param 1, because taskId = 1
--     -- second param 1, because i will add just 1 count. if you type 2 you will add 2 count to task
--     TriggerServerEvent('ak4y-blackmarket:taskCountAdd', 1, 1)
-- end)

