#define NUM_TO_HEX(NUM) (NUM > 9 ? ascii2text(NUM + 55) : ascii2text(NUM + 48))
#define RANDOM_HEX_SEQUENCE(LENGTH, APPEND) for (var/I in 1 to LENGTH) { var/n = rand(0, 15); APPEND += NUM_TO_HEX(n) }

UUID
	var
		global
			UUID/UUIDVersion/VERSION_4 = new/UUID/UUIDVersion/__Version4()

UUID/ID
	var/__value

	New(var/value)
		src.__value   = value

UUID/UUIDVersion/__Version4
	generate()
		var/result = ""
		RANDOM_HEX_SEQUENCE(8, result)
		result += "-"
		RANDOM_HEX_SEQUENCE(4, result)
		result += "-4"
		RANDOM_HEX_SEQUENCE(3, result)
		result += "-A"
		RANDOM_HEX_SEQUENCE(3, result)
		result += "-"
		RANDOM_HEX_SEQUENCE(12, result)
		return new/UUID/ID(result)


#undef RANDOM_HEX_SEQUENCE
#undef NUM_TO_HEX