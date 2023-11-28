if Config.framework == "esx" then
    tgiCore.core.RegisterCommand({'setjobamount'}, 'admin', function(xPlayer, args, showError)
        setjobamountCMD(xPlayer.source, args.playerid, args.jobname, args.amount)
    end, false, {
        help = "Set Player Job Amount",
        arguments = {
            {name = 'playerid', help = 'Player Server ID', type = 'any'},
            {name = 'jobname', help = 'Job Name [farmer, construction, truck, diver]', type = 'any'},
            {name = 'amount', help = 'Job Amount', type = 'any'}
        },
    })

    tgiCore.core.RegisterCommand({'resetjobcd'}, 'admin', function(xPlayer, args, showError)
        resetjobcdCMD(xPlayer.source, args.playerid)
    end, false, {
        help = "Reset Player Job Cd",
        arguments = {
            {name = 'playerid', help = 'Player ID', type = 'any'},
        },
    })
else
    tgiCore.core.Commands.Add("setjobamount", "Set Player Job Amount", {{name="playerid", help="Player Server ID"}, {name="jobname", help="[farmer, construction, truck, diver]"}, {name="amount", help="Job Amount"}}, true, function(source, args) -- name, help, arguments, argsrequired,  end sonuna persmission
        setjobamountCMD(source, args[1], args[2], args[3])
    end, "god")

    tgiCore.core.Commands.Add("resetjobcd", "Reset Player Job Cd", {{name="playerid", help="Player Server ID"}}, true, function(source, args) -- name, help, arguments, argsrequired,  end sonuna persmission
        resetjobcdCMD(source, args[1])
    end, "god")
end

function resetjobcdCMD(source, player)
    local src = source
    if player then
        local xPlayer = tgiCore.getPlayer(tonumber(player))
        if xPlayer then
            local xPlayerSource = tgiCore.getSource(xPlayer)
            TriggerClientEvent("tgiann-job:resetjobcd", xPlayerSource)
            tgiCore.notif(src, "Player's job duration has been reset!", "error")
        else
            tgiCore.notif(src, "No Player Found!", "error")
        end
    end
end

function setjobamountCMD(source, player, job, amount)
    local src = source
    if player then
        local xPlayer = tgiCore.getPlayer(tonumber(player))
        if xPlayer then
            local xPlayerCitizenid = tgiCore.getCid(xPlayer)
            if job == "farmer" or job == "construction" or job == "truck" or job == "diver" then
                if amount and tonumber(amount) then
                    single('SELECT * FROM tgiann_job WHERE citizenid = ?', {xPlayerCitizenid}, function(result)
                        if not result then
                            insert('INSERT INTO tgiann_job (citizenid, '..job..') VALUES (?, ?)', {xPlayerCitizenid, amount})
                        else
                            update('UPDATE tgiann_job SET '..job..' = ? WHERE citizenid = ?', {amount, xPlayerCitizenid})
                        end
                        tgiCore.notif(src, "The Player's Job Amount Has Been Set", "success")
                    end)
                else
                    tgiCore.notif(src, "Job Amount Wrong!", "error")
                end
            else
                tgiCore.notif(src, "Job Name Wrong!", "error")
            end
        else
            tgiCore.notif(src, "No Player Found!", "error")
        end 
    end
end