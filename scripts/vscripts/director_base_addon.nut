::Caroline <- { version = { major = 0, minor = 4, patch = 0 } }

class Caroline.Parser
{
	constructor (usable)
	{
		usable_characters = usable

		character_index = {}

		foreach (char in usable_characters) character_index[char] <- character_index.len()
	}

	usable_characters = null

	character_index = null

	function CollectCharacterIndex (t)
	{
		local result = []

		foreach (char in t) result.append(char in character_index ? character_index[char] : -1)

		return result
	}

	function GetCharacters (collec)
	{
		local result = []

		foreach (i in collec) result.append(i >= 0 ? usable_characters[i] : null)

		return result
	}
}

class Caroline.Composer
{
	constructor (collec)
	{
		foreach (sound in collec)
		{


			if (IsPrecachedSound(sound.f)) PrecacheSound(sound.f)
		}
	}
}

function Caroline::Speech (t, Parser)
{
	local char_seq = Parser.CollectCharacterIndex(t)

	local result = []

	return result
}

IncludeScript("lang/es-es/john")
