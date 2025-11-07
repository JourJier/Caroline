from parser import *

import numpy as np

import torch

class Parser:

	def __init__ (self, usable_characters: list[int]):

		self.usable_characters = usable_characters

		self.usable_characters.append('unknown')

		self.character_index = dict()

		for char in usable_characters:

			self.character_index.setdefault(char, len(self.character_index))

	def collect_character_index (self, value: str) -> list[int]:

		result = list()

		for char in get_character_sequence(value):

			result.append(self.character_index.get(char, self.character_index.get('unknown')))

		return result

def collect_sound (value: str) -> list[dict]:

	result = list()




	return result

print(collect_sound("Hola mundo"))
