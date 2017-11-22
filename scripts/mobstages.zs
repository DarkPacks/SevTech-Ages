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

var stages = [
	"one",
	"two",
	"three",
	"four",
	"five"
] as string[];

var mobsForStages = {
	//Stage one
	"one" : [
		"emberroot:rainbowslime",
		"emberroot:slime",
		"minecraft:skeleton"
	],

	//Stage two
	"two" : [
		"emberroot:enderminy",
		"emberroot:fallenmount",
		"emberroot:hero",
		"emberroot:knight_fallen",
		"emberroot:skeleton_frozen",
		"emberroot:withercat",
		"emberroot:witherwitch",
		"minecraft:enderman"
	],

	//Stage three
	"three" : [
		"fat_cat:fat_cat"
	]
} as string[][string];

for stage in stages {
	for mob in mobsForStages[stage] {
		mods.MobStages.addStage(stage, mob);
	}
}

//Stage three
//mods.MobStages.addReplacement("three", "minecraft:zombie", "fat_cat:fat_cat");
