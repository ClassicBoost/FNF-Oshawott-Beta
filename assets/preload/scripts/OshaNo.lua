function onCreate()
	if songName == "OshaNo Shiny" then --Only load for that song
	addCharacterToList("FUCKOFF", 'dad')
	end
end

function onUpdate()
	if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.ONE') then
		if songName == "OshaNo Shiny" then
			setPropertyFromClass('flixel.FlxG', 'sound.music.volume',0)
			setProperty('vocals.volume',0)
			setObjectOrder('dadGroup', getObjectOrder('dadGroup')+1)
			playSound('fuckoff', 2)
			triggerEvent('Change Character', 1, "FUCKOFF");
			setProperty('dad.scale.x', 20)
			setProperty('dad.scale.y', 20)
			runTimer('timetogobyebye', 1.4, 0)
		end
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'timetogobyebye' then
		setProperty('health',-69)
	end
end