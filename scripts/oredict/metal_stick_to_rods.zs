#priority 1050

import crafttweaker.oredict.IOreDictEntry;

/*
	Make metal ore:stickX ore:rodX, because... why must some mods be different?
*/

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
