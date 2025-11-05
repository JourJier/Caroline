::Caroline <- { version = { major = 0, minor = 4, patch = 0 } }

class Caroline.Parser
{
	constructor (usable)
	{
		usable_characters = usable

		character_index = {}

		# Establece un índice a un carácter válido (UTF-8 a ANSI)
		foreach (char in usable) character_index[char] <- character_index.len()
	}

	usable_characters = null

	character_index = null

	# Convierte los caracteres de una cadena de texto, en una colección de índices (utilizar como codificador)
	function CollectCharacterIndex (str)
	{
		local result = []

		# Obtiene el índice de un carácter (donde el cero representa un carácter inválido)
		foreach (char in str) result.append(character_index.rawin(char) ? character_index[char] : 0)

		return result
	}
}

class Caroline.Danse
{
	constructor (collec)
	{

	}
}

class Caroline.Model
{
	constructor (Parser, layers)
	{

	}
}

IncludeScript("debug/es-es/john")
