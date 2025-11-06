from parser import *

usable_characters = list(unique_characters)

character_index = dict()

for char in usable_characters:

	character_index.setdefault(char, len(character_index))

def collect_character_index (value: str) -> list[int]:

	result = list()

	for char in get_character_sequence(value):

		result.append(character_index.get(char))

	return result
