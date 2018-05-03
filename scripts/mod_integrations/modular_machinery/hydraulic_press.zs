import scripts.mod_integrations.modular_machinery.base.createRecipeName;

var machineName = "hydraulic_press";

mods.modularmachinery.RecipeBuilder.newBuilder(createRecipeName(machineName, "compressed_steel"), machineName, 50)
	.addEnergyPerTickInput(100)
	.addFluidInput(<liquid:lubricant> * 50)
	.addItemOutput(<galacticraftcore:basic_item:9> * 2)
	.addItemInput(<immersiveengineering:metal:8> * 4)
	.build();