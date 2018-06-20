#priority -2

import crafttweaker.item.IIngredient;

var STAGE = STAGES.one;

var stage1Items as IIngredient[] = [
	//Oredict
	<ore:dustSulfur>,

	/*
		Items by "type"
	*/
	//Beneath
	<beneath:teleporterbeneath>,

	/*
		Items by mod
	*/
	//Hunting Dimension
	<huntingdim:biome_changer:*>,
	<huntingdim:frame>,
	<huntingdim:portal>,

	//Abyssalcraft
	<acintegration:moltenabyssalnite>,
	<acintegration:moltencoralium>,
	<acintegration:moltendreadium>,

	//Dung Pipes
	<dungpipe:dung_pipe>,
	<dungpipe:sewer_pipe>,

	//Cyclic
	<guideapi:cyclicmagic-guide>,

	//Blood Magic
	<guideapi:bloodmagic-guide>,

	<betterbuilderswands:wandstone>
];

for item in stage1Items {
	mods.ItemStages.addItemStage(STAGE, item);
}
