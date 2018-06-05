import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;

import scripts.mod_integrations.modular_machinery.base.createRecipeName;

var hydraulicRecipes as IItemStack[][IItemStack] = {
	<galacticraftcore:basic_item:9> * 2: [ <immersiveengineering:metal:8> * 4 ], // Compressed Steel
	<galacticraftcore:basic_item:6> * 2: [ metals.copper.ingot.firstItem * 4 ], // Compressed Copper
	<galacticraftcore:basic_item:7> * 2: [ metals.tin.ingot.firstItem * 4 ], // Compressed Tin
	<galacticraftcore:basic_item:8> * 2: [ metals.aluminum.ingot.firstItem * 4 ],  // Compressed Aluminum
	<galacticraftcore:basic_item:10> * 2: [ metals.bronze.ingot.firstItem * 4 ], // Compressed Bronze
	<galacticraftcore:basic_item:11> * 2: [	metals.iron.ingot.firstItem * 4 ], // Compressed Iron
	<galacticraftcore:item_basic_moon:1> * 2: [	<galacticraftcore:item_basic_moon> * 2 ], // Compressed Meteoric Iron
	<galacticraftplanets:item_basic_mars:5> * 2: [ <galacticraftplanets:item_basic_mars:2> * 2 ], // Compressed Desh
	<galacticraftplanets:item_basic_asteroids:6> * 4: [	metals.titanium.ingot.firstItem * 4 ], // Compressed Titanium
	<extraplanets:tier7_items:6> * 2: [ <extraplanets:tier7_items:4> * 4 ], // Compressed Reinfored Crystal
	<extraplanets:compressed_mercury>: [ <extraplanets:ingot_mercury> * 2 ], // Compressed Mercury
	<extraplanets:tier4_items:4>: [	<extraplanets:tier4_items:5> * 2 ], // Compressed Carbon
	<extraplanets:tier5_items:4>: [	<extraplanets:tier5_items:5> * 2 ], // Compressed Palladium
	<extraplanets:tier5_items:6>: [	metals.nickel.ingot.firstItem * 2 ], // Compressed Nickel
	<extraplanets:tier6_items:4>: [ <extraplanets:tier6_items:5> * 2 ], // Compressed Magnesium
	<extraplanets:tier7_items:4>: [ <extraplanets:tier7_items:5> * 2 ], // Compressed Crystal
	<extraplanets:tier8_items:4>: [ <extraplanets:tier8_items:5> * 2 ], // Compressed Zinc
	<extraplanets:tier9_items:4>: [ <extraplanets:tier9_items:5> * 2 ], // Compressed Tungsten
	<extraplanets:tier10_items:4>: [ <extraplanets:tier10_items:5> * 2 ], // Compressed Dark Iron
	<extraplanets:tier11_items:6>: [ <extraplanets:tier11_items:5> * 6 ], // Compressed Space Platinum
	<galacticraftcore:heavy_plating> * 2: [	<galacticraftcore:basic_item:8> * 2, <galacticraftcore:basic_item:9> * 2, <galacticraftcore:basic_item:10> * 2 ], // Heavy Duty Plate Tier 1
	<galacticraftplanets:item_basic_mars:3>: [ <galacticraftcore:heavy_plating>, <galacticraftcore:item_basic_moon:1> ], // Heavy Duty Plate Tier 2
	<galacticraftplanets:item_basic_asteroids:5>: [	<galacticraftplanets:item_basic_mars:3>, <galacticraftplanets:item_basic_mars:5> ], // Heavy Duty Plate Tier 3
	<extraplanets:tier4_items:3>: [	<galacticraftplanets:item_basic_asteroids:5>, <extraplanets:tier4_items:4>, <extraplanets:compressed_mercury> * 4 ], // Heavy Duty Plate Tier 4
	<extraplanets:tier5_items:3>: [	<extraplanets:tier4_items:3>, <extraplanets:tier5_items:4> * 5 ], // Heavy Duty Plate Tier 5
	<extraplanets:tier6_items:3>: [ <extraplanets:tier5_items:3>, <extraplanets:tier6_items:4> * 5 ], // Heavy Duty Plate Tier 6
	<extraplanets:tier7_items:3>: [ <extraplanets:tier6_items:3>, <extraplanets:tier7_items:6> * 5], // Heavy Duty Plate Tier 7
	<extraplanets:tier8_items:3>: [ <extraplanets:tier7_items:3>, <extraplanets:tier8_items:5> * 5 ], // Heavy Duty Plate Tier 8
	<extraplanets:tier9_items:3>: [ <extraplanets:tier8_items:3>, <extraplanets:tier9_items:4> * 5 ], // Heavy Duty Plate Tier 9
	<extraplanets:tier10_items:3>: [ <extraplanets:tier9_items:3>, <extraplanets:tier10_items:4> * 5 ] // Heavy Duty Plate Tier 10
};

/*
	Create a recipe primer for the press.
*/
function createBuilder(inputs as IItemStack[], output as IItemStack) as RecipePrimer {
	var builder = RecipeBuilder.newBuilder(createRecipeName("hydraulic_press", output.definition.id ~ "_" ~ output.metadata), "hydraulic_press", 50)
		.addEnergyPerTickInput(100)
		.addFluidInput(<liquid:lubricant> * 50)
		.addItemOutput(output);

	for input in inputs {
		builder
			.addItemInput(input);
	}

	return builder;
}

for output, inputs in hydraulicRecipes {
	createBuilder(inputs, output).build();
}
