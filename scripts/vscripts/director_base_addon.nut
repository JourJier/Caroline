::Caroline <- { version = { major = 0, minor = 4, patch = 0 } }

class Caroline.Parser
{
	constructor (usable)
	{
		usable_characters = usable

		character_index = {}

		# Establece un índice para cada etiqueta y carácter (convertido de UTF-8 a ANSI)
		foreach (char in usable) character_index.rawset(char, character_index.len())
	}

	usable_characters = null

	character_index = null

	# Convierte los caracteres de una cadena de texto, en una colección de índices (utilizar como codificador)
	function CollectCharacterIndex (str)
	{
		local result = []

		foreach (char in str) result.append(character_index.rawin(char) ? character_index.rawget(char) : null)

		return result
	}
}

IncludeScript("lang/es-es/john")
