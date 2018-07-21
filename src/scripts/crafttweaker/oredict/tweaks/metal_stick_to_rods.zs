#priority 2600

/*
	SevTech: Ages ore:stickX ore:rodX Script.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.oredict.IOreDictEntry;

var metalStickPairs as IOreDictEntry[][] = [
	[<ore:stickAluminum>, <ore:rodAluminum>],
	[<ore:stickCopper>, <ore:rodCopper>],
	[<ore:stickIridium>, <ore:stickIridium>],
	[<ore:stickIron>, <ore:rodIron>],
	[<ore:stickSteel>, <ore:rodSteel>],
	[<ore:stickTitanium>, <ore:rodTitanium>],
	[<ore:stickTitaniumAluminide>, <ore:rodTitaniumAluminide>],
	[<ore:stickTitaniumIridium>, <ore:rodTitaniumIridium>],
];

for pair in metalStickPairs {
	for item in pair[0].items {
		pair[1].add(item);
	}
}
