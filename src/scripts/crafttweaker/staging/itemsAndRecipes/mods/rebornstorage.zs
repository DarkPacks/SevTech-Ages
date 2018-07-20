import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageFive;

static stagedItems as IIngredient[][string] = {
	stageFive.stage: [
		<rebornstorage:multicrafter:1>,
		<rebornstorage:multicrafter:2>,
		<rebornstorage:multicrafter:3>,
		<rebornstorage:multicrafter:4>,
		<rebornstorage:multicrafter>,
		<rebornstorage:storagecell:1>,
		<rebornstorage:storagecell:2>,
		<rebornstorage:storagecell:3>,
		<rebornstorage:storagecell>,
		<rebornstorage:storagecellfluid:1>,
		<rebornstorage:storagecellfluid:2>,
		<rebornstorage:storagecellfluid:3>,
		<rebornstorage:storagecellfluid>,
		<rebornstorage:storagepart:1>,
		<rebornstorage:storagepart:2>,
		<rebornstorage:storagepart:3>,
		<rebornstorage:storagepart:4>,
		<rebornstorage:storagepart:5>,
		<rebornstorage:storagepart:6>,
		<rebornstorage:storagepart:7>,
		<rebornstorage:storagepart>
	]
};

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.rebornstorage.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
