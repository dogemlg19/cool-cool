function onCreatePost()
	setPropertyFromClass("GameOverSubstate", "loopSoundName", "requiem_game_over_loop")
	setPropertyFromClass("GameOverSubstate", "endSoundName", "requiem_game_over_confirm")
	
	if not lowQuality then
		precacheSound("requiem_game_over_loop")
		precacheSound("requiem_game_over_confirm")
	end
end

-- crash prevention
function onUpdate() end
function onUpdatePost() end
