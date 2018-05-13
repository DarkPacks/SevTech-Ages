#priority 10

/*
	Dust Processing

	This script purley handles the recipe/processing changes to dusts in machines.
	This could be to correct the outputs to the one for the pack and/or
	wrong dusts in general.
*/

/*
	Re-create mekanism recipes
*/
for metalName, metal in metals {
	if (metal has "dirtyDust") {
		mekanism.removeEnrichment(metal.dirtyDust.firstItem);
		mekanism.addEnrichment(metal.dirtyDust.firstItem, metal.dust.firstItem);
	}
}
