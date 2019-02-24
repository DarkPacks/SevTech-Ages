import crafttweaker.item.IIngredient;
import crafttweaker.enchantments.IEnchantmentDefinition;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageTwo;

static stagedItems as IIngredient[][string] = {
	stageTwo.stage: [
		<yoyos:book:0>
	]
};

static stagedEnchants as IEnchantmentDefinition[][string] = {
	stageTwo.stage: [
		<enchantment:yoyos:collecting>
	]
};

function init() {
	for stageName, items in stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
	
	for stageName, enchants in stagedEnchants {
		ZenStager.getStage(stageName).addEnchantments(enchants);
	}
}
