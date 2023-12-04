local WeaponTable = {
    [GetHashKey("weapon_ak47")] = "Sınıf 3: AK-47",
    [GetHashKey("weapon_de")] = "Sınıf 2: Desert Eagle",
    [GetHashKey("weapon_fnx45")] = "Sınıf 1: FN .45",
    [GetHashKey("weapon_glock17")] = "Sınıf 1: Glock 17",
    [GetHashKey("weapon_m4")] = "Sınıf 3: M4",
    [GetHashKey("weapon_hk416")] = "Sınıf 3: HK-416",
    [GetHashKey("weapon_mk14")] = "Sınıf 4: MK 14",
    [GetHashKey("weapon_mk14")] = "Sınıf 4: M110",
    [GetHashKey("weapon_sniperifle")] = "Sınıf 3: Av Silahı",
    [GetHashKey("weapon_ar15")] = "Sınıf 3: AR-15",
    [GetHashKey("weapon_m9")] = "Sınıf 1: M9",
    [GetHashKey("weapon_m70")] = "Sınıf 3: m70",
    [GetHashKey("weapon_m1911")] = "Sınıf 1: 1911",
    [GetHashKey("weapon_mac10")] = "Sınıf 2: Mac-10",
    [GetHashKey("weapon_uzi")] = "Sınıf 2: Uzi",
    [GetHashKey("weapon_mp9")] = "Sınıf 2: MP9",
    [GetHashKey("weapon_mossberg")] = "Sınıf 2: Mossberg",
    [GetHashKey("weapon_remington")] = "Sınıf 2: Remington",
    [GetHashKey("weapon_scarh")] = "Sınıf 3: Scar-H",
    [584646201]   = "Sınıf 2: AP-Pistol",
    [453432689]   = "Sınıf 1: Tabanca",
    [3219281620]  = "Sınıf 1: Pistol MK2",
    [1593441988]  = "Sınıf 1: Combat Pistol",
    [-1716589765] = "Sınıf 1: Heavy Pistol",
    [-1076751822] = "Sınıf 1: SNS-Pistol",
    [-771403250]  = "Sınıf 2: Desert Eagle",
    [137902532]   = "Sınıf 2: Vintage Pistol",
    [-598887786]  = "Sınıf 2: Marksman Pistol",
    [-1045183535] = "Sınıf 2: Revolver",
    [911657153]   = "Taser",
    [324215364]   = "Sınıf 2: Micro-SMG",
    [-619010992]  = "Sınıf 2: Machine-Pistol",
    [736523883]   = "Sınıf 2: SMG",
    [2024373456]  = "Sınıf 2: SMG MK2",
    [-270015777]  = "Sınıf 2: Assault SMG",
    [171789620]   = "Sınıf 2: Combat PDW",
    [-1660422300] = "Sınıf 4: Combat MG",
    [3686625920]  = "Sınıf 4: Combat MG MK2",
    [1627465347]  = "Sınıf 4: Gusenberg",
    [-1121678507] = "Sınıf 2: Mini SMG",
    [-1074790547] = "Sınıf 3: Assaultrifle",
    [961495388]   = "Sınıf 3: Assaultrifle MK2",
    [-2084633992] = "Sınıf 3: Carbinerifle",
    [4208062921]  = "Sınıf 3: Carbinerifle MK2",
    [-1357824103] = "Sınıf 3: Advancedrifle",
    [-1063057011] = "Sınıf 3: Specialcarbine",
    [2132975508]  = "Sınıf 3: Bulluprifle",
    [1649403952]  = "Sınıf 3: Compactrifle",
    [100416529]   = "Sınıf 4: Sniperrifle",
    [205991906]   = "Sınıf 4: Heavy Sniper",
    [177293209]   = "Sınıf 4: Heavy Sniper MK2",
    [-952879014]  = "Sınıf 4: Marksmanrifle",
    [487013001]   = "Sınıf 2: Pumpshotgun",
    [2017895192]  = "Sınıf 2: Sawnoff Shotgun",
    [-1654528753] = "Sınıf 3: Bullupshotgun",
    [-494615257]  = "Sınıf 3: Assaultshotgun",
    [-1466123874] = "Sınıf 3: Musket",
    [984333226]   = "Sınıf 3: Heavyshotgun",
    [-275439685]  = "Sınıf 2: Doublebarrel Shotgun",
    [317205821]   = "Sınıf 2: Autoshotgun",
    [-1568386805] = "Sınıf 5: GRENADE LAUNCHER",
    [-1312131151] = "Sınıf 5: RPG",
    [125959754]   = "Sınıf 5: Compactlauncher",
    [-1768145561] = "Scar-L"
}
local function VehicleTheft(vehicle)
    local vehdata = vehicleData(vehicle)
    local currentPos = GetEntityCoords(PlayerPedId())
    local locationInfo = getStreetandZone(currentPos)
    local heading = getCardinalDirectionFromHeading()
    TriggerServerEvent("dispatch:server:notify", {
        dispatchcodename = "vehicletheft", -- has to match the codes in sv_dispatchcodes.lua so that it generates the right blip
        dispatchCode = "10-35",
        firstStreet = locationInfo,
        model = vehdata.name, -- vehicle name
        plate = vehdata.plate, -- vehicle plate
        priority = 2,
        firstColor = vehdata.colour, -- vehicle color
        heading = heading,
        automaticGunfire = false,
        origin = {
            x = currentPos.x,
            y = currentPos.y,
            z = currentPos.z
        },
        dispatchMessage = _U('vehicletheft'),
        job = { "police", "state", "sheriff" } 
    })
