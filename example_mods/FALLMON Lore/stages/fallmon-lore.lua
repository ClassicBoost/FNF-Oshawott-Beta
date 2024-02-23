function onCreate()
	makeLuaSprite("bg", 'backgrounds/fallmon-lore/screenshot', 0, 0)
	scaleObject("bg", 2.0, 2.0, true)
	addLuaSprite("bg", false)

	makeLuaSprite("join", 'backgrounds/fallmon-lore/join', 0, 500)
	setObjectCamera("join", 'hud')
	addLuaSprite("join", true)
end
function onCreatePost()
	setProperty('join.alpha',0)
	setProperty('gf.alpha',0)
end
function onStepHit()
	if curStep == 2272 then
	setProperty('join.alpha',1)
	setProperty('gf.alpha',1)
	end
	if curStep == 2320 then
	doTweenAlpha("joinfade", "join", 0, 2.0, "linear")
	end
end