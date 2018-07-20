import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFive;

static stagedItems as IIngredient[][string] = {
	stageZero.stage: [
		<spartanshields:shield_basic_stone>,
		<spartanshields:shield_basic_wood>
	],

	stageOne.stage: [
		<spartanshields:shield_basic_bronze>,
		<spartanshields:shield_basic_copper>,
		<spartanshields:shield_basic_tin>
	],

	stageTwo.stage: [
		<spartanshields:shield_basic_gold>,
		<spartanshields:shield_basic_iron>
	],

	stageThree.stage: [
		<spartanshields:shield_basic_constantan>,
		<spartanshields:shield_basic_electrum>,
		<spartanshields:shield_basic_invar>,
		<spartanshields:shield_basic_lead>,
		<spartanshields:shield_basic_nickel>,
		<spartanshields:shield_basic_obsidian>,
		<spartanshields:shield_basic_platinum>,
		<spartanshields:shield_basic_silver>,
		<spartanshields:shield_basic_steel>
	],

	stageFive.stage: [
		<spartanshields:shield_basic_diamond>,
		<spartanshields:shield_riot_rftools>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.spartanshields.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