end

exports('VehicleTheft', VehicleTheft)

local function VehicleShooting(vehdata)
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local vehdata = vehicleData(vehicle)
    local currentPos = GetEntityCoords(PlayerPedId())
    local locationInfo = getStreetandZone(currentPos)
    local heading = getCardinalDirectionFromHeading()
    local doorCount = 0
    local PlayerPed = PlayerPedId()
    local CurrentWeapon = GetSelectedPedWeapon(PlayerPed)
    local weapon = WeaponTable[CurrentWeapon] or "UNKNOWN"
    if GetEntityBoneIndexByName(vehicle, 'door_pside_f') ~= -1 then doorCount = doorCount + 1 end
    if GetEntityBoneIndexByName(vehicle, 'door_pside_r') ~= -1 then doorCount = doorCount + 1 end
    if GetEntityBoneIndexByName(vehicle, 'door_dside_f') ~= -1 then doorCount = doorCount + 1 end
    if GetEntityBoneIndexByName(vehicle, 'door_dside_r') ~= -1 then doorCount = doorCount + 1 end
    if doorCount == 2 then doorCount = "Two-Door" elseif doorCount == 3 then doorCount = "Three-Door" elseif doorCount == 4 then doorCount = "Four-Door" else doorCount = "UNKNOWN" end
    TriggerServerEvent("dispatch:server:notify", {
        dispatchcodename = "vehicleshots", -- has to match the codes in sv_dispatchcodes.lua so that it generates the right blip
        dispatchCode = "10-60",
        firstStreet = locationInfo,
        model = vehdata.name,
        plate = vehdata.plate,

        weapon = weapon,
        doorCount = doorCount,
        priority = 2,
        firstColor = vehdata.colour,
        heading = heading,
        automaticGunfire = false,
        origin = {
            x = currentPos.x,
            y = currentPos.y,
            z = currentPos.z
        },
        dispatchMessage = _U('vehicleshots'),
        job = { "police", "state", "sheriff" } 
    })
end

exports('VehicleShooting', VehicleShooting)


