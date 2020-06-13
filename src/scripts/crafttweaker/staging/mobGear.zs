/*
	SevTech: Ages Mob Gear Staging Script

	This script handles the staging of mob armor and weapons.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import mods.armoreablemobs.ArmorHandler;
import mods.armoreablemobs.ArmorGroup;

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
		"minecraft:skeleton",
		"minecraft:stray"
	]);

	// Clear gear
	armoreablemobs.clearAllMobGear();

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
	var sharpBone as ArmorGroup = ArmorHandler.createArmorGroup("Sharp Bone", 0.4);
	sharpBone.addArmor(ArmorHandler.createArmorSlot("mainhand", <primal:sharp_bone:0>, 1, armoreablemobs.defaultArmorDropChance));
	sharpBone.addGameStage(stageName);

	// ==================================
	// Leather Armor
	var leather as ArmorGroup = ArmorHandler.createArmorGroup("Leather", 0.5);
	leather.addArmor(ArmorHandler.createArmorSlot("head", <minecraft:leather_helmet:0>, 1, armoreablemobs.defaultArmorDropChance));
	leather.addArmor(ArmorHandler.createArmorSlot("chest", <minecraft:leather_chestplate:0>, 1, armoreablemobs.defaultArmorDropChance));
	leather.addArmor(ArmorHandler.createArmorSlot("legs", <minecraft:leather_leggings:0>, 1, armoreablemobs.defaultArmorDropChance));
	leather.addArmor(ArmorHandler.createArmorSlot("feet", <minecraft:leather_boots:0>, 1, armoreablemobs.defaultArmorDropChance));
	leather.addGameStage(stageName);

	// ==================================
	// Wolf Armor
	var wolf as ArmorGroup = ArmorHandler.createArmorGroup("Wolf", 0.15);
	wolf.addArmor(ArmorHandler.createArmorSlot("head", <primal:armor_wolf_head:0>, 1, armoreablemobs.defaultArmorDropChance));
	wolf.addArmor(ArmorHandler.createArmorSlot("chest", <primal:armor_wolf_body:0>, 1, armoreablemobs.defaultArmorDropChance));
	wolf.addArmor(ArmorHandler.createArmorSlot("legs", <primal:armor_wolf_legs:0>, 1, armoreablemobs.defaultArmorDropChance));
	wolf.addArmor(ArmorHandler.createArmorSlot("feet", <primal:armor_wolf_feet:0>, 1, armoreablemobs.defaultArmorDropChance));
	wolf.addGameStage(stageName);

	/*
		Add to entities
	*/
	armoreablemobs.addArmorGroupsToType("melee", [
		leather,
		sharpBone,
		wolf
	]);
}

function addStageOneMobArmor() {
	var stageName as string = stageOneMob.stage;

	// ==================================
	// Stone Sword
	var stoneSword as ArmorGroup = ArmorHandler.createArmorGroup("Stone Sword", 0.4);
	stoneSword.addArmor(ArmorHandler.createArmorSlot("mainhand", <minecraft:stone_sword:0>, 1, armoreablemobs.defaultArmorDropChance));
	stoneSword.addGameStage(stageName);

	// ==================================
	// Leather Armor
	var leather as ArmorGroup = ArmorHandler.createArmorGroup("Leather", 0.5);
	leather.addArmor(ArmorHandler.createArmorSlot("head", <minecraft:leather_helmet:0>, 1, armoreablemobs.defaultArmorDropChance));
	leather.addArmor(ArmorHandler.createArmorSlot("chest", <minecraft:leather_chestplate:0>, 1, armoreablemobs.defaultArmorDropChance));
	leather.addArmor(ArmorHandler.createArmorSlot("legs", <minecraft:leather_leggings:0>, 1, armoreablemobs.defaultArmorDropChance));
	leather.addArmor(ArmorHandler.createArmorSlot("feet", <minecraft:leather_boots:0>, 1, armoreablemobs.defaultArmorDropChance));
	leather.addGameStage(stageName);

	// ==================================
	// Wolf Armor
	var wolf as ArmorGroup = ArmorHandler.createArmorGroup("Wolf", 0.25);
	wolf.addArmor(ArmorHandler.createArmorSlot("head", <primal:armor_wolf_head:0>, 1, armoreablemobs.defaultArmorDropChance));
	wolf.addArmor(ArmorHandler.createArmorSlot("chest", <primal:armor_wolf_body:0>, 1, armoreablemobs.defaultArmorDropChance));
	wolf.addArmor(ArmorHandler.createArmorSlot("legs", <primal:armor_wolf_legs:0>, 1, armoreablemobs.defaultArmorDropChance));
	wolf.addArmor(ArmorHandler.createArmorSlot("feet", <primal:armor_wolf_feet:0>, 1, armoreablemobs.defaultArmorDropChance));
	wolf.addGameStage(stageName);

	/*
		Add to entities
	*/
	armoreablemobs.addArmorGroupsToType("melee", [
		leather,
		stoneSword,
		wolf
	]);
}

