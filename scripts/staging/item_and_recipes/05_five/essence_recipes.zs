import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

var STAGE = STAGES.five;

/*
	Mystical Agriculture Essence recipes
*/
function addEssenceRecipe(essence as IIngredient, output as IItemStack) {
	var STAGE = STAGES.five;

	mods.recipestages.Recipes.addShaped(STAGE, output, [
		[essence, essence, essence],
		[essence, null, essence],
		[essence, essence, essence]
	]);
}

addEssenceRecipe(<mysticalagriculture:aluminum_brass_essence>, metals.aluminumBrass.ingot.firstItem * 6);
addEssenceRecipe(<mysticalagriculture:aluminum_essence>, metals.aluminum.ingot.firstItem * 8);
addEssenceRecipe(<mysticalagriculture:ardite_essence>, metals.ardite.ingot.firstItem * 3);
addEssenceRecipe(<mysticalagriculture:bronze_essence>, metals.bronze.ingot.firstItem * 4);
addEssenceRecipe(<mysticalagriculture:coal_essence>, coal * 12);
addEssenceRecipe(<mysticalagriculture:cobalt_essence>, metals.cobalt.ingot.firstItem * 3);
addEssenceRecipe(<mysticalagriculture:constantan_essence>, metals.constantan.ingot.firstItem * 4);
addEssenceRecipe(<mysticalagriculture:copper_essence>, metals.copper.ingot.firstItem * 6);
addEssenceRecipe(<mysticalagriculture:creeper_essence>, <minecraft:gunpowder> * 6);
addEssenceRecipe(<mysticalagriculture:diamond_essence>, diamond);
addEssenceRecipe(<mysticalagriculture:electrum_essence>, metals.electrum.ingot.firstItem * 4);
addEssenceRecipe(<mysticalagriculture:fiery_ingot_essence>, metals.fiery.ingot.firstItem * 3);
addEssenceRecipe(<mysticalagriculture:gold_essence>, metals.gold.ingot.firstItem * 4);
addEssenceRecipe(<mysticalagriculture:iron_essence>, metals.iron.ingot.firstItem * 6);
addEssenceRecipe(<mysticalagriculture:knightslime_essence>, metals.knightslime.ingot.firstItem * 4);
addEssenceRecipe(<mysticalagriculture:lead_essence>, metals.lead.ingot.firstItem * 4);
addEssenceRecipe(<mysticalagriculture:manyullyn_essence>, metals.manyullyn.ingot.firstItem * 2);
addEssenceRecipe(<mysticalagriculture:nickel_essence>, metals.nickel.ingot.firstItem * 4);
addEssenceRecipe(<mysticalagriculture:osmium_essence>, metals.osmium.ingot.firstItem * 4);
addEssenceRecipe(<mysticalagriculture:platinum_essence>, metals.platinum.ingot.firstItem * 2);
addEssenceRecipe(<mysticalagriculture:quartz_enriched_iron_essence>, <refinedstorage:quartz_enriched_iron> * 8);
addEssenceRecipe(<mysticalagriculture:silver_essence>, metals.silver.ingot.firstItem * 4);
addEssenceRecipe(<mysticalagriculture:steel_essence>, metals.steel.ingot.firstItem * 3);
addEssenceRecipe(<mysticalagriculture:steeleaf_essence>, metals.steeleaf.ingot.firstItem * 5);
addEssenceRecipe(<mysticalagriculture:tin_essence>, metals.tin.ingot.firstItem * 4);
addEssenceRecipe(<mysticalagriculture:titanium_essence>, metals.titanium.ingot.firstItem * 2);
addEssenceRecipe(<mysticalagriculture:uranium_essence>, metals.uranium.ingot.firstItem * 2);
