#priority 2401

/*
	SevTech: Ages ore:stickX to ore:rodX Script.

	This is at priority 2401 so this runs after the metal unification
	and works in conjunction with oredict.metal-stick-to-rods.zs
	which is seperated because of priority reasons

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import scripts.crafttweaker.utils.capitalize;

for metalName, metal in metals {
	if (metal.rod as bool) {
		oreDict.get("stick" + capitalize(metalName)).mirror(metal.rod);
	}
}
