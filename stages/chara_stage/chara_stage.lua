function onCreate()
	makeLuaSprite('bg', 'stages/chara_stage/bg', -925, -100);
	addLuaSprite('bg', false);
	scaleObject('bg', 1.35, 1);
end

function onBeatHit()
	if curBeat == 232 then
		triggerEvent('Change Scroll Speed', '1.25', '0.5');
	end
	if curBeat == 292 then
		triggerEvent('Play Animation', 'zave', 'Dad');
	end
	if curBeat == 297 then
		triggerEvent('Play Animation', 'zave', 'Dad');
	end
	if curBeat == 301 then
		triggerEvent('Play Animation', 'zave', 'Dad');
	end
	if curBeat == 306 then
		triggerEvent('Play Animation', 'idle', 'Dad');
	end
	if curBeat == 505 then
		triggerEvent('Screen Shake', '6, 0.01', '6, 0.001');
		triggerEvent('Play Animation', 'zrick', 'Dad');
		triggerEvent('Change Scroll Speed', '1', '0.5');
		setProperty('defaultCamZoom', 1.5);
	end
	if curBeat == 521 then
		setProperty('defaultCamZoom', 0.75);
	end
	if curBeat == 513 then
		charaIsBF(true);
	end
	if curBeat == 569 then
		charaIsBF(false);
	end
	if curBeat == 595 then
		triggerEvent('Screen Shake', '6, 0.01', '6, 0.001');
		triggerEvent('Play Animation', 'zrick', 'Dad');
		setProperty('defaultCamZoom', 1.25);
	end
end

function charaIsBF(da)
	if da then
		setProperty('boyfriend.x', getProperty('DAD_X'));
	else
		setProperty('boyfriend.x', getProperty('BF_X'));
	end

	if da then
		setProperty('dad.x', getProperty('BF_X'));
	else
		setProperty('dad.x', getProperty('DAD_X'));
	end

	if da then
		setProperty('dad.flipX', true);
	else
		setProperty('dad.flipX', false);
	end

	if da then
		setProperty('boyfriend.flipX', true);
	else
		setProperty('boyfriend.flipX', false);
	end

	if da then
		setProperty('defaultCamZoom', 0.85);
	else if setProperty('defaultCamZoom') != 1.5 then
		setProperty('defaultCamZoom', 0.75);
	end
end