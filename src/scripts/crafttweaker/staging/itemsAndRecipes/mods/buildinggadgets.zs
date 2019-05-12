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
	for stageName, items in stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
}