local function Shooting()
    local currentPos = GetEntityCoords(PlayerPedId())
    local locationInfo = getStreetandZone(currentPos)
    local PlayerPed = PlayerPedId()
    local CurrentWeapon = GetSelectedPedWeapon(PlayerPed)
    local speed = math.floor(GetEntitySpeed(vehicle) * 2.236936) .. " KMH" -- * 3.6 = KMH    /    * 2.236936 = MPH
    local weapon = WeaponTable[CurrentWeapon] or "UNKNOWN"

    TriggerServerEvent("dispatch:server:notify", {
        dispatchcodename = "shooting", -- has to match the codes in sv_dispatchcodes.lua so that it generates the right blip
        dispatchCode = "10-11",
        firstStreet = locationInfo,
        weapon = weapon,
        model = nil,
        plate = nil,
        priority = 2,
        firstColor = nil,
        automaticGunfire = false,
        origin = {
            x = currentPos.x,
            y = currentPos.y,
            z = currentPos.z
        },
        dispatchMessage = _U('shooting'),
        job = { "police", "state", "sheriff" }
    })

end

exports('Shooting', Shooting)

local function SpeedingVehicle(vehdata)
    local currentPos = GetEntityCoords(PlayerPedId())
    local locationInfo = getStreetandZone(currentPos)
    local heading = getCardinalDirectionFromHeading()
    TriggerServerEvent("dispatch:server:notify", {
        dispatchcodename = "speeding", -- has to match the codes in sv_dispatchcodes.lua so that it generates the right blip
        dispatchCode = "10-11",
        firstStreet = locationInfo,
        model = vehdata.name,
        plate = vehdata.plate,
        priority = 2,
        firstColor = vehdata.colour,
        heading = heading,
        automaticGunfire = false,
        origin = {
            x = currentPos.x,
            y = currentPos.y,
            z = currentPos.z
        },
        dispatchMessage = _U('speeding'),
        job = { "police", "state", "sheriff" }
    })
end

exports('SpeedingVehicle', SpeedingVehicle)

local function Fight()
    local currentPos = GetEntityCoords(PlayerPedId())
    local locationInfo = getStreetandZone(currentPos)
    TriggerServerEvent("dispatch:server:notify", {
        dispatchcodename = "fight", -- has to match the codes in sv_dispatchcodes.lua so that it generates the right blip
        dispatchCode = "10-10",
        firstStreet = locationInfo,
        model = nil,
        plate = nil,
        priority = 2,
        firstColor = nil,
        automaticGunfire = false,
        origin = {
            x = currentPos.x,
            y = currentPos.y,
            z = currentPos.z
        },
        dispatchMessage = _U('melee'),
        job = { "police", "state", "sheriff" } 
    })
end

exports('Fight', Fight)

local function InjuriedPerson()
    local currentPos = GetEntityCoords(PlayerPedId())
    local locationInfo = getStreetandZone(currentPos)
    TriggerServerEvent("dispatch:server:notify", {
        dispatchcodename = "civdown", -- has to match the codes in sv_dispatchcodes.lua so that it generates the right blip
        dispatchCode = "10-69",
        firstStreet = locationInfo,
        model = nil,
        plate = nil,
        priority = 2, -- priority
        firstColor = nil,
        automaticGunfire = false,
        origin = {
            x = currentPos.x,
            y = currentPos.y,
            z = currentPos.z
        },
        dispatchMessage = _U('persondown'), -- message
        job = { "ambulance", "police", "state", "sheriff" } -- jobs that will get the alerts
    })
end

exports('InjuriedPerson', InjuriedPerson)

local function DeceasedPerson()
    local currentPos = GetEntityCoords(PlayerPedId())
    local locationInfo = getStreetandZone(currentPos)
    TriggerServerEvent("dispatch:server:notify", {
        dispatchcodename = "civdead", -- has to match the codes in sv_dispatchcodes.lua so that it generates the right blip
        dispatchCode = "10-69",
        firstStreet = locationInfo,
        model = nil,
        plate = nil,
        priority = 2, -- priority
        firstColor = nil,
        automaticGunfire = false,
        origin = {
            x = currentPos.x,
            y = currentPos.y,
            z = currentPos.z
        },
        dispatchMessage = "Sivil Kan Kaybından Öldü", -- message
        job = { "ambulance", "police", "state", "sheriff" } -- jobs that will get the alerts
    })
end

