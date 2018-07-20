import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageDisabled;

static stagedItems as IIngredient[][string] = {
	stageZero.stage: [
		<astikoor:cargocart>,
		<astikoor:plowcart>,
		<astikoor:wheel>
	]
};

static hiddenItems as IIngredient[] = [
	<astikoor:carriage>,
	<astikoor:chariot>
];

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.astikoor.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
	for ingredient in scripts.crafttweaker.staging.itemsAndRecipes.mods.astikoor.hiddenItems {
		mods.jei.JEI.removeAndHide(ingredient);
		ZenStager.getStage(stageDisabled.stage).addIngredient(ingredient, false);
	}
}
