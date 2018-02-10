import scripts.mod_integrations.modular_machinery.base.createRecipeName;

var machineName = "chemical_mixer";

mods.modularmachinery.RecipeBuilder.newBuilder(createRecipeName(machineName, "propene"), machineName, 200)
	.addEnergyPerTickInput(1)
	.addFluidOutput(<liquid:propene> * 1500)
	.addFluidInput(<liquid:naphtha> * 1000)
	.addFluidInput(<liquid:steam> * 1000)
	.build();
