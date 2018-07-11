import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageDisabled;

/*
	Misc Items to hide and remove which are not put into their own mod "scripts".

	Basically a temp holder until they are sorted.
*/
static hiddenItems as IIngredient[] = [
	<base:wrench>,
	<baubles:ring>,
	<bibliocraft:printingpress>, //This can be re-shown once the mod is updated/fixed.
	<chisel:ironpane:*>,
	<cookingforblockheads:cow_jar>,
	<geolosys:cluster:11>,
	<microblockcbe:saw_diamond>,
	<microblockcbe:saw_iron>,
	<microblockcbe:saw_stone>,
	<microblockcbe:stone_rod>,
	<primal_tech:plant_fibres>,
	<progressiontweaks:lime>,
	<progressiontweaks:machine_frame>,
	<progressiontweaks:nanomachine_frame>,
	<quark:arrow_torch>,
	<quark:obsidian_pressure_plate>,
	<rustic:dust_tiny_iron>,
	<rustic:fertile_soil>,
	<scannable:module_structure>,
	<sev_tweaks_npc:golden_ladder_of_ascension>,
	<totemic:medicine_bag>,
	<twilightforest:ore_map_empty>
];

function init() {
	for ingredient in scripts.crafttweaker.staging.itemsAndRecipes.misc.hiddenItems {
		mods.jei.JEI.removeAndHide(ingredient);
		ZenStager.getStage(stageDisabled.stage).addIngredient(ingredient, false);
	}
}
