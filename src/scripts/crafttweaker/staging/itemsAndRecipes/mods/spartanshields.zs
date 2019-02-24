import crafttweaker.item.IIngredient;
import crafttweaker.enchantments.IEnchantmentDefinition;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFive;

static stagedItems as IIngredient[][string] = {
	stageZero.stage: [
		<spartanshields:shield_basic_stone:0>,
		<spartanshields:shield_basic_wood:0>
	],

	stageOne.stage: [
		<spartanshields:shield_basic_bronze:0>,
		<spartanshields:shield_basic_copper:0>,
		<spartanshields:shield_basic_tin:0>
	],

	stageTwo.stage: [
		<spartanshields:shield_basic_gold:0>,
		<spartanshields:shield_basic_iron:0>
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
		<spartanshields:shield_basic_steel:0>
	],

	stageFive.stage: [
		<spartanshields:shield_basic_diamond:0>,
		<spartanshields:shield_riot_rftools:0>
	]
};

static stagedEnchants as IEnchantmentDefinition[][string] = {
	stageTwo.stage: [
		<enchantment:spartanshields:ssenchspikes>
	]
};


function init() {
	for stageName, items in stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
	
	for stageName, enchant in stagedEnchants {
		ZenStager.getStage(stageName).addEnchantment(enchant);
	}
}
