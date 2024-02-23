local beatTimer = 0
local fuck = false
function onCreatePost()
    makeAnimatedLuaSprite('fakejudgements', 'UI/fake-judgements', 400,200)
	addAnimationByPrefix('fakejudgements', '1', 'sick', 1, true)
	addAnimationByPrefix('fakejudgements', '2', 'good', 1, true)
	objectPlayAnimation('fakejudgements', '1', false)
	setProperty('fakejudgements.visible',false)
	--setScrollFactor('fakejudgements', 0.5, 0.5);
	addLuaSprite('fakejudgements',true)

	setProperty('camHUD.visible',false)
end

---
--- @param membersIndex int
--- @param noteData int
--- @param noteType string
--- @param isSustainNote bool
---
function opponentNoteHit(membersIndex, noteData, noteType, isSustainNote)
    if not isSustainNote and curStep > 128 then
        if getProperty('health') > 0.45 then
        setProperty('health',getProperty('health') - 0.04)
        end

    setProperty('fakejudgements.visible',true)
	cancelTween('judg')
	ratingLuck = getRandomInt(1, 4, true)
	setProperty('fakejudgements.scale.x',1)
	setProperty('fakejudgements.scale.y',1)
	setProperty('fakejudgements.y',200)
	doTweenY('judg','fakejudgements', 220, 0.1, 'linear')
	beatTimer = 2
	if ratingLuck == 4 then
	objectPlayAnimation('fakejudgements', '2', false)
	else
	objectPlayAnimation('fakejudgements', '1', false)
	end
    end
end

function onBeatHit()
    beatTimer = beatTimer - 1
    if beatTimer == 0 then
		doTweenX('judgezoomx','fakejudgements.scale', 0, 0.2, 'cubeOut')
		doTweenY('judgezoomy','fakejudgements.scale', 0, 0.2, 'cubeOut')
	end
end

function onStepHit()
	if curStep == 128 then
		setProperty('camHUD.visible',true)
	end
	setProperty('camZooming',false)
end