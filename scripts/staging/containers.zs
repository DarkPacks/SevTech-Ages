/*
	Container Staging

	To get the containers, enable setPrintContainers in scripts/env.dev.zs
*/
var allStages as string[] = STAGES.valueSet;

//Primal Tech work stump
mods.recipestages.Recipes.setContainerStage("primal_tech.inventory.ContainerWorkStump", [STAGES.tutorial, STAGES.zero, STAGES.baykok]);

//AE Crafting Terminal
mods.recipestages.Recipes.setPackageStage("appeng", allStages);

//RS Crafting Grid
mods.recipestages.Recipes.setPackageStage("com.raoulvdberge.refinedstorage", allStages);

//RFtools Crafters
mods.recipestages.Recipes.setPackageStage("mcjty.rftools.blocks.crafter", allStages);

//Inductive Logistics Automatic Crafters
mods.recipestages.Recipes.setPackageStage("cd4017be.lib.Gui", [STAGES.tutorial, STAGES.baykok, STAGES.zero, STAGES.one, STAGES.two, STAGES.three, STAGES.four]);

//Auto Workbench Buildcraft
mods.recipestages.Recipes.setPackageStage("buildcraft.lib.tile.craft.WorkbenchCrafting", [STAGES.tutorial, STAGES.baykok, STAGES.zero, STAGES.one, STAGES.two, STAGES.three, STAGES.four]);

//Cyclic Auto Crafter
mods.recipestages.Recipes.setPackageStage("com.lothrazar.cyclicmagic.component.crafter.TileEntityCrafter", allStages);
