#priority 3500

/*
	SevTech: Ages Transformers Script

	This script provides transformers used in recipes.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemTransformerNew;

static shearsTransformFunction as IItemTransformerNew = function(item) {
	if (item.hasContainerItem) {
		return item.containerItem;
	}

	if (item.maxDamage == -1) {
		// Indestructable Item
		return item;
	} else if (item.maxDamage > 0) {
		// Damage-able item
		if (item.maxDamage - item.damage > 1) {
			return item.withDamage(item.damage + 1);
		} else {
			// Consume/break on last durability
			return null;
		}
	}

	// Catch-all
	return null;
};
