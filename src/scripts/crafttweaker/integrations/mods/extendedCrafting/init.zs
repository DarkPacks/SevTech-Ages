#priority -50

/*
	SevTech: Ages Extended Crafting Ender Recipes Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

import mods.extendedcrafting.CompressionCrafting;
import mods.extendedcrafting.EnderCrafting;
import mods.extendedcrafting.TableCrafting;

function init() {
	var enderRecipes as IIngredient[][][IItemStack] = scripts.crafttweaker.integrations.mods.extendedCrafting.enderRecipes.recipes;
	var tableRecipes as IIngredient[][][IItemStack] = scripts.crafttweaker.integrations.mods.extendedCrafting.tableRecipes.recipes;
	var tierShapedRecipes as IIngredient[][][IItemStack][int] = scripts.crafttweaker.integrations.mods.extendedCrafting.tierTableRecipes.shapedRecipes;
	var tierShapelessRecipes as IIngredient[][IItemStack][int] = scripts.crafttweaker.integrations.mods.extendedCrafting.tierTableRecipes.shapelessRecipes;

	// Add the Recipes to the Game.
	for output, _recipe in enderRecipes {
		EnderCrafting.addShaped(output, _recipe);
	}
	for output, _recipe in tableRecipes {
		TableCrafting.addShaped(output, _recipe);
	}
	for tier, items in tierShapedRecipes {
		for output, _recipe in items {
			TableCrafting.addShaped(tier, output, _recipe);
		}
	}
	for tier, items in tierShapelessRecipes {
		for output, _recipe in items {
			TableCrafting.addShapeless(tier, output, _recipe);
		}
	}

	// Create the Compressions.
	scripts.crafttweaker.integrations.mods.extendedCrafting.init.initCompressions();
}

/*
	Compression Crafting

	https://github.com/BlakeBr0/ExtendedCrafting/wiki/Compression-Crafting

	[<firstOutput>, <firstInput>]
*/
static compressionCraftingPairs as IItemStack[][] = [
	[<overloaded:compressed_cobblestone:0>, <minecraft:cobblestone:0>],
	[<overloaded:compressed_obsidian:0>, <minecraft:obsidian:0>]
];

// The RF Rates to be used when making the compression recipes.
static rfRates as int[] = [
	200,
	250,
	300,
	400,
	500,
	600,
	700,
	800,
	1000,
	1200,
	1400,
	1600,
	1750,
	1850,
	2000,
	2500
];

/*
	Method to handle the compression creating, along with the decompression.
*/
function initCompressions() {
	var craftingPairs as IItemStack[][] = scripts.crafttweaker.integrations.mods.extendedCrafting.init.compressionCraftingPairs;
	var rfRates as int[] = scripts.crafttweaker.integrations.mods.extendedCrafting.init.rfRates;

	for pair in compressionCraftingPairs {
		// Check at the start of every pair loop to see if it is one of the unique types.
		var isObsidian = pair[1].matches(<minecraft:obsidian:0>);
		var isNetherrack = pair[1].matches(<minecraft:netherrack:0>);

		// Loop i = 0 through 15 (doesnt do 16)
		for i in 0 to 16 {
			var output = pair[0].definition.makeStack(i);
			var input = pair[1];

			// Calculate RF Cost.
			var baseCost = (pow(2, i) * 1000) as int;

			if (i != 0) {
				// If not the initial/standard block to 1x.
				input = pair[0].definition.makeStack(i - 1);
			}

			// Default catalyst.
			var catalystMeta = 8;

			// Set catalystMeta based on criteria.
			if (i <= 7) {
				if (isObsidian | isNetherrack) {
					catalystMeta = 11;
				}
			} else if (i <= 11) {
				catalystMeta = isObsidian | isNetherrack ? 12 : 11;
			} else {
				catalystMeta = 13;
			}

			// Now that we have the meta wanted for the catalyst, create the item.
			var catalyst = <extendedcrafting:material:0>.definition.makeStack(catalystMeta);

			// Add compression crafting recipe to compress.
			CompressionCrafting.addRecipe(output, input, 9, catalyst, baseCost, rfRates[i]);

			// Add standard crafting recipe to decompress.
			recipes.addShapeless(input * 9, [output]);
		}
	}
}
