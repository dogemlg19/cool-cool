function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is a Fire Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Karma_Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'custom_notetypes/Karma_Note'); --Change texture --Change note splash texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashHue', 0);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashSat', 0);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashBrt', -100);
			--setPropertyFromGroup('unspawnNotes', i, 'x', getPropertyFromGroup('unspawnNotes', i, 'x')-166);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Lets Opponent's instakill notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
			else
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);
			end
		end
	end
end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Karma_Note' then
		if getProperty('boyfriend.curCharacter') == 'chara_bf' or getProperty('boyfriend.curCharacter') == 'chara_bf_KR' then
			triggerEvent('Change Character', 'bf', 'chara_bf_KR');
		end
		triggerEvent('Play Animation', 'singUPmiss', 'bf');
		playSound('bone', 1, 'bone_so');
		triggerEvent('Play Animation', 'singUPmiss', 'bf');
		runTimer('si', 0.001);
		
		runTimer('healthdrain', 0.0001);
	end
end
local healthDrained = 0;
function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'si' then
		triggerEvent('Play Animation', 'singUPmiss', 'bf');
	end
	if tag == 'healthdrain' then
		setHealth(getProperty('health') - 0.0008);
		healthDrained = healthDrained + 0.0008;
		if healthDrained < 0.5 then
			runTimer('healthdrain', 0.0001);
		else
			if getProperty('boyfriend.curCharacter') == 'chara_bf' or getProperty('boyfriend.curCharacter') == 'chara_bf_KR' then
				triggerEvent('Change Character', 'bf', 'chara_bf');
			end
			healthDrained = 0;
		end
	end
end