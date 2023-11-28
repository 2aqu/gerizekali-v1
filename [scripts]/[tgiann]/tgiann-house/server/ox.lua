RegisterNetEvent('tgiann-house:oxStash', function(name, data)
	exports.ox_inventory:RegisterStash(name, 'Stash', data.slots, data.maxweight)
end)