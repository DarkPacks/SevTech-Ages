import mods.armoreablemobs.ArmorHandler;
import mods.armoreablemobs.ArmorEntity;
import mods.armoreablemobs.ArmorSlot;
import mods.armoreablemobs.ArmorGroup;

static defaultArmorDropChance as double = 0.15;

static armorableMobEntities as ArmorEntity[] = [
	ArmorHandler.createArmorEntity("minecraft:husk").withNBTCheck("IsBaby", 0, "TAG_MISSING"),
	ArmorHandler.createArmorEntity("minecraft:zombie").withNBTCheck("IsBaby", 0, "TAG_MISSING"),
	ArmorHandler.createArmorEntity("minecraft:zombie_pigman").withNBTCheck("IsBaby", 0, "TAG_MISSING"),
	ArmorHandler.createArmorEntity("minecraft:zombie_villager")
];

/*
	Clear mobs
*/
var mobEntitiesToClear as ArmorEntity[] = [
	ArmorHandler.createArmorEntity("abyssalcraft:depthsghoul"),
	ArmorHandler.createArmorEntity("mekanism:babyskeleton"),
	ArmorHandler.createArmorEntity("minecraft:husk"),
	ArmorHandler.createArmorEntity("minecraft:skeleton"),
	ArmorHandler.createArmorEntity("minecraft:zombie"),
	ArmorHandler.createArmorEntity("minecraft:zombie_pigman"),
	ArmorHandler.createArmorEntity("minecraft:zombie_villager")
];

var blankGroup = ArmorHandler.createArmorGroup("Blank", 1.0);
blankGroup.addArmor(ArmorHandler.createArmorSlot("head", null, 1, 0));
blankGroup.addArmor(ArmorHandler.createArmorSlot("chest", null, 1, 0));
blankGroup.addArmor(ArmorHandler.createArmorSlot("legs", null, 1, 0));
blankGroup.addArmor(ArmorHandler.createArmorSlot("feet", null, 1, 0));
blankGroup.addArmor(ArmorHandler.createArmorSlot("mainhand", null, 1, 0));
blankGroup.addArmor(ArmorHandler.createArmorSlot("offhand", null, 1, 0));

for mob in mobEntitiesToClear {
	blankGroup.addEntity(mob);
}
