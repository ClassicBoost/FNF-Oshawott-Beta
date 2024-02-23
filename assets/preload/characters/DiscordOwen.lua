function onEvent(n, v1, v2)
	if n == "Change Character" then
		if v2 == "DiscordOwen" then
			setCharacterY('boyfriend',-100)
			setCharacterY('dad',-100)
		end
		if v2 == "bfblank" then
			setCharacterY('boyfriend',100)
			setCharacterY('dad',100)
		end
	end
end
