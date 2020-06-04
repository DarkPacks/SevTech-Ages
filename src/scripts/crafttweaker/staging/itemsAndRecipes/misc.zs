import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageDisabled;

/*
	Misc Items to hide and remove which are not put into their own mod "scripts".

	Basically a temp holder until they are sorted.
*/
static hiddenItems as IIngredient[] = [
	<base:wrench:0>,
	<baubles:ring:0>,
	<bibliocraft:printingpress:0>, //This can be re-shown once the mod is updated/fixed.
	<cd4017be_lib:rrwi:0>,
	<chisel:ironpane:*>,
	<cookingforblockheads:cow_jar:0>,
	<geolosys:cluster:11>,
	<industrialforegoing:oredictionary_converter>,
	<mekanism:machineblock3:3>,
	<microblockcbe:saw_diamond:*>,
	<microblockcbe:saw_iron:*>,
	<microblockcbe:saw_stone:*>,
	<microblockcbe:stone_rod:0>,
	<primal_tech:plant_fibres>,
	<progressiontweaks:lime:0>,
	<progressiontweaks:machine_frame:0>,
	<progressiontweaks:nanomachine_frame:0>,
	<quark:arrow_torch:0>,
	<quark:obsidian_pressure_plate:0>,
	<rustic:dust_tiny_iron:0>,
	<rustic:fertile_soil:0>,
	<scannable:module_structure:0>,
	<sev_tweaks_npc:golden_ladder_of_ascension>,
	<totemic:medicine_bag:0>,
	<twilightforest:ore_map_empty:0>
];

function init() {
	for ingredient in hiddenItems {
		mods.jei.JEI.removeAndHide(ingredient);
		ZenStager.getStage(stageDisabled.stage).addIngredient(ingredient, false);
	}
}
