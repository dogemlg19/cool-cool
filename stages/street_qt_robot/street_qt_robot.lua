function onCreate()
	makeLuaSprite('bg', 'stages/street_qt_robot/streetBack', -750, -145);
	makeLuaSprite('bgError', 'stages/street_qt_robot/streetBackError', -750, -145);
	makeLuaSprite('bgError2', 'stages/street_qt_robot/streetError', -750, -145);
	makeLuaSprite('front', 'stages/street_qt_robot/streetFront', -820, 710);
	makeLuaSprite('frontError', 'stages/street_qt_robot/streetFrontError', -820, 710);
	makeAnimatedLuaSprite('tv', 'stages/street_qt_robot/TV_V4', -62, 540);

	setGraphicSize('front', getProperty('front.width') * 1.15);
	setGraphicSize('frontError', getProperty('frontError.width') * 1.15);
	setGraphicSize('tv', getProperty('tv.width') * 1.15);

	setScrollFactor('bg', 0.9, 0.9);
	setScrollFactor('bgError', 0.9, 0.9);
	setScrollFactor('bgError2', 0.9, 0.9);
	setScrollFactor('front', 0.9, 0.9);
	setScrollFactor('frontError', 0.9, 0.9);
	setScrollFactor('tv', 0.89, 0.89);

	addLuaSprite('bg', false);
	addLuaSprite('bgError', false);
	addLuaSprite('bgError2', false);
	addLuaSprite('front', false);
	addLuaSprite('frontError', false);
	addLuaSprite('tv', false);
	setProperty('bgError.visible', false);
	setProperty('bgError2.visible', false);
	setProperty('frontError.visible', false);

	addAnimationByPrefix('tv', 'idle', 'TV_Idle', 24, true);
	addAnimationByPrefix('tv', 'alert', 'TV_Attention', 24, true);
	addAnimationByPrefix('tv', 'eye', 'TV_eyes', 24, true);
	addAnimationByPrefix('tv', 'error', 'TV_Error', 24, true);
	addAnimationByPrefix('tv', 'BSOD', 'TV_Bluescreen', 24, true);
end

function onCountdownTick(counter)
	if counter == 0 then
		setPropertyFromGroup('opponentStrums', 1, 'visible', false);
		setPropertyFromGroup('opponentStrums', 2, 'visible', false);
		setPropertyFromGroup('opponentStrums', 3, 'visible', false);
		setPropertyFromGroup('playerStrums', 0, 'visible', false);
		setPropertyFromGroup('playerStrums', 1, 'visible', false);
		setPropertyFromGroup('playerStrums', 2, 'visible', false);
	end
end

local duration = 1 -- of appear notes

