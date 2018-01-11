// Removes a recipe from the altar recipe registry.
// Removes only the first it finds. Add multiple removeAltarRecipe-calls to remove multiples, if present.
// Parameters:
// OutputStack, AltarLevel to remove the recipe from (0=Luminous CrafingTable, 1=Starlight Crafting Altar, 2=Celestial Altar)
// Example:
// mods.astralsorcery.Altar.removeAltarRecipe(<astralsorcery:blockblackmarble>, 0);


// mods.astralsorcery.Altar.addDiscoveryAltarRecipe(<minecraft:dirt>, 200, 200, [
// <minecraft:grass>, null, <ore:treeLeaves>,
// null, <minecraft:grass>, null,
// <liquid:astralsorcery.liquidstarlight>, null, <ore:treeLeaves>
// ]);

mods.astralsorcery.Altar.removeAltarRecipe(<astralsorcery:blockaltar:1>, 0);

mods.astralsorcery.Altar.addDiscoveryAltarRecipe(<astralsorcery:blockaltar:1>, 200, 1600, [
<astralsorcery:blockmarble:2>, <ore:asCrystal>, <astralsorcery:blockmarble:2>,
<astralsorcery:blockmarble:4>, <ceramics:clay_bucket>.withTag({fluids: {FluidName: "astralsorcery.liquidstarlight", Amount: 1000}}).giveBack(<ceramics:clay_bucket>), <astralsorcery:blockmarble:4>,
<astralsorcery:blockmarble:2>, null, <astralsorcery:blockmarble:2>
]);


mods.astralsorcery.Altar.addDiscoveryAltarRecipe(<astralsorcery:blockaltar:1>, 200, 1600, [
<astralsorcery:blockmarble:2>, <ore:asCrystal>, <astralsorcery:blockmarble:2>,
<astralsorcery:blockmarble:4>, <forge:bucketfilled>.withTag({FluidName: "astralsorcery.liquidstarlight", Amount: 1000}).giveBack(<minecraft:bucket>), <astralsorcery:blockmarble:4>,
<astralsorcery:blockmarble:2>, null, <astralsorcery:blockmarble:2>
]);




//Adds a recipe to the attunement/tier2 altar recipes
// This cannot be shapeless.
// Can accept an ItemStack, OreDicitionary, LiquidStack or null in any slot.
// Formats (just as reminder): (ItemStack should be known), OreDicitionary: <ore:OreDictName>, Liquid: <liquid:LiquidName>
// Output has to be an ItemStack.
// Inputs have to have at least 1 non-null input.
// Arrays are indexed as follows:
//
// [ 9]                [10]
//      [ 0] [ 1] [ 2]
//      [ 3] [ 4] [ 5]
//      [ 6] [ 7] [ 8]
// [11]                [12]
//
// Parameters:
// OutputStack, (int) starlightRequired, (int) craftTickTime, Inputs-Array (*has* to be 13 elements)
// Example:
// mods.astralsorcery.Altar.addAttunmentAltarRecipe(<minecraft:dirt>, 500, 300, [
// null, null, null,
// <ore:treeLeaves>, <astralsorcery:blockmarble:2>, <ore:treeLeaves>,
// null, <liquid:astralsorcery.liquidstarlight>, null,
// <ore:blockMarble>, <ore:blockMarble>, <ore:blockMarble>, <ore:blockMarble>
// ]);

mods.astralsorcery.Altar.addAttunmentAltarRecipe(<astralsorcery:itemusabledust> * 8, 80, 600, [
<betterwithmods:sand_pile>, <astralsorcery:itemcraftingcomponent>, <betterwithmods:sand_pile>,
null, <roots:fairy_dust>, null,
<betterwithmods:sand_pile>, <forge:bucketfilled>.withTag({FluidName: "astralsorcery.liquidstarlight", Amount: 1000}).giveBack(<minecraft:bucket>), <betterwithmods:sand_pile>,
<quark:glass_shards>, <quark:glass_shards>, <quark:glass_shards>, <quark:glass_shards>
]);

mods.astralsorcery.Altar.addAttunmentAltarRecipe(<astralsorcery:blockcustomore:1> * 1, 1400, 600, [
<astralsorcery:itemusabledust>, <astralsorcery:itemcraftingcomponent:2>, <astralsorcery:itemusabledust>,
<minecraft:stone>, <geolosys:cluster:0>, <minecraft:stone>,
<astralsorcery:itemusabledust>, <astralsorcery:itemcraftingcomponent:2>, <astralsorcery:itemusabledust>,
<astralsorcery:itemusabledust:1>, <astralsorcery:itemusabledust:1>, <astralsorcery:itemusabledust:1>, <astralsorcery:itemusabledust:1>
]);

