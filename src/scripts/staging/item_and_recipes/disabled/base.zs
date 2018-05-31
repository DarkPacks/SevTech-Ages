#priority -3000

import crafttweaker.item.IItemStack;

/*
	Just to hide anything that may have been obtained going forward that is now removed, disable these
*/

var STAGE = STAGES.disabled;

var disabledItems as IItemStack[] = [
	<cyclicmagic:uncrafting_block>,
	<geolosys:cluster:10>,
	<geolosys:ore:10>,
	<geolosys:ore_sample:10>,
	<primal:ore_magnetite:*>,
	<twilightforest:ore_map_empty>,
	<indlog:tank:8>,
	<indlog:tank:9>,
	<indlog:tank:10>,
	<indlog:tank:11>,
	<indlog:tank:12>,
	<indlog:tank:13>,
	<indlog:tank:14>,
	<indlog:tank:15>,
	<contenttweaker:creeper_tear> //TODO make texture and find use once SevTweaks is updated to make sad creeper item shedding possible
];

for item in disabledItems {
	mods.ItemStages.addItemStage(STAGE, item);
}
