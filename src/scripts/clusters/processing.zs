import crafttweaker.item.IItemStack;

import mods.tconstruct.Melting;

var defaultCrushingEnergy as int = 6000;

var clusters as IItemStack[string] = {
	titanium: <materialpart:titanium:cluster>
};

for metal, cluster in clusters {
	// Crushing Recipes
	if (metal == "titanium") { // Titanium should have a chance to give Iron Grit also.
		mods.immersiveengineering.Crusher.addRecipe(metals[metal].dust.firstItem * 2, cluster, defaultCrushingEnergy, metals.iron.dust.firstItem, 0.50);
		mods.actuallyadditions.Crusher.addRecipe(metals[metal].dust.firstItem * 2, cluster, metals.iron.dust.firstItem, 50);
	} else { // Default to standard crushing with no additional items.
		mods.immersiveengineering.Crusher.addRecipe(metals[metal].dust.firstItem * 2, cluster, defaultCrushingEnergy);
		mods.actuallyadditions.Crusher.addRecipe(metals[metal].dust.firstItem * 2, cluster);
	}

	mods.mekanism.enrichment.addRecipe(cluster, metals[metal].dust.firstItem * 2);

	// TC Melting / Casting
	if (!isNull(metalItems[metal].liquid)) {
		Melting.addRecipe(metalItems[metal].liquid.liquids[0] * 144, cluster);
	}
}
