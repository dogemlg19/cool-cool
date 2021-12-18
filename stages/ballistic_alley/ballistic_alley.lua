function onCreate()
	makeAnimatedLuaSprite('bg', 'stages/ballistic_alley/ballisticBG', -600, -200);
	setScrollFactor('bg', 0.9, 0.9);
	addLuaSprite('bg', false);
	addAnimationByPrefix('bg', 'move', 'Background Whitty Moving', 24, true);

	makeLuaSprite('front', 'stages/ballistic_alley/whittyFront', -650, -600);
	setScrollFactor('front', 0.9, 0.9);
	setGraphicSize('front', 1, 1.1);
	addLuaSprite('front', false);

	makeLuaSprite('funny', 'stages/ballistic_alley/thefunnyeffect', -600, -200);
	setProperty('funny.alpha', 0.9);
	setScrollFactor('funny', 1, 1);
	setObjectCamera('funny', 'camhud');
	addLuaSprite('funny', true);

	close(true);
end