import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageFive;
import scripts.crafttweaker.stages.stageCreative;
import scripts.crafttweaker.stages.stageCreativeUnused;

static stagedItems as IIngredient[][string] = {
	stageFive.stage: [
		<ironjetpacks:advanced_coil>,
		<ironjetpacks:basic_coil>,
		<ironjetpacks:diamond_capacitor>,
		<ironjetpacks:diamond_cell>,
		<ironjetpacks:diamond_jetpack>,
		<ironjetpacks:diamond_thruster>,
		<ironjetpacks:electrum_capacitor>,
		<ironjetpacks:electrum_cell>,
		<ironjetpacks:electrum_jetpack>,
		<ironjetpacks:electrum_thruster>,
		<ironjetpacks:emerald_capacitor>,
		<ironjetpacks:emerald_cell>,
		<ironjetpacks:emerald_jetpack>,
		<ironjetpacks:emerald_thruster>,
		<ironjetpacks:strap>
	],

	stageCreative.stage: [
		<ironjetpacks:creative_cell>,
		<ironjetpacks:creative_jetpack>,
		<ironjetpacks:creative_thruster>
	],

	stageCreativeUnused.stage: [
		<ironjetpacks:creative_capacitor>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.ironjetpacks.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
