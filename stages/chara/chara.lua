function onCreate()
	makeLuaSprite('bg', 'stages/chara/bg', -925, -100);
	addLuaSprite('bg', false);

	scaleObject('bg', 1.25, 1);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end