// Adds a light transmutation recipe
// Each input & output item specified *has to have* a block representation or the recipe will be skipped.
// Metadata of the itemstacks is used to determine the blockstate.
// Parameters:
// InputBlock (as itemstack), OutputBlock (as itemstack), chargeUsed (until transmutation is complete)
// Example:
// mods.astralsorcery.LightTransmutation.addTransmutation(<minecraft:grass>, <minecraft:gold_ore>, 10);

mods.astralsorcery.LightTransmutation.removeTransmutation(<astralsorcery:blockcustomore:1>, false);

//Modifies the Altar recipe to use TF and Embers items
mods.astralsorcery.Altar.removeAltarRecipe(<astralsorcery:blockaltar:2>, 1);
mods.astralsorcery.Altar.addAttunmentAltarRecipe(<astralsorcery:blockaltar:2>, 1250, 600, [
<astralsorcery:blockworldilluminator>, <twilightforest:firefly_jar>, <astralsorcery:blockworldilluminator>,
<twilightforest:maze_stone:3>, <ore:asCrystal>, <twilightforest:maze_stone:3>,
<twilightforest:maze_stone:6>, <twilightforest:ironwood_ingot>, <twilightforest:maze_stone:6>,
<embers:aspectus_dawnstone>, <embers:aspectus_dawnstone>, <twilightforest:maze_stone:2>, <twilightforest:maze_stone:2>
]);



//Adds a recipe to the constellation/tier3 altar recipes
// This cannot be shapeless.
// Can accept an ItemStack, OreDicitionary, LiquidStack or null in any slot.
// Formats (just as reminder): (ItemStack should be known), OreDicitionary: <ore:OreDictName>, Liquid: <liquid:LiquidName>
// Output has to be an ItemStack.
// Inputs have to have at least 1 non-null input.
// Arrays are indexed as follows:
//
// [ 9] [13]      [14] [10]
// [15] [ 0] [ 1] [ 2] [16]
//      [ 3] [ 4] [ 5]
// [17] [ 6] [ 7] [ 8] [18]
// [11] [19]      [20] [12]
//
// Parameters:
// OutputStack, (int) starlightRequired, (int) craftTickTime, Inputs-Array (*has* to be 21 elements)
// Example:
// mods.astralsorcery.Altar.addConstellationAltarRecipe(<astralsorcery:itemcraftingcomponent:2>, 2000, 10, [
// <ore:blockMarble>, <astralsorcery:blocklens>, <ore:blockMarble>,
// <ore:blockMarble>, <astralsorcery:itemcraftingcomponent:2>, <ore:blockMarble>,
// <ore:blockMarble>, <minecraft:nether_star>, <ore:blockMarble>,
// null, null, <liquid:astralsorcery.liquidstarlight>, <liquid:astralsorcery.liquidstarlight>,
// <ore:blockMarble>, <ore:blockMarble>,
// <minecraft:nether_star>, <minecraft:nether_star>,
// <minecraft:nether_star>, <minecraft:nether_star>,
// <ore:blockMarble>, <ore:blockMarble>
// ]);


mods.astralsorcery.Altar.addConstellationAltarRecipe(<stevescarts:cartmodule:0>, 3000, 900, [
metals.fiery.gear, <tconstruct:seared_furnace_controller>, metals.fiery.gear,
<minecraft:ghast_tear>, <twilightforest:tower_device:12>, <minecraft:ghast_tear>,
metals.fiery.gear, <betterwithmods:cooking_pot:1>, metals.fiery.gear,
<minecraft:anvil>, <minecraft:anvil>, <ironchest:iron_chest:1>, <ironchest:iron_chest:1>,
<minecraft:sticky_piston>, <minecraft:sticky_piston>,
metals.steeleaf.rod, metals.steeleaf.rod,
metals.steeleaf.rod, metals.steeleaf.rod,
<minecraft:sticky_piston>, <minecraft:sticky_piston>
]);





// Adds a new Infusion recipe to the starlight infusion
// Parameters:
// InputStack, OutputStack, consumeMultiple (true/false), consumptionChance, craftTickTime
// Example:
// mods.astralsorcery.StarlightInfusion.addInfusion(<astralsorcery:itemjournal>, <minecraft:bow>, false, 0.7, 200);
mods.astralsorcery.StarlightInfusion.addInfusion(<actuallyadditions:item_dust:5>, <astralsorcery:itemcraftingcomponent:2>, false, 0.25, 300);
