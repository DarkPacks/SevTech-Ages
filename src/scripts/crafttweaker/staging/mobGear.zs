/*
	SevTech: Ages Mob Gear Staging Script

	This script handles the staging of mob armor and weapons.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import scripts.crafttweaker.stages.stageZeroMob;
import scripts.crafttweaker.stages.stageOneMob;
import scripts.crafttweaker.stages.stageTwoMob;
import scripts.crafttweaker.stages.stageThreeMob;
import scripts.crafttweaker.stages.stageFourMob;
import scripts.crafttweaker.stages.stageFiveMob;

function init() {
	// Add melee mobs
	armoreablemobs.addMobEntities("melee", [
		"abyssalcraft:depthsghoul",
		"minecraft:husk",
		"minecraft:zombie",
		"minecraft:zombie_pigman",
		"minecraft:zombie_villager"
	]);

	// Add ranged mobs
	armoreablemobs.addMobEntities("ranged", [
		"mekanism:babyskeleton",
		"minecraft:skeleton"
	]);

	// Create & add armor to mobs
	addstageZeroMobArmor();
	addStageOneMobArmor();
	addStageTwoMobArmor();
	addStageThreeMobArmor();
	addStageFourMobArmor();
	addStageFiveMobArmor();
}

function addstageZeroMobArmor() {
	var stageName as string = stageZeroMob.stage;

	// ==================================
	// Sharp Bone
	var sharpBone = ArmorHandler.createArmorGroup("Sharp Bone", 0.4);
	sharpBone.addArmor(ArmorHandler.createArmorSlot("mainhand", <primal:sharp_bone>, 1, defaultArmorDropChance));
	sharpBone.addGameStage(stageName);

	// ==================================
	// Leather Armor
	var leather = ArmorHandler.createArmorGroup("Leather", 0.5);
	leather.addArmor(ArmorHandler.createArmorSlot("head", <minecraft:leather_helmet>, 1, defaultArmorDropChance));
	leather.addArmor(ArmorHandler.createArmorSlot("chest", <minecraft:leather_chestplate>, 1, defaultArmorDropChance));
	leather.addArmor(ArmorHandler.createArmorSlot("legs", <minecraft:leather_leggings>, 1, defaultArmorDropChance));
	leather.addArmor(ArmorHandler.createArmorSlot("feet", <minecraft:leather_boots>, 1, defaultArmorDropChance));
	leather.addGameStage(stageName);

	// ==================================
	// Wolf Armor
	var wolf = ArmorHandler.createArmorGroup("Wolf", 0.15);
	wolf.addArmor(ArmorHandler.createArmorSlot("head", <primal:armor_wolf_head>, 1, defaultArmorDropChance));
	wolf.addArmor(ArmorHandler.createArmorSlot("chest", <primal:armor_wolf_body>, 1, defaultArmorDropChance));
	wolf.addArmor(ArmorHandler.createArmorSlot("legs", <primal:armor_wolf_legs>, 1, defaultArmorDropChance));
	wolf.addArmor(ArmorHandler.createArmorSlot("feet", <primal:armor_wolf_feet>, 1, defaultArmorDropChance));
	wolf.addGameStage(stageName);

	/*
		Add to entities
	*/
	addArmorGroupsToType("melee", [
		leather,
		sharpBone,
		wolf
	]);
}

function addStageOneMobArmor() {
	var stageName as string = stageOneMob.stage;

	// ==================================
	// Stone Sword
	var stoneSword = ArmorHandler.createArmorGroup("Stone Sword", 0.4);
	stoneSword.addArmor(ArmorHandler.createArmorSlot("mainhand", <minecraft:stone_sword>, 1, defaultArmorDropChance));
	stoneSword.addGameStage(stageName);

	// ==================================
	// Leather Armor
	var leather = ArmorHandler.createArmorGroup("Leather", 0.5);
	leather.addArmor(ArmorHandler.createArmorSlot("head", <minecraft:leather_helmet>, 1, defaultArmorDropChance));
	leather.addArmor(ArmorHandler.createArmorSlot("chest", <minecraft:leather_chestplate>, 1, defaultArmorDropChance));
	leather.addArmor(ArmorHandler.createArmorSlot("legs", <minecraft:leather_leggings>, 1, defaultArmorDropChance));
	leather.addArmor(ArmorHandler.createArmorSlot("feet", <minecraft:leather_boots>, 1, defaultArmorDropChance));
	leather.addGameStage(stageName);

	// ==================================
	// Wolf Armor
	var wolf = ArmorHandler.createArmorGroup("Wolf", 0.25);
	wolf.addArmor(ArmorHandler.createArmorSlot("head", <primal:armor_wolf_head>, 1, defaultArmorDropChance));
	wolf.addArmor(ArmorHandler.createArmorSlot("chest", <primal:armor_wolf_body>, 1, defaultArmorDropChance));
	wolf.addArmor(ArmorHandler.createArmorSlot("legs", <primal:armor_wolf_legs>, 1, defaultArmorDropChance));
	wolf.addArmor(ArmorHandler.createArmorSlot("feet", <primal:armor_wolf_feet>, 1, defaultArmorDropChance));
	wolf.addGameStage(stageName);

	/*
		Add to entities
	*/
	addArmorGroupsToType("melee", [
		leather,
		stoneSword,
		wolf
	]);
}

