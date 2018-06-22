#priority 2998

/*
	SevTech: Ages Crafting Utils Script

	This script provides crafting related utility functions for use in other scripts

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

function getBucketIngredientFromName(liquidName as string) as IIngredient {
	var bucketsIngredient as IIngredient = null;

	for bucket in buckets {
		var bucketIngredient as IIngredient = scripts.crafttweaker.utils.formatBucketIngredient(bucket, liquidName);

		if (!isNull(bucketIngredient)) {
			if (isNull(bucketsIngredient)) {
				bucketsIngredient = bucketIngredient;
			} else {
				bucketsIngredient |= bucketIngredient;
			}
		}
	}

	return bucketsIngredient;
}

function getBucketIngredient(liquid as ILiquidStack) as IIngredient {
	return getBucketIngredientFromName(liquid.name);
}
