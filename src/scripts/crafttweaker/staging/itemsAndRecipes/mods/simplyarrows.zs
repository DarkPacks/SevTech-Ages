import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageBaykok;
import scripts.crafttweaker.stages.stageDisabled;

static stagedItems as IIngredient[][string] = {
	stageBaykok.stage: [
		<simplyarrows:arrow_bone>,
		<simplyarrows:arrow_flint>
	]
};

static hiddenItems as IIngredient[] = [
	<simplyarrows:arrow_cake>,
	<simplyarrows:arrow_flame>,
	<simplyarrows:arrow_iron>,
	<simplyarrows:arrow_love>,
	<simplyarrows:arrow_tnt>,
	<simplyarrows:arrow_torch>
];

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.simplyarrows.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
	for ingredient in scripts.crafttweaker.staging.itemsAndRecipes.mods.simplyarrows.hiddenItems {
		mods.jei.JEI.removeAndHide(ingredient);
		ZenStager.getStage(stageDisabled.stage).addIngredient(ingredient, false);
	}
}