exports('DeceasedPerson', DeceasedPerson)

local function StoreRobbery(camId)
    local currentPos = GetEntityCoords(PlayerPedId())
    local locationInfo = getStreetandZone(currentPos)
    TriggerServerEvent("dispatch:server:notify", {
        dispatchcodename = "storerobbery", -- has to match the codes in sv_dispatchcodes.lua so that it generates the right blip
        dispatchCode = "10-90",
        firstStreet = locationInfo,
        camId = camId,
        model = nil,
        plate = nil,
        priority = 2, -- priority
        firstColor = nil,
        automaticGunfire = false,
        origin = {
            x = currentPos.x,
            y = currentPos.y,
            z = currentPos.z
        },
        dispatchMessage = _U('storerobbery'), -- message
        job = { "police", "state", "sheriff" }  -- jobs that will get the alerts
    })
end

exports('StoreRobbery', StoreRobbery)

local function FleecaBankRobbery(camId)
    local currentPos = GetEntityCoords(PlayerPedId())
    local locationInfo = getStreetandZone(currentPos)
    TriggerServerEvent("dispatch:server:notify", {
        dispatchcodename = "bankrobbery", -- has to match the codes in sv_dispatchcodes.lua so that it generates the right blip
        dispatchCode = "10-90",
        firstStreet = locationInfo,
        camId = camId,
        model = nil,
        plate = nil,
        priority = 2, -- priority
        firstColor = nil,
        automaticGunfire = false,
        origin = {
            x = currentPos.x,
            y = currentPos.y,
            z = currentPos.z
        },
        dispatchMessage = _U('fleecabank'), -- message
        job = { "police", "state", "sheriff" }  -- jobs that will get the alerts
    })
end

exports('FleecaBankRobbery', FleecaBankRobbery)

local function PaletoBankRobbery(camId)
    local currentPos = GetEntityCoords(PlayerPedId())
    local locationInfo = getStreetandZone(currentPos)
    TriggerServerEvent("dispatch:server:notify", {
        dispatchcodename = "paletobankrobbery", -- has to match the codes in sv_dispatchcodes.lua so that it generates the right blip
        dispatchCode = "10-90",
        firstStreet = locationInfo,
        camId = camId,
        model = nil,
        plate = nil,
        priority = 2, -- priority
        firstColor = nil,
        automaticGunfire = false,
        origin = {
            x = currentPos.x,
            y = currentPos.y,
            z = currentPos.z
        },
        dispatchMessage = _U('paletobank'), -- message
        job = { "police", "state", "sheriff" }  -- jobs that will get the alerts
    })
end

exports('PaletoBankRobbery', PaletoBankRobbery)

local function PacificBankRobbery(camId)
    local currentPos = GetEntityCoords(PlayerPedId())
    local locationInfo = getStreetandZone(currentPos)
    TriggerServerEvent("dispatch:server:notify", {
        dispatchcodename = "pacificbankrobbery", -- has to match the codes in sv_dispatchcodes.lua so that it generates the right blip
        dispatchCode = "10-90",
        firstStreet = locationInfo,
        camId = camId,
        model = nil,
        plate = nil,
        priority = 2, -- priority
        firstColor = nil,
        automaticGunfire = false,
        origin = {
            x = currentPos.x,
            y = currentPos.y,
            z = currentPos.z
        },
        dispatchMessage = _U('pacificbank'), -- message
        job = { "police", "state", "sheriff" }  -- jobs that will get the alerts
    })
end

exports('PacificBankRobbery', PacificBankRobbery)

local function PrisonBreak()
    local currentPos = GetEntityCoords(PlayerPedId())
    local locationInfo = getStreetandZone(currentPos)
    TriggerServerEvent("dispatch:server:notify", {
        dispatchcodename = "prisonbreak", -- has to match the codes in sv_dispatchcodes.lua so that it generates the right blip
        dispatchCode = "10-90",
        firstStreet = locationInfo,
        model = nil,
        plate = nil,
        priority = 2, -- priority
        firstColor = nil,
        automaticGunfire = false,
        origin = {
            x = currentPos.x,
            y = currentPos.y,
            z = currentPos.z
        },
        dispatchMessage = _U('prisonbreak'), -- message
        job = { "police", "state", "sheriff" }  -- jobs that will get the alerts
    })
