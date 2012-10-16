UUID
	proc
		generate(var/UUID/UUIDVersion/V)
			return V.generate()

UUID/ID
	proc
		equals(var/UUID/ID/id)
			return src.__value == id.__value

		toString()
			return __value

var/UUID/UUID = new()