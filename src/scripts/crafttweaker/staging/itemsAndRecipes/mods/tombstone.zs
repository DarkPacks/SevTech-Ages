import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageDisabled;

static stagedItems as IIngredient[][string] = {
	stageZero.stage: [
		<tombstone:decorative_grave_cross>,
		<tombstone:decorative_grave_normal>,
		<tombstone:decorative_grave_simple>,
		<tombstone:decorative_tombstone>,
		<tombstone:grave_dust>
	],

	stageTwo.stage: [
		<tombstone:soul_receptacle>,
		<tombstone:dark_marble>
	]
};

static hiddenItems as IIngredient[] = [
	<tombstone:advancement_001>,
	<tombstone:advancement_002>,
	<tombstone:advancement_003>,
	<tombstone:book_of_disenchantment>,
	<tombstone:dust_of_vanishing>,
	<tombstone:fake_fog>,
	<tombstone:fishing_rod_of_misadventure>,
	<tombstone:grave_key>,
	<tombstone:lost_tablet>.withTag({cooldown_time: 101286 as long}),
	<tombstone:scroll_buff:*>,
	<tombstone:scroll_of_knowledge>,
	<tombstone:soul>,
	<tombstone:strange_scroll>,
	<tombstone:strange_tablet>,
	<tombstone:tablet_of_assistance>,
	<tombstone:tablet_of_recall>,
	<tombstone:voodoo_poppet>
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
