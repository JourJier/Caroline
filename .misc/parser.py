def get_character_sequence (value: str) -> list[int]:

	result = list()

	for char in value.encode('utf-8'):

		if char < 128:

			result.append(char)

		else:

			result.append(char - 256)

	return result

unique_characters = set()

with open('.misc/lang/es-es/john/characters', 'r', encoding='utf-8', errors='ignore') as file:

	for line in file:

		for char in get_character_sequence(line.strip()):

			unique_characters.add(char)

	file.close()

with open('.misc/lang/es-es/john/characters.chunk', 'w', encoding='utf-8', errors='ignore') as file:

	file.write(', '.join(map(str, unique_characters)))

	file.close()
