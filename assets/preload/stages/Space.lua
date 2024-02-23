local spin = 1
function onCreate()
	makeLuaSprite('stage', 'backgrounds/space/Space',-800,-800);
	scaleObject('stage', 3, 3)
	addLuaSprite('stage', false);
	setScrollFactor('stage', 0, 0);

	makeAnimatedLuaSprite("avali", "backgrounds/space/BF_AVALI", -600, 200)
	addAnimationByPrefix("avali", "idle", "idle", 24, true)
	playAnim("avali", "idle", true)
	scaleObject("avali", 0.1, 0.1)
	setScrollFactor("avali", 0.01, 0.01)
	addLuaSprite("avali", false)
end

function onStepHit()
	if songName == 'Wott Shiny' and getPropertyFromClass('backend.ClientPrefs', "data.flashing") == true then
	if curStep == 200 then
		doTweenX("avalimove", "avali", 2500, 6.0, "linear")
	end
	if curStep == 1111 then
		doTweenX("avalimove", "avali", -1000, 6.0, "linear")
	end
end
end

function onUpdate(elapsed)
	spin = spin + 5
	setProperty('avali.angle',spin)
end