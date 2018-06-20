import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageFour;

static stagedItems as IIngredient[][string] = {
	stageOne.stage: [
		<teslacorelib:gear_stone>
	],

	stageFour.stage: [
		<teslacorelib:base_addon>,
		<teslacorelib:energy_tier1>,
		<teslacorelib:energy_tier2>,
		<teslacorelib:machine_case>,
		<teslacorelib:speed_tier1>,
		<teslacorelib:speed_tier2>,
		<teslacorelib:wrench>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.teslacorelib.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
