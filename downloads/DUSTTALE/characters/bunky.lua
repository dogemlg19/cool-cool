function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'bunky-dead'); --Character json file for the death animation
	--setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'zib_lose_sfx'); --put in mods/sounds/
	--setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'zib_game_over_loop'); --put in mods/music/
	--setPropertyFromClass('GameOverSubstate', 'endSoundName', 'zib_game_over_end'); --put in mods/music/
end

function onGameOverStart()
	setProperty('camFollow.x', getProperty('camFollow.x') * 1.8)
end