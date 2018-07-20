import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageFive;
import scripts.crafttweaker.stages.stageDisabled;

static stagedItems as IIngredient[][string] = {
	stageTwo.stage: [
		<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:basic", spec: "NONE"}}),
		<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:gold", spec: "STORAGE"}}),
		<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:iron", spec: "STORAGE"}})
	],

	stageFive.stage: [
		<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:diamond", spec: "STORAGE"}})
	]
};

static hiddenItems as IIngredient[] = [
	<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:diamond", spec: "UPGRADE"}}), // TODO: Add back when IronBackpacks adds upgrade functionality
	<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:gold", spec: "UPGRADE"}}), // TODO: Add back when IronBackpacks adds upgrade functionality
	<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:iron", spec: "UPGRADE"}}), // TODO: Add back when IronBackpacks adds upgrade functionality
	<ironbackpacks:upgrade>, // TODO: Add back when IronBackpacks adds upgrade functionality
	<ironbackpacks:upgrade>.withTag({upgrade: "ironbackpacks:damage_bar"}), // TODO: Add back when IronBackpacks adds upgrade functionality
	<ironbackpacks:upgrade>.withTag({upgrade: "ironbackpacks:everlasting"}), // TODO: Add back when IronBackpacks adds upgrade functionality
	<ironbackpacks:upgrade>.withTag({upgrade: "ironbackpacks:extra_upgrade"}), // TODO: Add back when IronBackpacks adds upgrade functionality
	<ironbackpacks:upgrade>.withTag({upgrade: "ironbackpacks:lock"}) // TODO: Add back when IronBackpacks adds upgrade functionality
];

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.ironbackpacks.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
	for ingredient in scripts.crafttweaker.staging.itemsAndRecipes.mods.ironbackpacks.hiddenItems {
		mods.jei.JEI.removeAndHide(ingredient);
		ZenStager.getStage(stageDisabled.stage).addIngredient(ingredient, false);
	}
}
