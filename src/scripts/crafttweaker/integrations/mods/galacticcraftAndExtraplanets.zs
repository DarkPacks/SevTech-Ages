/*
	SevTech: Ages Immersive Engineering Mixer Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import mods.GalacticraftTweaker;

/*
	GalacticCraft & ExtraPlanets

	https://github.com/MJRLegends/ExtraPlanets/wiki/CraftTweakerSupport-1.12-only!
	https://github.com/MJRLegends/GalacticraftTweaker/wiki/CraftTweakerSupport
*/
function init() {
	// Remove tier 8 HD plate recipe
	GalacticraftTweaker.removeCompressorRecipe(<extraplanets:tier8_items:3>);
	// Add corrected tier 8 HD plate recipe
	GalacticraftTweaker.addCompressorShapelessRecipe(<extraplanets:tier8_items:3>, <extraplanets:tier7_items:3>, <extraplanets:tier8_items:4>, <extraplanets:tier8_items:4>, <extraplanets:tier8_items:4>, <extraplanets:tier8_items:4>, <extraplanets:tier8_items:4>);

	// Remove all compressed steel plate recipes.
	GalacticraftTweaker.removeCompressorRecipe(<galacticraftcore:basic_item:9>);
	// Add the correct steel recipe back.
	GalacticraftTweaker.addCompressorShapelessRecipe(<galacticraftcore:basic_item:9>, <immersiveengineering:metal:8>, <immersiveengineering:metal:8>);

	// Remove the compressed nickle plate recipe.
	GalacticraftTweaker.removeCompressorRecipe(<extraplanets:tier5_items:6>);
	// Add back one which is using the correct ingot.
	GalacticraftTweaker.addCompressorShapelessRecipe(<extraplanets:tier5_items:6>, metals.nickel.ingot.firstItem, metals.nickel.ingot.firstItem);
}
