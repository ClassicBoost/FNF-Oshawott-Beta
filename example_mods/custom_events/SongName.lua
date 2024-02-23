function onEvent(name, value1, value2)
    if name == 'SongName' then
    makeLuaSprite('SongSquare', 'realblack', -400, 50);
    addLuaSprite('SongSquare', true);
    scaleObject('SongSquare', 0.16, 0.12)
    setLuaSpriteScrollFactor('realblack', 0.5, 0.8);
    setObjectCamera('SongSquare', 'other');
    doTweenAlpha('SongSquare.alpha', 'SongSquare', 0.6, 0.001, 'linear');

    makeLuaText('SongText', value1, 400, -400, 70)
    addLuaText('SongText')
    setTextSize('SongText', 30)
    setObjectCamera('SongText', 'other');
    setTextColor('SongText', 'B0FFFF')
    makeLuaText('SongAutor', value2, 508, -400, 160)
    addLuaText('SongAutor')
    setTextSize('SongAutor', 30)
    setObjectCamera('SongAutor', 'other');
    setTextAlignment('SongText', 'left')
    setTextAlignment('SongAutor', 'left')
    setTextColor('SongAutor', 'ffffdc')
	doTweenX('SongSquare', 'SongSquare', 0, 0.7, 'quadOut')
    doTweenX('SongText', 'SongText', 10, 0.7, 'quadOut')
    doTweenX('SongAutor', 'SongAutor', 10, 0.7, 'quadOut')
    runTimer('ThingSong', 3, 1)
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'ThingSong' then
        doTweenX('SongSquare', 'SongSquare', -450, 0.7, 'quadIn')
        doTweenX('SongText', 'SongText', -400, 0.7, 'quadIn')
        doTweenX('SongAutor', 'SongAutor', -400, 0.7, 'quadIn')
    end
end