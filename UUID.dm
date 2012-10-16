#define HALFBYTE2HEX(n) ascii2text(n > 9 ? n + 55 : n + 48)
#define BYTE2HEX(n) HALFBYTE2HEX(((n >> 4) & 0x000F)) + HALFBYTE2HEX((n & 0x000F))
#define HALFWORD2HEX(n) BYTE2HEX(((n >> 8) & 0x00FF)) + BYTE2HEX((n & 0x00FF))

UUID
	proc
		generate(var/UUID/UUIDVersion/V)
			return V.generate()

UUID/ID
	proc
		equals(var/UUID/ID/id)
			return src.__1 == id.__1 && src.__2 == id.__2 && src.__3 == id.__3 && src.__4 == id.__4 && src.__5 == id.__5 && src.__6 == id.__6 && src.__7 == id.__7 && src.__8 == id.__8

		toString()
			if (isnull(__value))
				__value = HALFWORD2HEX(__1)
				__value += HALFWORD2HEX(__2)
				__value += "-"
				__value += HALFWORD2HEX(__3)
				__value += "-"
				__value += HALFWORD2HEX(__4)
				__value += "-"
				__value += HALFWORD2HEX(__5)
				__value += "-"
				__value += HALFWORD2HEX(__6)
				__value += HALFWORD2HEX(__7)
				__value += HALFWORD2HEX(__8)
			return __value

var/UUID/UUID = new()

#undef HALFBYTE2HEX
#undef BYTE2HEX
#undef HALFWORD2HEX