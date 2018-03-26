#priority -3000

import crafttweaker.item.IItemStack;

/*
	Just to hide anything that may have been obtained going forward that is now removed, disable these
*/

var STAGE = STAGES.disabled;

var disabledItems as IItemStack[] = [
	<geolosys:cluster:10>,
	<geolosys:ore:10>,
	<geolosys:ore_sample:10>
];

for item in disabledItems {
	mods.ItemStages.addItemStage(STAGE, item);
}