end

exports('PrisonBreak', PrisonBreak)

local function VangelicoRobbery(camId)
    local currentPos = GetEntityCoords(PlayerPedId())
    local locationInfo = getStreetandZone(currentPos)
    PlaySound(-1, "Lose_1st", "GTAO_FM_Events_Soundset", 0, 0, 1)
    TriggerServerEvent("dispatch:server:notify", {
        dispatchcodename = "vangelicorobbery", -- has to match the codes in sv_dispatchcodes.lua so that it generates the right blip
        dispatchCode = "10-90",
        firstStreet = locationInfo,
        camId = camId,
        model = nil,
        plate = nil,
        priority = 2, -- priority
        firstColor = nil,
        automaticGunfire = false,
        origin = {
            x = currentPos.x,
            y = currentPos.y,
            z = currentPos.z
        },
        dispatchMessage = _U('vangelico'), -- message
        job = { "police", "state", "sheriff" }  -- jobs that will get the alerts
    })
end

exports('VangelicoRobbery', VangelicoRobbery)

local function HouseRobbery()
    local currentPos = GetEntityCoords(PlayerPedId())
    local locationInfo = getStreetandZone(currentPos)
    TriggerServerEvent("dispatch:server:notify", {
        dispatchcodename = "houserobbery", -- has to match the codes in sv_dispatchcodes.lua so that it generates the right blip
        dispatchCode = "10-90",
        firstStreet = locationInfo,
        model = nil,
        plate = nil,
        priority = 2, -- priority
        firstColor = nil,
        automaticGunfire = false,
        origin = {
            x = currentPos.x,
            y = currentPos.y,
            z = currentPos.z
        },
        dispatchMessage = _U('houserobbery'), -- message
        job = { "police", "state", "sheriff" }  -- jobs that will get the alerts
    })
end

exports('HouseRobbery', HouseRobbery)


local function bobcat()
    local currentPos = GetEntityCoords(PlayerPedId())
    local locationInfo = getStreetandZone(currentPos)
    TriggerServerEvent("dispatch:server:notify", {
        dispatchcodename = "bobcat", -- has to match the codes in sv_dispatchcodes.lua so that it generates the right blip
        dispatchCode = "10-90",
        firstStreet = locationInfo,
        model = nil,
        plate = nil,
        priority = 2, -- priority
        firstColor = nil,
        automaticGunfire = false,
        origin = {
            x = currentPos.x,
            y = currentPos.y,
            z = currentPos.z
        },
        dispatchMessage = _U('bobcat'), -- message
        job = { "police", "state", "sheriff" }  -- jobs that will get the alerts
    })
end

exports('bobcat', bobcat)

local function YachtHeist()
    local currentPos = GetEntityCoords(PlayerPedId())
    local locationInfo = getStreetandZone(currentPos)
    TriggerServerEvent("dispatch:server:notify", {
        dispatchcodename = "yachtheist", -- has to match the codes in sv_dispatchcodes.lua so that it generates the right blip
        dispatchCode = "10-65",
        firstStreet = locationInfo,
        model = nil,
        plate = nil,
        priority = 2, -- priority
        firstColor = nil,
        automaticGunfire = false,
        origin = {
            x = currentPos.x,
            y = currentPos.y,
            z = currentPos.z
        },
        dispatchMessage = _U('yachtheist'), -- message
        job = { "police", "state", "sheriff" }  -- jobs that will get the alerts
    })
end

exports('YachtHeist', YachtHeist)

