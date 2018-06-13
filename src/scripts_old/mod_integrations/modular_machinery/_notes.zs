/*
	mods.modularmachinery.RecipeBuilder.newBuilder(String recipeRegistryName, String associatedMachineRegistryName, int processingTickTime)
	mods.modularmachinery.RecipeBuilder.newBuilder(String recipeRegistryName, String associatedMachineRegistryName, int processingTickTime, int sortingPriority)

	addEnergyPerTickInput(int perTick)
	addEnergyPerTickOutput(int perTick)

	addFluidInput(ILiquidStack stack)
	addFluidOutput(ILiquidStack stack)

	addItemInput(IItemStack stack)
	addItemInput(IOreDictEntry oreDict)
	addItemInput(IOreDictEntry oreDict, int amount)
	addFuelItemInout(int requiredTotalBurnTime)

	addItemOutput(IItemStack stack)
	addItemOutput(IOreDictEntry oreDict)
	addItemOutput(IOreDictEntry oreDict, int amount)

	setChance(float chance) //sets the chance on the component that was last-added to the recipe

	build() //Don't change stuff after calling this
*/
