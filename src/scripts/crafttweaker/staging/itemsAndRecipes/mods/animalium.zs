import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageZero;

static stagedItems as IIngredient[][string] = {
	stageZero.stage: [
		<animalium:bear_claw_paxel>,
		<animalium:bear_claw>,
		<animalium:bear_meat_cooked>,
		<animalium:bear_meat>,
		<animalium:dog_boots>,
		<animalium:rat_meat_cooked>,
		<animalium:rat_meat>,
		<animalium:wild_dog_pelt>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.animalium.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
