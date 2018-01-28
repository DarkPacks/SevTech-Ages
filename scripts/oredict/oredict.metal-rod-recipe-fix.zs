#priority 99

import scripts.utils.capitalize;

/*
	Add ore:stickX to ore:rodX preferred item

	This is at priority 99 so this runs after the metal unification
	and works in conjunction with oredict.metal-stick-to-rods.zs
	which is seperated because of priority reasons
*/
for metalName, metal in metals {
	if (metal.rod as bool) {
		oreDict.get("stick" + capitalize(metalName)).mirror(metal.rod);
	}
}
