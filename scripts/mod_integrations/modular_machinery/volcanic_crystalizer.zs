import scripts.mod_integrations.modular_machinery.base.createRecipeName;

var machineName = "volcanic_crystalizer";

mods.modularmachinery.RecipeBuilder.newBuilder(createRecipeName(machineName, "obsidian"), machineName, 80)
	.addEnergyPerTickInput(1)
	.addItemOutput(<minecraft:obsidian>)
	.addFluidInput(<liquid:water> * 1000)
	.addFluidInput(<liquid:lava> * 1000)
	.build();
