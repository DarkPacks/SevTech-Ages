import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageThree;

static stagedItems as IIngredient[][string] = {
	stageThree.stage: [
		<immersivetech:connectors:0>
	]
};

static hiddenRemove as IIngredient[] = [
	<immersivetech:stone_multiblock>,
	<immersivetech:metal_multiblock>
];

function init() {
	for stageName, items in stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}

	recipeUtil.hideItems(hiddenRemove as IIngredient[], true);
}
