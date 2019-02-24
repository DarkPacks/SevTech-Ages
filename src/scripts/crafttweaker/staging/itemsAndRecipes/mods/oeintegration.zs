import crafttweaker.item.IIngredient;
import crafttweaker.enchantments.IEnchantmentDefinition;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;

static stagedItems as IIngredient[][string] = {
	stageThree.stage: [
		<oeintegration:excavatemodifier:0>
	]
};

static stagedEnchants as IEnchantmentDefinition[][string] = {
	stageTwo.stage: [
		<enchantment:oeintegration:oreexcavation>
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