function addStageTwoMobArmor() {
	var stageName as string = stageTwoMob.stage;

	// ==================================
	// Iron Sword
	var ironSword as ArmorGroup = ArmorHandler.createArmorGroup("Iron Sword", 0.5);
	ironSword.addArmor(ArmorHandler.createArmorSlot("mainhand", <minecraft:iron_sword:0>, 1, armoreablemobs.defaultArmorDropChance));
	ironSword.addGameStage(stageName);

	// ==================================
	// Gold Sword
	var goldSword as ArmorGroup = ArmorHandler.createArmorGroup("Gold Sword", 0.25);
	goldSword.addArmor(ArmorHandler.createArmorSlot("mainhand", <minecraft:golden_sword:0>, 1, armoreablemobs.defaultArmorDropChance));
	goldSword.addGameStage(stageName);

	// ==================================
	// Iron Armor
	var iron as ArmorGroup = ArmorHandler.createArmorGroup("Iron", 0.5);
	iron.addArmor(ArmorHandler.createArmorSlot("head", <minecraft:iron_helmet:0>, 1, armoreablemobs.defaultArmorDropChance));
	iron.addArmor(ArmorHandler.createArmorSlot("chest", <minecraft:iron_chestplate:0>, 1, armoreablemobs.defaultArmorDropChance));
	iron.addArmor(ArmorHandler.createArmorSlot("legs", <minecraft:iron_leggings:0>, 1, armoreablemobs.defaultArmorDropChance));
	iron.addArmor(ArmorHandler.createArmorSlot("feet", <minecraft:iron_boots:0>, 1, armoreablemobs.defaultArmorDropChance));
	iron.addGameStage(stageName);

	// ==================================
	// Gold Armor
	var gold as ArmorGroup = ArmorHandler.createArmorGroup("Gold", 0.25);
	gold.addArmor(ArmorHandler.createArmorSlot("head", <minecraft:golden_helmet:0>, 1, armoreablemobs.defaultArmorDropChance));
	gold.addArmor(ArmorHandler.createArmorSlot("chest", <minecraft:golden_chestplate:0>, 1, armoreablemobs.defaultArmorDropChance));
	gold.addArmor(ArmorHandler.createArmorSlot("legs", <minecraft:golden_leggings:0>, 1, armoreablemobs.defaultArmorDropChance));
	gold.addArmor(ArmorHandler.createArmorSlot("feet", <minecraft:golden_boots:0>, 1, armoreablemobs.defaultArmorDropChance));
	gold.addGameStage(stageName);

	// ==================================
	// Bow
	var bow as ArmorGroup = ArmorHandler.createArmorGroup("Bow", 1);
	bow.addArmor(ArmorHandler.createArmorSlot("mainhand", <minecraft:bow:0>, 1, armoreablemobs.defaultArmorDropChance));
	bow.addGameStage(stageName);

	/*
		Add to entities
	*/
	armoreablemobs.addArmorGroupsToType("melee", [
		gold,
		goldSword,
		iron,
		ironSword
	]);

	armoreablemobs.addArmorGroupsToType("ranged", [
		bow
	]);
}

