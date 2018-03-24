import mods.armoreablemobs.ArmorHandler;
import mods.armoreablemobs.ArmorEntity;
import mods.armoreablemobs.ArmorSlot;
import mods.armoreablemobs.ArmorGroup;

static defaultArmorDropChance as double = 0.15;

static mobEntities as ArmorEntity[string] = {
	"abyssalcraft:depthsghoul": ArmorHandler.createArmorEntity("abyssalcraft:depthsghoul"),
	"mekanism:babyskeleton": ArmorHandler.createArmorEntity("mekanism:babyskeleton"),
	"minecraft:husk": ArmorHandler.createArmorEntity("minecraft:husk"),
	"minecraft:skeleton": ArmorHandler.createArmorEntity("minecraft:skeleton"),
	"minecraft:zombie": ArmorHandler.createArmorEntity("minecraft:zombie"),
	"minecraft:zombie_pigman": ArmorHandler.createArmorEntity("minecraft:zombie_pigman"),
	"minecraft:zombie_villager": ArmorHandler.createArmorEntity("minecraft:zombie_villager")
};

static armorableMobEntities as ArmorEntity[] = [
	mobEntities["minecraft:husk"].withNBTCheck("IsBaby", 0, "TAG_MISSING"),
	mobEntities["minecraft:zombie"].withNBTCheck("IsBaby", 0, "TAG_MISSING"),
	mobEntities["minecraft:zombie_pigman"].withNBTCheck("IsBaby", 0, "TAG_MISSING"),
	mobEntities["minecraft:zombie_villager"]
];

/*
	Clear mobs
*/
var mobEntitiesToClear as ArmorEntity[] = [
	mobEntities["abyssalcraft:depthsghoul"],
	mobEntities["mekanism:babyskeleton"],
	mobEntities["minecraft:husk"],
	mobEntities["minecraft:skeleton"],
	mobEntities["minecraft:zombie"],
	mobEntities["minecraft:zombie_pigman"],
	mobEntities["minecraft:zombie_villager"]
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
