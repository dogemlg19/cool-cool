function onCreate()
	makeLuaSprite('bg', 'stages/nevada-ex/bg', -60, -210);
	addLuaSprite('bg', false);
	scaleObject('bg', 0.8, 1);

	makeLuaSprite('Energywall', 'stages/nevada-ex/Energywall', 1350, -240);
	addLuaSprite('Energywall', false);
	scaleObject('Energywall', 1, 0.7);

	makeLuaSprite('daBackground', 'stages/nevada-ex/daBackground', -1300, -470);
	addLuaSprite('daBackground', false);
	scaleObject('daBackground', 1.55, 1.55);

	makeLuaSprite('cover', 'stages/nevada-ex/cover', -295, 815);
	addLuaSprite('cover', false);
	scaleObject('cover', 3, 2);

	makeLuaSprite('hole', 'stages/nevada-ex/Spawnhole_Ground_BACK', 50, 970);
	addLuaSprite('hole', false);
	scaleObject('hole', 1.55, 1.55);

	makeLuaSprite('converHole', 'stages/nevada-ex/Spawnhole_Ground_COVER', 7, 1000);
	addLuaSprite('converHole', false);
	scaleObject('converHole', 1.3, 1.3);

	--makeLuaSprite('static', 'stages/nevada-ex/TrickyStatic', -700, -1000);
	--addLuaSprite('static', true);
	--scaleObject('static', 10, 10);
	--setProperty('static.alpha', 0.15);

	close(true);
end