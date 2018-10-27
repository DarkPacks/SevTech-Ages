#priority 3400

/*
	SevTech: Ages AbyssalCraft Script

	This script is a zenClass to allow easy interation with AbyssalCraft.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;

import mods.abyssalcraft.Crystallizer;
import mods.abyssalcraft.Materializer;
import mods.abyssalcraft.Transmutator;
import mods.abyssalcraft.RitualStages;

zenClass AbyssalCraft {
	var default_xp as float;

	zenConstructor(defaultXP as float) {
		default_xp = defaultXP;
	}

	/*
		Remove a Transmutator Recipe
	*/
	function removeTransmutation(input as IItemStack) {
		Transmutator.removeTransmutation(input);
	}

	/*
		Add a Transmutator Recipe
	*/
	function addTransmutation(input as IItemStack, output as IItemStack) {
		Transmutator.addTransmutation(input, output, default_xp);
	}
	function addTransmutation(input as IItemStack, output as IItemStack, exp as float) {
		Transmutator.addTransmutation(input, output, exp as float);
	}

	/*
		Remove a Crystallizer Recipe
	*/
	function removeCrystallization(input as IItemStack) {
		Crystallizer.removeCrystallization(input);
	}

	/*
		Add a Single Crystallizer Recipe
	*/
	function addSingleCrystallization(input as IItemStack, output as IItemStack) {
		Crystallizer.addSingleCrystallization(input, output, default_xp);
	}
	function addSingleCrystallization(input as IItemStack, output as IItemStack, exp as float) {
		Crystallizer.addSingleCrystallization(input, output, exp);
	}

	/*
		Add a Dual Crystallizer Recipe
	*/
	function addCrystallization(input as IItemStack, output as IItemStack, output2 as IItemStack) {
		Crystallizer.addCrystallization(input, output, output2, default_xp);
	}
	function addCrystallization(input as IItemStack, output as IItemStack, output2 as IItemStack, exp as float) {
		Crystallizer.addCrystallization(input, output, output2, exp);
	}

	/*
		Remove a Materializer Recipe
	*/
	function removeMaterialization(output as IItemStack) {
		Materializer.removeMaterialization(output);
	}

	/*
		Add a Materializer Recipe
	*/
	function addMaterialization(output as IItemStack, input as IItemStack[]) {
		Materializer.addMaterialization(output, input);
	}

	/*
		Add a Ritual to a Stage.
	*/
	function addRitualStage(stage as string, ritual as string) {
		RitualStages.addRitualStage(stage, ritual);
	}
}
