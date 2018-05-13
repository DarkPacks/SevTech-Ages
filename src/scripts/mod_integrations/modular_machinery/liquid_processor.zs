import scripts.mod_integrations.modular_machinery.base.createRecipeName;

var machineName = "liquid_processor";

mods.modularmachinery.RecipeBuilder.newBuilder(createRecipeName(machineName, "plastic"), machineName, 200)
	.addEnergyPerTickInput(5)
	.addFluidOutput(<liquid:plastic> * 1000)
	.addFluidInput(<liquid:propene> * 1000)
	.build();
