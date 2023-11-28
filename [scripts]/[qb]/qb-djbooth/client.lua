-- Variables

local QBCore = exports['qb-core']:GetCoreObject()
local currentZone = nil
local PlayerData = {}

-- Handlers

AddEventHandler('onResourceStart', function(resourceName)
	if (GetCurrentResourceName() ~= resourceName) then return end
	PlayerData = QBCore.Functions.GetPlayerData()
end)

AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    PlayerData = QBCore.Functions.GetPlayerData()
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerData.job = JobInfo
end)

RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
    PlayerData = {}
end)

-- Static Header

local musicHeader = {
    {
        header = 'Müzik Aç!',
        params = {
            event = 'qb-djbooth:client:playMusic'
        }
    }
}

-- Main Menu

function createMusicMenu()
    musicMenu = {
        {
            isHeader = true,
            header = '💿 | DJ'
        },
        {
            header = '🎶 | Şarkı Çal',
            txt = 'Youtube URL',
            params = {
                event = 'qb-djbooth:client:musicMenu',
                args = {
                    zoneName = currentZone
                }
            }
        },
        {
            header = '⏸️ | Müziği Durdur',
            txt = 'Çalan müziği durdur',
            params = {
                isServer = true,
                event = 'qb-djbooth:server:pauseMusic',
                args = {
                    zoneName = currentZone
                }
            }
        },
        {
            header = '▶️ | Devam Ettir',
            txt = 'Duraklatışmış müziği devam ettir',
            params = {
                isServer = true,
                event = 'qb-djbooth:server:resumeMusic',
                args = {
                    zoneName = currentZone
                }
            }
        },
        {
            header = '🔈 | Ses Seviyesi',
            txt = 'Duraklatılmış müziği devam ettir',
            params = {
                event = 'qb-djbooth:client:changeVolume',
                args = {
                    zoneName = currentZone
                }
            }
        },
        {
            header = '❌ | Müziği Sonlandır',
            txt = 'Müziği sonlandır ve yeni şarkı seç',
            params = {
                isServer = true,
                event = 'qb-djbooth:server:stopMusic',
                args = {
                    zoneName = currentZone
                }
            }
        }
    }
end

-- DJ Booths

local vanilla = BoxZone:Create(Config.Locations['vanilla'].coords, 1, 1, {
    name="vanilla",
    heading=0,
})

vanilla:onPlayerInOut(function(isPointInside)
    if isPointInside and PlayerData.job.name == Config.Locations['vanilla'].job then
        currentZone = 'vanilla'
        exports['qb-menu']:showHeader(musicHeader)
    else
        currentZone = nil
        exports['qb-menu']:closeMenu()
    end
end)

local sonsofanarchy = BoxZone:Create(Config.Locations['sonsofanarchy'].coords, 1, 1, {
    name="sonsofanarchy",
    heading=0,
})

sonsofanarchy:onPlayerInOut(function(isPointInside)
    if isPointInside and PlayerData.job.name == Config.Locations['sonsofanarchy'].job then
        currentZone = 'sonsofanarchy'
        exports['qb-menu']:showHeader(musicHeader)
    else
        currentZone = nil
        exports['qb-menu']:closeMenu()
    end
end)

local pondcafe = BoxZone:Create(Config.Locations['pondcafe'].coords, 1, 1, {
    name="pondcafe",
    heading=0,
})

pondcafe:onPlayerInOut(function(isPointInside)
    if isPointInside and PlayerData.job.name == Config.Locations['pondcafe'].job then
        currentZone = 'pondcafe'
        exports['qb-menu']:showHeader(musicHeader)
    else
        currentZone = nil
        exports['qb-menu']:closeMenu()
    end
end)

local golbar = BoxZone:Create(Config.Locations['golbar'].coords, 1, 1, {
    name="golbar",
    heading=0,
})

golbar:onPlayerInOut(function(isPointInside)
    if isPointInside and PlayerData.job.name == Config.Locations['golbar'].job then
        currentZone = 'golbar'
        exports['qb-menu']:showHeader(musicHeader)
    else
        currentZone = nil
        exports['qb-menu']:closeMenu()
    end
end)

local bahamamas = BoxZone:Create(Config.Locations['bahamamas'].coords, 1, 1, {
    name="bahamamas",
    heading=0,
})

bahamamas:onPlayerInOut(function(isPointInside)
    if isPointInside and PlayerData.job.name == Config.Locations['bahamamas'].job then
        currentZone = 'bahamamas'
        exports['qb-menu']:showHeader(musicHeader)
    else
        currentZone = nil
        exports['qb-menu']:closeMenu()
    end
end)


local unicorn = BoxZone:Create(Config.Locations['unicorn'].coords, 1, 1, {
    name="unicorn",
    heading=0,
})

unicorn:onPlayerInOut(function(isPointInside)
    if isPointInside and PlayerData.job.name == Config.Locations['unicorn'].job then
        currentZone = 'unicorn'
        exports['qb-menu']:showHeader(musicHeader)
    else
        currentZone = nil
        exports['qb-menu']:closeMenu()
    end
end)


local wutang = BoxZone:Create(Config.Locations['wutang'].coords, 1, 1, {
    name="wutang",
    heading=0,
})

