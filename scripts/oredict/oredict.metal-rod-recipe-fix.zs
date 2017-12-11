#priority 99

/*
	Add ore:stickX to ore:rodX preferred item

	This is at priority 99 so this runs after the metal unification
	and works in conjunction with oredict.metal-stick-to-rods.zs
	which is seperated because of priority reasons
*/

function capitalize(str as string) as string {
	var output as string = "";
	var char = str[0];

    if(char == "a") {char = "A";}
    if(char == "b") {char = "B";}
    if(char == "c") {char = "C";}
    if(char == "d") {char = "D";}
    if(char == "e") {char = "E";}
    if(char == "f") {char = "F";}
    if(char == "g") {char = "G";}
    if(char == "h") {char = "H";}
    if(char == "i") {char = "I";}
    if(char == "j") {char = "J";}
    if(char == "k") {char = "K";}
    if(char == "l") {char = "L";}
    if(char == "m") {char = "M";}
    if(char == "n") {char = "N";}
    if(char == "o") {char = "O";}
    if(char == "p") {char = "P";}
    if(char == "q") {char = "Q";}
    if(char == "r") {char = "R";}
    if(char == "s") {char = "S";}
    if(char == "t") {char = "T";}
    if(char == "u") {char = "U";}
    if(char == "v") {char = "V";}
    if(char == "w") {char = "W";}
    if(char == "x") {char = "X";}
    if(char == "y") {char = "Y";}
    if(char == "z") {char = "Z";}

    output ~= char;

    for i in 0 to str.length {
    	if (i != 0) {
    		output ~= str[i];
    	}
    }

    return output;
}

for metalName, metal in metals {
	if (metal.rod as bool) {
		print("==Adding " + metal.rod.firstItem.definition.id + " ==");
		oreDict.get("stick" + capitalize(metalName)).mirror(metal.rod);
		print("===============================");
	}
}
