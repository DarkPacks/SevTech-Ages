import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageCreativeUnused;
import scripts.crafttweaker.stages.stageDisabled;

static stagedItems as IIngredient[][string] = {
	stageCreativeUnused.stage: [
		<rftools:creative_screen>,
		<rftools:powercell_creative>
	]
};

static hiddenItems as IIngredient[] = [
	<rftools:invisible_shield_block>,
	<rftools:notick_invisible_shield_block>,
	<rftools:notick_solid_shield_block>,
	<rftools:solid_shield_block>
];

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.rftools.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
	for ingredient in scripts.crafttweaker.staging.itemsAndRecipes.mods.rftools.hiddenItems {
		mods.jei.JEI.removeAndHide(ingredient);
		ZenStager.getStage(stageDisabled.stage).addIngredient(ingredient, false);
	}
}
