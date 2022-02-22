function onCreate()
	makeLuaSprite('bg', 'stages/judgement_hall/bg', -800, -700);
	scaleObject('bg', 1.25, 1.25);
	addLuaSprite('bg', false);

	makeLuaSprite('ill', 'stages/judgement_hall/illumination', -800, -700);
	scaleObject('bg', 1.25, 1.25);
	addLuaSprite('ill', false);

	makeLuaSprite('miss', 'stages/judgement_hall/miss', 0, 0);
	screenCenter('miss', 'xy');
	setProperty('miss.alpha', 0);
	addLuaSprite('miss', true);

	makeLuaSprite('hp20', 'stages/judgement_hall/-20', 0, 0);
	screenCenter('hp20', 'xy');
	setProperty('hp20.alpha', 0);
	addLuaSprite('hp20', true);

	makeLuaSprite('attack', 'stages/judgement_hall/attack', 0, 0);
	screenCenter('attack', 'xy');
	setProperty('attack.alpha', 0);
	addLuaSprite('attack', true);

	precacheSound('cameraFlip');
	precacheSound('blaster_shoot');
	precacheSound('slash_effect');
	precacheSound('warning');
	precacheImage('icons/icon-chara_bf_KR');
end
function onCreatePost()
	makeAnimatedLuaSprite('gb', 'stages/judgement_hall/gasterBlaster', -600, 250);
	setObjectCamera('gb', 'camhud');
	setGraphicSize('gb', getProperty('gb.width') * 0.7, 0);
	addLuaSprite('gb', true);
	setProperty('gb.visible', false);
	addAnimationByPrefix('gb', 'shoot', 'shoot', 24, false);
	runTimer('sos', 0.55);
	
	makeLuaSprite('dust', 'stages/judgement_hall/dust', 0, 0);
	setObjectCamera('dust', 'camhud');
	setProperty('dust.alpha', 0);
	addLuaSprite('dust', true);
end
function onTimerCompleted(tag)
	if tag == 'sos' then
		setProperty('gb.visible', true);
	end
	if tag == 'dis_hp20' then
		setProperty('hp20.alpha', 0);
	end
	if tag == 'dis_miss' then
		setProperty('miss.alpha', 0);
	end
end

function onStepHit()
	if curStep == 114 then
		setProperty('attack.alpha', 1);
		playSound('warning', 1, 'warn');
	end
	if curStep == 134 then
		setProperty('attack.alpha', 0);
	end
	if curStep == 159 then
		flip_UP();
	end
	if curStep == 415 then
		flip_DOWN();
	end
	if curStep == 452 then
		setProperty('attack.alpha', 1);
		playSound('warning', 1, 'warn');
	end
	if curStep == 472 then
		setProperty('attack.alpha', 0);
	end
	if curStep == 544 then
		triggerEvent('Screen Shake', '8.35, 0.01', '8.35, 0.01');
	end
	if curStep == 672 then
		flip_UP();
		gasterBlasters();
	end
	if curStep == 681 then
		setProperty('attack.alpha', 1);
		playSound('warning', 1, 'warn');
	end
	if curStep == 701 then
		setProperty('attack.alpha', 0);
	end
	if curStep == 816 then
		flip_DOWN();
	end
	if curStep == 828 then
		flip_UP();
	end
	if curStep == 840 then
		flip_DOWN();
	end
	if curStep == 859 then
		flip_UP();
	end
	if curStep == 868 then
		flip_DOWN();
	end
	if curStep == 877 then
		flip_UP();
	end
	if curStep == 884 then
		flip_DOWN();
	end
	if curStep == 895 then
		flip_UP();
	end
	if curStep == 928 then
		flip_DOWN();
	end
	if curStep == 991 then
		gasterBlasters();
	end
	if curStep == 1118 then
		flip_UP();
		gasterBlasters();
	end
	if curStep == 1184 then
		flip_DOWN();
		gasterBlasters();
		setProperty('attack.alpha', 1);
		playSound('warning', 1, 'warn');
	end
	if curStep == 1204 then
		setProperty('attack.alpha', 0);
	end
	if curStep == 1216 then
		gasterBlasters();
		setProperty('attack.alpha', 1);
		playSound('warning', 1, 'warn');
	end
	if curStep == 1236 then
		setProperty('attack.alpha', 0);
	end
	if curStep == 1247 then
		gasterBlasters();
	end
	if curStep == 1280 then
		gasterBlasters();
		setProperty('attack.alpha', 1);
		playSound('warning', 1, 'warn');
	end
	if curStep == 1300 then
		setProperty('attack.alpha', 0);
	end
	if curStep == 1472 then
		doTweenAngle('lmaoxd1', 'camGame', -30, 0.15, 'quadInOut');
		flip_UP_HUD();
		runTimer('dasxd1', 0.15);
		doTweenAngle('lmaoxd2', 'camGame', 180, 0.15, 'quadInOut');
	end
	if curStep == 1488 then
		doTweenAngle('lmaoxd3', 'camGame', 210, 0.15, 'quadInOut');
		flip_DOWN_HUD();
		runTimer('dasxd2', 0.15);
		doTweenAngle('lmaoxd4', 'camGame', 0, 0.15, 'quadInOut');
	end
	if curStep == 1496 then
		doTweenAngle('lmaoxd5', 'camGame', -30, 0.15, 'quadInOut');
		flip_UP_HUD();
		runTimer('dasxd3', 0.15);
		doTweenAngle('lmaoxd6', 'camGame', 180, 0.15, 'quadInOut');
	end
	if curStep == 1504 then
		doTweenAngle('lmaoxd7', 'camGame', 0, 0.15, 'quadInOut');
		flip_DOWN_HUD();
		runTimer('dasxd4', 0.15);
		doTweenAngle('lmaoxd8', 'camGame', 0, 0.15, 'quadInOut');
	end
	if curStep == 1519 then
		doTweenAngle('lmaoxd9', 'camGame', -30, 0.15, 'quadInOut');
		flip_UP_HUD();
		runTimer('dasxd5', 0.15);
		doTweenAngle('lmaoxd10', 'camGame', 180, 0.15, 'quadInOut');
	end
	if curStep == 1517 then
		doTweenAngle('lmaoxd11', 'camGame', 0, 0.15, 'quadInOut');
		flip_DOWN_HUD();
		runTimer('dasxd6', 0.15);
		doTweenAngle('lmaoxd12', 'camGame', 0, 0.15, 'quadInOut');
	end
	if curStep == 1532 then
		doTweenAngle('lmaoxd13', 'camGame', -30, 0.15, 'quadInOut');
		flip_UP_HUD();
		runTimer('dasxd7', 0.15);
		doTweenAngle('lmaoxd14', 'camGame', 180, 0.15, 'quadInOut');
	end
	if curStep == 1532 then
		flip_DOWN_HUD();
		flip_DOWN();
	end
	if curStep == 1526 then
		flip_DOWN_HUD();
	end
	if curStep == 1600 then
		flip_UP();
	end
	if curStep == 1632 then
		flip_DOWN();
	end
	if curStep == 1657 then
		flip_UP();
	end
	if curStep == 1664 then
		flip_DOWN();
	end
	if curStep == 1672 then
		flip_UP();
	end
	if curStep == 1678 then
		gasterBlasters();
	end
	if curStep == 1680 then
		flip_DOWN();
	end
	if curStep == 1684 then
		flip_UP();
	end
	if curStep == 1688 then
		flip_DOWN();
	end
	if curStep == 1692 then
		flip_UP();
	end
	if curStep == 1696 then
		gasterBlasters();
	end
	if curStep == 1711 then
		gasterBlasters();
	end
	if curStep == 1728 then
		gasterBlasters();
	end
	if curStep == 1744 then
		gasterBlasters();
	end
	if curStep == 1776 then
		gasterBlasters();
	end
	if curStep == 1791 then
		flip_DOWN();
	end
	if curStep == 1824 then
		gasterBlasters();
	end
	if curStep == 1887 then
		flip_UP();
	end
	if curStep == 1903 then
		gasterBlasters();
	end
	if curStep == 1951 then
		flip_DOWN();
	end
	if curStep == 2080 then
		setProperty('attack.alpha', 1);
		playSound('warning', 1, 'warn');
	end
	if curStep == 2100 then
		setProperty('attack.alpha', 0);
	end
