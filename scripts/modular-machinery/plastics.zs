function createRecipeName(machineName as string, recipeName as string) as string {
	return machineName + "_" + recipeName;
}

var machineName = "plastics";

mods.modularmachinery.RecipeBuilder.newBuilder(createRecipeName(machineName, "plastic"), machineName, 200)
	.addEnergyPerTickInput(5)
	.addFluidOutput(<liquid:plastic> * 1000)
	.addFluidInput(<liquid:propene> * 1000)
	.build();
