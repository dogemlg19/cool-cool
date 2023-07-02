function onCreatePost()
	setPropertyFromClass("GameOverSubstate", "loopSoundName", "bassya_game_over_loop")
	setPropertyFromClass("GameOverSubstate", "endSoundName", "bassya_game_over_confirm")
	
	if not lowQuality then
		precacheSound("bassya_game_over_loop")
		precacheSound("bassya_game_over_confirm")
	end
end

-- crash prevention
function onUpdate() end
function onUpdatePost() end
