function onCreatePost()
	makeLuaText("lol", "btw old input is on have fun", 0, 100.0, 680.0)
	setObjectCamera("lol", 'hud')
	addLuaText("lol")
end
function onUpdate()
if inputLag then
	setProperty('boyfriend.stunned', true);
else
	setProperty('boyfriend.stunned', false);
	runTimer('Lag', .1)
end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
inputLag = true
if isSustainNote == false then
runTimer('Lag', .1)
else
inputLag = false
end
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'Lag' then
	inputLag = false
end
end

function onStepHit()
	if curStep == 1 then
		doTweenY("lolgone", "lol", 750, 5.0, "")
	end
end