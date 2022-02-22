function onCreate()
	makeLuaSprite('bg', 'stages/judgement_hall_chara/chara', -500, -400);
	addLuaSprite('bg', false);

	makeLuaSprite('ill', 'stages/judgement_hall_chara/illumination', -500, -400);
	addLuaSprite('ill', false);

	precacheSound('slash_effect');
end
function onCreatePost()
	triggerEvent('Camera Follow Pos', 750, 350);
	forceMiddlescroll();
end
function onCountdownTick(tick)
	if tick == 0 then
		setProperty('laneunderlayOpponent.visible', false);
	end
end

function forceMiddlescroll() -- working with more than 4 keys!
	for i = 0, getProperty('opponentStrums.length') do
		setPropertyFromGroup('opponentStrums', i, 'visible', false);
	end
	if not middlescroll then
		for i = 0, getProperty('playerStrums.length') do
			setPropertyFromGroup('playerStrums', i, 'x', getPropertyFromGroup('playerStrums', i, 'x') - 320);
		end
	end
end

function slash()
	characterPlayAnim('dad', 'slash');

	runTimer('slashtime', 0.05);
	triggerEvent('Screen Shake', '0.35, 0.01', '0.35, 0.01');
	setProperty('health', getProperty('health') - 0.75);
	playSound('slash_effect', 1, 'slash'); -- - 99999999999999999999999999999999999999999 HP lol
end

function onUpdate()
	if getProperty('health') > 0.3 then
		setProperty('health', getProperty('health') - 0.0003);
	end
end

function onBeatHit()
	if curBeat >= 64 and curBeat % 20 == 0 then
		slash();
	end
end