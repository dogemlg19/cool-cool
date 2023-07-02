function onCreatePost()
	setPropertyFromClass("GameOverSubstate", "loopSoundName", "zibidi_game_over_loop")
	setPropertyFromClass("GameOverSubstate", "endSoundName", "zibidi_game_over_confirm")
	
	if not lowQuality then
		precacheSound("zibidi_game_over_loop")
		precacheSound("zibidi_game_over_confirm")
	end
end

-- crash prevention
function onUpdate() end
function onUpdatePost() end
