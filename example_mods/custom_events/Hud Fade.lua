local tweenedHud = {
    'timeBar',
    'timeBarBG',
    'healthBar',
    'healthBarBG',
    'iconP1',
    'iconP2',
    'timeTxt',
    'scoreTxt',
}

function onEvent(name, value1, value2)
    if name == 'Hud Fade' then
        doTweenAlpha('tweenFuck', 'camHUD', value2, value1, elasticInOut)
    end
end