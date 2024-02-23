function onCreate()
	addCharacterToList('bf-back', 'boyfriend')
	addCharacterToList('FrontOshawott', 'dad')
	addCharacterToList('bf-back-shiny', 'boyfriend')
	addCharacterToList('FrontOshawottshiny', 'dad')
	precacheImage('Battle')
	makeLuaSprite('stage', 'backgrounds/forest/grassBG', -250, -180);
	addLuaSprite('stage', false);
	if songName == 'Ocean Aggrivation' or songName == 'Ocean Aggrivation Shiny' then
		setProperty('skipCountdown',true)
	end
end

function onStepHit() 
	if songName == 'Shellshock' or songName == 'Shellshock shiny' then
		if (curStep == 896) then
			makeLuaSprite('Battle', 'backgrounds/battle/Battle', -250, -230);
			addLuaSprite('Battle', false);
			scaleObject('Battle',1.5,1.5)
			setProperty('defaultCamZoom',0.4)
			--setProperty('boyfriend.scale.x', 4)
			--setProperty('boyfriend.scale.y', 4)
			setProperty('dad.scale.x', 1)
			setProperty('dad.scale.y', 1)
			triggerEvent('Camera Follow Pos',1600,750);
			if songName == 'Shellshock shiny' then
			triggerEvent('Change Character','BF','bf-back-shiny')
			triggerEvent('Change Character','dad','FrontOshawottshiny')
			else
			triggerEvent('Change Character','BF','bf-back')
			triggerEvent('Change Character','dad','FrontOshawott')
			end
			triggerEvent('Change Character','gf','bfblank')
			setCharacterX('boyfriend',500)
			setCharacterY('boyfriend',1000)
			setCharacterX('dad',2200)
			setCharacterY('dad',-150)
			
            noteTweenX("x5", 4, 92, 1, "quartInOut");
            noteTweenAngle("r5", 4, 360, 1, "quartInOut");
            noteTweenX("x6", 5, 203, 1, "quartInOut");
            noteTweenAngle("r6", 5, 360, 1, "quartInOut");
            noteTweenX("x7", 6, 314, 1, "quartInOut");
            noteTweenAngle("r7", 6, 360, 1, "quartInOut");
            noteTweenX("x8", 7, 425, 1, "quartInOut");
            noteTweenAngle("r8", 7, 360, 1, "quartInOut");
			
            noteTweenX("x11", 0, -1000, 0.2, "quartInOut");
            noteTweenAngle("r11", 0, 360, 0.2, "quartInOut");
            noteTweenX("x21", 1, -1000, 0.2, "quartInOut");
            noteTweenAngle("r21", 1, 360, 0.2, "quartInOut");
            noteTweenX("x31", 2, -1000, 0.2, "quartInOut");
            noteTweenAngle("r31", 2, 360, 0.2, "quartInOut");
            noteTweenX("x41", 3, -1000, 0.2, "quartInOut");
            noteTweenAngle("r41", 3, 360, 0.2, "quartInOut");
			
			makeLuaSprite('flash', '', -500, -500);
			makeGraphic('flash',1280,720,'000000')
			addLuaSprite('flash', true);
			setLuaSpriteScrollFactor('flash',0,0)
			setProperty('flash.scale.x',5)
			setProperty('flash.scale.y',5)
			setProperty('flash.alpha',0)
			setProperty('flash.alpha',1)
			doTweenAlpha('flTw','flash',0,0.5,'linear')
		end
		if curStep == 1152 then
			setCharacterX('boyfriend',1300)
			setCharacterY('boyfriend',750)
			setCharacterX('dad',430)
			setCharacterY('dad',750)
			--setProperty('boyfriend.scale.x', 1)
			--setProperty('boyfriend.scale.y', 1)
			setProperty('dad.scale.x', 0.5)
			setProperty('dad.scale.y', 0.5)
			if songName == 'Shellshock shiny' then
			triggerEvent('Change Character','BF','shinybf')
			triggerEvent('Change Character','dad','oshawottshiny')
			triggerEvent('Change Character','gf','gf-shiny')
			else
			triggerEvent('Change Character','BF','bf')
			triggerEvent('Change Character','dad','Oshawott')
			triggerEvent('Change Character','gf','gf')
			end
			setProperty('defaultCamZoom',0.75)
			removeLuaSprite('Battle', true)
			triggerEvent('Camera Follow Pos','','');
			
			noteTweenX("backx5", 4, 740, 1, "quartInOut");
            noteTweenAngle("backr5", 4, 360, 1, "quartInOut");
            noteTweenX("backx6", 5, 852,1, "quartInOut");
            noteTweenAngle("backr6", 5, 360, 1, "quartInOut");
            noteTweenX("backx7", 6, 963, 1, "quartInOut");
            noteTweenAngle("backr7", 6, 360, 1, "quartInOut");
            noteTweenX("backx8", 7, 1075, 1, "quartInOut");
            noteTweenAngle("backr8", 7, 360, 1, "quartInOut");
			
            noteTweenX("backx1", 0, 2000, 0.2, "quartInOut");
            noteTweenAngle("backr1", 0, 360, 0.2, "quartInOut");
            noteTweenX("backx2", 1, 2000, 0.2, "quartInOut");
            noteTweenAngle("backr2", 1, 360, 0.2, "quartInOut");
            noteTweenX("backx3", 2, 2000, 0.2, "quartInOut");
            noteTweenAngle("backr3", 2, 360, 0.2, "quartInOut");
            noteTweenX("backx4", 3, 2000, 0.2, "quartInOut");
            noteTweenAngle("backr4", 3, 360, 0.2, "quartInOut");
			
			makeLuaSprite('flash2', '', -500, -500);
			makeGraphic('flash2',1280,720,'000000')
			addLuaSprite('flash2', true);
			setLuaSpriteScrollFactor('flash2',0,0)
			setProperty('flash2.scale.x',5)
			setProperty('flash2.scale.y',5)
			setProperty('flash2.alpha',0)
			setProperty('flash2.alpha',1)
			doTweenAlpha('flTw2','flash2',0,2,'linear')
		end
		if songName == 'Shellshock Shiny' then
		if curStep == 1152 then
			doTweenZoom('zoom', 'camGame', 1.5, 12.5, 'linear')
		end
		end
	end