function addStageThreeMobArmor() {
	var stageName as string = stageThreeMob.stage;

	// ==================================
	// Iron Sword
	var ironSword as ArmorGroup = ArmorHandler.createArmorGroup("Iron Sword", 0.5);
	ironSword.addArmor(ArmorHandler.createArmorSlot("mainhand", <minecraft:iron_sword:0>, 1, armoreablemobs.defaultArmorDropChance));
	ironSword.addGameStage(stageName);

	// ==================================
	// Gold Sword
	var goldSword as ArmorGroup = ArmorHandler.createArmorGroup("Gold Sword", 0.25);
	goldSword.addArmor(ArmorHandler.createArmorSlot("mainhand", <minecraft:golden_sword:0>, 1, armoreablemobs.defaultArmorDropChance));
	goldSword.addGameStage(stageName);

	// ==================================
	// Iron Armor
	var iron as ArmorGroup = ArmorHandler.createArmorGroup("Iron", 0.5);
	iron.addArmor(ArmorHandler.createArmorSlot("head", <minecraft:iron_helmet:0>, 1, armoreablemobs.defaultArmorDropChance));
	iron.addArmor(ArmorHandler.createArmorSlot("chest", <minecraft:iron_chestplate:0>, 1, armoreablemobs.defaultArmorDropChance));
	iron.addArmor(ArmorHandler.createArmorSlot("legs", <minecraft:iron_leggings:0>, 1, armoreablemobs.defaultArmorDropChance));
	iron.addArmor(ArmorHandler.createArmorSlot("feet", <minecraft:iron_boots:0>, 1, armoreablemobs.defaultArmorDropChance));
	iron.addGameStage(stageName);

	// ==================================
	// Gold Armor
	var gold as ArmorGroup = ArmorHandler.createArmorGroup("Gold", 0.25);
	gold.addArmor(ArmorHandler.createArmorSlot("head", <minecraft:golden_helmet:0>, 1, armoreablemobs.defaultArmorDropChance));
	gold.addArmor(ArmorHandler.createArmorSlot("chest", <minecraft:golden_chestplate:0>, 1, armoreablemobs.defaultArmorDropChance));
	gold.addArmor(ArmorHandler.createArmorSlot("legs", <minecraft:golden_leggings:0>, 1, armoreablemobs.defaultArmorDropChance));
	gold.addArmor(ArmorHandler.createArmorSlot("feet", <minecraft:golden_boots:0>, 1, armoreablemobs.defaultArmorDropChance));
	gold.addGameStage(stageName);

	// ==================================
	// Bow
	var bow as ArmorGroup = ArmorHandler.createArmorGroup("Bow", 1);
	bow.addArmor(ArmorHandler.createArmorSlot("mainhand", <minecraft:bow:0>, 1, armoreablemobs.defaultArmorDropChance));
	bow.addGameStage(stageName);

	/*
		Add to entities
	*/
	armoreablemobs.addArmorGroupsToType("melee", [
		gold,
		goldSword,
		iron,
		ironSword
	]);

	armoreablemobs.addArmorGroupsToType("ranged", [
		bow
	]);
}

