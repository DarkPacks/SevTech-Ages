#priority -2

import crafttweaker.item.IIngredient;

var STAGE = STAGES.four;

var modIDs as string[] = [
	"advgenerators",
	"elevatorid",
	"indlog",
	"integrateddynamics",
	"modularrouters",
	"simplegenerators",
	"storagenetwork"
];

for id in modIDs {
	for item in loadedMods[id].items {
		mods.ItemStages.addItemStage(STAGE, item);
	}
}
