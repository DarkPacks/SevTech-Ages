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
		<tombstone:crafting_ingredient:3>
	],

	stageTwo.stage: [
		<tombstone:soul_receptacle:0>,
		<tombstone:dark_marble:0>
	]
};

static hiddenRemove as IIngredient[] = [
	<tombstone:ankh_of_pray:0>,
	<tombstone:book_of_disenchantment:0>,
	<tombstone:crafting_ingredient:0>,
	<tombstone:crafting_ingredient:1>,
	<tombstone:crafting_ingredient:2>,
	<tombstone:dust_of_vanishing:0>,
	<tombstone:familiar_receptacle>,
	<tombstone:fishing_rod_of_misadventure:0>,
	<tombstone:grave_key:0>,
	<tombstone:lost_tablet:0>.withTag({cooldown_time: 101286 as long}),
	<tombstone:scroll_buff:0>,
	<tombstone:scroll_buff:1>,
	<tombstone:scroll_buff:2>,
	<tombstone:scroll_buff:3>,
	<tombstone:scroll_buff:4>,
	<tombstone:scroll_of_knowledge:0>,
	<tombstone:tablet_of_assistance:0>,
	<tombstone:tablet_of_recall:0>,
	<tombstone:voodoo_poppet:0>
];

function init() {
	for stageName, items in stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}

	recipeUtil.hideItems(hiddenRemove as IIngredient[], true);
}
