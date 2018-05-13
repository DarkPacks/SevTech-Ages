#priority 800

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

import mod.mekanism.gas.IGasStack;

import mods.mekanism.chemical.injection as Injection;
import mods.mekanism.combiner as Combiner;
import mods.mekanism.crusher as Crusher;
import mods.mekanism.enrichment as Enrichment;

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
}
