/*
	Stage from killing Baykok
*/
mods.recipestages.Recipes.addShaped("baykok", <minecraft:arrow> * 4, [
	[flint, null], [stick, null],
	[<natura:materials:5>.giveBack(), null]
]);

mods.ItemStages.addItemStage("baykok", <natura:materials:5>);
mods.ItemStages.addItemStage("baykok", <minecraft:arrow>);
mods.ItemStages.addItemStage("baykok", <totemic:baykok_bow>);
