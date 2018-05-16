import crafttweaker.liquid.ILiquidStack;

import mods.tconstruct.Casting;

for partName, part in metals.fiery {
    var oldLiquid as ILiquidStack = <liquid:fiery>;

    var preferredMetalItem as IItemStack = metalItems.fiery[partName];
    
    if (!isNull(preferredMetalItem)) {
        var fluidAmount as int = 0;

		if (metalPartName == "ingot" | metalPartName == "plate") {
			fluidAmount = 144;
		} else if (metalPartName == "rod") {
			fluidAmount = 72;
		} else if (metalPartName == "block") {
			fluidAmount = 1296;
		} else if (metalPartName == "gear") {
			fluidAmount = 576;
		} else if (metalPartName == "nugget") {
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

            if (tinkersCast as bool) {
                Casting.removeTableRecipe(preferredMetalItem);
                Casting.addTableRecipe(preferredMetalItem, tinkersCast, oldLiquid, fluidAmount, consumeCast);
            }
        }
    }
}