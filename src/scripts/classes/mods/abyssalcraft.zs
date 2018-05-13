#priority 800

import crafttweaker.item.IItemStack;

import mods.abyssalcraft.Crystallizer;
import mods.abyssalcraft.Transmutator;

zenClass AbyssalCraft {
	val default_xp as float;

	zenConstructor(defaultXP as float) {
		default_xp as defaultXP;
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
}
