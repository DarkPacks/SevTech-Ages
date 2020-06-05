import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageFive;
import scripts.crafttweaker.stages.stageCreativeUnused;

static stagedItems as IIngredient[][string] = {
	stageZero.stage: [
		<waterstrainer:garden_trowel:0>,
		<waterstrainer:net:1>,
		<waterstrainer:net:0>,
		<waterstrainer:strainer_base:0>,
		<waterstrainer:strainer_fisherman:0>,
		<waterstrainer:strainer_survivalist_dense:0>,
		<waterstrainer:strainer_survivalist:0>,
		<waterstrainer:worm:0>
	],

	stageOne.stage: [
		<waterstrainer:bait_pot:0>
	],

	stageTwo.stage: [
		<waterstrainer:efficiency_meter:0>,
		<waterstrainer:strainer_survivalist_dense_solid:0>,
		<waterstrainer:strainer_survivalist_solid:0>
	],

	stageFive.stage: [
		<waterstrainer:strainer_survivalist_dense_reinforced:0>,
		<waterstrainer:strainer_survivalist_reinforced:0>
	],

	stageCreativeUnused.stage: [
		<waterstrainer:super_worm:0>
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
