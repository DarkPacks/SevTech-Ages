/*
	SevTech: Ages Tooltip Staging Script

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageProjectE;

static stagedTooltips as string[][string] = {
	stageProjectE.stage: [
		"§eEMC:",
		"§eStack EMC:"
	]
};

function init() {
	for stageName, tooltips in stagedTooltips {
		// TODO: Refactor to using zenStages when feature is added
		for tooltip in tooltips {
			mods.ItemStages.stageTooltip(stageName, tooltip);
		}
	}
}
