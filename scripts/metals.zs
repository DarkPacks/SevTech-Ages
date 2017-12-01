for metalName, metal in metals {
	var hasLiquid = metalItems[metalName].liquid as bool;

	//Remove block recipes
	if (metal.block as bool) {
		var preferredMetalBlock = metalItems[metalName].block as bool ? metalItems[metalName].block.itemArray[0] : null;
		//TODO: Remove recipes we dont want on the preferredMetalBlock

		//Remove other blocks completely
		for metalBlock in metal.block.itemArray {
			//If this block is the one we want, skip
			if (!metalBlock.matches(preferredMetalBlock)) {
				mods.jei.JEI.removeAndHide(metalBlock);

				if (hasLiquid) {
					mods.tconstruct.Casting.removeBasinRecipe(metalBlock);
					mods.tconstruct.Melting.removeRecipe(metalItems[metalName].liquid.liquids[0], metalBlock);
				}

				//Remove from Ore Dict
				metal.block.remove(metalBlock);
			}
		}
	}

	//Remove ingot recipes
	if (metal.ingot as bool) {
		var preferredMetalIngot = metalItems[metalName].ingot as bool ? metalItems[metalName].ingot.itemArray[0] : null;
		//TODO: Remove recipes we dont want on the preferredMetalIngot

		//Remove other ingots completely
		for metalIngot in metal.ingot.itemArray {
			//If this ingot is the one we want, skip
			if (!metalIngot.matches(preferredMetalIngot)) {
				mods.jei.JEI.removeAndHide(metalIngot);
				furnace.remove(metalIngot);

				if (hasLiquid) {
					mods.tconstruct.Casting.removeTableRecipe(metalIngot);
					mods.tconstruct.Melting.removeRecipe(metalItems[metalName].liquid.liquids[0], metalIngot);
				}

				//Remove from Ore Dict
				metal.ingot.remove(metalIngot);
			}
		}
	}

	//Remove nugget recipes
	if (metal.nugget as bool) {
		var preferredMetalNugget = metalItems[metalName].nugget as bool ? metalItems[metalName].nugget.itemArray[0] : null;
		//TODO: Remove recipes we dont want on the preferredMetalNugget

		//Remove other nuggets completely
		for metalNugget in metal.nugget.itemArray {
			//If this nugget is the one we want, skip
			if (!metalNugget.matches(preferredMetalNugget)) {
				mods.jei.JEI.removeAndHide(metalNugget);

				if (hasLiquid) {
					mods.tconstruct.Casting.removeTableRecipe(metalNugget);
					mods.tconstruct.Melting.removeRecipe(metalItems[metalName].liquid.liquids[0], metalNugget);
				}

				//Remove from Ore Dict
				metal.nugget.remove(metalNugget);
			}
		}
	}

	//Remove dust/grit recipes
	if (metal.dust as bool) {
		var preferredMetalDust = metalItems[metalName].dust as bool ? metalItems[metalName].dust.itemArray[0] : null;
		//TODO: Remove recipes we dont want on the preferredMetalDust

		//Remove other dusts completely
		for metalDust in metal.dust.itemArray {
			//If this dust is the one we want, skip
			if (!metalDust.matches(preferredMetalDust)) {
				mods.jei.JEI.removeAndHide(metalDust);

				if (hasLiquid) {
					mods.tconstruct.Casting.removeTableRecipe(metalDust);
					mods.tconstruct.Melting.removeRecipe(metalItems[metalName].liquid.liquids[0], metalDust);
				}

				//Remove from Ore Dict
				metal.dust.remove(metalDust);
			}
		}
	}

	//Remove plate recipes
	if (metal.plate as bool) {
		var preferredMetalPlate = metalItems[metalName].plate as bool ? metalItems[metalName].plate.itemArray[0] : null;
		//TODO: Remove recipes we dont want on the preferredMetalPlate

		//Remove other plates completely
		for metalPlate in metal.plate.itemArray {
			//If this plate is the one we want, skip
			if (!metalPlate.matches(preferredMetalPlate)) {
				mods.jei.JEI.removeAndHide(metalPlate);

				if (hasLiquid) {
					mods.tconstruct.Casting.removeTableRecipe(metalPlate);
					mods.tconstruct.Melting.removeRecipe(metalItems[metalName].liquid.liquids[0], metalPlate);
				}

				//Remove from Ore Dict
				metal.plate.remove(metalPlate);
			}
		}
	}

	//Remove gear recipes
	if (metal.gear as bool) {
		var preferredMetalGear = metalItems[metalName].gear as bool ? metalItems[metalName].gear.itemArray[0] : null;
		//TODO: Remove recipes we dont want on the preferredMetalGear

		//Remove other gears completely
		for metalGear in metal.gear.itemArray {
			//If this gear is the one we want, skip
			if (!metalGear.matches(preferredMetalGear)) {
				mods.jei.JEI.removeAndHide(metalGear);

				if (hasLiquid) {
					mods.tconstruct.Casting.removeTableRecipe(metalGear);
					mods.tconstruct.Melting.removeRecipe(metalItems[metalName].liquid.liquids[0], metalGear);
				}

				//Remove from Ore Dict
				metal.gear.remove(metalGear);
			}
		}
	}

	//Remove rod recipes
	if (metal.rod as bool) {
		var preferredMetalRod = metalItems[metalName].rod as bool ? metalItems[metalName].rod.itemArray[0] : null;
		//TODO: Remove recipes we dont want on the preferredMetalRod

		//Remove other rods completely
		for metalRod in metal.rod.itemArray {
			//If this rod is the one we want, skip
			if (!metalRod.matches(preferredMetalRod)) {
				mods.jei.JEI.removeAndHide(metalRod);

				if (hasLiquid) {
					mods.tconstruct.Casting.removeTableRecipe(metalRod);
					mods.tconstruct.Melting.removeRecipe(metalItems[metalName].liquid.liquids[0], metalRod);
				}

				//Remove from Ore Dict
				metal.rod.remove(metalRod);
			}
		}
	}
}
