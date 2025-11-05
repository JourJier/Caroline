def __char_seq__ (value: str):

	return [char if char < 128 else char - 256 for char in value.encode('utf-8')]
