#priority 99

/*
	Add ore:stickX to ore:rodX preferred item

	This is at priority 99 so this runs after the metal unification
	and works in conjunction with oredict.metal-stick-to-rods.zs
	which is seperated because of priority reasons
*/

function capitalize(str as string) as string {
	var output as string = "";

	var char = str[0].toUpperCase;

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
		oreDict.get("stick" + capitalize(metalName)).mirror(metal.rod);
	}
}
