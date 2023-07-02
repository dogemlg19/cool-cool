local missing = false

function onBeatHit()
	if missing then
		missing = false
		
		playAnim("gf", "sad", true)
		setProperty("gf.specialAnim", true)
	elseif curBeat >= 292 and curBeat <= 323 then
		playAnim("gf", "scratch_" .. ((curBeat % 4) == 3 and "right" or "left"), true)
		setProperty("gf.specialAnim", true)
	end
end

function goodNoteHit()
	if missing then
		missing = false
	end
end

function noteMiss()
	if not missing then
		missing = true
		
		playAnim("gf", "sad", true)
		setProperty("gf.specialAnim", true)
	end
end

-- crash prevention
function onUpdate() end
function onUpdatePost() end