wutang:onPlayerInOut(function(isPointInside)
    if isPointInside and PlayerData.job.name == Config.Locations['wutang'].job then
        currentZone = 'wutang'
        exports['qb-menu']:showHeader(musicHeader)
    else
        currentZone = nil
        exports['qb-menu']:closeMenu()
    end
end)

local luxery = BoxZone:Create(Config.Locations['luxery'].coords, 1, 1, {
    name="luxery",
    heading=0,
})

luxery:onPlayerInOut(function(isPointInside)
    if isPointInside and PlayerData.job.name == Config.Locations['luxery'].job then
        currentZone = 'luxery'
        exports['qb-menu']:showHeader(musicHeader)
    else
        currentZone = nil
        exports['qb-menu']:closeMenu()
    end
end)

local custom = BoxZone:Create(Config.Locations['custom'].coords, 1, 1, {
    name="custom",
    heading=0,
})

custom:onPlayerInOut(function(isPointInside)
    if isPointInside and PlayerData.job.name == Config.Locations['custom'].job then
        currentZone = 'custom'
        exports['qb-menu']:showHeader(musicHeader)
    else
        currentZone = nil
        exports['qb-menu']:closeMenu()
    end
end)

local tekila = BoxZone:Create(Config.Locations['tekila'].coords, 1, 1, {
    name="tekila",
    heading=0,
})

tekila:onPlayerInOut(function(isPointInside)
    if isPointInside and PlayerData.job.name == Config.Locations['tekila'].job then
        currentZone = 'tekila'
        exports['qb-menu']:showHeader(musicHeader)
    else
        currentZone = nil
        exports['qb-menu']:closeMenu()
    end
end)

local uwu = BoxZone:Create(Config.Locations['uwu'].coords, 1, 1, {
    name="uwu",
    heading=0,
})

uwu:onPlayerInOut(function(isPointInside)
    if isPointInside and PlayerData.job.name == Config.Locations['uwu'].job then
        currentZone = 'uwu'
        exports['qb-menu']:showHeader(musicHeader)
    else
        currentZone = nil
        exports['qb-menu']:closeMenu()
    end
end)

local henhouse = BoxZone:Create(Config.Locations['henhouse'].coords, 1, 1, {
    name="henhouse",
    heading=0,
})

henhouse:onPlayerInOut(function(isPointInside)
    if isPointInside and PlayerData.job.name == Config.Locations['henhouse'].job then
        currentZone = 'henhouse'
        exports['qb-menu']:showHeader(musicHeader)
    else
        currentZone = nil
        exports['qb-menu']:closeMenu()
    end
end)

local gunshop = BoxZone:Create(Config.Locations['gunshop'].coords, 1, 1, {
    name="gunshop",
    heading=0,
})

gunshop:onPlayerInOut(function(isPointInside)
    if isPointInside and PlayerData.job.name == Config.Locations['gunshop'].job then
        currentZone = 'gunshop'
        exports['qb-menu']:showHeader(musicHeader)
    else
        currentZone = nil
        exports['qb-menu']:closeMenu()
    end
end)

local tavern = BoxZone:Create(Config.Locations['tavern'].coords, 1, 1, {
    name="tavern",
    heading=0,
})

tavern:onPlayerInOut(function(isPointInside)
    if isPointInside and PlayerData.job.name == Config.Locations['tavern'].job then
        currentZone = 'tavern'
        exports['qb-menu']:showHeader(musicHeader)
    else
        currentZone = nil
        exports['qb-menu']:closeMenu()
    end
end)

local shadowrider = BoxZone:Create(Config.Locations['shadowrider'].coords, 1, 1, {
    name="shadowrider",
    heading=0,
})

shadowrider:onPlayerInOut(function(isPointInside)
    if isPointInside and PlayerData.job.name == Config.Locations['shadowrider'].job then
        currentZone = 'shadowrider'
        exports['qb-menu']:showHeader(musicHeader)
    else
        currentZone = nil
        exports['qb-menu']:closeMenu()
    end
end)

-- Events

RegisterNetEvent('qb-djbooth:client:playMusic', function()
    createMusicMenu()
    exports['qb-menu']:openMenu(musicMenu)
end)

RegisterNetEvent('qb-djbooth:client:musicMenu', function()
    local dialog = exports['qb-input']:ShowInput({
        header = 'Şarkı Seçimi',
        submitText = "Çal",
        inputs = {
            {
                type = 'text',
                isRequired = true,
                name = 'song',
                text = 'YouTube URL'
            }
        }
    })
    if dialog then
        if not dialog.song then return end
        TriggerServerEvent('qb-djbooth:server:playMusic', dialog.song, currentZone)
    end
end)

RegisterNetEvent('qb-djbooth:client:changeVolume', function()
    local dialog = exports['qb-input']:ShowInput({
        header = 'Müzik Sesi',
        submitText = "Çal",
        inputs = {
            {
                type = 'text', -- number doesn't accept decimals??
                isRequired = true,
                name = 'volume',
                text = 'Min: 0.01 - Max: 1'
            }
        }
    })
    if dialog then
        if not dialog.volume then return end
        TriggerServerEvent('qb-djbooth:server:changeVolume', dialog.volume, currentZone)
    end
end)