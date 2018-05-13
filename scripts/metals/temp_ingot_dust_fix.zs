#priority 9

/*
	A temporary fix for ingot -> dust crushing recipes
	This will be handled better once classes are more fleshed out
*/
for metalName, metalType in metals {
	if (metalType has "dust" & !isNull(metalItems[metalName].dust)) {
		immersiveEngineering.addCrusher(metalType.dust.firstItem, metalItems[metalName].ingot.items[0], 256);
		appliedEnergistics.addGrindstone(metalType.dust.firstItem, metalItems[metalName].ingot.items[0]);
		astralSorcery.addGrindstone(metalItems[metalName].ingot.items[0], metalType.dust.firstItem);
		actuallyAdditions.addCrusher(metalType.dust.firstItem, metalItems[metalName].ingot.items[0]);
		mekanism.addCrusher(metalItems[metalName].ingot.items[0], metalType.dust.firstItem);
	}
}
