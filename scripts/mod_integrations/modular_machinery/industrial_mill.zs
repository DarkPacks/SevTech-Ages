import mods.modularmachinery.RecipeBuilder;

import scripts.mod_integrations.modular_machinery.base.createRecipeName;

var machineName = "industrial_mill";

RecipeBuilder.newBuilder(createRecipeName(machineName, "grout"), machineName, 128)
	.addEnergyPerTickInput(4)
	.addItemOutput(<tconstruct:soil> * 2)
	.addItemInput(<minecraft:sand>)
	.addItemInput(<minecraft:clay_ball>)
	.addItemInput(<minecraft:gravel>)
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

RecipeBuilder.newBuilder(createRecipeName(machineName, "ground_netherrack"), machineName, 128)
	.addEnergyPerTickInput(4)
	.addItemOutput(<betterwithmods:material:15>)
	.addItemInput(<minecraft:netherrack>)
	.build();

RecipeBuilder.newBuilder(createRecipeName(machineName, "white_dye_powder"), machineName, 128)
	.addEnergyPerTickInput(4)
	.addItemOutput(<pickletweaks:dye_powder>)
	.addItemInput(<minecraft:dye:15>)
	.build();

RecipeBuilder.newBuilder(createRecipeName(machineName, "flour"), machineName, 128)
	.addEnergyPerTickInput(4)
	.addItemOutput(<horsepower:flour>)
	.addItemInput(<minecraft:wheat>)
	.build();

RecipeBuilder.newBuilder(createRecipeName(machineName, "porcelain"), machineName, 128)
	.addEnergyPerTickInput(4)
	.addItemOutput(<ceramics:unfired_clay:4>)
	.addItemInput(<minecraft:dye:15>)
	.addItemInput(<minecraft:clay_ball>)
	.addItemInput(<minecraft:flint>)
	.build();
