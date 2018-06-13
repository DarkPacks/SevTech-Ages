import mods.mekanism.infuser as Infuser;

/*
	Metallurgic Infuser

	http://crafttweaker.readthedocs.io/en/latest/#Mods/Mekanism/Metallurgic_Infuser/
*/
Infuser.addRecipe("OBSIDIAN", 20, <ore:oreCheese>.firstItem, <appliedenergistics2:sky_stone_block> * 2);
Infuser.addRecipe("OBSIDIAN", 20, <galacticraftcore:cheese_curd>, <appliedenergistics2:sky_stone_block>);

//Correct steel dust
Infuser.addRecipe("CARBON", 10, <mekanism:enrichediron>, metals.steel.dust.firstItem);

Infuser.addRecipe("DIAMOND", 80, <ironchest:iron_chest:1>, <ironchest:iron_chest:2>);

// Add a recipe to make Sulfer using the Chemical Injection. TODO: Use the resources global once completed.
mekanism.addChemicalInjection(<minecraft:gunpowder>, <gas:hydrogenChloride>, <ore:dustSulfur>.firstItem);

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
mekanism.removeCombiner(<minecraft:iron_ore>);
mekanism.removeCombiner(<minecraft:gold_ore>);
mekanism.removeCombiner(<minecraft:coal_ore>);
mekanism.removeCombiner(<minecraft:diamond_ore>);
mekanism.removeCombiner(<minecraft:redstone_ore>);
mekanism.removeCombiner(<minecraft:emerald_ore>);

/*
	Enrichment Recipes
*/

// Obsidian Fix
mekanism.removeEnrichment(<minecraft:obsidian>);
mekanism.addEnrichment(<minecraft:obsidian>, <ore:dustObsidian>.firstItem * 4);
