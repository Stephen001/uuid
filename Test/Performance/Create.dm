CreateBulk
	parent_type = /TestScenario

	proc
		CreateUUIDv4()
			for (var/i in 1 to 100000)
				var/UUID/ID/id = UUID.generate(UUID.VERSION_4)
				id.toString()