import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageDisabled;

static stagedItems as IIngredient[][string] = {
	stageZero.stage: [
		<advancedmortars:mortar:1>,
		<advancedmortars:mortar>
	]
};

static hiddenItems as IIngredient[] = [
	<advancedmortars:mortar:2>,
	<advancedmortars:mortar:3>,
];

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.advancedmortars.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
	for ingredient in scripts.crafttweaker.staging.itemsAndRecipes.mods.advancedmortars.hiddenItems {
		mods.jei.JEI.removeAndHide(ingredient);
		ZenStager.getStage(stageDisabled.stage).addIngredient(ingredient, false);
	}
}
