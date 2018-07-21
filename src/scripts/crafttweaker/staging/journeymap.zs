/*
	SevTech: Ages JourneyMap Staging Script

	This script handles the staging of JourneyMap features

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import mods.jmapstages.JMapStages;

import scripts.crafttweaker.stages.stageMapping;

/*
	Init method to perform the logic for the script.
*/
function init() {
	// Restricts player from making waypoints. If they do make one it will be destroyed automatically.
	JMapStages.setWaypointStage(stageMapping.stage);

	// Restricts players from accessing the fullscreen and options screen.
	JMapStages.setFullscreenStage(stageMapping.stage);

	// Restricts players from making deathpoints. If they do make one it will be destroyed automatically.
	JMapStages.setDeathpointStage(stageMapping.stage);

	// Restricts the player from having the minimap open on their screen.
	JMapStages.setMinimapStage(stageMapping.stage);
}
