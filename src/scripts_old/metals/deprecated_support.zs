import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IItemStack;

import mods.tconstruct.Casting;

for partName, part in metals.fiery {
    var oldLiquid as ILiquidStack = <liquid:fiery>;

    var preferredMetalItem as IItemStack = metalItems.fiery[partName];
    
    if (!isNull(preferredMetalItem)) {
        var fluidAmount as int = 0;

		if (partName == "ingot" | partName == "plate") {
			fluidAmount = 144;
		} else if (partName == "rod") {
			fluidAmount = 72;
		} else if (partName == "block") {
			fluidAmount = 1296;
		} else if (partName == "gear") {
			fluidAmount = 576;
		} else if (partName == "nugget") {
			fluidAmount = 16;
		}

        //Casting
        if (partName == "block") {
            var consumeCast = false;

            Casting.removeBasinRecipe(preferredMetalItem);
            Casting.addBasinRecipe(preferredMetalItem, null, oldLiquid, fluidAmount, consumeCast);
        } else {
            var tinkersCast as IItemStack = null;
            var consumeCast = false;

            if (partName == "ingot") {
                tinkersCast = <tconstruct:cast_custom>;
            } else if (partName == "gear") {
                tinkersCast = <tconstruct:cast_custom:4>;
            } else if (partName == "plate") {
                tinkersCast = <tconstruct:cast_custom:3>;
            } else if (partName == "nugget") {
                tinkersCast = <tconstruct:cast_custom:1>;
            }

            if (!isNull(tinkersCast)) {
                Casting.removeTableRecipe(preferredMetalItem);
                Casting.addTableRecipe(preferredMetalItem, tinkersCast, oldLiquid, fluidAmount, consumeCast);
            }
        }
    }
}