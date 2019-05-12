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
	for stageName, items in stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
	recipeUtil.hideItems(hiddenItems as IIngredient[]);
}
