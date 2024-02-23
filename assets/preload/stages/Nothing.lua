function onUpdate(elapsed)
	if songName == 'Dance' then
		for i=0,3 do
			setPropertyFromGroup('opponentStrums',i,'alpha',0)
		end
	end
end