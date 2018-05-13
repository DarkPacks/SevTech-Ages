#priority 951
#modloaded mekanism

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

function removeFromAll(item as IItemStack, liquid as ILiquidStack) {
	var hasItem = item as bool;
	var hasLiquid = liquid as bool;

	if (!hasItem) {
		return null;
	}

	mods.mekanism.chemical.crystallizer.removeRecipe(item);
	//mods.mekanism.chemical.dissolution.removeRecipe(IIngredient outputGas, @Optional IIngredient inputStack)
	//mods.mekanism.chemical.infuser.removeRecipe(IIngredient outputGas, @Optional IIngredient inputGas1, @Optional IIngredient inputGas2)
	mods.mekanism.chemical.injection.removeRecipe(item);
	//mods.mekanism.chemical.oxidizer.removeRecipe(IIngredient outputGas, @Optional IIngredient inputStack)
	//mods.mekanism.chemical.washer.removeRecipe(IIngredient outputGas, @Optional IIngredient inputGas)
	mods.mekanism.combiner.removeRecipe(item);
	mods.mekanism.crusher.removeRecipe(item);
	//mods.mekanism.separator.removeRecipe(IIngredient inputFluid, @Optional IIngredient outputGas1, @Optional IIngredient outputGas2)
	mods.mekanism.smelter.removeRecipe(item);
	mods.mekanism.enrichment.removeRecipe(item);
	mods.mekanism.infuser.removeRecipe(item);
	mods.mekanism.compressor.removeRecipe(item);
	mods.mekanism.sawmill.removeRecipe(item);
	//mods.mekanism.reaction.removeRecipe(IIngredient itemOutput, IIngredient gasOutput, @Optional IIngredient itemInput, @Optional IIngredient liquidInput, @Optional IIngredient gasInput)
	mods.mekanism.purification.removeRecipe(item);
	//mods.mekanism.solarneutronactivator.removeRecipe(IIngredient gasInput, @Optional IIngredient gasOutput)
	//mods.mekanism.thermalevaporation.removeRecipe(IIngredient liquidInput, @Optional IIngredient liquidOutput)
}
