function onCreate()
	makeAnimatedLuaSprite('bg', 'stages/ballistic_alley/ballisticBG', -600, -200);
	makeLuaSprite('front', 'stages/ballistic_alley/whittyFront', -650, -600);
	makeLuaSprite('funny', 'stages/ballistic_alley/thefunnyeffect', -600, -200);

	setScrollFactor('bg', 0.9, 0.9);
	setScrollFactor('front', 0.9, 0.9);
	setScrollFactor('funny', 1, 1);

	setGraphicSize('front', 1, 1.1);
	setProperty('funny.alpha', 0.9);
	setObjectCamera('funny', 'camhud');

	addLuaSprite('bg', false);
	addAnimationByPrefix('bg', 'move', 'Background Whitty Moving', 24, true);
	addLuaSprite('front', false);
	addLuaSprite('funny', true);

	close(true);
end