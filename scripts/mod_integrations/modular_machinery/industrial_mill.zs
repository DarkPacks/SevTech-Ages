import crafttweaker.item.IItemStack;
import mods.modularmachinery.RecipeBuilder;

import scripts.mod_integrations.modular_machinery.base.createRecipeName;
import scripts.unique_scripts.dyes.dyeCrushingRecipes;

var machineName = "industrial_mill";

/*
	Function to create recipes.
*/
function createIMRecipe(input as IItemStack, output as IItemStack) {
	RecipeBuilder.newBuilder(createRecipeName("industrial_mill", input.displayName), "industrial_mill", 128)
		.addEnergyPerTickInput(4)
		.addItemOutput(output)
		.addItemInput(input)
		.build();
}

for dye, items in dyeCrushingRecipes {
	for item in items {
		createIMRecipe(item, dye * 2);
	}
}

/*
	Multi Input Recipes
*/
RecipeBuilder.newBuilder(createRecipeName(machineName, "grout"), machineName, 128)
	.addEnergyPerTickInput(4)
	.addItemOutput(<tconstruct:soil> * 2)
	.addItemInput(<minecraft:sand>)
	.addItemInput(<minecraft:clay_ball>)
	.addItemInput(<minecraft:gravel>)
	.build();

RecipeBuilder.newBuilder(createRecipeName(machineName, "porcelain"), machineName, 128)
	.addEnergyPerTickInput(4)
	.addItemOutput(<ceramics:unfired_clay:4>)
	.addItemInput(<minecraft:dye:15>)
	.addItemInput(<minecraft:clay_ball>)
	.addItemInput(<minecraft:flint>)
	.build();

/*
	Resource/Plant Based
*/
RecipeBuilder.newBuilder(createRecipeName(machineName, "resin"), machineName, 128)
	.addEnergyPerTickInput(4)
	.addItemOutput(<primal:tannin_ground>)
	.addItemInput(<ore:barkWood>)
	.build();

RecipeBuilder.newBuilder(createRecipeName(machineName, "hemp_fibre"), machineName, 128)
	.addEnergyPerTickInput(4)
	.addItemOutput(<betterwithmods:material:3> * 2)
	.addItemInput(<betterwithmods:material:2>)
	.build();

RecipeBuilder.newBuilder(createRecipeName(machineName, "ground_netherrack"), machineName, 128)
	.addEnergyPerTickInput(4)
	.addItemOutput(<betterwithmods:material:15>)
	.addItemInput(<minecraft:netherrack>)
	.build();

RecipeBuilder.newBuilder(createRecipeName(machineName, "coal_dust"), machineName, 128)
	.addEnergyPerTickInput(4)
	.addItemOutput(<betterwithmods:material:18>)
	.addItemInput(<minecraft:coal>)
	.build();

RecipeBuilder.newBuilder(createRecipeName(machineName, "charcoal_dust"), machineName, 128)
	.addEnergyPerTickInput(4)
	.addItemOutput(<betterwithmods:material:37>)
	.addItemInput(<minecraft:coal:1>)
	.build();

RecipeBuilder.newBuilder(createRecipeName(machineName, "sugar"), machineName, 128)
	.addEnergyPerTickInput(4)
	.addItemOutput(<minecraft:sugar> * 2)
	.addItemInput(<minecraft:reeds>)
	.build();

/*
	Flour
*/
RecipeBuilder.newBuilder(createRecipeName(machineName, "flour"), machineName, 128)
	.addEnergyPerTickInput(4)
	.addItemOutput(<horsepower:flour>)
	.addItemInput(<minecraft:wheat>)
	.build();

RecipeBuilder.newBuilder(createRecipeName(machineName, "barley_flour"), machineName, 128)
	.addEnergyPerTickInput(4)
	.addItemOutput(<natura:materials:1>)
	.addItemInput(<natura:materials>)
	.build();

RecipeBuilder.newBuilder(createRecipeName(machineName, "rice_flour"), machineName, 128)
	.addEnergyPerTickInput(4)
	.addItemOutput(<betterwithaddons:japanmat:4>)
	.addItemInput(<betterwithaddons:japanmat:2>)
	.build();
