import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFive;

static stagedItems as IIngredient[][string] = {
	stageZero.stage: [
		<spartanshields:shield_basic_stone:0>,
		<spartanshields:shield_basic_wood:0>,
		<spartanshields:shield_tower_wood:0>,
		<spartanshields:shield_tower_stone:0>
	],

	stageOne.stage: [
		<spartanshields:shield_basic_bronze:0>,
		<spartanshields:shield_basic_copper:0>,
		<spartanshields:shield_basic_tin:0>,
		<spartanshields:shield_tower_bronze:0>,
		<spartanshields:shield_tower_copper:0>,
		<spartanshields:shield_tower_tin:0>
	],

	stageTwo.stage: [
		<spartanshields:shield_basic_gold:0>,
		<spartanshields:shield_basic_iron:0>,
		<spartanshields:shield_tower_iron:0>,
		<spartanshields:shield_tower_gold:0>
	],

	stageThree.stage: [
		<spartanshields:shield_basic_constantan:0>,
		<spartanshields:shield_basic_electrum:0>,
		<spartanshields:shield_basic_invar:0>,
		<spartanshields:shield_basic_lead:0>,
		<spartanshields:shield_basic_nickel:0>,
		<spartanshields:shield_basic_obsidian:0>,
		<spartanshields:shield_basic_platinum:0>,
		<spartanshields:shield_basic_silver:0>,
		<spartanshields:shield_basic_steel:0>,
		<spartanshields:shield_tower_constantan:0>,
		<spartanshields:shield_tower_electrum:0>,
		<spartanshields:shield_tower_invar:0>,
		<spartanshields:shield_tower_lead:0>,
		<spartanshields:shield_tower_nickel:0>,
		<spartanshields:shield_tower_obsidian:0>,
		<spartanshields:shield_tower_platinum:0>,
		<spartanshields:shield_tower_silver:0>,
		<spartanshields:shield_tower_steel:0>
	],

	stageFive.stage: [
		<spartanshields:shield_basic_diamond:0>,
		<spartanshields:shield_tower_diamond:0>,
		<spartanshields:shield_riot_rftools:0>
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
