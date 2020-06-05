import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageFive;

static stagedItems as IIngredient[][string] = {
	stageFive.stage: [
		<rebornstorage:multicrafter:1>,
		<rebornstorage:multicrafter:2>,
		<rebornstorage:multicrafter:3>,
		<rebornstorage:multicrafter:4>,
		<rebornstorage:multicrafter:0>,
		<rebornstorage:storagecell:1>,
		<rebornstorage:storagecell:2>,
		<rebornstorage:storagecell:3>,
		<rebornstorage:storagecell:0>,
		<rebornstorage:storagecellfluid:1>,
		<rebornstorage:storagecellfluid:2>,
		<rebornstorage:storagecellfluid:3>,
		<rebornstorage:storagecellfluid:0>,
		<rebornstorage:storagepart:1>,
		<rebornstorage:storagepart:2>,
		<rebornstorage:storagepart:3>,
		<rebornstorage:storagepart:4>,
		<rebornstorage:storagepart:5>,
		<rebornstorage:storagepart:6>,
		<rebornstorage:storagepart:7>,
		<rebornstorage:storagepart:0>
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
