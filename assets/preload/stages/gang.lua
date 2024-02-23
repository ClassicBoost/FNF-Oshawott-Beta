function onCreate()
	-- background shit
	makeLuaSprite('stageback', 'gangback', -1000, -400);
	setLuaSpriteScrollFactor('gangback', 0.9, 0.9);
	
	makeLuaSprite('stagefront', 'backgrounds/stage/stagefront', -650, 600);
	setLuaSpriteScrollFactor('stagefront', 0.9, 0.9);
	scaleObject('stagefront', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('stagelight_left', 'blank', -125, -100);
		setLuaSpriteScrollFactor('blankt', 0.9, 0.9);
		scaleObject('blank', 1.1, 1.1);
		
		makeLuaSprite('stagelight_right', 'blank', 1225, -100);
		setLuaSpriteScrollFactor('blank', 0.9, 0.9);
		scaleObject('blank', 1.1, 1.1);
		setPropertyLuaSprite('blank', 'flipX', true); --mirror sprite horizontally

		makeLuaSprite('stagecurtains', 'blank', -500, -300);
		setLuaSpriteScrollFactor('blank', 1.3, 1.3);
		scaleObject('blank', 0.9, 0.9);
	end

	addLuaSprite('stageback', false);
	addLuaSprite('stagefront', false);
	addLuaSprite('stagelight_left', false);
	addLuaSprite('stagelight_right', false);
	addLuaSprite('stagecurtains', false);
	
end