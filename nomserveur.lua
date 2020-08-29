Citizen.CreateThread(function()
	while true do
        --Application ID
		SetDiscordAppId([Id de votre bot's])

        --Grand Logo
		SetDiscordRichPresenceAsset('[votre grand logo]')
        
        --Text quand on passe la souris dessus
        SetDiscordRichPresenceAssetText('[votre texte]')
       
        --Petit Logo
        SetDiscordRichPresenceAssetSmall('[votre petit logo]')

        --Petit Text quand on passe la souris dessus
        SetDiscordRichPresenceAssetSmallText('🔊➢[votre discord]')


        players = {}
        for i = 0, 255 do
            if NetworkIsPlayerActive ( i ) then
                tableinsert ( players, i )
            end
        
        end

        SetDiscordRichPresence(GetPlayerName(PlayerId()) .. "/" .. #players .. "/slots")

        --It updates every one minute just in case.
		Citizen.Wait(60000)
	end
end
