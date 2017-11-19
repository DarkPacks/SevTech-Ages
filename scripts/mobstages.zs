/*
// Adds a mob to a stage. When it spawns it will look for nearby players.
// If no nearby players have the stage, the spawn will fail. Mobs can only
// have one generic stage!
mods.MobStages.addStage(String stage, String entityId);

// Adds a replacement for a mob. If the mob fails to spawn, the replacement
// mob will be spawned in it's place. 
mods.MobStages.addReplacement(String entityId, String replacementId);

// Adds a range value for players to find. The default range is 256, and is
// set by default. You only need to change this if you want to change default.
mods.MobStages.addRange(String entityId, int range);

// Toggles whether or not mobs from spawners can spawn without a nearby player
// with the stage. true = allow. Default is false. 
mods.MobStages.toggleSpawners(String entityId, boolean allow);

// The above non-dimension specific methods will apply globally to all dimensions
// unless you override them with a dimension specific one. For example, you can 
// make skeletons in the nether spawn at stage three, and use stage two for every 
// other dimension. 

mods.MobStages.addStage(String stage, String entityId, int dimension);
mods.MobStages.addReplacement(String entityId, String replacementId, int dimension);
mods.MobStages.addRange(String entityId, int range, int dimension);
mods.MobStages.toggleSpawners(String entityId, boolean allow, int dimension);
*/


//Stage one
mods.MobStages.addStage("one", "minecraft:skeleton");
mods.MobStages.addStage("one", "emberroot:rainbowslime");
mods.MobStages.addStage("one", "emberroot:slime");

//Stage two
mods.MobStages.addStage("two", "minecraft:enderman");
mods.MobStages.addStage("two", "emberroot:enderminy");
mods.MobStages.addStage("two", "emberroot:fallenmount");
mods.MobStages.addStage("two", "emberroot:knight_fallen");
mods.MobStages.addStage("two", "emberroot:witherwitch");
mods.MobStages.addStage("two", "emberroot:withercat");
mods.MobStages.addStage("two", "emberroot:skeleton_frozen");
mods.MobStages.addStage("two", "emberroot:hero");


//Stage three
//mods.MobStages.addReplacement("three", "minecraft:zombie", "fat_cat:fat_cat");
mods.MobStages.addStage("three", "fat_cat:fat_cat");