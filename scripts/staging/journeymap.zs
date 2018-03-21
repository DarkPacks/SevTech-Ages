import mods.jmapstages.JMapStages;

//Restricts player from making waypoints. If they do make one it will be destroyed automatically.
JMapStages.setWaypointStage(STAGES.mapping);

//Restricts players from accessing the fullscreen and options screen.
JMapStages.setFullscreenStage(STAGES.mapping);

//Restricts players from making deathpoints. If they do make one it will be destroyed automatically.
JMapStages.setDeathpointStage(STAGES.mapping);

//Restricts the player from having the minimap open on their screen.
JMapStages.setMinimapStage(STAGES.mapping);
