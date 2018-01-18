function createRecipeName(machineName as string, recipeName as string) as string {
	return machineName + "_" + recipeName;
}

var machineName = "industrial_mill";

mods.modularmachinery.RecipeBuilder.newBuilder(createRecipeName(machineName, "grout"), machineName, 128)
	.addEnergyPerTickInput(4)
	.addItemOutput(<tconstruct:soil> * 2)
	.addItemInput(<minecraft:sand>)
	.addItemInput(<minecraft:clay_ball>)
	.addItemInput(<minecraft:gravel>)
	.build();
