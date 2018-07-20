import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageDisabled;

static stagedItems as IIngredient[][string] = {
	stageTwo.stage: [
		<jaff:fish_bucket_clownfish>,
		<jaff:fish_bucket_cod>,
		<jaff:fish_bucket_pufferfish>,
		<jaff:fish_bucket_salmon>,
		<jaff:tank>
	]
};

static hiddenItems as IIngredient[] = [
	<jaff:diamond_fishing_rod>,
	<jaff:fish_bones>,
	<jaff:golden_fishing_rod>,
	<jaff:iron_fishing_rod>,
	<jaff:iron_hook>,
	<jaff:wooden_fishing_rod>
];

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.jaff.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
	for ingredient in scripts.crafttweaker.staging.itemsAndRecipes.mods.jaff.hiddenItems {
		mods.jei.JEI.removeAndHide(ingredient);
		ZenStager.getStage(stageDisabled.stage).addIngredient(ingredient, false);
	}
}
