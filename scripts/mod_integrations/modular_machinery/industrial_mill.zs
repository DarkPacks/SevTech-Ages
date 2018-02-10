import scripts.mod_integrations.modular_machinery.base.createRecipeName;

var machineName = "industrial_mill";

mods.modularmachinery.RecipeBuilder.newBuilder(createRecipeName(machineName, "grout"), machineName, 128)
	.addEnergyPerTickInput(4)
	.addItemOutput(<tconstruct:soil> * 2)
	.addItemInput(<minecraft:sand>)
	.addItemInput(<minecraft:clay_ball>)
	.addItemInput(<minecraft:gravel>)
	.build();

mods.modularmachinery.RecipeBuilder.newBuilder(createRecipeName(machineName, "coal_dust"), machineName, 128)
	.addEnergyPerTickInput(4)
	.addItemOutput(<betterwithmods:material:18>)
	.addItemInput(<minecraft:coal>)
	.build();

mods.modularmachinery.RecipeBuilder.newBuilder(createRecipeName(machineName, "charcoal_dust"), machineName, 128)
	.addEnergyPerTickInput(4)
	.addItemOutput(<betterwithmods:material:37>)
	.addItemInput(<minecraft:coal:1>)
	.build();

mods.modularmachinery.RecipeBuilder.newBuilder(createRecipeName(machineName, "ground_netherrack"), machineName, 128)
	.addEnergyPerTickInput(4)
	.addItemOutput(<betterwithmods:material:15>)
	.addItemInput(<minecraft:netherrack>)
	.build();
