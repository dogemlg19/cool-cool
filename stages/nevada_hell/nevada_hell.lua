function onCreate()
	makeLuaSprite('bg', 'stages/nevada_hell/bg', -4000, -1400);
	makeLuaSprite('island', 'stages/nevada_hell/island_but_red', -5000, -1800);
	makeAnimatedLuaSprite('hank', 'stages/nevada_hell/Hank', 260, -300);

	setScrollFactor('bg', 0.9, 0.9);
	setScrollFactor('island', 0.9, 0.9);
	setScrollFactor('hank', 0.9, 0.9);

	setGraphicSize('bg', getProperty('bg.width') * 5);
	setGraphicSize('island', getProperty('island.width') * 2.6);
	setGraphicSize('hank', getProperty('hank.width') * 1.55);

	addLuaSprite('bg', false);
	addLuaSprite('island', false);
	addLuaSprite('hank', false);
	addAnimationByPrefix('hank', 'dance', 'Hank', 24, true);
end

function onCreatePost()
	--scaleObject('boyfriend', 3, 3);
	--scaleObject('dad', 4, 4);
	--setProperty('dad.x', getProperty('dad.x') + 100);
	--setProperty('dad.y', getProperty('dad.y') - 300);
	--setProperty('boyfriend.x', getProperty('boyfriend.x') + 1000);
	--triggerEvent('Camera Follow Pos', getProperty('boyfriend.x'), getProperty('boyfriend.y'));
end