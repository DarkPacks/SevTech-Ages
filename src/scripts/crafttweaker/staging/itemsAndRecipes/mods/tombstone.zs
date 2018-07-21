import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageDisabled;

static stagedItems as IIngredient[][string] = {
	stageZero.stage: [
		<tombstone:decorative_grave_cross:0>,
		<tombstone:decorative_grave_normal:0>,
		<tombstone:decorative_grave_simple:0>,
		<tombstone:decorative_tombstone:0>,
		<tombstone:grave_dust:0>
	],

	stageTwo.stage: [
		<tombstone:soul_receptacle:0>,
		<tombstone:dark_marble:0>
	]
};

static hiddenItems as IIngredient[] = [
	<tombstone:advancement_001:0>,
	<tombstone:advancement_002:0>,
	<tombstone:advancement_003:0>,
	<tombstone:book_of_disenchantment:0>,
	<tombstone:dust_of_vanishing:0>,
	<tombstone:fake_fog:0>,
	<tombstone:fishing_rod_of_misadventure:0>,
	<tombstone:grave_key:0>,
	<tombstone:lost_tablet:0>.withTag({cooldown_time: 101286 as long}),
	<tombstone:scroll_buff:*>,
	<tombstone:scroll_of_knowledge:0>,
	<tombstone:soul:0>,
	<tombstone:strange_scroll:0>,
	<tombstone:strange_tablet:0>,
	<tombstone:tablet_of_assistance:0>,
	<tombstone:tablet_of_recall:0>,
	<tombstone:voodoo_poppet:0>
];

function init() {
	for stageName, items in scripts.crafttweaker.staging.itemsAndRecipes.mods.tombstone.stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
	for ingredient in scripts.crafttweaker.staging.itemsAndRecipes.mods.tombstone.hiddenItems {
		mods.jei.JEI.removeAndHide(ingredient);
		ZenStager.getStage(stageDisabled.stage).addIngredient(ingredient, false);
	}
}
