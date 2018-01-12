//Run before metals.zs
#priority 101

import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IItemStack;

/*
	Metals Melting Temporary Fix

	Since we're having issues removing the metling recipes, do it manually
	*Is dying inside doing this*
*/
for metalName, metal in metalItems {
	var metalLiquid as ILiquidStack = metal.liquid as bool ? metal.liquid.liquids[0] : null;

	if (metalLiquid as bool) {
		for metalPartName, metalPart in metal {
			if (metalPartName != "liquid" & metalPart as bool) {
				var metalPart as IItemStack = metalPart.items[0];
				var metalLiquid as ILiquidStack = null;

				if (metalName == "abyssalnite") {
					metalLiquid = <liquid:moltenabyssalnite>;
				} else if (metalName == "aluminum") {
					metalLiquid = <liquid:aluminum>;
				} else if (metalName == "aluminumBrass") {
					metalLiquid = <liquid:alubrass>;
				} else if (metalName == "ardite") {
					metalLiquid = <liquid:ardite>;
				} else if (metalName == "blackIron") {
					metalLiquid = null;
				} else if (metalName == "bronze") {
					metalLiquid = <liquid:bronze>;
				} else if (metalName == "cobalt") {
					metalLiquid = <liquid:cobalt>;
				} else if (metalName == "compressedIron") {
					metalLiquid = null;
				} else if (metalName == "constantan") {
					metalLiquid = <liquid:constantan>;
				} else if (metalName == "copper") {
					metalLiquid = <liquid:copper>;
				} else if (metalName == "dawnstone") {
					metalLiquid = <liquid:dawnstone>;
				} else if (metalName == "dreadium") {
					metalLiquid = <liquid:moltendreadium>;
				} else if (metalName == "electrum") {
					metalLiquid = <liquid:electrum>;
				} else if (metalName == "enhancedGalgadorian") {
					metalLiquid = <liquid:enhanced_galgadorian>;
				} else if (metalName == "ethaxium") {
					metalLiquid = null;
				} else if (metalName == "fiery") {
					metalLiquid = <liquid:fiery>;
				} else if (metalName == "galgadorian") {
					metalLiquid = <liquid:galgadorian>;
				} else if (metalName == "gold") {
					metalLiquid = <liquid:gold>;
				} else if (metalName == "invar") {
					metalLiquid = <liquid:invar>;
				} else if (metalName == "iron") {
					metalLiquid = <liquid:iron>;
				} else if (metalName == "knightslime") {
					metalLiquid = <liquid:knightslime>;
				} else if (metalName == "lead") {
					metalLiquid = <liquid:lead>;
				} else if (metalName == "manyullyn") {
					metalLiquid = <liquid:manyullyn>;
				} else if (metalName == "modularium") {
					metalLiquid = <liquid:modularium>;
				} else if (metalName == "nickel") {
					metalLiquid = <liquid:nickel>;
				} else if (metalName == "pigiron") {
					metalLiquid = <liquid:pigiron>;
				} else if (metalName == "platinum") {
					metalLiquid = <liquid:platinum>;
				} else if (metalName == "redstoneAlloy") {
					metalLiquid = <liquid:redstone_alloy>;
				} else if (metalName == "refinedCoralium") {
					metalLiquid = <liquid:moltenrefinedcoralium>;
				} else if (metalName == "reinforcedMetal") {
					metalLiquid = <liquid:reinforced_metal>;
				} else if (metalName == "silver") {
					metalLiquid = <liquid:silver>;
				} else if (metalName == "steel") {
					metalLiquid = <liquid:steel>;
				} else if (metalName == "steeleaf") {
					metalLiquid = <liquid:steeleaf>;
				} else if (metalName == "tin") {
					metalLiquid = <liquid:tin>;
				} else if (metalName == "uranium") {
					metalLiquid = <liquid:uranium>;
				}

				mods.tconstruct.Melting.removeRecipe(metalLiquid, metalPart);
			}
		}
	}
}
