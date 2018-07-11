/*
	SevTech: Ages Run Core Recipe Remove Script

	This script handles the removal of recipes by a modId or other means.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/

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

function init() {
	// Imports
	var modIdRecipeRemoval as string[] = scripts.crafttweaker.recipes.remove.modIdRecipeRemoval;

	// Remove ModId Recipes
	for modId in modIdRecipeRemoval {
		if (loadedMods in modId) {
			for item in loadedMods[modId].items {
				recipes.remove(item);
			}
		}
	}
}
