::Caroline <- { version = { major = 0, minor = 4, patch = 0 } }

class Caroline.Parser
{
	constructor (usable)
	{
		usable_characters = usable

		usable_characters.append("unknown")

		character_index = {}

		foreach (char in usable) character_index[char] <- character_index.len()
	}

	usable_characters = null

	character_index = null

	function CollectCharacterIndex (str)
	{
		local result = []

		foreach (char in str) result.append(char in character_index ? character_index[char] : character_index["unknown"])

		return result
	}
}

class Caroline.Composer
{
	constructor ()
	{

	}

	function SetSound (id, sound)
	{
		if (IsSoundPrecached(sound.file)) PrecacheSound(sound.file)
	}

	function GetSound (id)
	{

	}
}

class Caroline.Model
{
	constructor ()
	{

	}
}

IncludeScript("lang/es-es/john")
