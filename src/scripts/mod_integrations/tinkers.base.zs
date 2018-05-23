import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

import mods.tconstruct.Alloy;
import mods.tconstruct.Casting;
import mods.tconstruct.Melting;

/*
	Cast Creation
*/
//[IItemStack cast, IItemStack consumedItem]
var castCreationRecipes as IItemStack[][] = [
	[<tconstruct:cast_custom:2>, <astralsorcery:itemcraftingcomponent>], //Gem cast with Astral Sorcery Aquamarine
	//Gear Cast Allows Stone now. You're welcome. -________________- Oh, it's also made from stone so all the people don't get upset with me and call me names or tell me I don't know rocket surgery.
	[<tconstruct:cast_custom:4>, <teslacorelib:gear_stone>],
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

		Casting.addTableRecipe(castCreationRecipe[0], castCreationRecipe[1], castLiquid, liquidAmount, true);
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
	var shield as IItemStack = itemUtils.getItemsByRegexRegistryName("^spartanshields:shield_basic_" + shieldMetal + ":0$")[0];
	var liquid as ILiquidStack = shieldMetal == "obsidian" ? <liquid:obsidian> : metalItems[shieldMetal].liquid.liquids[0];

	Casting.addTableRecipe(shield, <spartanshields:shield_basic_wood>, liquid, 576, true);
}

/*
	Casting

	http://crafttweaker.readthedocs.io/en/latest/#Mods/Modtweaker/TConstruct/Casting/
*/
Casting.removeTableRecipe(<minecraft:glass_pane>);
Casting.addTableRecipe(<minecraft:glass_pane>, null, <liquid:glass>, 500);

Casting.removeBasinRecipe(<tconstruct:clear_glass>);
Casting.addBasinRecipe(<minecraft:glass>, null, <liquid:glass>, 1000);

Casting.addTableRecipe(<minecraft:ender_pearl>, <tconstruct:cast>.withTag({PartType: "tconstruct:pan_head"}), <liquid:ender_pearl>, 250, false);
Casting.addBasinRecipe(<betterwithmods:aesthetic:8>, null, <liquid:ender_pearl>, 2250);

Casting.addTableRecipe(metals.steeleaf.rod.firstItem, <tconstruct:cast>.withTag({PartType: "tconstruct:tool_rod"}), metalItems.steeleaf.liquid.liquids[0], 144, false);

//Redstone Alloy Rod
//TODO: Is this being handled by metals?
Casting.addTableRecipe(metals.redstoneAlloy.rod.firstItem, <tconstruct:cast>.withTag({PartType: "tconstruct:tool_rod"}), metalItems.redstoneAlloy.liquid.liquids[0], 144, false);

//Nugget Removal
Casting.removeTableRecipe(<mysticalagriculture:crafting:45>); //Soulium Nugget

//Iron Chests
Casting.addBasinRecipe(<ironchest:iron_chest>, <ironchest:iron_chest:7>, metalItems.iron.liquid.liquids[0], 1152, true, 300);
Casting.addBasinRecipe(<ironchest:iron_chest:1>, <ironchest:iron_chest:7>, metalItems.gold.liquid.liquids[0], 1152, true, 300);
Casting.addBasinRecipe(<ironchest:iron_chest:3>, <ironchest:iron_chest:7>, metalItems.copper.liquid.liquids[0], 1152, true, 300);
Casting.addBasinRecipe(<ironchest:iron_chest:4>, <ironchest:iron_chest:7>, metalItems.silver.liquid.liquids[0], 1152, true, 300);
Casting.addBasinRecipe(<ironchest:iron_chest:6>, <ironchest:iron_chest:7>, <liquid:obsidian>, 1152, true, 300);
Casting.addBasinRecipe(<ironchest:iron_chest:5>, <ironchest:iron_chest:1>, <liquid:astralsorcery.liquidstarlight>, 1152, true, 300);

//Slime Ball Casting
Casting.addTableRecipe(<tconstruct:edible:2>, null, <liquid:purpleslime>, 250, false, 40);
Casting.addTableRecipe(<tconstruct:edible:1>, null, <liquid:blueslime>, 250, false, 40);
Casting.addTableRecipe(<minecraft:slime_ball>, null, <liquid:slime>, 250, false, 40);

Casting.addBasinRecipe(<tconstruct:slime_congealed:3>, null, <liquid:blood>, 640, false, 60);

Casting.removeBasinRecipe(<tconstruct:seared_furnace_controller>);

