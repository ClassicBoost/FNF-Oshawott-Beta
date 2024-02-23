function onCreate()
	doTweenAlpha('intro','camGame',0,0.01)
	doTweenAlpha('intro2', 'camHUD', 0, 0.01, 'linear')
	makeLuaSprite('Call', 'backgrounds/discord/Call', -800, 0);
	setScrollFactor('Call', 1, 1);
	scaleObject('Call', 2, 2)
	addLuaSprite('Call', false);
	setProperty('skipCountdown',true)
end
function onCreatePost()

end
function onUpdate()
	triggerEvent('Camera Follow Pos', 100,512)
	setProperty('boyfriend.scale.x', 1.2)
	setProperty('boyfriend.scale.y', 1.2)
	setProperty('gf.scale.x', 1.25)
	setProperty('gf.scale.y', 1.25)
	setProperty('dad.scale.x', 1.2)
	setProperty('dad.scale.y', 1.2)
	if curStep == 5 then
		doTweenAlpha('introback','camGame',1,4)
		doTweenAlpha('introback2', 'camHUD', 1, 4, 'linear')
		setPropertyFromGroup('opponentStrums', 0, 'alpha', 1)
		setPropertyFromGroup('opponentStrums', 1, 'alpha', 1)
		setPropertyFromGroup('opponentStrums', 2, 'alpha', 1)
		setPropertyFromGroup('opponentStrums', 3, 'alpha', 1)
		setPropertyFromGroup('playerStrums', 0, 'alpha', 1)
		setPropertyFromGroup('playerStrums', 1, 'alpha', 1)
		setPropertyFromGroup('playerStrums', 2, 'alpha', 1)
		setPropertyFromGroup('playerStrums', 3, 'alpha', 1)
	end
end