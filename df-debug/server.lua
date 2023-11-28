RegisterCommand('log',function(source,args)
    debugging = not debugging
    if debugging then
        print("debug is activated")
    else
        print("debug is closed")
    end
end)

RegisterCommand('dflog',function(source,args)
    TriggerEvent('updateDataF3D3R4LL')
end)
RegisterCommand('proftog',function(source,args)
    TriggerEvent('profilertogglex')
end)
RegisterCommand('proftog_tce',function(source,args)
    TriggerEvent('profilertogglex_tce')
end)

