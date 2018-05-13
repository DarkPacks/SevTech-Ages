import scripts.mod_integrations.modular_machinery.base.createRecipeName;

var machineName = "plastic_molder";

mods.modularmachinery.RecipeBuilder.newBuilder(createRecipeName(machineName, "plastic_sheets"), machineName, 200)
	.addEnergyPerTickInput(10)
	.addItemOutput(plastic * 4)
	.addFluidInput(<liquid:plastic> * 1000)
	.build();