local function DrugSale()
    local currentPos = GetEntityCoords(PlayerPedId())
    local locationInfo = getStreetandZone(currentPos)
    TriggerServerEvent("dispatch:server:notify", {
        dispatchcodename = "suspicioushandoff", -- has to match the codes in sv_dispatchcodes.lua so that it generates the right blip
        dispatchCode = "10-13",
        firstStreet = locationInfo,
        model = nil,
        plate = nil,
        priority = 2, -- priority
        firstColor = nil,
        automaticGunfire = false,
        origin = {
            x = currentPos.x,
            y = currentPos.y,
            z = currentPos.z
        },
        dispatchMessage = _U('drugsell'), -- message
        job = { "police", "state", "sheriff" }  -- jobs that will get the alerts
    })
end

exports('DrugSale', DrugSale)

local function atmRobbery()
    local currentPos = GetEntityCoords(PlayerPedId())
    local locationInfo = getStreetandZone(currentPos)
    TriggerServerEvent("dispatch:server:notify", {
        dispatchcodename = "suspicioushandoff", -- has to match the codes in sv_dispatchcodes.lua so that it generates the right blip
        dispatchCode = "10-78",
        firstStreet = locationInfo,
        model = nil,
        plate = nil,
        priority = 2, -- priority
        firstColor = nil,
        automaticGunfire = false,
        origin = {
            x = currentPos.x,
            y = currentPos.y,
            z = currentPos.z
        },
        dispatchMessage = "ATM SOYGUNU", -- message
        job = { "police", "state", "sheriff" }  -- jobs that will get the alerts
    })
end

exports('atmRobbery', atmRobbery)


-- for rcore_gangs, haven't tested server side exports so made this instead. Remove if you do not need :)
RegisterNetEvent('ps-dispatch:client:drugsale', function()
    DrugSale()
end)

local function CarJacking(vehicle)
    local vehdata = vehicleData(vehicle)
    local currentPos = GetEntityCoords(PlayerPedId())
    local locationInfo = getStreetandZone(currentPos)
    local heading = getCardinalDirectionFromHeading()
    TriggerServerEvent("dispatch:server:notify", {
        dispatchcodename = "carjack", -- has to match the codes in sv_dispatchcodes.lua so that it generates the right blip
        dispatchCode = "10-35",
        firstStreet = locationInfo,
        model = vehdata.name, -- vehicle name
        plate = vehdata.plate, -- vehicle plate
        priority = 2,
        firstColor = vehdata.colour, -- vehicle color
        heading = heading,
        automaticGunfire = false,
        origin = {
            x = currentPos.x,
            y = currentPos.y,
            z = currentPos.z
        },
        dispatchMessage = _U('carjacking'),
        job = { "police", "state", "sheriff" } 
    })
end

exports('CarJacking', CarJacking)

local function OfficerDown()
    local plyData = QBCore.Functions.GetPlayerData()
    local currentPos = GetEntityCoords(PlayerPedId())
    local locationInfo = getStreetandZone(currentPos)
    local callsign = QBCore.Functions.GetPlayerData().metadata["callsign"]
    TriggerServerEvent("dispatch:server:notify", {
        dispatchcodename = "officerdown", -- has to match the codes in sv_dispatchcodes.lua so that it generates the right blip
        dispatchCode = "KOD 0",
        firstStreet = locationInfo,
        model = nil,
        plate = nil,
        callsign = callsign,
        priority = 2, -- priority
        firstColor = nil,
        automaticGunfire = false,
        origin = {
            x = currentPos.x,
            y = currentPos.y,
            z = currentPos.z
        },
        dispatchMessage = _U('officerdown'), -- message
        job = { "ambulance", "police" } -- jobs that will get the alerts
    })
end

exports('OfficerDown', OfficerDown)

RegisterNetEvent("ps-dispatch:client:officerdown", function ()
    OfficerDown()
end)

