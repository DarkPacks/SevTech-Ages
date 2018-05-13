#priority -1

import mods.armoreablemobs.ArmorHandler;
import mods.armoreablemobs.ArmorEntity;
import mods.armoreablemobs.ArmorSlot;
import mods.armoreablemobs.ArmorGroup;

import scripts.mob_armor._base.defaultArmorDropChance;
import scripts.mob_armor._base.armorableMobEntities;
import scripts.mob_armor._base.mobEntities;

var STAGE = STAGES.twoMob;

var ironSword = ArmorHandler.createArmorGroup("Iron Sword", 0.5);
ironSword.addArmor(ArmorHandler.createArmorSlot("mainhand", <minecraft:iron_sword>, 1, defaultArmorDropChance));
ironSword.addGameStage(STAGE);

var goldSword = ArmorHandler.createArmorGroup("Gold Sword", 0.25);
goldSword.addArmor(ArmorHandler.createArmorSlot("mainhand", <minecraft:golden_sword>, 1, defaultArmorDropChance));
goldSword.addGameStage(STAGE);

var iron = ArmorHandler.createArmorGroup("Iron", 0.5);
iron.addArmor(ArmorHandler.createArmorSlot("head", <minecraft:iron_helmet>, 1, defaultArmorDropChance));
iron.addArmor(ArmorHandler.createArmorSlot("chest", <minecraft:iron_chestplate>, 1, defaultArmorDropChance));
iron.addArmor(ArmorHandler.createArmorSlot("legs", <minecraft:iron_leggings>, 1, defaultArmorDropChance));
iron.addArmor(ArmorHandler.createArmorSlot("feet", <minecraft:iron_boots>, 1, defaultArmorDropChance));

var gold = ArmorHandler.createArmorGroup("Gold", 0.25);
gold.addArmor(ArmorHandler.createArmorSlot("head", <minecraft:golden_helmet>, 1, defaultArmorDropChance));
gold.addArmor(ArmorHandler.createArmorSlot("chest", <minecraft:golden_chestplate>, 1, defaultArmorDropChance));
gold.addArmor(ArmorHandler.createArmorSlot("legs", <minecraft:golden_leggings>, 1, defaultArmorDropChance));
gold.addArmor(ArmorHandler.createArmorSlot("feet", <minecraft:golden_boots>, 1, defaultArmorDropChance));

/*
	Add Entities
*/
//Add groups to this array
var armorGroups as ArmorGroup[] = [ironSword, goldSword, iron, gold];

for armorGroup in armorGroups {
	for mob in armorableMobEntities {
		armorGroup.addEntity(mob);
	}
	//Set game stage
	armorGroup.addGameStage(STAGE);
}

/*
	Bow
*/
var bow = ArmorHandler.createArmorGroup("Bow", 1);
bow.addArmor(ArmorHandler.createArmorSlot("mainhand", <minecraft:bow>, 1, defaultArmorDropChance));
bow.addGameStage(STAGE);
bow.addEntity(mobEntities["minecraft:skeleton"]);
