function createRecipeName(machineName as string, recipeName as string) as string {
	return machineName + "_" + recipeName;
}

var machineName = "industrial_loom";

mods.modularmachinery.RecipeBuilder.newBuilder(createRecipeName(machineName, "string"), machineName, 150)
	.addEnergyPerTickInput(10)
	.addItemOutput(str)
	.addItemInput(<ore:cropCotton>, 2)
	.build();
