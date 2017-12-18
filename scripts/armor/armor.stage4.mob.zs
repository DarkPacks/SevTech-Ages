import mods.armoreablemobs.ArmorHandler;
import mods.armoreablemobs.ArmorEntity;
import mods.armoreablemobs.ArmorSlot;
import mods.armoreablemobs.ArmorGroup;

var STAGE = STAGES.fourMob;

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
var armorGroups = [ironSword, goldSword, iron, gold] as ArmorGroup[];

var mobEntities = [
	ArmorHandler.createArmorEntity("minecraft:zombie").withNBTCheck("IsBaby", 0, "TAG_MISSING"),
	ArmorHandler.createArmorEntity("minecraft:zombie_pigman").withNBTCheck("IsBaby", 0, "TAG_MISSING"),
	ArmorHandler.createArmorEntity("minecraft:zombie_villager")
] as ArmorEntity[];

for armorGroup in armorGroups {
	for mob in mobEntities {
		armorGroup.addEntity(mob);
	}
	//Set game stage
	armorGroup.addGameStage(STAGE);
}
