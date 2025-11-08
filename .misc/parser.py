def get_character_sequence (t: str) -> list[int]:

	result = list()

	for char in t.encode('utf-8'):

		if char < 128:

			result.append(char)

		else:

			result.append(char - 256)

	return result

unique_characters = set()

with open('.misc/lang/es-es/john/usable_characters', 'r', encoding='utf-8', errors='ignore') as f:

	for t in f:

		for char in get_character_sequence(t):

			unique_characters.add(char)

	f.close()

with open('.misc/lang/es-es/john/usable_characters.chunk', 'w', encoding='utf-8', errors='ignore') as f:

	f.write(', '.join(map(str, unique_characters)))

	f.close()
