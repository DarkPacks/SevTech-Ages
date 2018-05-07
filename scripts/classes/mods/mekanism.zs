#priority 800

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mod.mekanism.gas.IGasStack;

import mods.mekanism.enrichment;
import mods.mekanism.chemical.injection;

zenClass Mekanism {
	zenConstructor() {
	}

	/*
		Remove a Enrichment Chamber Recipe
	*/
	function removeEnrichment(input as IIngredient) {
		enrichment.removeRecipe(input);
	}
	function removeEnrichment(input as IIngredient, output as IIngredient) {
		enrichment.removeRecipe(input, output);
	}

	/*
		Add a Enrichment Chamber Recipe
	*/
	function addEnrichment(input as IItemStack, output as IItemStack) {
		enrichment.addRecipe(input, output);
	}

	/*
		Add a Chemical Injection Chamber Recipe
	*/
	function addChemicalInjection(input as IItemStack, inputGas as IGasStack, output as IItemStack) {
		injection.addRecipe(input, inputGas, output);
	}
}
