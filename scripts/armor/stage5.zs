import mods.armoreablemobs.ArmorHandler;
import mods.armoreablemobs.ArmorEntity;
import mods.armoreablemobs.ArmorSlot;
import mods.armoreablemobs.ArmorGroup;

var STAGE = STAGES.fiveMob;

var diamondSword = ArmorHandler.createArmorGroup("Diamond Sword", 0.5);
diamondSword.addArmor(ArmorHandler.createArmorSlot("mainhand", <minecraft:diamond_sword>, 1, defaultArmorDropChance));
diamondSword.addGameStage(STAGE);

var diamond = ArmorHandler.createArmorGroup("Diamond", 0.5);
diamond.addArmor(ArmorHandler.createArmorSlot("head", <minecraft:diamond_helmet>, 1, defaultArmorDropChance));
diamond.addArmor(ArmorHandler.createArmorSlot("chest", <minecraft:diamond_chestplate>, 1, defaultArmorDropChance));
diamond.addArmor(ArmorHandler.createArmorSlot("legs", <minecraft:diamond_leggings>, 1, defaultArmorDropChance));
diamond.addArmor(ArmorHandler.createArmorSlot("feet", <minecraft:diamond_boots>, 1, defaultArmorDropChance));

/*
	Add Entities
*/
//Add groups to this array
var armorGroups as ArmorGroup[] = [diamondSword, diamond];

var mobEntities as ArmorEntity[] = [
	ArmorHandler.createArmorEntity("minecraft:husk").withNBTCheck("IsBaby", 0, "TAG_MISSING"),
	ArmorHandler.createArmorEntity("minecraft:zombie").withNBTCheck("IsBaby", 0, "TAG_MISSING"),
	ArmorHandler.createArmorEntity("minecraft:zombie_pigman").withNBTCheck("IsBaby", 0, "TAG_MISSING"),
	ArmorHandler.createArmorEntity("minecraft:zombie_villager")
];

for armorGroup in armorGroups {
	for mob in mobEntities {
		armorGroup.addEntity(mob);
	}
	//Set game stage
	armorGroup.addGameStage(STAGE);
}
