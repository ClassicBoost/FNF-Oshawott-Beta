local beatTimer = 0
local fuck = false
function onCreatePost()
    makeAnimatedLuaSprite('fakejudgements', 'UI/fake-judgements', 300,200)
	addAnimationByPrefix('fakejudgements', '1', 'sick', 1, true)
	addAnimationByPrefix('fakejudgements', '2', 'good', 1, true)
	objectPlayAnimation('fakejudgements', '1', false)
	setProperty('fakejudgements.visible',false)
	--setScrollFactor('fakejudgements', 0.5, 0.5);
	addLuaSprite('fakejudgements',true)
end

---
--- @param membersIndex int
--- @param noteData int
--- @param noteType string
--- @param isSustainNote bool
---
function opponentNoteHit(membersIndex, noteData, noteType, isSustainNote)
    if not isSustainNote then
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

	if curBeat % 2 == 0 then
		if fuck then
			fuck = false
            triggerEvent('Change Scroll Speed',0.8,0.35)
		else
			fuck = true
			triggerEvent('Change Scroll Speed',1,0.35)
		end
    end
end