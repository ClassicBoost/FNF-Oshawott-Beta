function onCreate()

	if songName == "OshaNo" then
		makeLuaSprite('OshaNoBG', 'backgrounds/osha/OshaNoBG', -1200, 0);
	elseif songName == 'OshaNo Shiny' then
		makeLuaSprite('OshaNoBG', 'backgrounds/osha/OshaNoBGShiny', -1200, 0);
	end
		setScrollFactor('OshaNoBG', 1, 1);
		scaleObject('OshaNoBG',1.5, 1.5)
		addLuaSprite('OshaNoBG', false);
		
	setProperty('skipCountdown',true)
	doTweenAlpha('intro','camGame',0,0.01)
	doTweenAlpha('intro2', 'camHUD', 0, 0.01, 'linear')
end
function onCreatePost()
	setProperty('gf.visible',false)
	setProperty('camZooming',true)
end
function onUpdate()
	triggerEvent('Camera Follow Pos', -100,420)
if curStep == 15 then
	doTweenAlpha('introback','camGame',1,2)
	doTweenAlpha('introback2', 'camHUD', 1, 2, 'linear')
	setPropertyFromGroup('opponentStrums', 0, 'alpha', 1)
	setPropertyFromGroup('opponentStrums', 1, 'alpha', 1)
	setPropertyFromGroup('opponentStrums', 2, 'alpha', 1)
	setPropertyFromGroup('opponentStrums', 3, 'alpha', 1)
	setPropertyFromGroup('playerStrums', 0, 'alpha', 1)
	setPropertyFromGroup('playerStrums', 1, 'alpha', 1)
	setPropertyFromGroup('playerStrums', 2, 'alpha', 1)
	setPropertyFromGroup('playerStrums', 3, 'alpha', 1)
end
if curStep == 384 then
	doTweenAlpha('introback','camGame',0,2)
	doTweenAlpha('introback2', 'camHUD', 0, 2, 'linear')
end
end