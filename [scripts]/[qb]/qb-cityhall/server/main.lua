local QBCore = exports['qb-core']:GetCoreObject()
local availableJobs = {
    ["trucker"] = "Lojistik",
}

-- Functions

local function giveStarterItems()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    for _, v in pairs(QBCore.Shared.StarterItems) do
        local info = {}
        if v.item == "id_card" then
            info.citizenid = Player.PlayerData.citizenid
            info.firstname = Player.PlayerData.charinfo.firstname
            info.lastname = Player.PlayerData.charinfo.lastname
            info.birthdate = Player.PlayerData.charinfo.birthdate
            info.gender = Player.PlayerData.charinfo.gender
            info.nationality = Player.PlayerData.charinfo.nationality
        elseif v.item == "driver_license" then
            info.firstname = Player.PlayerData.charinfo.firstname
            info.lastname = Player.PlayerData.charinfo.lastname
            info.birthdate = Player.PlayerData.charinfo.birthdate
            info.type = "Class C Driver License"
        end
        Player.Functions.AddItem(v.item, 1, nil, info)
    end
end

-- Callbacks

QBCore.Functions.CreateCallback('qb-cityhall:server:receiveJobs', function(_, cb)
    cb(availableJobs)
end)

-- Events

RegisterNetEvent('qb-cityhall:server:requestId', function(item, hall)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    local itemInfo = Config.Cityhalls[hall].licenses[item]
    if not Player.Functions.RemoveMoney("cash", itemInfo.cost) then return TriggerClientEvent('QBCore:Notify', src, ('Yeteri kadar paran yok , $%s ihtiyacın var'):format(itemInfo.cost), 'error') end
    local info = {}
    if item == "id_card" then
        info.citizenid = Player.PlayerData.citizenid
        info.firstname = Player.PlayerData.charinfo.firstname
        info.lastname = Player.PlayerData.charinfo.lastname
        info.birthdate = Player.PlayerData.charinfo.birthdate
        info.gender = Player.PlayerData.charinfo.gender
        info.nationality = Player.PlayerData.charinfo.nationality
    elseif item == "driver_license" then
        info.firstname = Player.PlayerData.charinfo.firstname
        info.lastname = Player.PlayerData.charinfo.lastname
        info.birthdate = Player.PlayerData.charinfo.birthdate
        info.type = "Class C Driver License"
    elseif item == "weaponlicense" then
        info.firstname = Player.PlayerData.charinfo.firstname
        info.lastname = Player.PlayerData.charinfo.lastname
        info.birthdate = Player.PlayerData.charinfo.birthdate
    else
        return DropPlayer(src, 'Attempted exploit abuse')
    end
    if not Player.Functions.AddItem(item, 1, nil, info) then return end
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item], 'add')
end)

RegisterNetEvent('qb-cityhall:server:sendDriverTest', function(instructors)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    for i = 1, #instructors do
        local citizenid = instructors[i]
        local SchoolPlayer = QBCore.Functions.GetPlayerByCitizenId(citizenid)
        if SchoolPlayer then
            TriggerClientEvent("qb-cityhall:client:sendDriverEmail", SchoolPlayer.PlayerData.source, Player.PlayerData.charinfo)
        else
            local mailData = {
                sender = "Belediye",
                subject = "Direksiyon dersi talebi",
                message = "Merhaba,<br><br>Az önce birisinin sürüş dersi almak istediğine dair bir mesaj aldık.<br>Eğer öğretmek istiyorsanız, lütfen onlarla iletişime geçin:<br>Isim: <strong>".. Player.PlayerData.charinfo.firstname .. " " .. Player.PlayerData.charinfo.lastname .. "<br />Telefon Numarası: <strong>"..Player.PlayerData.charinfo.phone.."</strong><br><br>Saygılarımla,<br />Los Santos Belediyesi",
                button = {}
            }
            TriggerEvent("qb-phone:server:sendNewMailToOffline", citizenid, mailData)
        end
    end
    TriggerClientEvent('QBCore:Notify', src, "Sürücü kursuna bir e-posta gönderildi ve sizinle otomatik olarak iletişime geçilecek.", "success", 5000)
end)

RegisterNetEvent('qb-cityhall:server:ApplyJob', function(job, cityhallCoords)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    local ped = GetPlayerPed(src)
    local pedCoords = GetEntityCoords(ped)
    local JobInfo = QBCore.Shared.Jobs[job]
    if #(pedCoords - cityhallCoords) >= 20.0 or not availableJobs[job] then
        return DropPlayer(source, "Attempted exploit abuse")
    end
    Player.Functions.SetJob(job, 0)
    TriggerClientEvent('QBCore:Notify', src, Lang:t('info.new_job', {job = JobInfo.label}))
end)

RegisterNetEvent('qb-cityhall:server:getIDs', giveStarterItems)

-- Commands

QBCore.Commands.Add("ehliyetver", "Birine ehliyet ver", {{"id", "Oyuncu ID"}}, true, function(source, args)
    local Player = QBCore.Functions.GetPlayer(source)
    local SearchedPlayer = QBCore.Functions.GetPlayer(tonumber(args[1]))
    if SearchedPlayer then
        if not SearchedPlayer.PlayerData.metadata["licences"]["driver"] then
            for i = 1, #Config.DrivingSchools do
                for id = 1, #Config.DrivingSchools[i].instructors do
                    if Config.DrivingSchools[i].instructors[id] == Player.PlayerData.citizenid then
                        SearchedPlayer.PlayerData.metadata["licences"]["driver"] = true
                        SearchedPlayer.Functions.SetMetaData("licences", SearchedPlayer.PlayerData.metadata["licences"])
                        TriggerClientEvent('QBCore:Notify', SearchedPlayer.PlayerData.source, "Geçtin! Ehliyetinizi belediye binasından alın.", "success", 5000)
                        TriggerClientEvent('QBCore:Notify', source, ("%s kimliğine sahip oyuncuya sürücü ehliyetine erişim izni verildi!"):format(SearchedPlayer.PlayerData.source), "success", 5000)
                        break
                    end
                end
            end
        else
            TriggerClientEvent('QBCore:Notify', source, "Ehliyet için izin verilemez, bu kişinin zaten izni var!", "error")
        end
    else
        TriggerClientEvent('QBCore:Notify', source, "Kişi aktif değil.", "error")
    end
end)
