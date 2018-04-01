import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

var shapelessRecipes as IIngredient[][][IItemStack] = {
	<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:chemical_mixer"}) : [
		[<immersiveengineering:material:6>, <betterwithmods:rope>, stick, <pickletweaks:dye_powder:11>]
	],
	<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:industrial_loom"}) : [
		[<minecraft:paper>, str, <pickletweaks:dye_powder:11>]
	],
	<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:volcanic_crystalizer"}) : [
		[<minecraft:paper>, <minecraft:obsidian>, <pickletweaks:dye_powder:11>]
	],
	<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:ethylitic_enricher"}) : [
		[<minecraft:paper>, <actuallyadditions:item_fertilizer>, <pickletweaks:dye_powder:11>]
	],
	<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:industrial_drying_unit"}) : [
		[<minecraft:paper>, <minecraft:leather>, <pickletweaks:dye_powder:11>]
	],
	<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:industrial_drying_unit_mk3"}) : [
		[<minecraft:paper>, <minecraft:paper>, <minecraft:leather>, <pickletweaks:dye_powder:11>]
	],
	<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:plastic_molder"}) : [
		[<minecraft:paper>, <minecraft:paper>, <pickletweaks:dye_powder:11>]
	],
	<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:industrial_mill"}) : [
		[<minecraft:paper>, <minecraft:wheat>, <pickletweaks:dye_powder:11>]
	],
	<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:industrial_drying_unit_mk2"}) : [
		[<minecraft:paper>, <minecraft:paper>, <pickletweaks:dye_powder:11>, <minecraft:paper>, <minecraft:leather>]
	],
	<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:mixer"}) : [
		[<minecraft:paper>, <minecraft:bucket>, <pickletweaks:dye_powder:11>]
	],
	<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:liquid_processor"}) : [
		[<minecraft:paper>, <minecraft:water_bucket>, <pickletweaks:dye_powder:11>]
	],
	<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:mixer_mk2"}) : [
		[<minecraft:paper>, <minecraft:paper>, <minecraft:bucket>, <pickletweaks:dye_powder:11>]
	],
	<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:mixer_mk3"}) : [
		[<minecraft:paper>, <minecraft:paper>, <minecraft:bucket>, <pickletweaks:dye_powder:11>]
	]
};

for item, recipesForItem in shapelessRecipes {
	for recipe in recipesForItem {
		recipes.addShapeless(item, recipe);
	}
}
