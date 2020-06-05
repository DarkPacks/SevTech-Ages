import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageFive;
import scripts.crafttweaker.stages.stageDisabled;

static stagedItems as IIngredient[][string] = {
	stageTwo.stage: [
		<ironbackpacks:backpack:0>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:basic", spec: "NONE"}}),
		<ironbackpacks:backpack:0>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:gold", spec: "STORAGE"}}),
		<ironbackpacks:backpack:0>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:iron", spec: "STORAGE"}})
	],

	stageFive.stage: [
		<ironbackpacks:backpack:0>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:diamond", spec: "STORAGE"}})
	]
};

static hiddenItems as IIngredient[] = [
	<ironbackpacks:backpack:0>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:diamond", spec: "UPGRADE"}}), // TODO: Add back when IronBackpacks adds upgrade functionality
	<ironbackpacks:backpack:0>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:gold", spec: "UPGRADE"}}), // TODO: Add back when IronBackpacks adds upgrade functionality
	<ironbackpacks:backpack:0>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:iron", spec: "UPGRADE"}}), // TODO: Add back when IronBackpacks adds upgrade functionality
	<ironbackpacks:upgrade:0>, // TODO: Add back when IronBackpacks adds upgrade functionality
	<ironbackpacks:upgrade:0>.withTag({upgrade: "ironbackpacks:damage_bar"}), // TODO: Add back when IronBackpacks adds upgrade functionality
	<ironbackpacks:upgrade:0>.withTag({upgrade: "ironbackpacks:everlasting"}), // TODO: Add back when IronBackpacks adds upgrade functionality
	<ironbackpacks:upgrade:0>.withTag({upgrade: "ironbackpacks:extra_upgrade"}), // TODO: Add back when IronBackpacks adds upgrade functionality
	<ironbackpacks:upgrade:0>.withTag({upgrade: "ironbackpacks:lock"}) // TODO: Add back when IronBackpacks adds upgrade functionality
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
