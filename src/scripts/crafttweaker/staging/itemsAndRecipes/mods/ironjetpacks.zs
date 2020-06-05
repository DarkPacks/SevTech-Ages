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
	var modId as string = stagedItems.entrySet[0].value[0].items[0].definition.owner;

	var modStage as string = scripts.crafttweaker.staging.itemsAndRecipes.modId.containsMod(modId);
	var doOverride as bool = modStage != "";

	for stageName, items in stagedItems {
		if (doOverride && stageName != modStage) {
			ZenStager.addModItemOverrides(modId, items);
		}

		ZenStager.getStage(stageName).addIngredients(items);
	}
}
