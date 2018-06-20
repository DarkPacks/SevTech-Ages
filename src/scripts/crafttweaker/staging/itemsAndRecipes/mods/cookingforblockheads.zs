import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageFour;

static stagedItems as IIngredient[][string] = {
	stageFour.stage: [
		<cookingforblockheads:cooking_table>,
		<cookingforblockheads:corner>,
		<cookingforblockheads:counter>,
		<cookingforblockheads:fridge>,
		<cookingforblockheads:kitchen_floor>,
		<cookingforblockheads:milk_jar>,
		<cookingforblockheads:oven>,
		<cookingforblockheads:recipe_book:1>,
		<cookingforblockheads:recipe_book:2>,
		<cookingforblockheads:recipe_book>,
		<cookingforblockheads:sink>,
		<cookingforblockheads:spice_rack>,
		<cookingforblockheads:toaster>,
		<cookingforblockheads:tool_rack>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.cookingforblockheads.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
