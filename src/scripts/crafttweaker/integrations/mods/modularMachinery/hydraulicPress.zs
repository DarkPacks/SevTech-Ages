/*
	SevTech: Ages Table Hydraulic Press Recipes Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.data.IData;

import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;

import scripts.crafttweaker.utils;

// The machine name.
static machineName as string = "hydraulic_press";

static machineRecipes as IItemStack[][IItemStack] = {
	<galacticraftcore:basic_item:9> * 4: [ <immersiveengineering:metal:8> * 4 ], // Compressed Steel
	<galacticraftcore:basic_item:6> * 4: [ metals.copper.ingot.firstItem * 4 ], // Compressed Copper
	<galacticraftcore:basic_item:7> * 4: [ metals.tin.ingot.firstItem * 4 ], // Compressed Tin
	<galacticraftcore:basic_item:8> * 4: [ metals.aluminum.ingot.firstItem * 4 ],  // Compressed Aluminum
	<galacticraftcore:basic_item:10> * 4: [ metals.bronze.ingot.firstItem * 4 ], // Compressed Bronze
	<galacticraftcore:basic_item:11> * 4: [    	metals.iron.ingot.firstItem * 4 ], // Compressed Iron
	<galacticraftcore:item_basic_moon:1> * 4: [	<galacticraftcore:item_basic_moon:0> * 2 ], // Compressed Meteoric Iron
	<galacticraftplanets:item_basic_mars:5> * 4: [ <galacticraftplanets:item_basic_mars:2> * 2 ], // Compressed Desh
	<galacticraftplanets:item_basic_asteroids:6> * 4: [	metals.titanium.ingot.firstItem * 4 ], // Compressed Titanium
	<extraplanets:tier7_items:6> * 4: [ <extraplanets:tier7_items:4> * 4 ], // Compressed Reinfored Crystal
	<extraplanets:compressed_mercury:0> * 2: [ <extraplanets:ingot_mercury:0> * 2 ], // Compressed Mercury
	<extraplanets:tier4_items:4> * 2: [	<extraplanets:tier4_items:5> * 2 ], // Compressed Carbon
	<extraplanets:tier5_items:4> * 2: [	<extraplanets:tier5_items:5> * 2 ], // Compressed Palladium
	<extraplanets:tier5_items:6> * 2: [	metals.nickel.ingot.firstItem * 2 ], // Compressed Nickel
	<extraplanets:tier6_items:4> * 2: [ <extraplanets:tier6_items:5> * 2 ], // Compressed Magnesium
	<extraplanets:tier7_items:4> * 2: [ <extraplanets:tier7_items:5> * 2 ], // Compressed Crystal
	<extraplanets:tier8_items:4> * 2: [ <extraplanets:tier8_items:5> * 2 ], // Compressed Zinc
	<extraplanets:tier9_items:4> * 2: [ <extraplanets:tier9_items:5> * 2 ], // Compressed Tungsten
	<extraplanets:tier10_items:4> * 2: [ <extraplanets:tier10_items:5> * 2 ], // Compressed Dark Iron
	<extraplanets:tier11_items:6> * 3: [ <extraplanets:tier11_items:5> * 6 ], // Compressed Space Platinum
	<galacticraftcore:heavy_plating:0> * 2: [	<galacticraftcore:basic_item:8> * 2, <galacticraftcore:basic_item:9> * 2, <galacticraftcore:basic_item:10> * 2 ], // Heavy Duty Plate Tier 1
	<galacticraftplanets:item_basic_mars:3>: [ <galacticraftcore:heavy_plating:0>, <galacticraftcore:item_basic_moon:1> ], // Heavy Duty Plate Tier 2
	<galacticraftplanets:item_basic_asteroids:5>: [	<galacticraftplanets:item_basic_mars:3>, <galacticraftplanets:item_basic_mars:5> ], // Heavy Duty Plate Tier 3
	<extraplanets:tier4_items:3>: [                	<galacticraftplanets:item_basic_asteroids:5>, <extraplanets:tier4_items:4>, <extraplanets:compressed_mercury:0> * 4 ], // Heavy Duty Plate Tier 4
	<extraplanets:tier5_items:3>: [                	<extraplanets:tier4_items:3>, <extraplanets:tier5_items:4> * 5 ], // Heavy Duty Plate Tier 5
	<extraplanets:tier6_items:3>: [ <extraplanets:tier5_items:3>, <extraplanets:tier6_items:4> * 5 ], // Heavy Duty Plate Tier 6
	<extraplanets:tier7_items:3>: [ <extraplanets:tier6_items:3>, <extraplanets:tier7_items:6> * 5], // Heavy Duty Plate Tier 7
	<extraplanets:tier8_items:3>: [ <extraplanets:tier7_items:3>, <extraplanets:tier8_items:4> * 5 ], // Heavy Duty Plate Tier 8
	<extraplanets:tier9_items:3>: [ <extraplanets:tier8_items:3>, <extraplanets:tier9_items:4> * 5 ], // Heavy Duty Plate Tier 9
	<extraplanets:tier10_items:3>: [ <extraplanets:tier9_items:3>, <extraplanets:tier10_items:4> * 5 ], // Heavy Duty Plate Tier 10
	<minecraft:bucket>: [<immersiveengineering:metal:39> * 3] // Iron Bucket
};

function init() {
	for output, inputs in machineRecipes {
		var primer as RecipePrimer = RecipeBuilder.newBuilder(utils.createRecipeName(machineName, output.definition.id ~ "_" ~ output.metadata), machineName, 50)
			.addEnergyPerTickInput(100)
			.addFluidInput(<liquid:lubricant> * 50)
			.addItemOutput(output);

		for input in inputs {
			primer
				.addItemInput(input);
		}

		primer.build();
	}
}
