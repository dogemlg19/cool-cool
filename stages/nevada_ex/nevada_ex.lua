function onCreate()
	makeLuaSprite('bg', 'stages/nevada_ex/bg', -60, -210);
	makeLuaSprite('Energywall', 'stages/nevada_ex/Energywall', 1350, -240);
	makeLuaSprite('daBackground', 'stages/nevada_ex/daBackground', -1300, -470);
	makeLuaSprite('cover', 'stages/nevada_ex/cover', -295, 815);
	makeLuaSprite('hole', 'stages/nevada_ex/Spawnhole_Ground_BACK', 50, 970);
	makeLuaSprite('converHole', 'stages/nevada_ex/Spawnhole_Ground_COVER', 7, 1000);

	scaleObject('bg', 0.8, 1);
	scaleObject('Energywall', 1, 0.7);
	scaleObject('daBackground', 1.55, 1.55);
	scaleObject('cover', 3, 2);
	scaleObject('hole', 1.55, 1.55);
	scaleObject('converHole', 1.3, 1.3);
	
	addLuaSprite('bg', false);
	addLuaSprite('Energywall', false);
	addLuaSprite('daBackground', false);
	addLuaSprite('cover', false);
	addLuaSprite('hole', false);
	addLuaSprite('converHole', false);

	--makeLuaSprite('static', 'stages/nevada_ex/TrickyStatic', -700, -1000);
	--addLuaSprite('static', true);
	--scaleObject('static', 10, 10);
	--setProperty('static.alpha', 0.15);

	close(true);
end