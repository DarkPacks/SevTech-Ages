import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageFour;

static stagedItems as IIngredient[][string] = {
	stageZero.stage: [
		<tcomplement:melter:8>,
		<tcomplement:melter:0>,
		<tcomplement:porcelain_melter:8>,
		<tcomplement:porcelain_melter:0>
	],

	stageOne.stage: [
		<tcomplement:porcelain_casting:1>
	],

	stageTwo.stage: [
		<tcomplement:cast:0>,
		<tcomplement:materials:0>,
		<tcomplement:porcelain_casting:0>,
		<tcomplement:porcelain_tank:1>,
		<tcomplement:porcelain_tank:2>,
		<tcomplement:porcelain_tank:0>
	],

	stageFour.stage: [
		<tcomplement:knightslime_boots:0>,
		<tcomplement:knightslime_chestplate:0>,
		<tcomplement:knightslime_helmet:0>,
		<tcomplement:knightslime_leggings:0>,
		<tcomplement:manyullyn_boots:0>,
		<tcomplement:manyullyn_chestplate:0>,
		<tcomplement:manyullyn_helmet:0>,
		<tcomplement:manyullyn_leggings:0>
	]
};

function init() {
	for stageName, items in stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
