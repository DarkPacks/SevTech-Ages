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
	<betterbuilderswands:wanddiamond>,
	<bibliocraft:biblioredbook>.withTag({redstonebook: "by James Maxwell"}),
	<fat_cat:top_hat>,
	<immersivetech:connectors>,
	<oeintegration:excavatemodifier>,

	/*
		Items by "type"
	*/
	//Ore
	<mundaneredstone:redstone_ore>,

	/*
		Items by mod
	*/
	//Steves Carts
	metals.enhancedGalgadorian.block.firstItem,
	metals.enhancedGalgadorian.ingot.firstItem,
	metals.galgadorian.block.firstItem,
	metals.galgadorian.ingot.firstItem,
	metals.reinforcedMetal.block.firstItem,
	metals.reinforcedMetal.ingot.firstItem,

	//Wither Skeleton Tweaks
	<witherskelefix:blade2>,
	<witherskelefix:blade>,
	<witherskelefix:fragment>,

	//Yoyo
	//TODO: Why is this not staged in the tcon part staging?
	<yoyos:cord>
];

for item in stage3Items {
	mods.ItemStages.addItemStage(STAGE, item);
}
