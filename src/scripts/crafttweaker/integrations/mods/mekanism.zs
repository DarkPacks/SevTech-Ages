/*
	SevTech: Ages Mekanism Craft Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
function init() {
	/*
		Chemical Injection Recipes
	*/

	// Add a recipe to make Sulfer using the Chemical Injection. TODO: Use the resources global once completed.
	mekanism.addChemicalInjection(<minecraft:gunpowder:0>, <gas:hydrogenChloride>, <ore:dustSulfur>.firstItem);

	/*
		Combiner Recipes
	*/

	// Generic Removals
	mekanism.removeCombiner(<geolosys:cluster:2>);
	mekanism.removeCombiner(<geolosys:cluster:3>);
	mekanism.removeCombiner(<geolosys:cluster:4>);
	mekanism.removeCombiner(<geolosys:cluster:5>);
	mekanism.removeCombiner(<geolosys:cluster:6>);
	mekanism.removeCombiner(<geolosys:cluster:7>);
	mekanism.removeCombiner(<geolosys:cluster:8>);
	mekanism.removeCombiner(<geolosys:cluster:9>);
	mekanism.removeCombiner(<geolosys:cluster:12>);
	mekanism.removeCombiner(<minecraft:iron_ore:0>);
	mekanism.removeCombiner(<minecraft:gold_ore:0>);
	mekanism.removeCombiner(<minecraft:coal_ore:0>);
	mekanism.removeCombiner(<minecraft:diamond_ore:0>);
	mekanism.removeCombiner(<minecraft:redstone_ore:0>);
	mekanism.removeCombiner(<minecraft:emerald_ore:0>);

	/*
		Enrichment Recipes
	*/

	// Obsidian Fix
	mekanism.removeEnrichment(<minecraft:obsidian:0>);
	mekanism.addEnrichment(<minecraft:obsidian:0>, <ore:dustObsidian>.firstItem * 4);

	/*
		Metallurgic Infuser
	*/
	mekanism.addInfusion("OBSIDIAN", 20, <ore:oreCheese>.firstItem, <appliedenergistics2:sky_stone_block:0> * 2);
	mekanism.addInfusion("OBSIDIAN", 20, <galacticraftcore:cheese_curd:0>, <appliedenergistics2:sky_stone_block:0>);

	// Correct steel dust
	mekanism.addInfusion("CARBON", 10, <mekanism:enrichediron:0>, metals.steel.dust.firstItem);

	mekanism.addInfusion("DIAMOND", 80, <ironchest:iron_chest:1>, <ironchest:iron_chest:2>);
}
