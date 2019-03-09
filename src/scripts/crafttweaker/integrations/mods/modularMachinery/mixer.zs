/*
	SevTech: Ages Table Industrial Mill Recipes Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;
import mods.modularmachinery.RecipeBuilder;

import scripts.crafttweaker.utils;

function init() {
	// Machine name
	var machineName = "mixer";
	// How many in total (base and upgraded versions)
	var machineCount = 3;
	// How much to multiply the base energyPerTick to get mk2 and up
	var energyScalingMultiplier as int[] = [
		1, // Mk1 (default)
		2,
		3
	];

	for i in 0 to machineCount {
		var machineNameComplete as string = i > 0 ? machineName + "_mk" + (i + 1) : machineName;

		var defaultTimeScaler = (i + 1) > 2 ? utils.squareNum(2, i - 1) : i + 1;

		RecipeBuilder.newBuilder(utils.createRecipeName(machineNameComplete, "dough"), machineNameComplete, 300 / defaultTimeScaler)
			.addEnergyPerTickInput(20 * energyScalingMultiplier[i])
			.addItemOutput(<ore:foodDough>, 4)
			.addItemInput(<ore:foodSalt>)
			.addItemInput(<ore:foodFlour>, 4)
			.addFluidInput(<liquid:water> * 250)
			.build();

		//TODO: This in json was 600, 150, 75 recipe time. Should this be standardized or made exactly like the json?
		RecipeBuilder.newBuilder(utils.createRecipeName(machineNameComplete, "hide_salted"), machineNameComplete, 300 / defaultTimeScaler)
			.addEnergyPerTickInput(20 * energyScalingMultiplier[i])
			.addItemOutput(<ore:hideSalted>, 4)
			.addItemInput(<ore:foodSalt>)
			.addItemInput(<ore:hideRaw>, 4)
			.addFluidInput(<liquid:water> * 250)
			.build();

		RecipeBuilder.newBuilder(utils.createRecipeName(machineNameComplete, "hide_tanned"), machineNameComplete, 300 / defaultTimeScaler)
			.addEnergyPerTickInput(20 * energyScalingMultiplier[i])
			.addItemOutput(<ore:hideTanned>, 4)
			.addItemInput(<ore:dustTannin>)
			.addItemInput(<ore:hideDry>, 4)
			.addFluidInput(<liquid:water> * 250)
			.build();

		RecipeBuilder.newBuilder(utils.createRecipeName(machineNameComplete, "paper_pulp"), machineNameComplete, 300 / defaultTimeScaler)
			.addEnergyPerTickInput(20 * energyScalingMultiplier[i])
			.addItemOutput(<primal:plant_fiber_pulp:0> * 4)
			.addItemInput(<ore:glue>)
			.addItemInput(<ore:dustWood>, 4)
			.addFluidInput(<liquid:water> * 250)
			.build();

		RecipeBuilder.newBuilder(utils.createRecipeName(machineNameComplete, "rice_dough"), machineNameComplete, 300 / defaultTimeScaler)
			.addEnergyPerTickInput(20 * energyScalingMultiplier[i])
			.addItemOutput(<actuallyadditions:item_misc:9> * 4)
			.addItemInput(<ore:foodSalt>)
			.addItemInput(<betterwithaddons:japanmat:4> * 4)
			.addFluidInput(<liquid:water> * 250)
			.build();

		RecipeBuilder.newBuilder(utils.createRecipeName(machineNameComplete, "chocolate"), machineNameComplete, 300 / defaultTimeScaler)
			.addEnergyPerTickInput(20 * energyScalingMultiplier[i])
			.addItemOutput(<betterwithmods:chocolate:0> * 2)
			.addItemInput(<minecraft:sugar:0>)
			.addItemInput(<ore:foodCocoapowder>)
			.addFluidInput(<liquid:milk> * 1000)
			.build();
	}
}
