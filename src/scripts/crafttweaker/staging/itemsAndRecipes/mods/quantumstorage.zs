import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageFive;

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

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.quantumstorage.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
