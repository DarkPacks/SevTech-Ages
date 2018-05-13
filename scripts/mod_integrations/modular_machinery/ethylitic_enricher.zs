import scripts.mod_integrations.modular_machinery.base.createRecipeName;

var machineName = "ethylitic_enricher";

mods.modularmachinery.RecipeBuilder.newBuilder(createRecipeName(machineName, "fertilizer"), machineName, 200)
	.addEnergyPerTickInput(15)
	.addItemOutput(<actuallyadditions:item_fertilizer> * 2)
	.addFluidInput(<liquid:liquidethene> * 1000)
	.build();
