function onCreate()
	makeLuaSprite('sky', 'stages/shaggy_red_stage/sky', -1204, -456);
	makeLuaSprite('clouds', 'stages/shaggy_red_stage/clouds', -988, -260);
	makeLuaSprite('backMount', 'stages/shaggy_red_stage/backmount', -700, -40);
	makeLuaSprite('middleMount', 'stages/shaggy_red_stage/middlemount', -240, 200);
	makeLuaSprite('ground', 'stages/shaggy_red_stage/ground', -660, 624);

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