function addStageTwoMobArmor() {
	var stageName as string = stageTwoMob.stage;

	// ==================================
	// Iron Sword
	var ironSword = ArmorHandler.createArmorGroup("Iron Sword", 0.5);
	ironSword.addArmor(ArmorHandler.createArmorSlot("mainhand", <minecraft:iron_sword>, 1, defaultArmorDropChance));
	ironSword.addGameStage(stageName);

	// ==================================
	// Gold Sword
	var goldSword = ArmorHandler.createArmorGroup("Gold Sword", 0.25);
	goldSword.addArmor(ArmorHandler.createArmorSlot("mainhand", <minecraft:golden_sword>, 1, defaultArmorDropChance));
	goldSword.addGameStage(stageName);

	// ==================================
	// Iron Armor
	var iron = ArmorHandler.createArmorGroup("Iron", 0.5);
	iron.addArmor(ArmorHandler.createArmorSlot("head", <minecraft:iron_helmet>, 1, defaultArmorDropChance));
	iron.addArmor(ArmorHandler.createArmorSlot("chest", <minecraft:iron_chestplate>, 1, defaultArmorDropChance));
	iron.addArmor(ArmorHandler.createArmorSlot("legs", <minecraft:iron_leggings>, 1, defaultArmorDropChance));
	iron.addArmor(ArmorHandler.createArmorSlot("feet", <minecraft:iron_boots>, 1, defaultArmorDropChance));
	iron.addGameStage(stageName);

	// ==================================
	// Gold Armor
	var gold = ArmorHandler.createArmorGroup("Gold", 0.25);
	gold.addArmor(ArmorHandler.createArmorSlot("head", <minecraft:golden_helmet>, 1, defaultArmorDropChance));
	gold.addArmor(ArmorHandler.createArmorSlot("chest", <minecraft:golden_chestplate>, 1, defaultArmorDropChance));
	gold.addArmor(ArmorHandler.createArmorSlot("legs", <minecraft:golden_leggings>, 1, defaultArmorDropChance));
	gold.addArmor(ArmorHandler.createArmorSlot("feet", <minecraft:golden_boots>, 1, defaultArmorDropChance));
	gold.addGameStage(stageName);

	// ==================================
	// Bow
	var bow = ArmorHandler.createArmorGroup("Bow", 1);
	bow.addArmor(ArmorHandler.createArmorSlot("mainhand", <minecraft:bow>, 1, defaultArmorDropChance));
	bow.addGameStage(stageName);

	/*
		Add to entities
	*/
	addArmorGroupsToType("melee", [
		gold,
		goldSword,
		iron,
		ironSword
	]);

	addArmorGroupsToType("ranged", [
		bow
	]);
}

function addStageThreeMobArmor() {
	var stageName as string = stageThreeMob.stage;

	// ==================================
	// Iron Sword
	var ironSword = ArmorHandler.createArmorGroup("Iron Sword", 0.5);
	ironSword.addArmor(ArmorHandler.createArmorSlot("mainhand", <minecraft:iron_sword>, 1, defaultArmorDropChance));
	ironSword.addGameStage(stageName);

	// ==================================
	// Gold Sword
	var goldSword = ArmorHandler.createArmorGroup("Gold Sword", 0.25);
	goldSword.addArmor(ArmorHandler.createArmorSlot("mainhand", <minecraft:golden_sword>, 1, defaultArmorDropChance));
	goldSword.addGameStage(stageName);

	// ==================================
	// Iron Armor
	var iron = ArmorHandler.createArmorGroup("Iron", 0.5);
	iron.addArmor(ArmorHandler.createArmorSlot("head", <minecraft:iron_helmet>, 1, defaultArmorDropChance));
	iron.addArmor(ArmorHandler.createArmorSlot("chest", <minecraft:iron_chestplate>, 1, defaultArmorDropChance));
	iron.addArmor(ArmorHandler.createArmorSlot("legs", <minecraft:iron_leggings>, 1, defaultArmorDropChance));
	iron.addArmor(ArmorHandler.createArmorSlot("feet", <minecraft:iron_boots>, 1, defaultArmorDropChance));
	iron.addGameStage(stageName);

	// ==================================
	// Gold Armor
	var gold = ArmorHandler.createArmorGroup("Gold", 0.25);
	gold.addArmor(ArmorHandler.createArmorSlot("head", <minecraft:golden_helmet>, 1, defaultArmorDropChance));
	gold.addArmor(ArmorHandler.createArmorSlot("chest", <minecraft:golden_chestplate>, 1, defaultArmorDropChance));
	gold.addArmor(ArmorHandler.createArmorSlot("legs", <minecraft:golden_leggings>, 1, defaultArmorDropChance));
	gold.addArmor(ArmorHandler.createArmorSlot("feet", <minecraft:golden_boots>, 1, defaultArmorDropChance));
	gold.addGameStage(stageName);

	// ==================================
	// Bow
	var bow = ArmorHandler.createArmorGroup("Bow", 1);
	bow.addArmor(ArmorHandler.createArmorSlot("mainhand", <minecraft:bow>, 1, defaultArmorDropChance));
	bow.addGameStage(stageName);

	/*
		Add to entities
	*/
	addArmorGroupsToType("melee", [
		gold,
		goldSword,
		iron,
		ironSword
	]);

	addArmorGroupsToType("ranged", [
		bow
	]);
}

