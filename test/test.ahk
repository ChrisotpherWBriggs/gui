test := {}
test["briggs2300"]:= OBject("Name", Briggs, "fName", Chris, "group", 677)
test["smith"]:= Object("lName", Smith, "fName", "John", "group", 679)





run notepad

send % test.briggs2300.lName
send `n
send % test.smith.lName
send `n
for k,v in test
	send %k%,%v%

