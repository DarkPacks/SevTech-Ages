import scripts.mod_integrations.modular_machinery.base.createRecipeName;

var machineName = "paperclip_factory";

mods.modularmachinery.RecipeBuilder.newBuilder(createRecipeName(machineName, "paperclips"), machineName, 64)
	.addEnergyPerTickInput(8)
	.addItemOutput(<pickletweaks:ppm4:2> * 8)
	.addItemInput(<galacticraftcore:item_basic_moon>)
	.build();

mods.modularmachinery.RecipeBuilder.newBuilder(createRecipeName(machineName, "paperclipsandlube"), machineName, 32)
	.addEnergyPerTickInput(16)
	.addFluidInput(<liquid:lubricant> * 100)
	.addItemOutput(<pickletweaks:ppm4:2> * 8)
	.addItemInput(<galacticraftcore:item_basic_moon>)
	.build();