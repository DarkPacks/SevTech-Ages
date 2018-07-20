#priority 3400

/*
	SevTech: Ages Armoreable Mobs Script

	This script is a zenClass to allow easy interation with Armoreable Mobs.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import mods.armoreablemobs.ArmorHandler;
import mods.armoreablemobs.ArmorEntity;
import mods.armoreablemobs.ArmorSlot;
import mods.armoreablemobs.ArmorGroup;

zenClass ArmoreableMobs {
	var mobEntities as ArmorEntity[string][string] = {};

	var defaultArmorDropChance as double = 0.15;
	var blankGroup = ArmorHandler.createArmorGroup("Blank", 1.0);

	zenConstructor() {
		// Set up "Blank" group
		blankGroup.addArmor(ArmorHandler.createArmorSlot("head", null, 1, 0));
		blankGroup.addArmor(ArmorHandler.createArmorSlot("chest", null, 1, 0));
		blankGroup.addArmor(ArmorHandler.createArmorSlot("legs", null, 1, 0));
		blankGroup.addArmor(ArmorHandler.createArmorSlot("feet", null, 1, 0));
		blankGroup.addArmor(ArmorHandler.createArmorSlot("mainhand", null, 1, 0));
		blankGroup.addArmor(ArmorHandler.createArmorSlot("offhand", null, 1, 0));
	}

	function addMobEntity(mobType as string, mobName as string) {
		mobEntities[mobName] = ArmorHandler.createArmorEntity(mobName);
	}

	function addMobEntities(mobType as string, mobNames as string[]) {
		for mobName in mobNames {
			addMobEntity(mobName);
		}
	}

	function build() {
		for mobEntityType, mobEntitiesForType in mobEntities {
			for mobName, mobEntity in mobEntitiesForType {
				clearMobGear(mobEntity);
			}
		}
	}

	/**
	 * Clears all gear from the mob
	 */
	function clearMobGear(mobEntity as ArmorEntity) {
		blankGroup.addEntity(mobEntity);
	}

	/**
	 * Adds armor group to the specified armor type
	 */
	function addArmorGroupToType(mobEntityType as string, armorGroup as ArmorGroup) {
		if (!(mobEntities has mobEntityType)) {
			logger.logWarning("Attempted to add armor group to " ~ mobEntityType ~ " mobs but none exist");
		}

		for mobEntitiesForType in mobEntities[mobEntityType] {
			armorGroup.addEntity(mobEntitiesForType);
		}
	}

	function addArmorGroupsToType(mobEntityType as string, armorGroups as ArmorGroup[]) {
		for armorGroup in armorGroups {
			addArmorGroupToType(mobEntityType, armorGroup);
		}
	}
}
