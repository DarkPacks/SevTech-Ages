import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageCreativeUnused;
import scripts.crafttweaker.stages.stageDisabled;

static stagedItems as IIngredient[][string] = {
	stageCreativeUnused.stage: [
		<rftools:creative_screen:0>,
		<rftools:powercell_creative:0>
	]
};

static hiddenItems as IIngredient[] = [
	<rftools:invisible_shield_block:0>,
	<rftools:notick_invisible_shield_block:0>,
	<rftools:notick_solid_shield_block:0>,
	<rftools:solid_shield_block:0>,
	<mcjtylib_ng:multipart>
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
	recipeUtil.hideItems(hiddenItems as IIngredient[]);
}
