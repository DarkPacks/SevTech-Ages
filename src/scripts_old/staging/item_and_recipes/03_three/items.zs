#priority -2

import crafttweaker.item.IIngredient;

var STAGE = STAGES.three;

var modIDs as string[] = [
	"immersivepetroleum",
	"immersivetech",
	"nex",
	"vc"
];

for id in modIDs {
	for item in loadedMods[id].items {
		mods.ItemStages.addItemStage(STAGE, item);
	}
}

var stage3Items as IIngredient[] = [
	//Yoyo
	//TODO: Why is this not staged in the tcon part staging?
	<yoyos:cord>
];

for item in stage3Items {
	mods.ItemStages.addItemStage(STAGE, item);
}
