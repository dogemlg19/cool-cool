function onCreate()
	makeLuaSprite('sky', 'stages/red_shaggy_stage/sky', -1204, -456);
	makeLuaSprite('clouds', 'stages/red_shaggy_stage/clouds', -988, -260);
	makeLuaSprite('backMount', 'stages/red_shaggy_stage/backmount', -700, -40);
	makeLuaSprite('middleMount', 'stages/red_shaggy_stage/middlemount', -240, 200);
	makeLuaSprite('ground', 'stages/red_shaggy_stage/ground', -660, 624);

	setScrollFactor('sky', 0.15, 0.15);
	setScrollFactor('clouds', 0.25, 0.25);
	setScrollFactor('backMount', 0.4, 0.4);
	setScrollFactor('middleMount', 0.6, 0.6);

	addLuaSprite('sky', false);
	addLuaSprite('clouds', false);
	addLuaSprite('backMount', false);
	addLuaSprite('middleMount', false);
	addLuaSprite('ground', false);

	close(true);
end