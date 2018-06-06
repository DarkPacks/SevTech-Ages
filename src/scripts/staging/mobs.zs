import mods.MobStages;

/*
	Mob Stages

	http://crafttweaker.readthedocs.io/en/latest/#Mods/GameStages/MobStages/MobStages/#global-options
*/
var mobsForStages as string[][string] = {
	//Stage one
	STAGES.one : [
		"emberroot:rainbowslime",
		"emberroot:slime",
		"minecraft:skeleton",
		"minecraft:skeleton_horse"
	],

	//Stage two
	STAGES.two : [
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
	STAGES.three : [
		"fat_cat:fat_cat"
	],

	//Stage four
	STAGES.four : [
		"playerskins:playermob"
	]
};

for stage, mobs in mobsForStages {
	for mob in mobs {
		MobStages.addStage(stage, mob);
	}
}
