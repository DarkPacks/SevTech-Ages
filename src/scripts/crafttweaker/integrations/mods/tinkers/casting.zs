/*
	SevTech: Ages Tinkers Casting Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

/*
	Casting

	http://crafttweaker.readthedocs.io/en/latest/#Mods/Modtweaker/TConstruct/Casting/
*/
function init() {
	/*
		Cast Creation
	*/

	// [IItemStack cast, IItemStack consumedItem]
	var castCreationRecipes as IItemStack[][] = [
		[<tconstruct:cast_custom:2>, <astralsorcery:itemcraftingcomponent:0>], // Gem cast with Astral Sorcery Aquamarine
		// Gear Cast Allows Stone now. You're welcome. -________________- Oh, it's also made from stone so all the people don't get upset with me and call me names or tell me I don't know rocket surgery.
		[<tconstruct:cast_custom:4>, <teslacorelib:gear_stone:0>],
		[<tconstruct:cast_custom:1>, <materialpart:stone:nugget>]
	];

	var castLiquids as ILiquidStack[] = [
		metalItems.gold.liquid.liquids[0],
		<liquid:brass>,
		metalItems.aluminumBrass.liquid.liquids[0]
	];

	for castCreationRecipe in castCreationRecipes {
		for castLiquid in castLiquids {
			var liquidAmount = 144;
			if (castLiquid.matches(metalItems.gold.liquid.liquids[0])) {
				liquidAmount = 288;
			}

			tinkers.addCastingTable(castCreationRecipe[0], castCreationRecipe[1], castLiquid, liquidAmount, true);
		}
	}

	/*
		Spartan Shields

		As long as the metal is in the metals global stuff, this will work without any modifications
	*/
	var shieldMetals as string[] = [
		"bronze",
		"constantan",
		"steel",
		"copper",
		"tin",
		"silver",
		"platinum",
		"electrum",
		"nickel",
		"iron",
		"gold",
		"obsidian",
		"lead",
		"invar"
	];

	for shieldMetal in shieldMetals {
		var shield as IItemStack = itemUtils.getItem("spartanshields:shield_basic_" + shieldMetal);
		var towerShield as IItemStack = itemUtils.getItem("spartanshields:shield_tower_" + shieldMetal);
		var liquid as ILiquidStack = shieldMetal == "obsidian" ? <liquid:obsidian> : metalItems[shieldMetal].liquid.liquids[0];

		tinkers.addCastingTable(shield, <spartanshields:shield_basic_wood:0> | <spartanshields:shield_basic_stone:0>, liquid, 576, true);
		// tinkers.addCastingBasin(towerShield, <spartanshields:shield_tower_wood:0> | <spartanshields:shield_tower_stone:0>, liquid, 576, true); // TODO: Enable if model issue resolved
	}

	/*
		Standard Casting
	*/
	tinkers.removeCastingTable(<minecraft:glass_pane:0>);
	tinkers.addCastingTable(<minecraft:glass_pane:0>, null, <liquid:glass>, 500);

	tinkers.removeCastingBasin(<tconstruct:clear_glass:0>);
	tinkers.addCastingBasin(<minecraft:glass:0>, null, <liquid:glass>, 1000);

	tinkers.addCastingTable(<minecraft:ender_pearl:0>, <tconstruct:cast:0>.withTag({PartType: "tconstruct:pan_head"}), <liquid:ender_pearl>, 250, false);
	tinkers.addCastingBasin(<betterwithmods:aesthetic:8>, null, <liquid:ender_pearl>, 2250);

	tinkers.addCastingTable(metals.steeleaf.rod.firstItem, <tconstruct:cast:0>.withTag({PartType: "tconstruct:tool_rod"}), metalItems.steeleaf.liquid.liquids[0], 144, false);

	// Redstone Alloy Rod
	// TODO: Is this being handled by metals?
	tinkers.addCastingTable(metals.redstoneAlloy.rod.firstItem, <tconstruct:cast:0>.withTag({PartType: "tconstruct:tool_rod"}), metalItems.redstoneAlloy.liquid.liquids[0], 144, false);

	// Nugget Removal
	tinkers.removeCastingTable(<mysticalagriculture:crafting:45>); // Soulium Nugget

	// Iron Chests
	tinkers.addCastingBasin(<ironchest:iron_chest:0>, <ironchest:iron_chest:7>, metalItems.iron.liquid.liquids[0], 1152, true, 300);
	tinkers.addCastingBasin(<ironchest:iron_chest:1>, <ironchest:iron_chest:7>, metalItems.gold.liquid.liquids[0], 1152, true, 300);
	tinkers.addCastingBasin(<ironchest:iron_chest:3>, <ironchest:iron_chest:7>, metalItems.copper.liquid.liquids[0], 1152, true, 300);
	tinkers.addCastingBasin(<ironchest:iron_chest:4>, <ironchest:iron_chest:7>, metalItems.silver.liquid.liquids[0], 1152, true, 300);
	tinkers.addCastingBasin(<ironchest:iron_chest:6>, <ironchest:iron_chest:7>, <liquid:obsidian>, 1152, true, 300);
	tinkers.addCastingBasin(<ironchest:iron_chest:5>, <ironchest:iron_chest:1>, <liquid:astralsorcery.liquidstarlight>, 1152, true, 300);

	// Slime Ball Casting
	tinkers.addCastingTable(<tconstruct:edible:2>, null, <liquid:purpleslime>, 250, false, 40);
	tinkers.addCastingTable(<tconstruct:edible:1>, null, <liquid:blueslime>, 250, false, 40);
	tinkers.addCastingTable(<minecraft:slime_ball:0>, null, <liquid:slime>, 250, false, 40);
	tinkers.addCastingBasin(<tconstruct:slime_congealed:3>, null, <liquid:blood>, 640, false, 60);

	tinkers.removeCastingBasin(<tconstruct:seared_furnace_controller:0>);

	// Liquid Redstone
	tinkers.addCastingTable(<minecraft:redstone:0>, <tconstruct:cast_custom:2>, <liquid:redstone>, 100, false);
	tinkers.addCastingBasin(<minecraft:redstone_block:0>, null, <liquid:redstone>, 900);

	// Liquid Glowstone
	tinkers.addCastingTable(<minecraft:glowstone_dust:0>, <tconstruct:cast_custom:2>, <liquid:glowstone>, 100, false);
	tinkers.addCastingBasin(<minecraft:glowstone:0>, null, <liquid:glowstone>, 400);
}
