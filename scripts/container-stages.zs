//Ideally theres a way to just get all the values from the STAGES map
//But for now at least... add manually
var allStages as string[] = [
	STAGES.tutorial, STAGES.zero, STAGES.baykok,
	STAGES.one, STAGES.two, STAGES.three,
	STAGES.four, STAGES.five, STAGES.creative
];

//Primal Tech work stump
mods.recipestages.Recipes.setContainerStage("primal_tech.inventory.ContainerWorkStump", [STAGES.tutorial, STAGES.zero, STAGES.baykok]);

//AE Crafting Terminal
mods.recipestages.Recipes.setPackageStage("appeng", allStages);

//RS Crafting Grid
mods.recipestages.Recipes.setPackageStage("com.raoulvdberge.refinedstorage", allStages);
