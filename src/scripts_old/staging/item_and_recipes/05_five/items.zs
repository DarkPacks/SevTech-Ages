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

var stage5Items as IIngredient[] = [
	//Oredict
	<ore:dustDiamond>,
	<ore:gearDiamond>,
	<ore:oreOsmium>,

	//Misc
	<rangedpumps:pump>,

	/*
		Items by mod
	*/
	// Valkyrie Lib
	<valkyrielib:guide>,

	//Translocators
	<translocators:translocator_part:1>,
	<translocators:translocator_part>,

	//Chargers
	<chargers:charger:2>,
	<chargers:wireless_charger>
];

for item in stage5Items {
	mods.ItemStages.addItemStage(STAGE, item);
}
