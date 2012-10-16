UUID
	var
		global
			UUID/UUIDVersion/VERSION_4 = new/UUID/UUIDVersion/__Version4()

UUID/ID
	var/__1
	var/__2
	var/__3
	var/__4
	var/__5
	var/__6
	var/__7
	var/__8
	var/__value


	New(var/first, var/second, var/third, var/fourth, var/fifth, var/sixth, var/seventh, var/eighth)
		src.__1 = first
		src.__2 = second
		src.__3 = third
		src.__4 = fourth
		src.__5 = fifth
		src.__6 = sixth
		src.__7 = seventh
		src.__8 = eighth

UUID/UUIDVersion/__Version4
	generate()
		var/_1 = rand(0,65535)
		var/_2 = rand(0,65535)
		var/_3 = rand(0,65535)
		var/_4 = rand(0,65535)
		_4 = (_4 & 0x0FFF) | 0x4000
		var/_5 = rand(0,65535)
		_5 = (_5 & 0x0FFF) | 0x8000
		var/_6 = rand(0,65535)
		var/_7 = rand(0,65535)
		var/_8 = rand(0,65535)
		return new/UUID/ID(_1, _2, _3, _4, _5, _6, _7, _8)