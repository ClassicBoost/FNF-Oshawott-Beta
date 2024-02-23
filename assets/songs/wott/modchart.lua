function onUpdate()
  songPos = getSongPosition()
    local currentBeat = (songPos/1000)*(bpm/200)

  currentBeat = (songPos / 3000) * (bpm / 140)
      setProperty('camHUD.angle',0 - 1 * math.cos((currentBeat*0.25)*math.pi) )
      setProperty('camGame.angle',0 - 1 * math.cos((currentBeat*0.25)*math.pi) )
end
function onStepHit()
  setProperty('health',getProperty('health')-0.002)
end