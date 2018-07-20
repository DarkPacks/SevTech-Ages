/*
	SevTech: Ages Run Core Recipe Remove Script

	This script handles the removal of recipes by a modId or other means.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;

// String Array listing of the modId's to which we want ALL recipes removed.
static modIdRecipeRemoval as string[] = [
	"antiqueatlas",
	"astikoor",
	"dungpipe",
	"horsepower",
	"improvedbackpacks",
	"ironchest",
	"natura",
	"overloaded",
	"primal",
	"primal_tech",
	"primalchests",
	"progressiontweaks",
	"prospectors",
	"spartanshields",
	"totemic",
	"wopper"
];

static itemRecipeRemoval as IItemStack[] = [
	<charcoalblock:charcoal_block>,
	<environmentaltech:modifier_creative_flight>,
	<teslacorelib:machine_case>
];

static recipeNameRemoval as string[] = [
	"chisel:emerald",
	"chisel:redstone"
];

function init() {
	// Imports
	var modIdRecipeRemoval as string[] = scripts.crafttweaker.recipes.remove.modIdRecipeRemoval;
	var itemRecipeRemoval as IItemStack[] = scripts.crafttweaker.recipes.remove.itemRecipeRemoval;
	var recipeNameRemoval as string[] = scripts.crafttweaker.recipes.remove.recipeNameRemoval;

	// Remove ModId Recipes
	for modId in modIdRecipeRemoval {
		if (loadedMods in modId) {
			for item in loadedMods[modId].items {
				recipes.remove(item);
			}
		}
	}
	// Remove Item Recipes
	for item in itemRecipeRemoval {
		recipes.remove(item);
	}
	// Remove by Recipes Name
	for item in recipeNameRemoval {
		recipes.removeByRecipeName(item);
	}
}
