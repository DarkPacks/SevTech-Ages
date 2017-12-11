import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

/*
mods.tconstruct.Casting.addTableRecipe(output>, input, fluid, time);
mods.tconstruct.Casting.addBasinRecipe(output, input, fluid, time);
mods.tconstruct.Casting.addTableRecipe(output>, input, fluid, time, consumeCast);
mods.tconstruct.Casting.addBasinRecipe(output, input, fluid, time, consumeCast);

mods.tconstruct.Casting.removeTableRecipe(output);
mods.tconstruct.Casting.removeBasinRecipe(output);


mods.tconstruct.Casting.addTableRecipe(<minecraft:diamond>, <minecraft:dirt>, <liquid:cryotheum>, 50);
mods.tconstruct.Casting.addBasinRecipe(<minecraft:grass>, <minecraft:glass>, <liquid:obsidian>, 50);
mods.tconstruct.Casting.addTableRecipe(<minecraft:diamond>, <minecraft:gold_nugget>, <liquid:cryotheum>, 50, true);
mods.tconstruct.Casting.addBasinRecipe(<minecraft:grass>, <minecraft:gold_nugget>, <liquid:obsidian>, 50, true);

mods.tconstruct.Casting.removeTableRecipe(<minecraft:gold_nugget>);
mods.tconstruct.Casting.removeBasinRecipe(<minecraft:iron_block>);
*/

/*
mods.tconstruct.Melting.addRecipe(<liquid:cryotheum>, <minecraft:glass>);
mods.tconstruct.Melting.removeRecipe(<liquid:obsidian>);

mods.tconstruct.Melting.addRecipe(output, input);
mods.tconstruct.Melting.removeRecipe(output);
*/

//[<cast>, <consumedItem>]
var castCreationRecipes = [
	[<tcomplement:cast>, <ceramics:clay_bucket>],
	[<tcomplement:cast>, <ceramics:clay_bucket_block>],
	[<tconstruct:cast_custom:2>, <astralsorcery:itemcraftingcomponent>], //Gem cast with Astral Sorcery Aquamarine
	//Gear Cast Allows Stone now. You're welcome. -________________- Oh, it's also made from stone so all the people don't get upset with me and call me names or tell me I don't know rocket surgery.
	[<tconstruct:cast_custom:4>, <teslacorelib:gear_stone>]
] as IItemStack[][];

var castLiquids = [
	metalItems.gold.liquid.liquids[0],
	<liquid:brass>,
	metalItems.aluminumBrass.liquid.liquids[0]
] as ILiquidStack[];

for castCreationRecipe in castCreationRecipes {
	for castLiquid in castLiquids {
		var liquidAmount = 144;
		if (castLiquid.matches(metalItems.gold.liquid.liquids[0])) {
			liquidAmount = 288;
		}

		mods.tconstruct.Casting.addTableRecipe(castCreationRecipe[0], castCreationRecipe[1], castLiquid, liquidAmount, true);
	}
}

//Spartan Shields
//As long as the metal is in the metals global stuff, this will work without any modifications
var shieldMetals = [
	"bronze",
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
] as string[];

for shieldMetal in shieldMetals {
	var shield as IItemStack = itemUtils.getItemsByRegexRegistryName("^.*spartanshields:shield_basic_" + shieldMetal + ".*$")[0];
	var liquid as ILiquidStack = shieldMetal == "obsidian" ? <liquid:obsidian> : metalItems[shieldMetal].liquid.liquids[0];
	mods.tconstruct.Casting.addTableRecipe(shield, <spartanshields:shield_basic_wood>, liquid, 576, true);
}

mods.tconstruct.Casting.removeTableRecipe(<minecraft:glass_pane>);
mods.tconstruct.Casting.addTableRecipe(<minecraft:glass_pane>, null, <liquid:glass>, 500);

mods.tconstruct.Casting.removeBasinRecipe(<tconstruct:clear_glass>);
mods.tconstruct.Casting.addBasinRecipe(<minecraft:glass>, null, <liquid:glass>, 1000);

//Casting
mods.tconstruct.Casting.addTableRecipe(<minecraft:ender_pearl>, <tconstruct:cast>.withTag({PartType: "tconstruct:pan_head"}), <liquid:ender_pearl>, 250, false);
mods.tconstruct.Casting.addBasinRecipe(<betterwithmods:aesthetic:8>, null, <liquid:ender_pearl>, 2250);

mods.tconstruct.Casting.addTableRecipe(metals.steeleaf.rod.firstItem, <tconstruct:cast>.withTag({PartType: "tconstruct:tool_rod"}), metalItems.steeleaf.liquid.liquids[0], 144, false);

mods.tconstruct.Casting.addTableRecipe(metals.fiery.rod.firstItem, <tconstruct:cast>.withTag({PartType: "tconstruct:tool_rod"}), metalItems.fiery.liquid.liquids[0], 144, false);

//Melting
mods.tconstruct.Melting.addRecipe(<liquid:glass> * 250, <betterwithmods:sand_pile>);
mods.tconstruct.Melting.addRecipe(<liquid:glass> * 250, <quark:glass_shards>);
mods.tconstruct.Melting.addRecipe(<liquid:ender_pearl> * 250, <appliedenergistics2:material:46>);

//New seared stone mechanic
mods.tconstruct.Melting.removeRecipe(<liquid:stone>);

mods.tconstruct.Melting.addRecipe(<liquid:stone> * 72, <tconstruct:soil:0>);
mods.tconstruct.Melting.addRecipe(<liquid:stone> * 72, <tconstruct:materials>);
mods.tconstruct.Melting.addRecipe(<liquid:stone> * 288, <tconstruct:seared:*>);

//Remove Constantan Alloying
mods.tconstruct.Alloy.removeRecipe(metalItems.constantan.liquid.liquids[0]);

//Platinum Ore
mods.tconstruct.Melting.addRecipe(metalItems.platinum.liquid.liquids[0] * 144, <geolosys:cluster:8>);

//Liquid Glowstone
mods.tconstruct.Melting.addRecipe(<liquid:glowstone> * 100, <minecraft:glowstone_dust>);
mods.tconstruct.Melting.addRecipe(<liquid:glowstone> * 400, <minecraft:glowstone>);
mods.tconstruct.Casting.addBasinRecipe(<minecraft:glowstone>, null, <liquid:glowstone>, 400);

//Liquid Redstone
mods.tconstruct.Melting.addRecipe(<liquid:redstone> * 100, <minecraft:redstone>);
mods.tconstruct.Melting.addRecipe(<liquid:redstone> * 900, <minecraft:redstone_block>);

//Redstone Alloy Creation
mods.tconstruct.Alloy.addRecipe(metalItems.redstoneAlloy.liquid.liquids[0] * 288, [<liquid:redstone> * 100, <liquid:glowstone> * 100, metalItems.constantan.liquid.liquids[0] * 144]);

//Redstone Alloy Rod
mods.tconstruct.Casting.addTableRecipe(metals.redstoneAlloy.rod.firstItem, <tconstruct:cast>.withTag({PartType: "tconstruct:tool_rod"}), metalItems.redstoneAlloy.liquid.liquids[0], 144, false);

//Nugget Removal
mods.tconstruct.Casting.removeTableRecipe(<mysticalagriculture:crafting:45>); //Soulium Nugget

//Modularium
mods.tconstruct.Alloy.addRecipe(metalItems.modularium.liquid.liquids[0] * 288, [<liquid:redstone> * 100, metalItems.iron.liquid.liquids[0] * 144, metalItems.dawnstone.liquid.liquids[0] * 144]);
