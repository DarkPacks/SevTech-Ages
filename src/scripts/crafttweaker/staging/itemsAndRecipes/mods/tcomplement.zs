import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageFour;

static stagedItems as IIngredient[][string] = {
	stageZero.stage: [
		<tcomplement:melter:8>,
		<tcomplement:melter>,
		<tcomplement:porcelain_melter:8>,
		<tcomplement:porcelain_melter>
	],

	stageOne.stage: [
		<tcomplement:porcelain_casting:1>
	],

	stageTwo.stage: [
		<tcomplement:cast>,
		<tcomplement:materials>,
		<tcomplement:porcelain_casting>,
		<tcomplement:porcelain_tank:1>,
		<tcomplement:porcelain_tank:2>,
		<tcomplement:porcelain_tank>
	],

	stageFour.stage: [
		<tcomplement:knightslime_boots>,
		<tcomplement:knightslime_chestplate>,
		<tcomplement:knightslime_helmet>,
		<tcomplement:knightslime_leggings>,
		<tcomplement:manyullyn_boots>,
		<tcomplement:manyullyn_chestplate>,
		<tcomplement:manyullyn_helmet>,
		<tcomplement:manyullyn_leggings>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.tcomplement.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