function addStageFourMobArmor() {
	var stageName as string = stageFourMob.stage;

	// ==================================
	// Iron Sword
	var ironSword as ArmorGroup = ArmorHandler.createArmorGroup("Iron Sword", 0.5);
	ironSword.addArmor(ArmorHandler.createArmorSlot("mainhand", <minecraft:iron_sword:0>, 1, armoreablemobs.defaultArmorDropChance));
	ironSword.addGameStage(stageName);

	// ==================================
	// Gold Sword
	var goldSword as ArmorGroup = ArmorHandler.createArmorGroup("Gold Sword", 0.25);
	goldSword.addArmor(ArmorHandler.createArmorSlot("mainhand", <minecraft:golden_sword:0>, 1, armoreablemobs.defaultArmorDropChance));
	goldSword.addGameStage(stageName);

	// ==================================
	// Iron Armor
	var iron as ArmorGroup = ArmorHandler.createArmorGroup("Iron", 0.5);
	iron.addArmor(ArmorHandler.createArmorSlot("head", <minecraft:iron_helmet:0>, 1, armoreablemobs.defaultArmorDropChance));
	iron.addArmor(ArmorHandler.createArmorSlot("chest", <minecraft:iron_chestplate:0>, 1, armoreablemobs.defaultArmorDropChance));
	iron.addArmor(ArmorHandler.createArmorSlot("legs", <minecraft:iron_leggings:0>, 1, armoreablemobs.defaultArmorDropChance));
	iron.addArmor(ArmorHandler.createArmorSlot("feet", <minecraft:iron_boots:0>, 1, armoreablemobs.defaultArmorDropChance));
	iron.addGameStage(stageName);

	// ==================================
	// Gold Armor
	var gold as ArmorGroup = ArmorHandler.createArmorGroup("Gold", 0.25);
	gold.addArmor(ArmorHandler.createArmorSlot("head", <minecraft:golden_helmet:0>, 1, armoreablemobs.defaultArmorDropChance));
	gold.addArmor(ArmorHandler.createArmorSlot("chest", <minecraft:golden_chestplate:0>, 1, armoreablemobs.defaultArmorDropChance));
	gold.addArmor(ArmorHandler.createArmorSlot("legs", <minecraft:golden_leggings:0>, 1, armoreablemobs.defaultArmorDropChance));
	gold.addArmor(ArmorHandler.createArmorSlot("feet", <minecraft:golden_boots:0>, 1, armoreablemobs.defaultArmorDropChance));
	gold.addGameStage(stageName);

	// ==================================
	// Bow
	var bow as ArmorGroup = ArmorHandler.createArmorGroup("Bow", 1);
	bow.addArmor(ArmorHandler.createArmorSlot("mainhand", <minecraft:bow:0>, 1, armoreablemobs.defaultArmorDropChance));
	bow.addGameStage(stageName);

	/*
		Add to entities
	*/
	armoreablemobs.addArmorGroupsToType("melee", [
		gold,
		goldSword,
		iron,
		ironSword
	]);

	armoreablemobs.addArmorGroupsToType("ranged", [
		bow
	]);
}

function addStageFiveMobArmor() {
	var stageName as string = stageFiveMob.stage;

	// ==================================
	// Diamond Sword
	var diamondSword as ArmorGroup = ArmorHandler.createArmorGroup("Diamond Sword", 0.5);
	diamondSword.addArmor(ArmorHandler.createArmorSlot("mainhand", <minecraft:diamond_sword:0>, 1, armoreablemobs.defaultArmorDropChance));
	diamondSword.addGameStage(stageName);

	// ==================================
	// Diamond Armor
	var diamond as ArmorGroup = ArmorHandler.createArmorGroup("Diamond", 0.5);
	diamond.addArmor(ArmorHandler.createArmorSlot("head", <minecraft:diamond_helmet:0>, 1, armoreablemobs.defaultArmorDropChance));
	diamond.addArmor(ArmorHandler.createArmorSlot("chest", <minecraft:diamond_chestplate:0>, 1, armoreablemobs.defaultArmorDropChance));
	diamond.addArmor(ArmorHandler.createArmorSlot("legs", <minecraft:diamond_leggings:0>, 1, armoreablemobs.defaultArmorDropChance));
	diamond.addArmor(ArmorHandler.createArmorSlot("feet", <minecraft:diamond_boots:0>, 1, armoreablemobs.defaultArmorDropChance));
	diamond.addGameStage(stageName);

	/*
		Add to entities
	*/
	armoreablemobs.addArmorGroupsToType("melee", [
		diamond,
		diamondSword
	]);
}