/*
	Melting

	http://crafttweaker.readthedocs.io/en/latest/#Mods/Modtweaker/TConstruct/Melting/
*/
Melting.addRecipe(<liquid:ender_pearl> * 250, <appliedenergistics2:material:46>);

//Platinum Ore
//TODO: Loop over oredict instead (and ensure ore is unified)
Melting.addRecipe(metalItems.platinum.liquid.liquids[0] * 144, <geolosys:cluster:8>);

//New seared stone mechanic
Melting.removeRecipe(<liquid:stone>);
Melting.addRecipe(<liquid:stone> * 72, <tconstruct:soil:0>);
Melting.addRecipe(<liquid:stone> * 72, <tconstruct:materials>);

val searedBlock = <tconstruct:seared>.definition;
for i in 0 .. 10{
    if(i != 1){
    Melting.addRecipe(<liquid:stone> * 288, searedBlock.makeStack(i));
    }
}
Melting.addRecipe(<liquid:stone> * 216, <tconstruct:seared:1>);

//Steves Carts' Metals
Melting.addRecipe(metalItems.enhancedGalgadorian.liquid.liquids[0] * 144, <stevescarts:modulecomponents:48>);
Melting.addRecipe(metalItems.galgadorian.liquid.liquids[0] * 144, <stevescarts:modulecomponents:46>);
Melting.addRecipe(metalItems.reinforcedMetal.liquid.liquids[0] * 144, <stevescarts:modulecomponents:21>);

/*
	Fixes so all glass is same melting temp.
	I'm doing this against my better judgement because I don't want to hear players complaining about how it's impossible to make glass in stage 2 even though it's 100% possible already.
*/
Melting.removeRecipe(<liquid:glass>);
Melting.addRecipe(<liquid:glass> * 250, <ore:pileSand>, 493);
Melting.addRecipe(<liquid:glass> * 250, <ore:shardGlass>, 493);
Melting.addRecipe(<liquid:glass> * 375, <ore:paneGlass>, 493);
Melting.addRecipe(<liquid:glass> * 1000, <ore:blockGlass>, 493);
Melting.addRecipe(<liquid:glass> * 1000, <ore:sand>, 493);

//Remove Villager from giving emeralds or blood
Melting.addEntityMelting(<entity:minecraft:villager>, <liquid:water> * 0); //Setting to 0 gives nothing when the entity is "melted"

//Stops an exploit by removing the merchants melting.
Melting.addEntityMelting(<entity:farmingforblockheads:merchant>, <liquid:water> * 0); //Setting to 0 gives nothing when the entity is "melted"

/*
	Alloying

	http://crafttweaker.readthedocs.io/en/latest/#Mods/Modtweaker/TConstruct/Alloying/
*/
//Remove Constantan Alloying
Alloy.removeRecipe(metalItems.constantan.liquid.liquids[0]);

//Redstone Alloy Creation
Alloy.addRecipe(metalItems.redstoneAlloy.liquid.liquids[0] * 288, [<liquid:redstone> * 100, <liquid:glowstone> * 100, metalItems.constantan.liquid.liquids[0] * 144]);

//Modularium
Alloy.addRecipe(metalItems.modularium.liquid.liquids[0] * 288, [<liquid:redstone> * 100, metalItems.iron.liquid.liquids[0] * 144, metalItems.aluminum.liquid.liquids[0] * 144]);

//Invar
Alloy.addRecipe(metalItems.invar.liquid.liquids[0] * 3, [metalItems.iron.liquid.liquids[0] * 2, metalItems.nickel.liquid.liquids[0] * 1]);

/*
	Combined stuff
*/
//Liquid Glowstone
Melting.addRecipe(<liquid:glowstone> * 100, <minecraft:glowstone_dust>);
Melting.addRecipe(<liquid:glowstone> * 400, <minecraft:glowstone>);
Casting.addTableRecipe(<minecraft:glowstone_dust>, <tconstruct:cast_custom:2>, <liquid:glowstone>, 100, false);
Casting.addBasinRecipe(<minecraft:glowstone>, null, <liquid:glowstone>, 400);

//Liquid Redstone
Melting.addRecipe(<liquid:redstone> * 100, <minecraft:redstone>);
Melting.addRecipe(<liquid:redstone> * 900, <minecraft:redstone_block>);
Casting.addTableRecipe(<minecraft:redstone>, <tconstruct:cast_custom:2>, <liquid:redstone>, 100, false);
Casting.addBasinRecipe(<minecraft:redstone_block>, null, <liquid:redstone>, 900);
