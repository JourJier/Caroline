from parser import *

usable_characters = list(unique_characters)

usable_characters.append('unknown')

character_index = dict()

for char in usable_characters:

	character_index.setdefault(char, len(character_index))

print(character_index)
