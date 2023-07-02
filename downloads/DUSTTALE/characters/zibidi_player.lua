function onCreatePost()
	setPropertyFromClass("GameOverSubstate", "characterName", "zibidi_dead")
	setPropertyFromClass("GameOverSubstate", "deathSoundName", "zibidi_lose_sfx")
	
	if not lowQuality then
		addCharacterToList("zibidi_dead")
		precacheSound("zibidi_lose_sfx")
	end
end

-- crash prevention
function onUpdate() end
function onUpdatePost() end
