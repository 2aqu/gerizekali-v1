local QBCore = exports['qb-core']:GetCoreObject()

local TimeOuts = {
  [1] = false,
  [2] = false,
  [3] = false
}

local CachedPoliceAmount = {}
local Flags = {}

-------------------------------- FUNCTIONS --------------------------------

local function exploitBan(id, reason)
  MySQL.insert('INSERT INTO bans (name, license, discord, ip, reason, expire, bannedby) VALUES (?, ?, ?, ?, ?, ?, ?)',
    {
      GetPlayerName(id),
      QBCore.Functions.GetIdentifier(id, 'license'),
      QBCore.Functions.GetIdentifier(id, 'discord'),
      QBCore.Functions.GetIdentifier(id, 'ip'),
      reason,
      2147483647,
      'qb-jewelery'
    }
  )
  TriggerEvent('qb-log:server:CreateLog', 'jewelery', 'Player Banned', 'red',
  string.format('%s was banned by %s for %s', GetPlayerName(id), 'qb-jewelery', reason), true)
  DropPlayer(id, 'You were permanently banned by the server for: Exploiting')
end

-------------------------------- EVENTS --------------------------------

RegisterServerEvent('don-jewellery:server:RemoveDoorItem', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  local item = Config.DoorItem
  if not Player then return end
  Player.Functions.RemoveItem(item, 1)
end)

RegisterServerEvent('don-jewellery:server:givekeycard', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  local item = Config.hackitem
  if not Player then return end
  Player.Functions.AddItem(item, 1)
end)

RegisterServerEvent('don-jewellery:server:SetVitrineState', function(stateType, state, k)
  if stateType == "isBusy" and type(state) == "boolean" and Config.Locations[k] then
    Config.Locations[k][stateType] = state
    TriggerClientEvent('don-jewellery:client:SetVitrineState', -1, stateType, state, k)
  end
end)

RegisterServerEvent('don-jewellery:server:StoreHit', function(k, bool)
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  if not Player then return end
  TriggerClientEvent('don-jewellery:client:StoreHit', -1, k, bool)
  if k == 'all' then Config.JewelleryLocation[1].hacked = bool end
  for i = 1, #Config.JewelleryLocation do
    if k == 'all' then
      Config.JewelleryLocation[i].hit = bool
    else
      if i == k then
        Config.JewelleryLocation[k].hit = bool
      end
    end
  end
end)

RegisterServerEvent('don-jewellery:server:VitrineReward', function(vitrineIndex)
  math.randomseed(os.time())
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  local otherchance = math.random(1, 4)
  local odd = math.random(1, 4)
  local cheating = false

  if Config.Locations[vitrineIndex] == nil or Config.Locations[vitrineIndex].isOpened ~= false then
    exploitBan(src, "Trying to trigger an exploitable event \"don-jewellery:server:VitrineReward\"")
    return
  end
  if CachedPoliceAmount[src] == nil then
    DropPlayer(src, "Exploiting")
    return
  end

  local plrPed = GetPlayerPed(src)
  local plrCoords = GetEntityCoords(plrPed)
  local vitrineCoords = Config.Locations[vitrineIndex].coords

  local function randomNum(min, max)
    math.randomseed(os.time())
    local num = math.random() * (max - min) + min
    if num % 1 >= 0.5 and math.ceil(num) <= max then
      return math.ceil(num)
    end
    return math.floor(num)
  end

  if CachedPoliceAmount[src] >= Config.RequiredCops then
    if plrPed then
      local dist = #(plrCoords - vitrineCoords)
      if dist <= 25.0 then
        Config.Locations[vitrineIndex]["isOpened"] = true
        Config.Locations[vitrineIndex]["isBusy"] = false
        TriggerClientEvent('don-jewellery:client:SetVitrineState', -1, "isOpened", true, vitrineIndex)
        TriggerClientEvent('don-jewellery:client:SetVitrineState', -1, "isBusy", false, vitrineIndex)

        local reward = Config.VitrineRewards[randomNum(1, #Config.VitrineRewards)]
        local amount = randomNum(reward['amount'].min, reward['amount'].max)
        if Player.Functions.AddItem(reward.item, amount) then
          TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[reward.item], 'add')
          TriggerEvent('qb-log:server:CreateLog', 'donjewellery', 'Jewellery Robbery', 'red', ('Name: %s | License: (%s)\n Info: Robbed a [Jewellery Case] and recieved (%s) %s '):format(GetPlayerName(src), Player.PlayerData.license, amount, reward.item))
        else
          TriggerClientEvent('QBCore:Notify', src, Lang:t('error.to_much'), 'error')
        end
      else
        cheating = true
      end
    end
  else
    cheating = true
  end

  if cheating then
    local license = Player.PlayerData.license
    if Flags[license] then
      Flags[license] = Flags[license] + 1
    else
      Flags[license] = 1
    end
    if Flags[license] >= 3 then
      exploitBan("Getting flagged many times from exploiting the \"don-jewellery:server:VitrineReward\" event")
    else
      DropPlayer(src, "Exploiting")
    end
  end
end)

RegisterServerEvent('don-jewellery:server:SetTimeout', function(vitrine)
  local store = 0
  if vitrine >= 1 and vitrine <= 20 then
    store = 1
  elseif vitrine >= 21 and vitrine <= 26 then
    store = 2
  elseif vitrine >= 27 and vitrine <= 32 then
    store = 3
  end
  if not TimeOuts[store] then
    TimeOuts[store] = true
    TriggerEvent('qb-scoreboard:server:SetActivityBusy', "jewellery", true)
    CreateThread(function()
      Wait(Config.Timeout)
      Config.JewelleryLocation[1]["hacked"] = false
      for i = 1, #Config.JewelleryLocation do
        Config.JewelleryLocation[i]["hit"] = false
      end
      TriggerClientEvent('don-jewellery:client:StoreHit', -1, 'all', false)
      for i = 1, #Config.Locations do
        Config.Locations[i]["isOpened"] = false
        TriggerClientEvent('don-jewellery:client:SetVitrineState', -1, 'isOpened', false, i)
        TriggerClientEvent('don-jewellery:client:SetAlertState', -1, false)
        TriggerEvent('qb-scoreboard:server:SetActivityBusy', "jewellery", false)
      end
      TimeOuts[store] = false
    end)
  end
end)

-------------------------------- CALLBACKS --------------------------------

QBCore.Functions.CreateCallback('don-jewellery:server:GetCops', function(source, cb)
  local src = source
	local amount = 0
  for _, v in pairs(QBCore.Functions.GetQBPlayers()) do
    if v.PlayerData.job.type == "leo" and v.PlayerData.job.onduty then
      amount = amount + 1
    end
  end
  CachedPoliceAmount[src] = amount
  cb(amount)
end)

QBCore.Functions.CreateCallback('don-jewellery:server:GetJewelleryState', function(_, cb)
  local data = {Locations = Config.Locations, Hacks = Config.JewelleryLocation}
	cb(data)
end)