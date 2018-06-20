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

var stage2Items as IIngredient[] = [
	<twilightforest:spiral_bricks>,
	<weirdinggadget:weirding_gadget>,
	<yoyos:book>,

	/*
		Items by "type"
	*/
	//Iron Stuff
	<betterbuilderswands:wandiron>,

	/*
		Items by mod
	*/
	//Super Sound Muffler
	<supersoundmuffler:sound_muffler>,
	<supersoundmuffler:sound_muffler_bauble>
];

for item in stage2Items {
	mods.ItemStages.addItemStage(STAGE, item);
}
