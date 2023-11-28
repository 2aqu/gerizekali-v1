local function OnPlayerConnecting(name, _, deferrals)
    local player = source
	local isIdtypeAlreadyInUse = false
	local isIdtypeAlreadyInUse2 = false
    local idtype
	if Steam.VerifyBoth then
		local idtype2
	end
    local identifiers = GetPlayerIdentifiers(player)

    deferrals.defer()

    Wait(0)

    deferrals.update(string.format('Bağlantın Kontrol Ediliyor...', name))
	
	if Steam.VerifyBoth then
		for _, v in pairs(identifiers) do
			if string.find(v, 'steam') then
				idtype = v
				break
			end
		end
		for _, v in pairs(identifiers) do
			if string.find(v, 'license') then
				idtype2 = v
				break
			end
		end
	else
		for _, v in pairs(identifiers) do
			if string.find(v, Steam.VerificationMethod) then
				idtype = v
				break
			end
		end
	end

    Wait(2500)

    deferrals.update(string.format('Sunucu verileri kontrol ediliyor...', name))

	if Steam.VerifyBoth then
		isIdtypeAlreadyInUse = IsIdtypeInUse(idtype, 'steam')
	    isIdtypeAlreadyInUse2 = IsIdtypeInUse(idtype2, 'license')
	else
		isIdtypeAlreadyInUse = IsIdtypeInUse(idtype, Steam.VerificationMethod)
	end

    Wait(2500)
	
	if Steam.VerifyBoth then
		if isIdtypeAlreadyInUse or isIdtypeAlreadyInUse2 then
			deferrals.done('Sunucuya Giriş Yapamazsın Aroba ulaş - steam!..')
			
			if Steam.EnableDiscordLogs then
				local dcsend = {
					{
						['title']= Steam.DiscordTitle,
						['color'] = Steam.DiscordColor,
						['description'] = 'Oyuncu Bilgileri: **'..idtype..' / '..idtype2..'**',
						['footer']=  {
							['text']= 'bulgar_dconnect_block',
						},
					}
				}
				PerformHttpRequest(Steam.DiscordWebhookLink, function(err, text, headers) end, 'POST', json.encode({ username = Steam.DiscordUserName, embeds = dcsend}), { ['Content-Type'] = 'application/json' })
			end
		else
			deferrals.done()
			
			-- Add any additional defferals here you may need for example queue system!
		end	
	else
		if isIdtypeAlreadyInUse then
			deferrals.done('Sunucuya Giriş Yapamazsın Aroba ulaş - steam!')
			
			if Steam.EnableDiscordLogs then
				local dcsend = {
					{
						['title']= Steam.DiscordTitle,
						['color'] = Steam.DiscordColor,
						['description'] = 'Player Identifier: **'..idtype..'**',
						['footer']=  {
							['text']= 'bulgar_dconnect_block',
						},
					}
				}
				PerformHttpRequest(Steam.DiscordWebhookLink, function(err, text, headers) end, 'POST', json.encode({ username = Steam.DiscordUserName, embeds = dcsend}), { ['Content-Type'] = 'application/json' })
			end
		else
			deferrals.done()
			
			-- Add any additional defferals here you may need for example queue system!
		end
	end
end

AddEventHandler('playerConnecting', OnPlayerConnecting)

function IsIdtypeInUse(idtype, vmethod)
    local players = GetPlayers()
    for _, player in pairs(players) do
        local identifiers = GetPlayerIdentifiers(player)
        for _, id in pairs(identifiers) do
            if string.find(id, vmethod) then
                local playerIdtype = id
                if playerIdtype == idtype then
                    return true
                end
            end
        end
    end
    return false
end

