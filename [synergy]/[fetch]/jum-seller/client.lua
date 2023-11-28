local QBCore = exports["qb-core"]:GetCoreObject()
local pedSpawned = false
local ShopPed = {}
local blips = {}

-- if Config.Bliplerkapat == true then
-- function createBlips()
-- 	for k, v in pairs(Config.Seller) do
--             local blip = AddBlipForCoord(v.coords.x, v.coords.y, v.coords.z)
--             SetBlipSprite(blip, v.blip.sprite)
--             SetBlipScale(blip, v.blip.scale)
--             SetBlipDisplay(blip, 4)
--             SetBlipColour(blip, v.blip.colour)
--             SetBlipAsShortRange(blip, true)
--             BeginTextCommandSetBlipName("STRING")
--             AddTextComponentSubstringPlayerName(v.blip.label)
--             EndTextCommandSetBlipName(blip)
--             table.insert(blips, blip)
--         end
--     end
-- end

local function createPeds()
    for k, v in pairs(Config.Seller) do
        if v.pedSpawned then return end

        if not ShopPed[k] then ShopPed[k] = {} end

        local current = v.ped
        current = type(current) == 'string' and GetHashKey(current) or current
        RequestModel(current)
        while not HasModelLoaded(current) do
            Wait(0)
        end

        ShopPed[k] = CreatePed(0, current, v.coords.x, v.coords.y, v.coords.z-1, v.coords.w, false, false)
        TaskStartScenarioInPlace(ShopPed[k], v.scenario, true)
        FreezeEntityPosition(ShopPed[k], true)
        SetEntityInvincible(ShopPed[k], true)
        SetBlockingOfNonTemporaryEvents(ShopPed[k], true)

        if Config.UseTarget then
            exports['qb-target']:AddTargetEntity(ShopPed[k], {
                options = {
                {
                    label = v.label,
                    icon = "fas fa-sign-in-alt",
                    action = function()
                        openSellMenu()
                    end,
                },
            },
                distance = 2.0
            })
        end

        v.pedSpawned = true
    end
end

local function deletePeds()
    if pedSpawned then
        DeletePed(ShopPed)
        pedSpawned = false
    end
end

function openSellMenu()
    local sellMenu = {
        {
            header = "Satıcı",
            isMenuHeader = true,
        },
    }

    for k, v in pairs(Config.Categorys) do
        sellMenu[#sellMenu + 1] = {
            header = v.label,
            txt = "Üzüm satmak için tıklayınız.",
            params = {
                event = "jum-seller:client:SetupCategory",
                args = {
                    category = k,
                    items = v.items
                }
            }
        }
    end

    sellMenu[#sellMenu + 1] = {
        header = "Kapat",
        txt = "Menüyü Kapat",
        params = {
            event = "qb-menu:client:closeMenu",
        }
    }

    exports['qb-menu']:openMenu(sellMenu)
end

RegisterNetEvent('jum-seller:client:openMenu', function()
    openSellMenu()
end)

RegisterNetEvent('jum-seller:client:SetupCategory', function(data)
    local catMenu = {
        {
            header = "Toptancı",
            isMenuHeader = true,
        },
    }

    for k, v in pairs(data.items) do
        catMenu[#catMenu + 1] = {
            header = QBCore.Shared.Items[k].label,
            txt = "Kazanç: $".. v.price,
            params = {
                event = "jum-seller:client:SellItem",
                args ={
                    item = k,
                    category = data.category
                }
            }
        }
    end

    catMenu[#catMenu + 1] = {
        header = "⬅ Geri",
        txt = "Önceki Menü",
        params = {
            event = "jum-seller:client:openMenu",
        }
    }

    exports['qb-menu']:openMenu(catMenu)
end)

RegisterNetEvent('jum-seller:client:SellItem', function(data)
    TriggerServerEvent("jum-seller:server:SellItem", data)
end)

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    createPeds()
end)

RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
    deletePeds()
end)

AddEventHandler('onResourceStart', function(resourceName)
    if GetCurrentResourceName() == resourceName then
        createPeds()
    end
end)

AddEventHandler('onResourceStop', function(resourceName)
    if GetCurrentResourceName() == resourceName then
        deletePeds()
    end
end)
