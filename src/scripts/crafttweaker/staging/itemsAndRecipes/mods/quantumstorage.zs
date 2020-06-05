import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageFive;
import scripts.crafttweaker.stages.stageDisabled;

static stagedItems as IIngredient[][string] = {
	stageFive.stage: [
		<quantumstorage:crate:0>,
		<quantumstorage:crater:0>,
		<quantumstorage:quantum_bag:*>,
		<quantumstorage:quantum_barrel:0>,
		<quantumstorage:quantum_storage_unit:0>,
		<quantumstorage:quantum_tank:0>,
		<quantumstorage:quantumcrafter:0>,
		<quantumstorage:quantumstoragedisk:0>,
		<quantumstorage:quantumstoragediskfluid:0>,
		<quantumstorage:trashcan:0>,
		<quantumstorage:trashcanfluid:0>,
		<quantumstorage:upgrade:1>,
		<quantumstorage:upgrade:0>
	]
};

static hiddenRemove as IIngredient[] = [
	<quantumstorage:chest_diamond:0>, //Quantum Storage Metal Chests
	<quantumstorage:chest_gold:0>, //Quantum Storage Metal Chests
	<quantumstorage:chest_iron:0>, //Quantum Storage Metal Chests
	<quantumstorage:quantum_barrel:0>,
	<quantumstorage:quantum_battery:0>,
	<quantumstorage:upgrade:1>,
	<quantumstorage:upgrade:2>,
	<quantumstorage:upgrade:3>,
	<quantumstorage:upgrade:0>
];

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
	recipeUtil.hideItems(hiddenRemove as IIngredient[], true);
}
