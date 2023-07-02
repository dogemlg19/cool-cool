function onCreatePost()
	setPropertyFromClass("GameOverSubstate", "loopSoundName", "mash_game_over_loop")
	setPropertyFromClass("GameOverSubstate", "endSoundName", "mash_game_over_confirm")
	
	if not lowQuality then
		precacheSound("mash_game_over_loop")
		precacheSound("mash_game_over_confirm")
	end
end

-- crash prevention
function onUpdate() end
function onUpdatePost() end
