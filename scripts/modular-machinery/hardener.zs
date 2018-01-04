function createRecipeName(machineName as string, recipeName as string) as string {
	return machineName + "_" + recipeName;
}

var machineName = "hardener";

mods.modularmachinery.RecipeBuilder.newBuilder(createRecipeName(machineName, "plastic_sheets"), machineName, 200)
	.addEnergyPerTickInput(10)
	.addItemOutput(plastic * 4)
	.addFluidInput(<liquid:plastic> * 1000)
	.build();
