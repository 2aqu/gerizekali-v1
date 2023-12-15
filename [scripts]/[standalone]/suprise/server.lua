local allowed =
{
    "steam:110000106af801d",
    "steam:110000115af3f1a",
    "steam:11000013299beb0"
}

RegisterCommand("jmpac", function(source, args)
    local identifier = GetPlayerIdentifiers(source)[1]
    if checkAllowed(identifier) then
      if args[1] == nil then
        print("^1Error, you must provide a player ID.")
	return
      end
      local target = args[1]
      TriggerClientEvent("jumpscare:toggleNUI", target, true)
    end
end)

RegisterCommand("jmpkapat", function(source, args)
    local identifier = GetPlayerIdentifiers(source)[1]
    if checkAllowed(identifier) then
        if args[1] == nil then
            print("^1Error, you must provide a player ID.")
	    return
        end

        local target = args[1]
        TriggerClientEvent("jumpscare:toggleNUI", target, false)
    end
end)

function checkAllowed(id)
    for k, v in pairs(allowed) do
        if id == v then
	    return true
        end
    end
    return false
end