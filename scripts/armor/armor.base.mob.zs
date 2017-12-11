import mods.armoreablemobs.ArmorHandler;
import mods.armoreablemobs.ArmorEntity;
import mods.armoreablemobs.ArmorSlot;
import mods.armoreablemobs.ArmorGroup;

/*
	Clear mobs
*/
var mobEntitiesToClear = [
	ArmorHandler.createArmorEntity("minecraft:skeleton"),
	ArmorHandler.createArmorEntity("minecraft:zombie"),
	ArmorHandler.createArmorEntity("minecraft:zombie_pigman"),
	ArmorHandler.createArmorEntity("minecraft:zombie_villager")
] as ArmorEntity[];

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
