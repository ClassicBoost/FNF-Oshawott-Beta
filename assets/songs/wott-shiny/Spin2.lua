local idiots = 1
function onUpdate(elapsed)
idiots = idiots + 10
if getPropertyFromClass('backend.ClientPrefs', "data.flashing") == true then
    setProperty('gf.angle',idiots)
end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'GF Sing' then
		if direction == 0 then 
			noteTweenAngle('A' , 4 , 1440 * numberP , 0.1, linear);
			setCharacterX('gf',getCharacterX('gf')-30)
		end
		if direction == 1 then
			noteTweenAngle('B', 5 , 1440 * numberP , 0.1, linear);
			setCharacterY('gf',getCharacterY('gf')+30)
		end
		if direction == 2 then
			noteTweenAngle('C', 6 , 1440 * numberP , 0.1, linear);
			setCharacterY('gf',getCharacterY('gf')-30)
		end
		if direction == 3 then
			noteTweenAngle('D', 7 , 1440 * numberP , 0.1, linear);
			setCharacterX('gf',getCharacterX('gf')+30)
		end
	end

	if noteType == 'DuetBFGF' then
		if direction == 0 then 
			noteTweenAngle('A' , 4 , 1440 * numberP , 0.1, linear);
			setCharacterX('gf',getCharacterX('gf')-30)
			setCharacterX('boyfriend',getCharacterX('boyfriend')-30)
		end
		if direction == 1 then
			noteTweenAngle('B', 5 , 1440 * numberP , 0.1, linear);
			setCharacterY('gf',getCharacterY('gf')+30)
			setCharacterY('boyfriend',getCharacterY('boyfriend')+30)
		end
		if direction == 2 then
			noteTweenAngle('C', 6 , 1440 * numberP , 0.1, linear);
			setCharacterY('gf',getCharacterY('gf')-30)
			setCharacterY('boyfriend',getCharacterY('boyfriend')-30)
		end
		if direction == 3 then
			noteTweenAngle('D', 7 , 1440 * numberP , 0.1, linear);
			setCharacterX('gf',getCharacterX('gf')+30)
			setCharacterX('boyfriend',getCharacterX('boyfriend')+30)
		end
	end
end



function noteMiss(id, direction, noteType, isSustainNote)
	if noteType == 'GF Sing' then
		if direction == 0 then 
			noteTweenAngle('A' , 4 , 1440 * numberP , 0.1, linear);
			setCharacterX('gf',getCharacterX('gf')-30)
		end
		if direction == 1 then
			noteTweenAngle('B', 5 , 1440 * numberP , 0.1, linear);
			setCharacterY('gf',getCharacterY('gf')+30)
		end
		if direction == 2 then
			noteTweenAngle('C', 6 , 1440 * numberP , 0.1, linear);
			setCharacterY('gf',getCharacterY('gf')-30)
		end
		if direction == 3 then
			noteTweenAngle('D', 7 , 1440 * numberP , 0.1, linear);
			setCharacterX('gf',getCharacterX('gf')+30)
		end
	end

	if noteType == 'DuetBF+GF' then
		if direction == 0 then 
			noteTweenAngle('A' , 4 , 1440 * numberP , 0.1, linear);
			setCharacterX('gf',getCharacterX('gf')-30)
			setCharacterX('boyfriend',getCharacterX('boyfriend')-30)
		end
		if direction == 1 then
			noteTweenAngle('B', 5 , 1440 * numberP , 0.1, linear);
			setCharacterY('gf',getCharacterY('gf')+30)
			setCharacterY('boyfriend',getCharacterY('boyfriend')+30)
		end
		if direction == 2 then
			noteTweenAngle('C', 6 , 1440 * numberP , 0.1, linear);
			setCharacterY('gf',getCharacterY('gf')-30)
			setCharacterY('boyfriend',getCharacterY('boyfriend')-30)
		end
		if direction == 3 then
			noteTweenAngle('D', 7 , 1440 * numberP , 0.1, linear);
			setCharacterX('gf',getCharacterX('gf')+30)
			setCharacterX('boyfriend',getCharacterX('boyfriend')+30)
		end
	end
end
