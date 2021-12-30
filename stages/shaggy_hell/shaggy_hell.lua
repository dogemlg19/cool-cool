function onCreate()
	makeLuaSprite('bg', 'stages/shaggy_hell/BGBG', -1940, -1112);
	makeLuaSprite('lava', 'stages/shaggy_hell/LavaLimits', -1770, 168);
	makeLuaSprite('bgspikes', 'stages/shaggy_hell/BGSpikes', 112, -36);
	makeLuaSprite('spikes', 'stages/shaggy_hell/Spikes', -1186, -234);
	makeLuaSprite('ground', 'stages/shaggy_hell/Ground', -1320, 590);

	setScrollFactor('bg', 0.5, 0.5);
	setScrollFactor('lava', 0.55, 0.55);
	setScrollFactor('bgspikes', 0.6, 0.6);
	setScrollFactor('spikes', 0.8, 0.8);

	addLuaSprite('bg', false);
	addLuaSprite('lava', false);
	addLuaSprite('bgspikes', false);
	addLuaSprite('spikes', false);
	addLuaSprite('ground', false);

	close(true);
end