local function OfficerDown2()
    local plyData = QBCore.Functions.GetPlayerData()
    local currentPos = GetEntityCoords(PlayerPedId())
    local locationInfo = getStreetandZone(currentPos)
    local callsign = QBCore.Functions.GetPlayerData().metadata["callsign"]
    TriggerServerEvent("dispatch:server:notify", {
        dispatchcodename = "officerdown2", -- has to match the codes in sv_dispatchcodes.lua so that it generates the right blip
        dispatchCode = "10-33",
        firstStreet = locationInfo,
        model = nil,
        plate = nil,
        callsign = callsign,
        priority = 2, -- priority
        firstColor = nil,
        automaticGunfire = false,
        origin = {
            x = currentPos.x,
            y = currentPos.y,
            z = currentPos.z
        },
        dispatchMessage = _U('officerdown2'), -- message
        job = { "ambulance", "police" } -- jobs that will get the alerts
    })
end

exports('OfficerDown2', OfficerDown2)

RegisterNetEvent("ps-dispatch:client:officerdown2", function ()
    OfficerDown2()
end)

local function pdpanic()
    local plyData = QBCore.Functions.GetPlayerData()
    local currentPos = GetEntityCoords(PlayerPedId())
    local locationInfo = getStreetandZone(currentPos)
    local callsign = QBCore.Functions.GetPlayerData().metadata["callsign"]
    TriggerServerEvent("dispatch:server:notify", {
        dispatchcodename = "pdpanic", -- has to match the codes in sv_dispatchcodes.lua so that it generates the right blip
        dispatchCode = "10-88",
        firstStreet = locationInfo,
        model = nil,
        plate = nil,
        callsign = callsign,
        priority = 2, -- priority
        firstColor = nil,
        automaticGunfire = false,
        origin = {
            x = currentPos.x,
            y = currentPos.y,
            z = currentPos.z
        },
        dispatchMessage = _U('pdpanic'), -- message
        job = { "ambulance", "police" } -- jobs that will get the alerts
    })
end

exports('pdpanic', pdpanic)

RegisterNetEvent("ps-dispatch:client:pdpanic", function ()
    pdpanic()
end)







local function EmsDown()
    local plyData = QBCore.Functions.GetPlayerData()
    local currentPos = GetEntityCoords(PlayerPedId())
    local locationInfo = getStreetandZone(currentPos)
    local callsign = QBCore.Functions.GetPlayerData().metadata["callsign"]
    TriggerServerEvent("dispatch:server:notify", {
        dispatchcodename = "emsdown", -- has to match the codes in sv_dispatchcodes.lua so that it generates the right blip
        dispatchCode = "10-14A",
        firstStreet = locationInfo,
        model = nil,
        plate = nil,
        callsign = callsign,
        priority = 2, -- priority
        firstColor = nil,
        automaticGunfire = false,
        origin = {
            x = currentPos.x,
            y = currentPos.y,
            z = currentPos.z
        },
        dispatchMessage = _U('emsdown'), -- message
        job = { "ambulance", "police" } -- jobs that will get the alerts
    })
end

exports('EmsDown', EmsDown)

RegisterNetEvent("ps-dispatch:client:emsdown", function ()
    EmsDown()
end)

local function EmsDown2()
    local plyData = QBCore.Functions.GetPlayerData()
    local currentPos = GetEntityCoords(PlayerPedId())
    local locationInfo = getStreetandZone(currentPos)
    local callsign = QBCore.Functions.GetPlayerData().metadata["callsign"]
    TriggerServerEvent("dispatch:server:notify", {
        dispatchcodename = "emsdown2", -- has to match the codes in sv_dispatchcodes.lua so that it generates the right blip
        dispatchCode = "10-14B",
        firstStreet = locationInfo,
        model = nil,
        plate = nil,
        callsign = callsign,
        priority = 2, -- priority
        firstColor = nil,
        automaticGunfire = false,
        origin = {
            x = currentPos.x,
            y = currentPos.y,
            z = currentPos.z
        },
        dispatchMessage = _U('emsdown2'), -- message
        job = { "ambulance", "police" } -- jobs that will get the alerts
    })
end

exports('EmsDown2', EmsDown2)

RegisterNetEvent("ps-dispatch:client:emsdown2", function ()
    EmsDown2()
end)

