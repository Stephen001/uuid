client
	verb
		ExecuteTestCase(var/class as text, var/case as text)
			class = text2path("/" + class)
			var/A = new class()
			call(A, case)()