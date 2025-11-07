::Caroline <- { version = { major = 0, minor = 4, patch = 0 } }

class Caroline.Parser
{
	constructor (usable_characters)
	{
		this.usable_characters = usable_characters

		this.usable_characters.append("unknown")

		this.character_index = {}

		foreach (char in usable_characters) this.character_index[char] <- this.character_index.len()
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

	function SetSound (id, Sound)
	{
		if (IsSoundPrecached(Sound.file)) PrecacheSound(Sound.file)
	}

	function GetSound (id)
	{

	}
}

function Caroline::CollectSound (str, Parser, Composer)
{
	local result = []



	return result
}

IncludeScript("lang/es-es/john")
