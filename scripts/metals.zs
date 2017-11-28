for metalName, metal in metals {
	//Remove block recipes
	if (metal.block != null) {
		var preferredMetalBlock = metal.block.item.itemArray[0];
		//TODO: Remove recipes we dont want on the preferredMetalBlock

		//Remove other blocks completely
		for metalBlock in metal.block.ore.itemArray {
			//If this block is the one we want, skip
			if (!metalBlock.matches(preferredMetalBlock)) {
				mods.jei.JEI.removeAndHide(metalBlock);
				metal.block.ore.remove(metalBlock);
			}
		}
	}

	//Remove ingot recipes
	if (metal.ingot != null) {
		var preferredMetalIngot = metal.ingot.item.itemArray[0];
		//TODO: Remove recipes we dont want on the preferredMetalIngot

		//Remove other ingots completely
		for metalIngot in metal.ingot.ore.itemArray {
			//If this ingot is the one we want, skip
			if (!metalIngot.matches(preferredMetalIngot)) {
				mods.jei.JEI.removeAndHide(metalIngot);
				metal.ingot.ore.remove(metalIngot);
			}
		}
	}

	//Remove nugget recipes
	if (metal.nugget != null) {
		var preferredMetalNugget = metal.nugget.item.itemArray[0];
		//TODO: Remove recipes we dont want on the preferredMetalNugget

		//Remove other nuggets completely
		for metalNugget in metal.nugget.ore.itemArray {
			//If this nugget is the one we want, skip
			if (!metalNugget.matches(preferredMetalNugget)) {
				mods.jei.JEI.removeAndHide(metalNugget);
				metal.nugget.ore.remove(metalNugget);
			}
		}
	}
}
