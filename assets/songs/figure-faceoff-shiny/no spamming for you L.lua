local tweenedHud = {
    'timeBar',
    'timeBarBG',
    'healthBar',
    'healthBarBG',
    'iconP1',
    'iconP2',
}
missPressLol = 0
function onCreatePost()
	setProperty('botplayTxt.text',':|')

	makeLuaText("bruh", "", 0, 180, 300.0)
    setTextAlignment("bruh", 'left')
    setTextSize("bruh", 18)
    setTextBorder("bruh", 2, '000000')
    addLuaText("bruh")
end
function noteMiss(membersIndex, noteData, noteType, isSustainNote)
    --setProperty('health',-69)
end
function noteMissPress(membersIndex, noteData, noteType, isSustainNote)
    missPressLol = missPressLol + 1
	setTextString('bruh','Note Miss Press Strikes: '..missPressLol)
	playSound('vineboom')
end
function onStepHit()
	if curStep >= 32 then
		for i, specHud in pairs(tweenedHud) do
            doTweenAlpha('tween'..i, specHud, 0, 0.2, elasticInOut)
        end
	end
end