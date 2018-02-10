import scripts.mod_integrations.modular_machinery.base.createRecipeName;

var machineName = "industrial_loom";

mods.modularmachinery.RecipeBuilder.newBuilder(createRecipeName(machineName, "string"), machineName, 150)
	.addEnergyPerTickInput(10)
	.addItemOutput(str)
	.addItemInput(<ore:cropCotton>, 2)
	.build();
