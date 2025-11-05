from sh import __char_seq__

usable = [

	'.,¡!¿?~()',
	'aeiou',
	'AEIOU',
	'bcdfghjklmnñpqrstvwxyz',
	'BCDFGHJKLMNÑPQRSTVWXYZ',
	'áéíóúü',
	'ÁÉÍÓÚÜ'
]

result = set()

for value in usable:

	if isinstance(value, int):

		result.add(value)

	else:

		for char in __char_seq__(value):

			result.add(char)

print(result)
