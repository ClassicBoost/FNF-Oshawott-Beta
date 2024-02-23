function onBeatHit()
    if curBeat % 2 == 0 then
        setProperty('iconP1.flipX',false)
        setProperty('iconP2.flipX',false)
    else
        setProperty('iconP1.flipX',true)
        setProperty('iconP2.flipX',true)
    end
end