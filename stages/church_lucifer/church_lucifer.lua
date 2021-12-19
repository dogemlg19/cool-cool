function onCreate()
	makeLuaSprite('bg', 'stages/church_lucifer/bg', -445, -940);
	makeLuaSprite('circ2', 'stages/church_lucifer/circ2', -445, -940);
	makeLuaSprite('circ1', 'stages/church_lucifer/circ1', -445, -940);
	makeLuaSprite('circ0', 'stages/church_lucifer/circ0', -445, -940);
	makeLuaSprite('floor', 'stages/church_lucifer/floor', -445, -1175);
	makeLuaSprite('pillars', 'stages/church_lucifer/pillars', -445, -940);

	scaleObject('bg', 1.35, 1.35);
	scaleObject('circ2', 1.35, 1.35);
	scaleObject('circ1', 1.35, 1.35);
	scaleObject('circ0', 1.35, 1.35);
	scaleObject('floor', 1.35, 1.55);
	scaleObject('pillars', 1.35, 1.35);

	setScrollFactor('circ2', 0.9, 0.9);
	setScrollFactor('circ1', 0.9, 0.9);
	setScrollFactor('circ0', 0.9, 0.9);

	addLuaSprite('bg', false);
	addLuaSprite('circ2', false);
	addLuaSprite('circ1', false);
	addLuaSprite('circ0', false);
	addLuaSprite('floor', false);
	addLuaSprite('pillars', false);

	close(true);
end