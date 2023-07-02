function onCreatePost()
	setPropertyFromClass("GameOverSubstate", "loopSoundName", "kevin_game_over_loop")
	setPropertyFromClass("GameOverSubstate", "endSoundName", "kevin_game_over_confirm")
	
	if not lowQuality then
		precacheSound("kevin_game_over_loop")
		precacheSound("kevin_game_over_confirm")
	end
end

-- crash prevention
function onUpdate() end
function onUpdatePost() end