end

function flip_UP()
	playSound('cameraFlip', 1, 'cum1');
	doTweenAngle('lmao2', 'camGame', 210, 0.15, 'quadInOut');
	characterPlayAnim('bf', 'hurt');
	characterPlayAnim('dad', 'swing_up');
	triggerEvent('Screen Shake', '0.1, 0.025');
end
function flip_DOWN()
	playSound('cameraFlip', 1, 'cum');
	doTweenAngle('lmao1', 'camGame', -30, 0.15, 'quadInOut');
	characterPlayAnim('bf', 'hurt');
	characterPlayAnim('dad', 'swing_down');
	triggerEvent('Screen Shake', '0.1, 0.025');
end
function flip_UP_HUD()
	playSound('cameraFlip', 1, 'cum3');
	doTweenAngle('lmao4', 'camHUD', 210, 0.15, 'quadInOut');
	characterPlayAnim('bf', 'hurt');
	characterPlayAnim('dad', 'swing_up');
	triggerEvent('Screen Shake', '0.1, 0.025');
end
function flip_DOWN_HUD()
	playSound('cameraFlip', 1, 'cum2');
	doTweenAngle('lmao3', 'camHUD', -30, 0.15, 'quadInOut');
	characterPlayAnim('bf', 'hurt');
	characterPlayAnim('dad', 'swing_down');
	triggerEvent('Screen Shake', '0.1, 0.025');
end
function gasterBlasters()
	objectPlayAnimation('gb', 'shoot');
	playSound('blaster_shoot', 1, 'shoot');
	setHealth(0.1);
end
function onTweenCompleted(tag)
	if tag == 'lmao1' then
		doTweenAngle('lmao5', 'camGame', 0, 0.1, 'quadInOut');
	end
	if tag == 'lmao2' then
		doTweenAngle('lmao6', 'camGame', 180, 0.1, 'quadInOut');
	end
	if tag == 'lmao3' then
		doTweenAngle('lmao7', 'camHUD', 0, 0.1, 'quadInOut');
	end
	if tag == 'lmao4' then
		doTweenAngle('lmao8', 'camHUD', 180, 0.1, 'quadInOut');
	end
end

-- script from https://gamebanana.com/tools/7845
local xx = 550;
local yy = 440;
local xx2 = 950;
local yy2 = 440;
local ofs = 35;
local followchars = true;
local del = 0;
local del2 = 0;
function onUpdate()
	if keyJustPressed('space') then
		if getProperty('attack.alpha') == 1 then
			setProperty('attack.alpha', 0);
			triggerEvent('Play Animation', 'slash', 'bf');

			triggerEvent('Screen Shake', '0.35, 0.01', '0.35, 0.01');
			setProperty('health', 2);
			playSound('slash_effect', 1, 'slash');
			setProperty('hp20.alpha', 1);
			runTimer('dis_hp20', 1);
		else
			triggerEvent('Play Animation', 'slash', 'bf');
			
			setProperty('miss.alpha', 1);
			runTimer('dis_miss', 1);
		end
	end

	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else

            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
	    if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
end