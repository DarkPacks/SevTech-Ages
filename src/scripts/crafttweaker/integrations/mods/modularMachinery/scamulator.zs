/*
	SevTech: Ages Table Scamulator Recipes Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import mods.modularmachinery.RecipeBuilder;

import scripts.crafttweaker.utils;

function init() {
	// Machine name
	var machineName = "scamulator";
//Tier 2 Rocket
	RecipeBuilder.newBuilder(utils.createRecipeName(machineName, "tier2rocket"), machineName, 128)
		.addEnergyPerTickInput(40)
		.addItemInput(<minecraft:map> * 1)
		.addItemInput(<galacticraftcore:basic_item:14> * 1)
		.addItemOutput(<galacticraftcore:schematic:1> * 1)
		.addFluidInput(<liquid:cheese> * 50)
		.build();
//Tier 3 Rocket
	RecipeBuilder.newBuilder(utils.createRecipeName(machineName, "tier3rocket"), machineName, 128)
		.addEnergyPerTickInput(50)
		.addItemInput(<minecraft:map> * 1)
		.addItemInput(<galacticraftplanets:item_basic_mars> * 1)
		.addItemOutput(<galacticraftplanets:schematic> * 1)
		.addFluidInput(<liquid:cheese> * 50)
		.build();
//Tier 4 Rocket
	RecipeBuilder.newBuilder(utils.createRecipeName(machineName, "tier4rocket"), machineName, 128)
		.addEnergyPerTickInput(55)
		.addItemInput(<minecraft:map> * 1)
		.addItemInput(<extraplanets:ingot_mercury> * 1)
		.addItemOutput(<extraplanets:schematic_tier4> * 1)
		.addFluidInput(<liquid:cheese> * 60)
		.build();
//Tier 5 Rocket
	RecipeBuilder.newBuilder(utils.createRecipeName(machineName, "tier5rocket"), machineName, 128)
		.addEnergyPerTickInput(60)
		.addItemInput(<minecraft:map> * 1)
		.addItemInput(<extraplanets:tier5_items:5> * 1)
		.addItemOutput(<extraplanets:schematic_tier5> * 1)
		.addFluidInput(<liquid:cheese> * 70)
		.build();
//Tier 6 Rocket
	RecipeBuilder.newBuilder(utils.createRecipeName(machineName, "tier6rocket"), machineName, 128)
		.addEnergyPerTickInput(70)
		.addItemInput(<minecraft:map> * 1)
		.addItemInput(<extraplanets:tier6_items:5> * 1)
		.addItemOutput(<extraplanets:schematic_tier6> * 1)
		.addFluidInput(<liquid:cheese> * 80)
		.build();
//Tier 7 Rocket
	RecipeBuilder.newBuilder(utils.createRecipeName(machineName, "tier7rocket"), machineName, 128)
		.addEnergyPerTickInput(80)
		.addItemInput(<minecraft:map> * 1)
		.addItemInput(<extraplanets:tier7_items:5> * 1)
		.addItemOutput(<extraplanets:schematic_tier7> * 1)
		.addFluidInput(<liquid:cheese> * 90)
		.build();
//Tier 8 Rocket
	RecipeBuilder.newBuilder(utils.createRecipeName(machineName, "tier8rocket"), machineName, 128)
		.addEnergyPerTickInput(90)
		.addItemInput(<minecraft:map> * 1)
		.addItemInput(<extraplanets:tier8_items:6> * 1)
		.addItemOutput(<extraplanets:schematic_tier8> * 1)
		.addFluidInput(<liquid:cheese> * 100)
		.build();
//Tier 9 Rocket
	RecipeBuilder.newBuilder(utils.createRecipeName(machineName, "tier9rocket"), machineName, 128)
		.addEnergyPerTickInput(100)
		.addItemInput(<minecraft:map> * 1)
		.addItemInput(<extraplanets:tier9_items:5> * 1)
		.addItemOutput(<extraplanets:schematic_tier9> * 1)
		.addFluidInput(<liquid:cheese> * 110)
		.build();
//Tier 10 Rocket
	RecipeBuilder.newBuilder(utils.createRecipeName(machineName, "tier10rocket"), machineName, 128)
		.addEnergyPerTickInput(110)
		.addItemInput(<minecraft:map> * 1)
		.addItemInput(<extraplanets:tier10_items:5> * 1)
		.addItemOutput(<extraplanets:schematic_tier10> * 1)
		.addFluidInput(<liquid:cheese> * 120)
		.build();
//Tier 10 Electric Rocket
	RecipeBuilder.newBuilder(utils.createRecipeName(machineName, "tier10Electricrocket"), machineName, 128)
		.addEnergyPerTickInput(110)
		.addItemInput(<minecraft:map> * 1)
		.addItemInput(<extraplanets:eris:2> * 1)
		.addItemOutput(<extraplanets:schematic_tier10_electric_rocket> * 1)
		.addFluidInput(<liquid:cheese> * 120)
		.build();
//Mars Rover
	RecipeBuilder.newBuilder(utils.createRecipeName(machineName, "marsrover"), machineName, 128)
		.addEnergyPerTickInput(50)
		.addItemInput(<minecraft:map> * 1)
		.addItemInput(<galacticraftplanets:mars:9> * 1)
		.addItemOutput(<extraplanets:schematic_mars_rover> * 1)
		.addFluidInput(<liquid:cheese> * 50)
		.build();
//VenUS ROvEr
	RecipeBuilder.newBuilder(utils.createRecipeName(machineName, "venusrover"), machineName, 128)
		.addEnergyPerTickInput(50)
		.addItemInput(<minecraft:map> * 1)
		.addItemInput(<galacticraftplanets:venus:1> * 1)
		.addItemOutput(<extraplanets:schematic_venus_rover> * 1)
		.addFluidInput(<liquid:cheese> * 50)
		.build();
//Moon Buggy
	RecipeBuilder.newBuilder(utils.createRecipeName(machineName, "moonbuggy"), machineName, 128)
		.addEnergyPerTickInput(50)
		.addItemInput(<minecraft:map> * 1)
		.addItemInput(<galacticraftcore:basic_block_moon:4> * 1)
		.addItemOutput(<galacticraftcore:schematic> * 1)
		.addFluidInput(<liquid:cheese> * 50)
		.build();
//Automatic Cargo Rocket
	RecipeBuilder.newBuilder(utils.createRecipeName(machineName, "automaticcargorocket"), machineName, 128)
		.addEnergyPerTickInput(200)
		.addItemInput(<minecraft:map> * 1)
		.addItemInput(<galacticraftcore:item_basic_moon:2> * 1)
		.addItemOutput(<galacticraftplanets:schematic:1> * 1)
		.addFluidInput(<liquid:cheese> * 200)
		.build();
//Astro Miner
	RecipeBuilder.newBuilder(utils.createRecipeName(machineName, "astrominer"), machineName, 128)
		.addEnergyPerTickInput(200)
		.addItemInput(<minecraft:map> * 1)
		.addItemInput(<galacticraftplanets:item_basic_asteroids:5> * 1)
		.addItemOutput(<galacticraftplanets:schematic:2> * 1)
		.addFluidInput(<liquid:cheese> * 200)
		.build();
}