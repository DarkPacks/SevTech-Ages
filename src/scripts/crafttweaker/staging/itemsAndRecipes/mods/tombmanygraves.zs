import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageTutorial;

static stagedItems as IIngredient[][string] = {
	stageTutorial.stage: [
		<tombmanygraves:death_list>
	]
};

static hiddenItems as IIngredient[] = [
	<tombmanygraves:death_list>
];

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.tombmanygraves.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
	for ingredient in scripts.crafttweaker.staging.itemsAndRecipes.mods.tombmanygraves.hiddenItems {
		mods.jei.JEI.removeAndHide(ingredient);
	}
}
