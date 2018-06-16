/*
	SevTech: Ages Waila Staging Script

	This script handles the staging of WAILA features

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import mods.WailaStages;

import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;

function init() {
	// Stage One
	WailaStages.addWailaStage(stageOne.stage);

	// Stage Two
	WailaStages.addRequirement(stageTwo.stage, "Currently");
	WailaStages.addRequirement(stageTwo.stage, "Effective");
	WailaStages.addRequirement(stageTwo.stage, "Harvest");
	WailaStages.addRequirement(stageTwo.stage, "Harvestable");
	WailaStages.addRequirement(stageTwo.stage, "Progress");
	WailaStages.addRequirement(stageTwo.stage, "Progression");
}
