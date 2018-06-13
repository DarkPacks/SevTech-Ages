#priority -1

import mods.armoreablemobs.ArmorHandler;
import mods.armoreablemobs.ArmorEntity;
import mods.armoreablemobs.ArmorSlot;
import mods.armoreablemobs.ArmorGroup;

import scripts.mob_armor._base.defaultArmorDropChance;
import scripts.mob_armor._base.armorableMobEntities;

var STAGE = STAGES.zeroMob;

var sharpBone = ArmorHandler.createArmorGroup("Sharp Bone", 0.4);
sharpBone.addArmor(ArmorHandler.createArmorSlot("mainhand", <primal:sharp_bone>, 1, defaultArmorDropChance));
sharpBone.addGameStage(STAGE);

var leather = ArmorHandler.createArmorGroup("Leather", 0.5);
leather.addArmor(ArmorHandler.createArmorSlot("head", <minecraft:leather_helmet>, 1, defaultArmorDropChance));
leather.addArmor(ArmorHandler.createArmorSlot("chest", <minecraft:leather_chestplate>, 1, defaultArmorDropChance));
leather.addArmor(ArmorHandler.createArmorSlot("legs", <minecraft:leather_leggings>, 1, defaultArmorDropChance));
leather.addArmor(ArmorHandler.createArmorSlot("feet", <minecraft:leather_boots>, 1, defaultArmorDropChance));

var wolf = ArmorHandler.createArmorGroup("Wolf", 0.15);
wolf.addArmor(ArmorHandler.createArmorSlot("head", <primal:armor_wolf_head>, 1, defaultArmorDropChance));
wolf.addArmor(ArmorHandler.createArmorSlot("chest", <primal:armor_wolf_body>, 1, defaultArmorDropChance));
wolf.addArmor(ArmorHandler.createArmorSlot("legs", <primal:armor_wolf_legs>, 1, defaultArmorDropChance));
wolf.addArmor(ArmorHandler.createArmorSlot("feet", <primal:armor_wolf_feet>, 1, defaultArmorDropChance));

/*
	Add Entities
*/
//Add groups to this array
var armorGroups as ArmorGroup[] = [sharpBone, leather, wolf];

for armorGroup in armorGroups {
	for mob in armorableMobEntities {
		armorGroup.addEntity(mob);
	}
	//Set game stage
	armorGroup.addGameStage(STAGE);
}
