disableJumpscare = false
function onCreate()
    makeLuaSprite('donot','do not',0,0)
    setObjectCamera("donot", 'hud')
    scaleObject('donot',2.5,1.5)
    addLuaSprite('donot',true)
    setProperty('donot.alpha', 0)
end
function noteMiss(membersIndex, noteData, noteType, isSustainNote)
    if disableJumpscare == false then
    setProperty('donot.alpha', 1)
    playSound("vineboom", 1)
    end
end
function onUpdate(elapsed)
    setProperty('donot.alpha', getProperty('donot.alpha')-0.005)
end