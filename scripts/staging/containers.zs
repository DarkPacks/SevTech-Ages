//Enable when you need container name
//mods.recipestages.Recipes.setPrintContainers(true);


//Ideally theres a way to just get all the values from the STAGES map
//But for now at least... add manually
var allStages as string[] = STAGES.valueSet;

//Primal Tech work stump
mods.recipestages.Recipes.setContainerStage("primal_tech.inventory.ContainerWorkStump", [STAGES.tutorial, STAGES.zero, STAGES.baykok]);

//AE Crafting Terminal
mods.recipestages.Recipes.setPackageStage("appeng", allStages);

//RS Crafting Grid
mods.recipestages.Recipes.setPackageStage("com.raoulvdberge.refinedstorage", allStages);

//RFtools Crafters
mods.recipestages.Recipes.setPackageStage("mcjty.rftools.blocks.crafter", allStages);

//Steve's Carts Crafters
mods.recipestages.Recipes.setPackageStage("vswe", [STAGES.tutorial, STAGES.zero, STAGES.baykok, STAGES.one, STAGES.two, STAGES.three]);

//Inductive Logistics Automatic Crafters
mods.recipestages.Recipes.setPackageStage("cd4017be.lib.Gui", [STAGES.tutorial, STAGES.baykok, STAGES.zero, STAGES.one, STAGES.two, STAGES.three, STAGES.four]);
