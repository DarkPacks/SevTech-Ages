#priority 3500

/*
	SevTech: Ages Crafting Utils Script

	This script provides crafting related utility functions for use in other scripts

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.recipes.ICraftingInfo;
import crafttweaker.recipes.IRecipeFunction;

function getBucketAndTankIngredientFromName(liquidName as string, includeTanks as bool) as IIngredient {
	var bucketsIngredient as IIngredient = null;

	for bucket in buckets {
		var bucketIngredient as IIngredient = scripts.crafttweaker.utils.formatBucketIngredient(bucket, liquidName);

		if (!isNull(bucketIngredient)) {
			if (includeTanks | !(tanks has bucket)) {
				if (isNull(bucketsIngredient)) {
					bucketsIngredient = bucketIngredient;
				} else {
					bucketsIngredient |= bucketIngredient;
				}
			}
		}
	}

	return bucketsIngredient;
}

function getBucketIngredientFromName(liquidName as string) as IIngredient {
	return getBucketAndTankIngredientFromName(liquidName, false);
}

function getBucketAndTankIngredient(liquid as ILiquidStack, includeTanks as bool) as IIngredient {
	return getBucketAndTankIngredientFromName(liquid.name, includeTanks);
}

function getBucketIngredient(liquid as ILiquidStack) as IIngredient {
	return getBucketAndTankIngredient(liquid, false);
}

global fluidRecipeFunction as IRecipeFunction = function (output as IItemStack, inputs as IIngredient[string], cInfo as ICraftingInfo) as IItemStack {
	// Check recipe has a tank in any of the possible fluid slots
	var hasTank = false;
	for _, fluidIngredient in inputs {
		for tank in tanks {
			if (tank.matches(fluidIngredient)) {
				hasTank = true;
			}
		}
	}
	if (!hasTank) {
		return output;
	}

	// Check tanks have sufficient fluid
	var sufficientFluid = true;
	for _, fluidIngredient in inputs {
		if (fluidIngredient.tag.Fluid.Amount < 1000) {
			sufficientFluid = false;
		}
	}
	if (sufficientFluid) {
		return output;
	}

	return null;
};
