Citizen.CreateThread(function()
	if Dance.MLO == "gabz" then
		for k, v in pairs(Dance.GabzPoles) do
			exports['qb-target']:AddBoxZone("UniDance"..k, v.location, v.width, v.height, { name="UniDance"..k, heading = v.heading, debugPoly=false, minZ = v.minZ, maxZ = v.maxZ, }, 
				{ options = { { event = "arob-dance:Dance", icon = "fas fa-chair", label = "Dance", loc = v.location, head = v.heading, pole = v.pole }, },
				  distance = v.distance
			})
		end
		for k, v in pairs(Dance.GabzDance) do
			exports['qb-target']:AddBoxZone("UniPvtDance"..k, v.location, v.width, v.height, { name="UniPvtDance"..k, heading = v.heading, debugPoly=false, minZ = v.minZ, maxZ = v.maxZ, }, 
				{ options = { { event = "arob-dance:PvtDance", icon = "fas fa-chair", label = "Dance", job = "unicorn", loc = v.location, head = v.heading }, },
				  distance = v.distance
			})
		end	
	elseif Dance.MLO == "van" then
		for k, v in pairs(Dance.VanPoles) do
			exports['qb-target']:AddBoxZone("UniDance"..k, v.location, v.width, v.height, { name="UniDance"..k, heading = v.heading, debugPoly=false, minZ = v.minZ, maxZ = v.maxZ, }, 
				{ options = { { event = "arob-dance:Dance", icon = "fas fa-chair", label = "Dance", job = "unicorn", loc = v.location, head = v.heading, pole = v.pole }, },
				  distance = v.distance
			})
		end		
		for k, v in pairs(Dance.VanDance) do
			exports['qb-target']:AddBoxZone("UniPvtDance"..k, v.location, v.width, v.height, { name="UniPvtDance"..k, heading = v.heading, debugPoly=false, minZ = v.minZ, maxZ = v.maxZ, }, 
				{ options = { { event = "arob-dance:PvtDance", icon = "fas fa-chair", label = "Dance", job = "unicorn", loc = v.location, head = v.heading }, },
				  distance = v.distance
			})
		end	
	end
end)

LoadDict = function(Dict)
    while not HasAnimDictLoaded(Dict) do 
        Wait(0)
        RequestAnimDict(Dict)
    end
end


RegisterNetEvent('arob-dance:Dance')
AddEventHandler('arob-dance:Dance', function(data)
	local ped = PlayerPedId()
	LoadDict('mini@strip_club@pole_dance@pole_dance'..data.pole)
	local scene = NetworkCreateSynchronisedScene(vector3(data.loc.x, data.loc.y, data.loc.z+1), vector3(0.0, 0.0, 0.0), 2, false, true, 1065353216, 0, 1.3)
    NetworkAddPedToSynchronisedScene(ped, scene, 'mini@strip_club@pole_dance@pole_dance' .. data.pole, 'pd_dance_0' .. data.pole, 1.5, -4.0, 1, 1, 1148846080, 0)
    NetworkStartSynchronisedScene(scene)
end)

RegisterNetEvent('arob-dance:PvtDance')
AddEventHandler('arob-dance:PvtDance', function(data)
	local ped = PlayerPedId()
	dancenumber = math.random(1,2)
	LoadDict('mini@strip_club@private_dance@part'..dancenumber)
	local scene = NetworkCreateSynchronisedScene(vector3(data.loc.x, data.loc.y, data.loc.z+1), vector3(0.0, 0.0, 0.0), 2, false, true, 1065353216, 0, 1.3)
    NetworkAddPedToSynchronisedScene(ped, scene, 'mini@strip_club@private_dance@part'..dancenumber, 'priv_dance_p'..dancenumber, 1.5, -4.0, 1, 1, 1148846080, 0)
	SetEntityHeading(ped, data.head)
    NetworkStartSynchronisedScene(scene)
end)


