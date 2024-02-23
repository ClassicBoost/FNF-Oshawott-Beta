function onCreate()
	x = -600
	y = -750
	phx = x-220
	phy = y+450
	scale = 0.7

	makeLuaSprite('bg','backgrounds/mood/day',0,0)
	setProperty('bg.scale.x', 2);
	setProperty('bg.scale.y', 2);

	makeLuaSprite('wasteland','backgrounds/wasteland/wasteland',x,y)
	setProperty('wasteland.scale.x', 1);
	setProperty('wasteland.scale.y', 1);

	makeLuaSprite('rv','backgrounds/rv/rv',x-50,y+270)
	setProperty('rv.scale.x', scale);
	setProperty('rv.scale.y', scale);

	makeLuaSprite('vault','backgrounds/vault/vault',x-50,y+270)
	setProperty('vault.scale.x', scale);
	setProperty('vault.scale.y', scale);
	setProperty('vault.visible', false);

	setScrollFactor('wasteland', 0.05, 0.05);
	setScrollFactor('bg', 0.01, 0.01);

	addLuaSprite('bg',false)
	addLuaSprite('wasteland',false)
	addLuaSprite('rv',false)
	addLuaSprite('vault',false)
end