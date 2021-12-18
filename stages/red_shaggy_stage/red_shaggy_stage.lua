function onCreate()
	makeLuaSprite('sky', 'stages/red_shaggy_stage/sky', -1204, -456);
	setScrollFactor('sky', 0.15, 0.15);
	addLuaSprite('sky', false);

	makeLuaSprite('clouds', 'stages/red_shaggy_stage/clouds', -988, -260);
	setScrollFactor('clouds', 0.25, 0.25);
	addLuaSprite('clouds', false);

	makeLuaSprite('backMount', 'stages/red_shaggy_stage/backmount', -700, -40);
	setScrollFactor('backMount', 0.4, 0.4);
	addLuaSprite('backMount', false);

	makeLuaSprite('middleMount', 'stages/red_shaggy_stage/middlemount', -240, 200);
	setScrollFactor('middleMount', 0.6, 0.6);
	addLuaSprite('middleMount', false);

	makeLuaSprite('ground', 'stages/red_shaggy_stage/ground', -660, 624);
	addLuaSprite('ground', false);

	close(true);
end