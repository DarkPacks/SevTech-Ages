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

var stage4Items as IIngredient[] = [
	/*
		Items by "type"
	*/
	//Silicon
	<ore:blockSilicon>,
	<ore:itemSilicon>,
	<ore:oreSampleSilicon>,

	/*
		Items by mod
	*/
	//Modular Routers
	<guideapi:modularrouters-guidebook>,

	//Better Builder's Wand
	<betterbuilderswands:wandunbreakable>,

	//Bonsai Trees
	<bonsaitrees:bonsaipot:1>,
	<bonsaitrees:bonsaipot>,

	//Chargers
	<chargers:charger:1>,
	<chargers:charger>,

	<poweradapters:mj>
];

for item in stage4Items {
	mods.ItemStages.addItemStage(STAGE, item);
}
