import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageFive;
import scripts.crafttweaker.stages.stageDisabled;

static stagedItems as IIngredient[][string] = {
	stageFive.stage: [
		<quantumstorage:crate>,
		<quantumstorage:crater>,
		<quantumstorage:quantum_bag:*>,
		<quantumstorage:quantum_barrel>,
		<quantumstorage:quantum_storage_unit>,
		<quantumstorage:quantum_tank>,
		<quantumstorage:quantumcrafter>,
		<quantumstorage:quantumstoragedisk>,
		<quantumstorage:quantumstoragediskfluid>,
		<quantumstorage:trashcan>,
		<quantumstorage:trashcanfluid>,
		<quantumstorage:upgrade:1>,
		<quantumstorage:upgrade>
	]
};

static hiddenItems as IIngredient[] = [
	<quantumstorage:chest_diamond>, //Quantum Storage Metal Chests
	<quantumstorage:chest_gold>, //Quantum Storage Metal Chests
	<quantumstorage:chest_iron>, //Quantum Storage Metal Chests
	<quantumstorage:quantum_barrel>,
	<quantumstorage:quantum_battery>,
	<quantumstorage:upgrade:1>,
	<quantumstorage:upgrade:2>,
	<quantumstorage:upgrade:3>,
	<quantumstorage:upgrade>
];

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.quantumstorage.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
	for ingredient in scripts.crafttweaker.staging.itemsAndRecipes.mods.quantumstorage.hiddenItems {
		mods.jei.JEI.removeAndHide(ingredient);
		ZenStager.getStage(stageDisabled.stage).addIngredient(ingredient, false);
	}
}
