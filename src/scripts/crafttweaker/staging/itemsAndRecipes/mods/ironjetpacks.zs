import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageFive;
import scripts.crafttweaker.stages.stageCreative;
import scripts.crafttweaker.stages.stageCreativeUnused;

static stagedItems as IIngredient[][string] = {
	stageFive.stage: [
		<ironjetpacks:advanced_coil:0>,
		<ironjetpacks:basic_coil:0>,
		<ironjetpacks:diamond_capacitor:0>,
		<ironjetpacks:diamond_cell:0>,
		<ironjetpacks:diamond_jetpack:0>,
		<ironjetpacks:diamond_thruster:0>,
		<ironjetpacks:electrum_capacitor:0>,
		<ironjetpacks:electrum_cell:0>,
		<ironjetpacks:electrum_jetpack:0>,
		<ironjetpacks:electrum_thruster:0>,
		<ironjetpacks:emerald_capacitor:0>,
		<ironjetpacks:emerald_cell:0>,
		<ironjetpacks:emerald_jetpack:0>,
		<ironjetpacks:emerald_thruster:0>,
		<ironjetpacks:strap:0>
	],

	stageCreative.stage: [
		<ironjetpacks:creative_cell:0>,
		<ironjetpacks:creative_jetpack:0>,
		<ironjetpacks:creative_thruster:0>
	],

	stageCreativeUnused.stage: [
		<ironjetpacks:creative_capacitor:0>
	]
};

function init() {
	for stageName, items in stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
