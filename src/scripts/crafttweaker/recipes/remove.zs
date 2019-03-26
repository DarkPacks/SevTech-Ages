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
	<charcoalblock:charcoal_block:0>,
	<environmentaltech:modifier_creative_flight:0>,
	<teslacorelib:machine_case:0>,
	<thebetweenlands:nibblestick:0>
];

static recipeNameRemoval as string[] = [
	"chisel:emerald",
	"chisel:redstone"
];

function init() {
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
