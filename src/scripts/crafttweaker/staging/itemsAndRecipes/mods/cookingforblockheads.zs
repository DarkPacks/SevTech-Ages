import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageFour;

static stagedItems as IIngredient[][string] = {
	stageFour.stage: [
		<cookingforblockheads:cooking_table:0>,
		<cookingforblockheads:corner:0>,
		<cookingforblockheads:counter:0>,
		<cookingforblockheads:fridge:0>,
		<cookingforblockheads:kitchen_floor:0>,
		<cookingforblockheads:milk_jar:0>,
		<cookingforblockheads:oven:0>,
		<cookingforblockheads:recipe_book:1>,
		<cookingforblockheads:recipe_book:2>,
		<cookingforblockheads:recipe_book:0>,
		<cookingforblockheads:sink:0>,
		<cookingforblockheads:spice_rack:0>,
		<cookingforblockheads:toaster:0>,
		<cookingforblockheads:tool_rack:0>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.cookingforblockheads.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
