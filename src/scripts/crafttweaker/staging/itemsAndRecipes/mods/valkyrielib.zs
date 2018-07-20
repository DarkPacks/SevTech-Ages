import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageFive;
import scripts.crafttweaker.stages.stageDisabled;

static stagedItems as IIngredient[][string] = {
	stageFive.stage: [
		<valkyrielib:guide>
	]
};

static hiddenItems as IIngredient[] = [
	<valkyrielib:modifier_component>,
	<valkyrielib:modifier_speed>
];

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.valkyrielib.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
	for ingredient in scripts.crafttweaker.staging.itemsAndRecipes.mods.valkyrielib.hiddenItems {
		mods.jei.JEI.removeAndHide(ingredient);
		ZenStager.getStage(stageDisabled.stage).addIngredient(ingredient, false);
	}
}