local function Explosion()
    local currentPos = GetEntityCoords(PlayerPedId())
    local locationInfo = getStreetandZone(currentPos)
    TriggerServerEvent("dispatch:server:notify", {
        dispatchcodename = "explosion", -- has to match the codes in sv_dispatchcodes.lua so that it generates the right blip
        dispatchCode = "10-80",
        firstStreet = locationInfo,
        model = nil,
        plate = nil,
        priority = 2, -- priority
        firstColor = nil,
        automaticGunfire = false,
        origin = {
            x = currentPos.x,
            y = currentPos.y,
            z = currentPos.z
        },
        dispatchMessage = "Patlama Bildirildi", -- message
        job = { "police", "state", "sheriff" }  -- jobs that will get the alerts
    })
end

exports('Explosion', Explosion)

local function SuspiciousActivity()
    local currentPos = GetEntityCoords(PlayerPedId())
    local locationInfo = getStreetandZone(currentPos)
    TriggerServerEvent("dispatch:server:notify", {
        dispatchcodename = "susactivity", -- has to match the codes in sv_dispatchcodes.lua so that it generates the right blip
        dispatchCode = "10-66",
        firstStreet = locationInfo,
        model = nil,
        plate = nil,
        priority = 2, -- priority
        firstColor = nil,
        automaticGunfire = false,
        origin = {
            x = currentPos.x,
            y = currentPos.y,
            z = currentPos.z
        },
        dispatchMessage = _U('susactivity'), -- message
        job = { "police", "state", "sheriff" }  -- jobs that will get the alerts
    })
end

exports('SuspiciousActivity', SuspiciousActivity)

local function CustomAlert(data)

    local coords = data.coords or vec3(0.0, 0.0, 0.0)
    local job = { "police", "state", "sheriff" } 
    if data.job then job = data.job end


    local locationInfo = getStreetandZone(coords)
    TriggerServerEvent("dispatch:server:notify", {
        dispatchCode = data.dispatchCode or "NONE", 
        firstStreet = locationInfo,
        model = data.model or nil,
        plate = data.plate or nil,
        priority = data.priority or 2, -- priority
        firstColor = data.firstColor or nil,
        camId = data.camId or nil,
        callsign = data.callsign or nil,
        name = data.name or nil,
        doorCount = data.doorCount or nil,
        heading = data.heading or nil,
        automaticGunfire = data.automaticGunfire or false,
        origin = {
            x = coords.x,
            y = coords.y,
            z = coords.z
        },
        dispatchMessage = data.message or "", 
        job = job,
        alert = {
            displayCode = data.dispatchCode or "NONE", 
            description = data.description or "", 
            radius = data.radius or 0, 
            recipientList = job, 
            blipSprite = data.sprite or 1, 
            blipColour = data.color or 1, 
            blipScale = data.scale or 0.5, 
            blipLength = data.length or 2, 
            sound = data.sound or "Lose_1st", 
            sound2 = data.sound2 or "GTAO_FM_Events_Soundset", 
            offset = data.offset or "false", 
            blipflash = data.flash or "false"
        }
    })
end
exports('CustomAlert', CustomAlert)


RegisterCommand("kod", function(src, args)
    local currentPos = GetEntityCoords(PlayerPedId())
    local PlayerData = QBCore.Functions.GetPlayerData()
    if tonumber(args[1]) < Config.Kodlar.maxKod then
        for kod, val in pairs(Config.Kodlar.Kodlar) do
            if kod == args[1] then
                exports["ps-dispatch"]:CustomAlert({
                    coords = currentPos,
                    message = val.baslik,
                    dispatchCode = val.kod,
                    description = val.baslik,
                    name = PlayerData.charinfo.firstname.. " " ..PlayerData.charinfo.lastname,
                    radius = 0,
                    sprite = val.blip,
                    color = 2,
                    scale = 0.6,
                    length = 0.1,
                })
                TriggerServerEvent("kodlogger", PlayerData.charinfo.firstname.. " " ..PlayerData.charinfo.lastname, args[1])
                break
            end
        end
    else
        QBCore.Functions.Notify("Geçersiz Kod Girdiniz", 'error')
        print("Geçersiz kod girdiniz!")
    end
end)