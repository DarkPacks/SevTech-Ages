import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageFour;

static stagedItems as IIngredient[][string] = {
	stageOne.stage: [
		<teslacorelib:gear_stone:0>
	],

	stageFour.stage: [
		<teslacorelib:base_addon:0>,
		<teslacorelib:energy_tier1:0>,
		<teslacorelib:energy_tier2:0>,
		<teslacorelib:machine_case:0>,
		<teslacorelib:speed_tier1:0>,
		<teslacorelib:speed_tier2:0>,
		<teslacorelib:wrench:0>
	]
};

function init() {
	for stageName, items in stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
