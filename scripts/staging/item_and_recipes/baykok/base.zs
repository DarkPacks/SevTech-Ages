#priority -1

/*
	Stage from killing Baykok
*/
var STAGE = STAGES.baykok;

mods.recipestages.Recipes.addShaped(STAGE, <minecraft:arrow> * 4, [
	[flint, null], [stick, null],
	[<natura:materials:5>.giveBack(), null]
]);

mods.ItemStages.addItemStage(STAGE, <natura:materials:5>);
mods.ItemStages.addItemStage(STAGE, <minecraft:arrow>);
mods.ItemStages.addItemStage(STAGE, <totemic:baykok_bow>);