end
function onTweenCompleted(tag)
	if tag == "r41" then 
		noteTweenAlpha("x12", 0, 0, 0.1, "linear");
		noteTweenAlpha("x22", 1, 0, 0.1, "linear");
		noteTweenAlpha("x32", 2, 0, 0.1, "linear");
		noteTweenAlpha("x42", 3, 0, 0.1, "linear");
	end
	if tag == "x12" then
		noteTweenX("x13", 0, 2000, 0.1, "quartInOut");
		noteTweenX("x23", 1, 2000, 0.1, "quartInOut");
		noteTweenX("x33", 2, 2000, 0.1, "quartInOut");
		noteTweenX("x43", 3, 2000, 0.1, "quartInOut");
		noteTweenY("y13", 0, 600, 0.1, "quartInOut");
		noteTweenY("y23", 1, 600, 0.1, "quartInOut");
		noteTweenY("y33", 2, 600, 0.1, "quartInOut");
		noteTweenY("y43", 3, 600, 0.1, "quartInOut");
		setPropertyFromGroup('opponentStrums', 0, 'downScroll', true)
		setPropertyFromGroup('opponentStrums', 1, 'downScroll', true)
		setPropertyFromGroup('opponentStrums', 2, 'downScroll', true)
		setPropertyFromGroup('opponentStrums', 3, 'downScroll', true)
	end
	if tag == "x13" then
		noteTweenAlpha("x14", 0, 1, 0.1, "linear");
		noteTweenAlpha("x24", 1, 1, 0.1, "linear");
		noteTweenAlpha("x34", 2, 1, 0.1, "linear");
		noteTweenAlpha("x44", 3, 1, 0.1, "linear");
	end
	if tag == "x14" then
		noteTweenX("x15", 0, 740, 0.6, "quartInOut");
		noteTweenX("x25", 1, 852, 0.6, "quartInOut");
		noteTweenX("x35", 2, 963, 0.6, "quartInOut");
		noteTweenX("x45", 3, 1075, 0.6, "quartInOut");
		noteTweenAngle("r18", 0, 360, 0.6, "quartInOut");
		noteTweenAngle("r28", 1, 360, 0.6, "quartInOut");
		noteTweenAngle("r38", 2, 360, 0.6, "quartInOut");
		noteTweenAngle("r48", 3, 360, 0.6, "quartInOut");
	end
	
	
	if tag == "backr4" then
		noteTweenAlpha("x121", 0, 0, 0.1, "linear");
		noteTweenAlpha("x221", 1, 0, 0.1, "linear");
		noteTweenAlpha("x321", 2, 0, 0.1, "linear");
		noteTweenAlpha("x421", 3, 0, 0.1, "linear");
	end
	if tag == "x121" then
		noteTweenX("x131", 0, -500, 0.1, "quartInOut");
		noteTweenX("x231", 1, -500, 0.1, "quartInOut");
		noteTweenX("x331", 2, -500, 0.1, "quartInOut");
		noteTweenX("x431", 3, -500, 0.1, "quartInOut");
		noteTweenY("y131", 0, 50, 0.1, "quartInOut");
		noteTweenY("y231", 1, 50, 0.1, "quartInOut");
		noteTweenY("y331", 2, 50, 0.1, "quartInOut");
		noteTweenY("y431", 3, 50, 0.1, "quartInOut");
		setPropertyFromGroup('opponentStrums', 0, 'downScroll', false)
		setPropertyFromGroup('opponentStrums', 1, 'downScroll', false)
		setPropertyFromGroup('opponentStrums', 2, 'downScroll', false)
		setPropertyFromGroup('opponentStrums', 3, 'downScroll', false)
	end
	if tag == "x131" then
		noteTweenAlpha("x141", 0, 1, 0.1, "linear");
		noteTweenAlpha("x241", 1, 1, 0.1, "linear");
		noteTweenAlpha("x341", 2, 1, 0.1, "linear");
		noteTweenAlpha("x441", 3, 1, 0.1, "linear");
	end
	if tag == "x441" then
		noteTweenX("x511", 0, 92, 0.6, "quartInOut");
		noteTweenAngle("r511", 0, 360, 0.6, "quartInOut");
		noteTweenX("x611", 1, 203, 0.6, "quartInOut");
		noteTweenAngle("r61", 1, 360, 0.6, "quartInOut");
		noteTweenX("x71", 2, 314, 0.6, "quartInOut");
		noteTweenAngle("r71", 2, 360, 0.6, "quartInOut");
		noteTweenX("x81", 3, 425, 0.6, "quartInOut");
		noteTweenAngle("r81", 3, 360, 0.6, "quartInOut");
	end
end
