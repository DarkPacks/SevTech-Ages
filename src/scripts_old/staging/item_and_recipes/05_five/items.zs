#priority -2

import crafttweaker.item.IIngredient;

var STAGE = STAGES.five;

var modIDs as string[] = [
	"compactmachines3",
	"environmentaltech",
	"mysticalagradditions",
	"mysticalagriculture",
	"rftools",
	"rftoolscontrol",
	"scannable"
];

for id in modIDs {
	for item in loadedMods[id].items {
		mods.ItemStages.addItemStage(STAGE, item);
	}
}
