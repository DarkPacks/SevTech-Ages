import crafttweaker.item.IIngredient;

for metalName, metal in metals {
	//Remove block recipes
	if (isNull(metal.block)) {
		var preferredMetalBlock = metalItems[metalName].block.itemArray[0];
		//TODO: Remove recipes we dont want on the preferredMetalBlock

		//Remove other blocks completely
		for metalBlock in metal.block.itemArray {
			//If this block is the one we want, skip
			if (!metalBlock.matches(preferredMetalBlock)) {
				mods.jei.JEI.removeAndHide(metalBlock);
				metal.block.remove(metalBlock);
			}
		}
	}

	//Remove ingot recipes
	if (isNull(metal.ingot)) {
		var preferredMetalIngot = metalItems[metalName].ingot.itemArray[0];
		//TODO: Remove recipes we dont want on the preferredMetalIngot

		//Remove other ingots completely
		for metalIngot in metal.ingot.itemArray {
			//If this ingot is the one we want, skip
			if (!metalIngot.matches(preferredMetalIngot)) {
				mods.jei.JEI.removeAndHide(metalIngot);
				metal.ingot.remove(metalIngot);
			}
		}
	}

	//Remove nugget recipes
	if (isNull(metal.nugget)) {
		var preferredMetalNugget = metalItems[metalName].nugget.itemArray[0];
		//TODO: Remove recipes we dont want on the preferredMetalNugget

		//Remove other nuggets completely
		for metalNugget in metal.nugget.itemArray {
			//If this nugget is the one we want, skip
			if (!metalNugget.matches(preferredMetalNugget)) {
				mods.jei.JEI.removeAndHide(metalNugget);
				metal.nugget.remove(metalNugget);
			}
		}
	}
}
