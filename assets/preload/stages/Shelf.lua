function onCreate()
	makeLuaSprite('Shelf', 'backgrounds/shelf/Shelf', -1950, -1100);
	setScrollFactor('Shelf', 1, 1);
	scaleObject('Shelf',1.5,1.5)
	addLuaSprite('Shelf', false);
	
	makeAnimatedLuaSprite('FigurineDance idle','backgrounds/shelf/FigurineDance',-1990,80)addAnimationByPrefix('FigurineDance idle','dance','FigurineDance instância',24,true)
	objectPlayAnimation('FigurineDance idle','dance',false)
	setScrollFactor('FigurineDance idle', 1, 1);
	scaleObject('FigurineDance idle',1.5,1.5)
	addLuaSprite('FigurineDance idle', false);



end
function onUpdate()
	triggerEvent('Camera Follow Pos',200,500);
end


