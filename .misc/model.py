from parser import *

usable_characters = list(unique_characters)

usable_characters.append('unknown')

character_index = dict()

for char in usable_characters:

	character_index.setdefault(char, len(character_index))

def collect_character_index (value: str) -> list[int]:

	result = list()

	for char in get_character_sequence(value):

		result.append(character_index.get(char, character_index.get('unknown')))

	return result

import torch

import numpy as np

