import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageOne;

static stagedItems as IIngredient[][string] = {
	stageZero.stage: [
		<progressiontweaks:broken_spear_shaft>,
		<progressiontweaks:broken_spear_tip>,
		<progressiontweaks:flat_bread>,
		<progressiontweaks:unfired_clay_bowl>
	],

	stageOne.stage: [
		<progressiontweaks:blank_teleporter>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.progressiontweaks.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
