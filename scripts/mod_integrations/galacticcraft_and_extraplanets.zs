/*
	GalacticCraft & ExtraPlanets

	https://github.com/MJRLegends/ExtraPlanets/wiki/CraftTweakerSupport-1.12-only!
	https://github.com/MJRLegends/GalacticraftTweaker/wiki/CraftTweakerSupport
*/

// Remove all compressed steel plate recipes.
mods.GalacticraftTweaker.removeCompressorRecipe(<galacticraftcore:basic_item:9>);
// Add the correct steel recipe back.
mods.GalacticraftTweaker.addCompressorShapelessRecipe(<galacticraftcore:basic_item:9>, <immersiveengineering:metal:8>, <immersiveengineering:metal:8>);
