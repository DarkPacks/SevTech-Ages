#priority 3400

/*
	SevTech: Ages Mekanism Script

	This script is a zenClass to allow easy interation with Mekanism.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

import mod.mekanism.gas.IGasStack;

import mods.mekanism.chemical.crystallizer as Crystallizer;
import mods.mekanism.chemical.injection as Injection;
import mods.mekanism.combiner as Combiner;
import mods.mekanism.compressor as Compressor;
import mods.mekanism.crusher as Crusher;
import mods.mekanism.enrichment as Enrichment;
import mods.mekanism.infuser as Infuser;
import mods.mekanism.purification as PurificationChamber;
import mods.mekanism.reaction as PressurisedReactionChamber;
import mods.mekanism.sawmill as Sawmill;
import mods.mekanism.smelter as Smelter;

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
	function addEnrichment(input as IIngredient, output as IItemStack) {
		Enrichment.addRecipe(input, output);
	}

	/*
		Add a Chemical Injection Chamber Recipe
	*/
	function addChemicalInjection(input as IIngredient, gasInput as IGasStack, output as IItemStack) {
		Injection.addRecipe(input, gasInput, output);
	}

	/*
		Remove a Chemical Injection Chamber Recipe
	*/
	function removeChemicalInjection(output as IIngredient) {
		Injection.removeRecipe(output);
	}

	/*
		Add a Combiner Recipe
	*/
	function addCombiner(input as IIngredient, extraInput as IIngredient, output as IItemStack) {
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
	function removeCombiner(output as IIngredient, input as IIngredient, extra as IIngredient) {
		Combiner.removeRecipe(output, input, extra);
	}

	/*
		Add a Crusher Recipe
	*/
	function addCrusher(input as IIngredient, output as IItemStack) {
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
		Add an Infuser Recipe
	*/
	function addInfusion(infusionType as string, toConsume as int, input as IIngredient, output as IItemStack) {
		Infuser.addRecipe(infusionType, toConsume, input, output);
	}

	/*
		Remove an Infuser Recipe
	*/
	function removeInfusion(output as IIngredient) {
		Infuser.removeRecipe(output);
	}
	function removeInfusion(output as IIngredient, input as IIngredient, infusionType as string) {
		Infuser.removeRecipe(output, input, infusionType);
	}

	/*
		Add a Chemical Crystallizer Recipe
	*/
	function addChemicalCrystallizer(inputGas as IGasStack, output as IItemStack) {
		Crystallizer.addRecipe(inputGas, output);
	}

	/*
		Remove a Chemical Crystallizer Recipe
	*/
	function removeChemicalCrystallizer(output as IIngredient) {
		Crystallizer.removeRecipe(output);
	}
	function removeChemicalCrystallizer(output as IIngredient, inputGas as IIngredient) {
		Crystallizer.removeRecipe(output, inputGas);
	}

	/*
		Add an Energized Smelter Recipe
	*/
	function addSmelter(input as IIngredient, output as IItemStack) {
		Smelter.addRecipe(input, output);
	}

	/*
		Remove an Energized Smelter Recipe
	*/
	function removeSmelter(input as IIngredient) {
		Smelter.removeRecipe(input);
	}
	function removeSmelter(input as IIngredient, output as IIngredient) {
		Smelter.removeRecipe(input, output);
	}

	/*
		Add an Osmium Compressor Recipe
	*/
	function addCompressor(input as IIngredient, output as IItemStack) {
		Compressor.addRecipe(input, output);
	}
	function addCompressor(input as IIngredient, inputGas as IGasStack, output as IItemStack) {
		Compressor.addRecipe(input, inputGas, output);
	}

	/*
		Remove an Osmium Compressor Recipe
	*/
	function removeCompressor(output as IItemStack) {
		Compressor.removeRecipe(output);
	}
	function removeCompressor(output as IItemStack, input as IIngredient, inputGas as IIngredient) {
		Compressor.removeRecipe(output, input, inputGas);
	}

	/*
		Add a Sawmill Recipe
	*/
	function addSawmill(input as IIngredient, output as IItemStack) {
		Sawmill.addRecipe(input, output);
	}
	function addSawmill(input as IIngredient, output as IItemStack, bonusOutput as IItemStack, bonusChance as double) {
		Sawmill.addRecipe(input, output, bonusOutput, bonusChance);
	}

	/*
		Remove a Sawmill Recipe
	*/
	function removeSawmill(input as IIngredient) {
		Sawmill.removeRecipe(input);
	}
	function removeSawmill(input as IIngredient, output as IIngredient) {
		Sawmill.removeRecipe(input, output);
	}
	function removeSawmill(input as IIngredient, output as IIngredient, bonusOutput as IIngredient) {
		Sawmill.removeRecipe(input, output, bonusOutput);
	}

	/*
		Add a Purification Chamber Recipe
	*/
	function addPurification(input as IIngredient, output as IItemStack) {
		PurificationChamber.addRecipe(input, output);
	}
	function addPurification(input as IIngredient, inputGas as IGasStack, output as IItemStack) {
		PurificationChamber.addRecipe(input, inputGas, output);
	}

	/*
		Remove a Purification Chamber Recipe
	*/
	function removePurification(output as IItemStack) {
		PurificationChamber.removeRecipe(output);
	}
	function removePurification(output as IItemStack, input as IIngredient, inputGas as IIngredient) {
		PurificationChamber.removeRecipe(output, input, inputGas);
	}

	/*
		Add a Pressurised Reaction Chamber Recipe

		An energy value of 0.0 uses a default value in Mekanism
	*/
	function addPRC(itemInput as IIngredient, liquidInput as ILiquidStack, gasInput as IGasStack, itemOutput as IItemStack, gasOutput as IGasStack, energy as double, duration as int) {
		PressurisedReactionChamber.addRecipe(itemInput, liquidInput, gasInput, itemOutput, gasOutput, energy, duration);
	}

	/*
		Remove a Pressurised Reaction Chamber Recipe
	*/
	function removePRC(itemOutput as IIngredient, gasOutput as IGasStack) {
		PressurisedReactionChamber.removeRecipe(itemOutput, gasOutput);
	}
	function removePRC(itemOutput as IIngredient, gasOutput as IGasStack, itemInput as IIngredient, liquidInput as ILiquidStack, gasInput as IGasStack) {
		PressurisedReactionChamber.removeRecipe(itemOutput, gasOutput, itemInput, liquidInput, gasInput);
	}
}