Dance.GabzPoles = {
	{ location = vector3(104.76, -1294.18, 28.25), heading = 30.0, width = 0.7, height = 0.7, minZ = 28.00, maxZ = 32.85, distance = 3.0, pole = 1 },
	{ location = vector3(108.83, -1289.02, 28.25), heading = 30.0, width = 0.7, height = 0.7, minZ = 28.00, maxZ = 32.85, distance = 3.0, pole = 2 },--vector3(115.27, -1284.92, 27.15)
	{ location = vector3(102.22, -1289.87, 28.25), heading = 30.0, width = 0.7, height = 0.7, minZ = 28.00, maxZ = 32.85, distance = 3.0, pole = 3 },
	--{ location = vector3(115.27, -1284.92, 28.15), heading = 30.0, width = 0.7, height = 0.7, minZ = 26.00, maxZ = 32.85, distance = 3.0, pole = 2 },--vector3(115.27, -1284.92, 27.15)
	{ location = vector3(-1387.74, -621.11, 29.80), heading = 30.0, width = 0.7, height = 0.7, minZ = 25.00, maxZ = 32.85, distance = 3.0, pole = 2 }, --vector3(-1391.1, -616.95, 30.7)
	{ location = vector3(-1390.87, -616.50, 29.72), heading = 37.0, width = 0.7, height = 0.7, minZ = 25.00, maxZ = 32.85, distance = 5.0, pole = 1 }, --vector3(-1390.75, -616.83, 29.92)----2
	{ location = vector3(-1393.85, -611.93, 29.72), heading = 30.0, width = 0.7, height = 0.7, minZ = 25.00, maxZ = 32.85, distance = 3.0, pole = 2 }, --vector3(-1393.83, -612.27, 30.68)----1
	{ location = vector3(-1391.38, -632.00, 30.4), heading = 30.0, width = 0.7, height = 0.7, minZ = 25.00, maxZ = 32.85, distance = 3.0, pole = 3 }, --vector3(-1409.21, -606.8, 30.47)-----3
	{ location = vector3(-1409.19, -606.50, 29.6), heading = 30.0, width = 0.7, height = 0.7, minZ = 25.00, maxZ = 32.85, distance = 3.0, pole = 3 }, --vector3(-1409.21, -606.8, 30.47) 4
	{ location = vector3(-1370.05, -621.1, 29.6), heading = 30.0, width = 0.7, height = 0.7, minZ = 25.00, maxZ = 32.85, distance = 3.0, pole = 1 },
}
Dance.GabzDance = {
	{ location = vector3(123.37, -1294.8, 29.69-1), heading = 30.0, width = 0.6, height = 0.6, minZ= 28.29, maxZ= 29.49, distance = 1.7 },
	{ location = vector3(120.0, -1296.83, 29.73-1), heading = 30.0, width = 0.6, height = 0.6, minZ= 28.29, maxZ= 29.49, distance = 1.7 },
	
	{ location = vector3(113.68, -1299.87, 29.69-1), heading = 30.0, width = 0.6, height = 0.6, minZ= 28.29, maxZ= 29.49, distance = 1.7 },
	{ location = vector3(111.23, -1304.38, 29.69-1), heading = 30.0, width = 0.6, height = 0.6, minZ= 28.29, maxZ= 29.49, distance = 1.7 },
	{ location = vector3(114.61, -1305.55, 29.77-1), heading = 30.0, width = 0.6, height = 0.6, minZ= 28.29, maxZ= 29.49, distance = 1.7 },
	{ location = vector3(113.37, -1303.06, 29.89-1), heading = 30.0, width = 0.6, height = 0.6, minZ= 28.29, maxZ= 29.49, distance = 1.7 },
	
	{ location = vector3(112.83, -1283.06, 28.88-1), heading = 270.0, width = 0.6, height = 0.6, minZ= 27.68-1, maxZ= 28.49, distance = 1.7 },
	{ location = vector3(117.53, -1283.03, 28.9-1), heading = 30.0, width = 0.6, height = 0.6, minZ= 27.68-1, maxZ= 28.49, distance = 1.7 },
	{ location = vector3(120.99, -1285.14, 28.68-1), heading = 30.0, width = 0.6, height = 0.6, minZ= 27.68-1, maxZ= 28.49, distance = 1.7 },
	{ location = vector3(121.97, -1286.96, 28.76-1), heading = 30.0, width = 0.6, height = 0.6, minZ= 27.68-1, maxZ= 28.49, distance = 1.7 },
	{ location = vector3(116.63, -1291.47, 28.68-1), heading = 30.0, width = 0.6, height = 0.6, minZ= 27.68-1, maxZ= 28.49, distance = 1.7 },
	{ location = vector3(115.89, -1286.76, 28.88-1), heading = 30.0, width = 0.6, height = 0.6, minZ= 27.68-1, maxZ= 28.49, distance = 1.7 },
}

Dance.VanPoles = {
	--{ location = vector3(104.2, -1294.0, 28.26), heading = 30.0, width = 0.7, height = 0.7, minZ = 28.06, maxZ = 32.85, distance = 3.0, pole = 1 },

}
Dance.VanDance = {
	--{ location = vector3(118.48, -1301.7, 29.27-1), heading = 30.0, width = 0.6, height = 0.6, minZ= 27.68-1, maxZ= 28.49, distance = 1.7 },

}