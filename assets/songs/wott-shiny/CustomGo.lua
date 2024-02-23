function onCountdownTick(c)
if c == 3 then
	makeAnimatedLuaSprite('Go Shine','UI/Go Shine',200,460)addAnimationByPrefix('Go Shine','dance','Go Shine',40,true);
	objectPlayAnimation('Go Shine','dance',false);
	setScrollFactor('Go Shine', 1, 1);
	setGraphicSize('Go Shine',450,450);
	addLuaSprite('Go Shine',true);
	doTweenAlpha('ShineBye', 'Go Shine', 0,1.1,'linear');
	playSound('IntroGoShiny',1)
end
end

