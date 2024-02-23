function onCreate()
	-- background shit
	makeLuaSprite('raina', 'backgrounds/raina/raina', 0, 0);
	setScrollFactor('raina', 1, 1);
	addLuaSprite('raina', false);
end
function onUpdate(elapsed)
	setProperty('boyfriend.scale.x', 1.4)
	setProperty('boyfriend.scale.y', 1.4)
	setProperty('gf.scale.x', 1.4)
	setProperty('gf.scale.y', 1.4)
	for i=0,3 do
        setPropertyFromGroup('opponentStrums',i,'alpha',0)
	end
	if curStep == 10 then
		setProperty('defaultCamZoom',1.1)
	end
end
function onSongStart()
	doTweenZoom('zoom', 'camGame', 1.1, 1.35, 'backIn')
end