function onBeatHit()
	if curBeat < 4 then
		noteTweenAlpha('noteDownOP1', 1, 0, 0.01, 'linear');
		noteTweenAlpha('noteUpOP1', 2, 0, 0.01, 'linear');
		noteTweenAlpha('noteRightOP1', 3, 0, 0.01, 'linear');
		noteTweenAlpha('noteLeftPL1', 4, 0, 0.01, 'linear');
		noteTweenAlpha('noteDownPL1', 5, 0, 0.01, 'linear');
		noteTweenAlpha('noteUpPL1', 6, 0, 0.01, 'linear');
	end
	if curBeat == 4 then
		setPropertyFromGroup('opponentStrums', 1, 'visible', true);
		setPropertyFromGroup('opponentStrums', 2, 'visible', true);
		setPropertyFromGroup('opponentStrums', 3, 'visible', true);
		setPropertyFromGroup('playerStrums', 0, 'visible', true);
		setPropertyFromGroup('playerStrums', 1, 'visible', true);
		setPropertyFromGroup('playerStrums', 2, 'visible', true);
	end
	if curBeat == 8 then
		noteTweenAlpha('noteUpOP', 1, 1, duration, 'linear');
		noteTweenAlpha('noteDownPL', 6, 1, duration, 'linear');
	end
	if curBeat == 16 then
		noteTweenAlpha('noteDownOP', 2, 1, duration, 'linear');
		noteTweenAlpha('noteUpPL', 5, 1, duration, 'linear');
	end
	if curBeat == 24 then
		noteTweenAlpha('noteRightOP', 3, 1, duration, 'linear');
		noteTweenAlpha('noteLeftPL', 4, 1, duration, 'linear');
	end

	--[[if curBeat == 2 then
		doTweenAngle('lmao', 'camHUD', 360, 1, 'linear');
	end]] -- try it xd
	
	--[[if curBeat == 4 or curBeat == 5 or curBeat == 6 or curBeat == 7 or curBeat == 8 then
		noteTweenX('noteLeftPL_MECH_X', 4, getPropertyFromGroup('playerStrums', 3, 'x'), 0.25, 'linear');
		noteTweenX('noteDownPL_MECH_X', 5, getPropertyFromGroup('playerStrums', 2, 'x'), 0.25, 'linear');
		noteTweenX('noteUpPL_MECH_X', 6, getPropertyFromGroup('playerStrums', 1, 'x'), 0.25, 'linear');
		noteTweenX('noteRightPL_MECH_X', 7, getPropertyFromGroup('playerStrums', 0, 'x'), 0.25, 'linear');
	end]] -- this so funny too xd

	if curBeat == 192 then
		objectPlayAnimation('tv', 'alert');
	end
	if curBeat == 323 then
		objectPlayAnimation('tv', 'idle');
		noteTweenY('noteUpPL_MECH', 6, getPropertyFromGroup('playerStrums', 2, 'y') + 60, 0.25, 'linear');
	end
	if curBeat == 339 then
		noteTweenY('noteUpPL_MECH', 6, getPropertyFromGroup('playerStrums', 2, 'y') - 60, 0.25, 'linear');

		noteTweenY('noteLeftPL_MECH', 4, getPropertyFromGroup('playerStrums', 0, 'y') + 60, 0.25, 'linear');
	end
	if curBeat == 355 then
		noteTweenY('noteLeftPL_MECH', 4, getPropertyFromGroup('playerStrums', 0, 'y') - 60, 0.25, 'linear');

		noteTweenY('noteDownPL_MECH', 5, getPropertyFromGroup('playerStrums', 1, 'y') + 80, 0.25, 'linear');
		noteTweenY('noteRightPL_MECH', 7, getPropertyFromGroup('playerStrums', 3, 'y') + 60, 0.25, 'linear');
	end
	if curBeat == 370 then
		noteTweenY('noteDownPL_MECH', 5, getPropertyFromGroup('playerStrums', 1, 'y') - 100, 0.25, 'linear');
		noteTweenY('noteUpPL_MECH', 6, getPropertyFromGroup('playerStrums', 2, 'y') - 20, 0.25, 'linear');

		noteTweenY('noteLeftPL_MECH', 4, getPropertyFromGroup('playerStrums', 0, 'y') + 30, 0.25, 'linear');
		noteTweenY('noteRightPL_MECH', 7, getPropertyFromGroup('playerStrums', 3, 'y') - 30, 0.25, 'linear');
		noteTweenAngle('noteLeftPL_MECH_A', 4, getPropertyFromGroup('playerStrums', 0, 'angle') - 45, 0.25, 'linear');
		noteTweenAngle('noteRightPL_MECH_A', 7, getPropertyFromGroup('playerStrums', 3, 'angle') + 45, 0.25, 'linear');
	end
	if curBeat == 384 then
		noteTweenY('noteLeftPL_MECH', 4, getPropertyFromGroup('playerStrums', 0, 'y') + 30, 0.25, 'linear');
		noteTweenY('noteRightPL_MECH', 7, getPropertyFromGroup('playerStrums', 3, 'y') - 120, 0.25, 'linear');
		noteTweenAngle('noteLeftPL_MECH_A', 4, getPropertyFromGroup('playerStrums', 0, 'angle') + 45, 0.25, 'linear');
		noteTweenAngle('noteRightPL_MECH_A', 7, getPropertyFromGroup('playerStrums', 3, 'angle') - 45, 0.25, 'linear');
	end
	if curBeat == 392 then
		noteTweenX('noteLeftPL_MECH_X', 4, getPropertyFromGroup('playerStrums', 3, 'x'), 1, 'linear');
		noteTweenX('noteRightPL_MECH_X', 7, getPropertyFromGroup('playerStrums', 0, 'x'), 1, 'linear');
	end
	if curBeat == 398 then
		noteTweenY('noteLeftPL_MECH', 4, getPropertyFromGroup('playerStrums', 0, 'y') - 60, 0.5, 'linear');
		noteTweenY('noteRightPL_MECH', 7, getPropertyFromGroup('playerStrums', 3, 'y') + 90, 0.5, 'linear');
	end
	if curBeat == 404 then
		noteTweenY('noteDownPL_MECH', 5, getPropertyFromGroup('playerStrums', 1, 'y') - 50, 0.5, 'linear');
		noteTweenY('noteUpPL_MECH', 6, getPropertyFromGroup('playerStrums', 2, 'y') + 80, 0.5, 'linear');
	end
	if curBeat == 408 then
		noteTweenX('noteDownPL_MECH_X', 5, getPropertyFromGroup('playerStrums', 2, 'x'), 0.5, 'linear');
		noteTweenX('noteUpPL_MECH_X', 6, getPropertyFromGroup('playerStrums', 1, 'x'), 0.5, 'linear');
	end
	if curBeat == 412 then
		noteTweenY('noteDownPL_MECH', 5, getPropertyFromGroup('playerStrums', 1, 'y') + 70, 0.5, 'linear');
		noteTweenY('noteUpPL_MECH', 6, getPropertyFromGroup('playerStrums', 2, 'y') - 60, 0.5, 'linear');
	end
	if curBeat == 448 then
		noteTweenX('noteLeftPL_MECH_X', 4, getPropertyFromGroup('playerStrums', 3, 'x'), 0.25, 'linear');
		noteTweenX('noteDownPL_MECH_X', 5, getPropertyFromGroup('playerStrums', 2, 'x'), 0.25, 'linear');
		noteTweenX('noteUpPL_MECH_X', 6, getPropertyFromGroup('playerStrums', 1, 'x'), 0.25, 'linear');
		noteTweenX('noteRightPL_MECH_X', 7, getPropertyFromGroup('playerStrums', 0, 'x'), 0.25, 'linear');
	end
	if curBeat == 512 then
		objectPlayAnimation('tv', 'alert');
	end
	if curBeat >= 512 and curBeat < 640 then
		if getProperty('camHUD.angle') == -5 or getProperty('camHUD.angle') == 0 then
			doTweenAngle('lmao', 'camHUD', 5, 0.4, 'linear');
		elseif getProperty('camHUD.angle') == 5 then
			doTweenAngle('lmao', 'camHUD', -5, 0.4, 'linear');
		end
	end
	if curBeat == 640 then
		doTweenAngle('lmao', 'camHUD', 0, 0.5, 'linear'); -- returning to default angle
		objectPlayAnimation('tv', 'eye');
	end
	if curBeat == 702 then
		objectPlayAnimation('tv', 'error');

		setProperty('bg.visible', false);
		setProperty('bgError.visible', true);
	end
	if curBeat == 704 then
		objectPlayAnimation('tv', 'BSOD');

		setProperty('bgError.visible', false);
		setProperty('front.visible', false);
		setProperty('bgError2.visible', true);
		setProperty('frontError.visible', true);
	end
	if curBeat >= 704 and curBeat < 832 then -- for cycle
		objectPlayAnimation('gf', 'scared');
	end
	if curBeat == 832 then
		objectPlayAnimation('tv', 'alert');

		setProperty('bgError.visible', false);
		setProperty('bgError2.visible', false);
		setProperty('frontError.visible', false);
		setProperty('bg.visible', true);
		setProperty('front.visible', true);
	end
	if curBeat == 1088 then
		objectPlayAnimation('tv', 'idle');
	end
end