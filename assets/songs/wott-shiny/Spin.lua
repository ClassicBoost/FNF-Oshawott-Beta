local idiots = 1
function onUpdate(elapsed)
idiots = idiots + 10
if getPropertyFromClass('backend.ClientPrefs', "data.flashing") == true then
setProperty('dad.angle',idiots)
setProperty('boyfriend.angle',idiots)
end
end
local Active = true
function onCreate()
number = 0
numberP = 0
end
function opponentNoteHit(id, direction, noteType, isSustainNote)
if Active then
number = number + 1
if direction == 0 then
noteTweenAngle('E', 0 , 1440 * number , 0.1, linear);
setCharacterX('dad',getCharacterX('dad')-30)
end
if direction == 1 then 
noteTweenAngle('F' , 1 , 1440 * number , 0.1, linear);
setCharacterY('dad',getCharacterY('dad')+30)
end
if direction == 2 then
noteTweenAngle('G', 2 , 1440 * number , 0.1, linear);
setCharacterY('dad',getCharacterY('dad')-30)
end
if direction == 3 then
noteTweenAngle('H', 3 , 1440 * number , 0.1, linear);
setCharacterX('dad',getCharacterX('dad')+30)
end

function goodNoteHit(id, direction, noteType, isSustainNote)
if Active then
numberP = numberP + 1
if direction == 0 then 
noteTweenAngle('A' , 4 , 1440 * numberP , 0.1, linear);
setCharacterX('boyfriend',getCharacterX('boyfriend')-30)
end
if direction == 1 then
noteTweenAngle('B', 5 , 1440 * numberP , 0.1, linear);
setCharacterY('boyfriend',getCharacterY('boyfriend')+30)
end
if direction == 2 then
noteTweenAngle('C', 6 , 1440 * numberP , 0.1, linear);
setCharacterY('boyfriend',getCharacterY('boyfriend')-30)
end
if direction == 3 then
noteTweenAngle('D', 7 , 1440 * numberP , 0.1, linear);
setCharacterX('boyfriend',getCharacterX('boyfriend')+30)
end
end
end
end
end
function noteMiss(id, direction, noteType, isSustainNote)
if direction == 0 then 
noteTweenAngle('A' , 4 , 1440 * numberP , 0.1, linear);
setCharacterX('boyfriend',getCharacterX('boyfriend')-30)
end
if direction == 1 then
noteTweenAngle('B', 5 , 1440 * numberP , 0.1, linear);
setCharacterY('boyfriend',getCharacterY('boyfriend')+30)
end
if direction == 2 then
noteTweenAngle('C', 6 , 1440 * numberP , 0.1, linear);
setCharacterY('boyfriend',getCharacterY('boyfriend')-30)
end
if direction == 3 then
noteTweenAngle('D', 7 , 1440 * numberP , 0.1, linear);
setCharacterX('boyfriend',getCharacterX('boyfriend')+30)
end
end
function onKeyPress(direction)
if direction == 0 then 
noteTweenAngle('A' , 4 , 1440 * numberP , 0.1, linear);
setCharacterX('boyfriend',getCharacterX('boyfriend')-30)
end
if direction == 1 then
noteTweenAngle('B', 5 , 1440 * numberP , 0.1, linear);
setCharacterY('boyfriend',getCharacterY('boyfriend')+30)
end
if direction == 2 then
noteTweenAngle('C', 6 , 1440 * numberP , 0.1, linear);
setCharacterY('boyfriend',getCharacterY('boyfriend')-30)
end
if direction == 3 then
noteTweenAngle('D', 7 , 1440 * numberP , 0.1, linear);
setCharacterX('boyfriend',getCharacterX('boyfriend')+30)
end
end