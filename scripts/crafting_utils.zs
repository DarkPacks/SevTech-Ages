#priority 700

import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

function getBucketIngredientFromName(liquidName as string) as IIngredient {
	var bucketsIngredient as IIngredient = null;

	for bucket in buckets {
		if (isNull(bucketsIngredient)) {
			bucketsIngredient = scripts.utils.formatBucketIngredient(bucket, liquidName);
		} else {
			bucketsIngredient |= scripts.utils.formatBucketIngredient(bucket, liquidName);
		}
	}

	return bucketsIngredient;
}

function getBucketIngredient(liquid as ILiquidStack) as IIngredient {
	return getBucketIngredientFromName(liquid.name);
}
