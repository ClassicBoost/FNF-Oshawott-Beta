function onCreate()
	-- background shit
	makeLuaSprite('viewpoint', 'backgrounds/viewpoint/view', -300, -420);
	setScrollFactor('viewpoint', 1, 1);
	scaleObject('viewpoint', 1.5, 1.5)
	addLuaSprite('viewpoint', false);
	
end
function onUpdate(elapsed)
	triggerEvent('Camera Follow Pos', 1100,420)
end