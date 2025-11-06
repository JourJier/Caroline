def __char_seq__ (value: str):

	result = list()

	for char in value.encode('utf-8'):

		if char < 128:

			result.append(char)

		else:

			result.append(char - 256)

	return result

unique_characters = set()

with open('.misc/lang/es-es/parser', 'r', encoding='utf-8', errors='ignore') as file:

	for line in file:
		
		for char in __char_seq__(line):

			unique_characters.add(char)

	file.close()

with open('.misc/lang/es-es/parser.chunk', 'w', encoding='utf-8', errors='ignore') as file:

	for i, char in enumerate(unique_characters):

		file.write(str(char))

		if i < len(unique_characters) - 1:

			file.write(', ')

	file.close()
