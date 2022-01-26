function onCreate()
	makeAnimatedLuaSprite('bg', 'stages/zardy_maze_2/Zardy2BG', -600, -200);
	addLuaSprite('bg', false);

	makeLuaSprite('mic', 'stages/zardy_maze_2/Mic', 0, 0);
	setProperty('mic.x', getProperty('DAD_X') + 150);
	setProperty('mic.y', getProperty('DAD_Y') + 300);
	scaleObject('mic', 0.4, 0.4);
	addLuaSprite('mic', false);
	setProperty('mic.visible', false);

	makeLuaSprite('grab', 'stages/zardy_maze_2/Grab', 0, 0);
	setProperty('grab.x', getProperty('DAD_X') - 1600);
	setProperty('grab.y', getProperty('DAD_Y') + 350);
	scaleObject('grab', 0.4, 0.4);
	addLuaSprite('grab', false);
	setProperty('grab.visible', false);

	addAnimationByPrefix('bg', 'idle', 'BG', 24, true);
	setProperty('gfGroup.visible', false);
	setProperty('dadGroup.alpha', 0);
	if not hideHud then
		setProperty('iconP2.visible', false);
	end
	
	precacheImage('characters/cablecrow');
end

function onCreatePost()
	doTweenAlpha('alpha', 'dadGroup', 1, 1.5);
	if not hideHud then
		setProperty('iconP2.alpha', 0);
		setProperty('iconP2.visible', true);
		doTweenAlpha('alphaicon', 'iconP2', getProperty('iconP1.alpha'), 1.5);
	end
end

function onBeatHit()
	if curBeat == 477 then
		doTweenAlpha('alpha', 'dadGroup', 0, 0.5);
		if not hideHud then
			doTweenAlpha('alphaicon', 'iconP2', 0, 1.5);
		end
		setProperty('mic.visible', true);
	end
	if curBeat == 484 then
		setProperty('mic.visible', false);
		setProperty('grab.visible', true);
		doTweenX('crab', 'grab', getProperty('grab.x') - 1000, 0.5);
	end
	if curBeat == 485 then
		setProperty('grab.visible', false);
		setProperty('defaultCamZoom', 1.5);
	end
	if curBeat == 494 then
		triggerEvent('Change Character', 'dad', 'cablecrow');
		setProperty('dadGroup.alpha', 1);
		if not hideHud then
			setProperty('iconP2.alpha', getProperty('iconP1.alpha'));
		end
		setProperty('defaultCamZoom', 0.7);
	end
end
