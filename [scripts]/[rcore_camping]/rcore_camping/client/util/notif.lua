function showHelpNotification(msg, thisFrame, beep, duration)
    AddTextEntry('rcore-camp-help', msg)

    if thisFrame then
        DisplayHelpTextThisFrame('rcore-camp-help', false)
    else
        if beep == nil then beep = true end
        BeginTextCommandDisplayHelp('rcore-camp-help')
        EndTextCommandDisplayHelp(0, false, beep, 2000)
    end
end
