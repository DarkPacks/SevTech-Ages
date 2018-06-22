#priority -2

import crafttweaker.item.IIngredient;

var STAGE = STAGES.two;

var modIDs as string[] = [
	"thebetweenlands",
	"twilightforest",
	"uppers"
];

for id in modIDs {
    for item in loadedMods[id].items {
        mods.ItemStages.addItemStage(STAGE, item);
    }
}
