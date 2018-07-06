#priority 2400

/*
	SevTech: Ages Mekanism Script

	This script is a zenClass to allow easy interation with Mekanism.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

import mod.mekanism.gas.IGasStack;

import mods.mekanism.chemical.injection as Injection;
import mods.mekanism.combiner as Combiner;
import mods.mekanism.crusher as Crusher;
import mods.mekanism.enrichment as Enrichment;
import mods.mekanism.infuser as Infuser;

zenClass Mekanism {
	zenConstructor() {
	}

	/*
		Remove a Enrichment Chamber Recipe
	*/
	function removeEnrichment(input as IIngredient) {
		Enrichment.removeRecipe(input);
	}
	function removeEnrichment(input as IIngredient, output as IIngredient) {
		Enrichment.removeRecipe(input, output);
	}

	/*
		Add a Enrichment Chamber Recipe
	*/
	function addEnrichment(input as IItemStack, output as IItemStack) {
		Enrichment.addRecipe(input, output);
	}

	/*
		Add a Chemical Injection Chamber Recipe
	*/
	function addChemicalInjection(input as IItemStack, gasInput as IGasStack, output as IItemStack) {
		Injection.addRecipe(input, gasInput, output);
	}

	/*
		Add a Combiner Recipe
	*/
	function addCombiner(input as IItemStack, extraInput as IItemStack, output as IItemStack) {
		Combiner.addRecipe(input, extraInput, output);
	}

	/*
		Remove a Combiner Recipe
	*/
	function removeCombiner(output as IIngredient) {
		Combiner.removeRecipe(output);
	}
	function removeCombiner(output as IIngredient, input as IIngredient) {
		Combiner.removeRecipe(output, input);
	}

	/*
		Add a Crusher Recipe
	*/
	function addCrusher(input as IItemStack, output as IItemStack) {
		Crusher.addRecipe(input, output);
	}

	/*
		Remove a Crusher Recipe
	*/
	function removeCrusher(output as IIngredient) {
		Crusher.removeRecipe(output);
	}
	function removeCrusher(output as IIngredient, input as IIngredient) {
		Crusher.removeRecipe(output, input);
	}

	/*
		Add a Infuser Recipe
	*/
	function addInfusion(infusionType as string, toConsume as int, input as IItemStack, output as IItemStack) {
		Infuser.addRecipe(infusionType, toConsume, input, output);
	}
}
