import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageFive;
import scripts.crafttweaker.stages.stageDisabled;

static stagedItems as IIngredient[][string] = {
	stageZero.stage: [
		<tcomplement:porcelain_casting:0>,
		<tcomplement:porcelain_casting:1>,
		<tcomplement:melter:8>,
		<tcomplement:melter:0>,
		<tcomplement:porcelain_melter:8>,
		<tcomplement:porcelain_melter:0>
	],

	stageTwo.stage: [
		<tcomplement:alloy_tank:0>,
		<tcomplement:porcelain_alloy_tank:0>,
		<tcomplement:cast:0>,
		<tcomplement:cast_clay:0>,
		<tcomplement:materials:0>,
		<tcomplement:porcelain_tank:1>,
		<tcomplement:porcelain_tank:2>,
		<tcomplement:porcelain_tank:0>
	],

	stageFour.stage: [
		<tcomplement:knightslime_boots:*>,
		<tcomplement:knightslime_chestplate:*>,
		<tcomplement:knightslime_helmet:*>,
		<tcomplement:knightslime_leggings:*>,
		<tcomplement:manyullyn_boots:*>,
		<tcomplement:manyullyn_chestplate:*>,
		<tcomplement:manyullyn_helmet:*>,
		<tcomplement:manyullyn_leggings:*>
	],
	stageFive.stage: [
		<tcomplement:materials:6>
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
