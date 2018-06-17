/*
	SevTech: Ages Container Staging Script

	This script handles the staging of containers. This allows a container/package
	defined to allow crafting of recipes in the provided stages.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import mods.sevtweaks.stager.Stage;
import mods.sevtweaks.stager.Stager;

import scripts.crafttweaker.stages.stageTutorial;
import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageFive;
import scripts.crafttweaker.stages.stageCreative;
import scripts.crafttweaker.stages.stageBaykok;
import scripts.crafttweaker.stages.stageMapping;

// Contains all "useful" stages
var ALL_STAGES as Stage[] = [
	// Core stages
	stageTutorial,
	stageZero,
	stageOne,
	stageTwo,
	stageThree,
	stageFour,
	stageFive,
	stageCreative,

	// Unique stages
	stageBaykok,
	stageMapping
];

function init() {
	/*
		Container Staging
	*/
	// Primal Tech work stump
	Stager.addContainer("primal_tech.inventory.ContainerWorkStump", [stageTutorial, stageZero, stageBaykok]);

	/*
		Package Staging
	*/
	// AE Crafting Terminal
	Stager.addPackage("appeng", ALL_STAGES);

	// RS Crafting Grid
	Stager.addPackage("com.raoulvdberge.refinedstorage", ALL_STAGES);

	// RFtools Crafters
	Stager.addPackage("mcjty.rftools.blocks.crafter", ALL_STAGES);

	// Inductive Logistics Automatic Crafters
	Stager.addPackage("cd4017be.lib.Gui", [stageTutorial, stageBaykok, stageZero, stageOne, stageTwo, stageThree, stageFour]);

	// Auto Workbench Buildcraft
	Stager.addPackage("buildcraft.lib.tile.craft.WorkbenchCrafting", [stageTutorial, stageBaykok, stageZero, stageOne, stageTwo, stageThree, stageFour]);

	// Cyclic Auto Crafter
	Stager.addPackage("com.lothrazar.cyclicmagic.component.crafter.TileEntityCrafter", ALL_STAGES);
}

/*
	Helper Functions
*/
function addContainerToStages(container as string, stages as Stage[]) {
	for stage in stages {
		stage.addContainer(container);
	}
}

function addPackageToStages(package as string, stages as Stage[]) {
	for stage in stages {
		stage.addPackage(package);
	}
}