function addStageFourMobArmor() {
	var stageName as string = stageFourMob.stage;

	// ==================================
	// Iron Sword
	var ironSword = ArmorHandler.createArmorGroup("Iron Sword", 0.5);
	ironSword.addArmor(ArmorHandler.createArmorSlot("mainhand", <minecraft:iron_sword>, 1, defaultArmorDropChance));
	ironSword.addGameStage(stageName);

	// ==================================
	// Gold Sword
	var goldSword = ArmorHandler.createArmorGroup("Gold Sword", 0.25);
	goldSword.addArmor(ArmorHandler.createArmorSlot("mainhand", <minecraft:golden_sword>, 1, defaultArmorDropChance));
	goldSword.addGameStage(stageName);

	// ==================================
	// Iron Armor
	var iron = ArmorHandler.createArmorGroup("Iron", 0.5);
	iron.addArmor(ArmorHandler.createArmorSlot("head", <minecraft:iron_helmet>, 1, defaultArmorDropChance));
	iron.addArmor(ArmorHandler.createArmorSlot("chest", <minecraft:iron_chestplate>, 1, defaultArmorDropChance));
	iron.addArmor(ArmorHandler.createArmorSlot("legs", <minecraft:iron_leggings>, 1, defaultArmorDropChance));
	iron.addArmor(ArmorHandler.createArmorSlot("feet", <minecraft:iron_boots>, 1, defaultArmorDropChance));
	iron.addGameStage(stageName);

	// ==================================
	// Gold Armor
	var gold = ArmorHandler.createArmorGroup("Gold", 0.25);
	gold.addArmor(ArmorHandler.createArmorSlot("head", <minecraft:golden_helmet>, 1, defaultArmorDropChance));
	gold.addArmor(ArmorHandler.createArmorSlot("chest", <minecraft:golden_chestplate>, 1, defaultArmorDropChance));
	gold.addArmor(ArmorHandler.createArmorSlot("legs", <minecraft:golden_leggings>, 1, defaultArmorDropChance));
	gold.addArmor(ArmorHandler.createArmorSlot("feet", <minecraft:golden_boots>, 1, defaultArmorDropChance));
	gold.addGameStage(stageName);

	// ==================================
	// Bow
	var bow = ArmorHandler.createArmorGroup("Bow", 1);
	bow.addArmor(ArmorHandler.createArmorSlot("mainhand", <minecraft:bow>, 1, defaultArmorDropChance));
	bow.addGameStage(stageName);

	/*
		Add to entities
	*/
	addArmorGroupsToType("melee", [
		gold,
		goldSword,
		iron,
		ironSword
	]);

	addArmorGroupsToType("ranged", [
		bow
	]);
}

function addStageFiveMobArmor() {
	var stageName as string = stageFiveMob.stage;

	// ==================================
	// Diamond Sword
	var diamondSword = ArmorHandler.createArmorGroup("Diamond Sword", 0.5);
	diamondSword.addArmor(ArmorHandler.createArmorSlot("mainhand", <minecraft:diamond_sword>, 1, defaultArmorDropChance));
	diamondSword.addGameStage(stageName);

	// ==================================
	// Diamond Armor
	var diamond = ArmorHandler.createArmorGroup("Diamond", 0.5);
	diamond.addArmor(ArmorHandler.createArmorSlot("head", <minecraft:diamond_helmet>, 1, defaultArmorDropChance));
	diamond.addArmor(ArmorHandler.createArmorSlot("chest", <minecraft:diamond_chestplate>, 1, defaultArmorDropChance));
	diamond.addArmor(ArmorHandler.createArmorSlot("legs", <minecraft:diamond_leggings>, 1, defaultArmorDropChance));
	diamond.addArmor(ArmorHandler.createArmorSlot("feet", <minecraft:diamond_boots>, 1, defaultArmorDropChance));
	diamond.addGameStage(stageName);

	/*
		Add to entities
	*/
	addArmorGroupsToType("melee", [
		diamond,
		diamondSword
	]);
}
