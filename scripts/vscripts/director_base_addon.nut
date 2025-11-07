::Caroline <- { version = { major = 0, minor = 4, patch = 0 } }

class Caroline.Parser
{
	constructor (usable)
	{
		usable_characters = usable

		character_index = {}

		foreach (char in usable) character_index.rawset(char, character_index.len())
	}

	usable_characters = null

	character_index = null

	function CollectCharacterIndex (str)
	{
		local result = []

		foreach (char in str) result.append(character_index.rawin(char) ? character_index.rawget(char) : null)

		return result
	}
}

class Caroline.Composer
{
	constructor ()
	{
		sound_cache = {}
	}

	sound_cache = null

	function SetSound (id, sound)
	{
		sound_cache.rawset(id, sound)

		if (IsSoundPrecached(sound.file)) PrecacheSound(sound.file)
	}

	function GetSound (id)
	{
		if (sound_cache.rawin(id)) return sound_cache.rawget(id)
	}
}

class Caroline.Model
{
	constructor (Parser, Composer)
	{

	}
}

IncludeScript("lang/es-es/john")
