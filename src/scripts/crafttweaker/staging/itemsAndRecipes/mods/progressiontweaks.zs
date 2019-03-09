import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageTutorial;
import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageOne;

static stagedItems as IIngredient[][string] = {
	stageTutorial.stage: [
		<progressiontweaks:fire_pit_unlit:0>,
		<progressiontweaks:spear:0>,
		<progressiontweaks:stone_hammer:0>,
		<progressiontweaks:tomahawk:0>
	],

	stageZero.stage: [
		<progressiontweaks:broken_spear_shaft:0>,
		<progressiontweaks:broken_spear_tip:0>,
		<progressiontweaks:flat_bread:0>,
		<progressiontweaks:unfired_clay_bowl:0>
	],

	stageOne.stage: [
		<progressiontweaks:blank_teleporter:0>
	]
};

static hiddenItems as IIngredient[] = [
	<progressiontweaks:lime>,
	<progressiontweaks:machine_frame>,
	<progressiontweaks:nanomachine_frame>
];

function init() {
	for stageName, items in stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
	recipeUtil.hideItems(hiddenItems as IIngredient[]);
}
