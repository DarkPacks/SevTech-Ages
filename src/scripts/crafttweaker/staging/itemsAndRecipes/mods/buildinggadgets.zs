import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageFive;
import scripts.crafttweaker.stages.stageDisabled;

static stagedItems as IIngredient[][string] = {
	stageFour.stage: [
		<buildinggadgets:buildingtool:*>
	],

	stageFive.stage: [
		<buildinggadgets:constructionblock:0>,
		<buildinggadgets:constructionblockpowder:0>,
		<buildinggadgets:constructionpaste:0>,
		<buildinggadgets:constructionpastecontainer:0>,
		<buildinggadgets:constructionpastecontainert2:0>,
		<buildinggadgets:constructionpastecontainert3:0>,
		<buildinggadgets:copypastetool:*>,
		<buildinggadgets:constructionblock_dense:0>,
		<buildinggadgets:construction_chunk_dense>,
		<buildinggadgets:exchangertool:*>,
		<buildinggadgets:template:0>,
		<buildinggadgets:templatemanager:0>
	],

	stageDisabled.stage: [
		<buildinggadgets:destructiontool:0>
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
