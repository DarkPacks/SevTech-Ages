import mods.astralsorcery.Altar;
import mods.astralsorcery.LightTransmutation;
import mods.astralsorcery.StarlightInfusion;

/*
	Altar

	http://crafttweaker.readthedocs.io/en/latest/#Mods/Astral_Sorcery/Altar/
*/
//=======================================
//Discovery
Altar.removeAltarRecipe(<astralsorcery:blockaltar:1>, 0);

Altar.addDiscoveryAltarRecipe(<astralsorcery:blockaltar:1>, 200, 1600, [
	<astralsorcery:blockmarble:2>, <ore:asCrystal>, <astralsorcery:blockmarble:2>,
	<astralsorcery:blockmarble:4>, scripts.crafting_utils.getBucketIngredient(<liquid:astralsorcery.liquidstarlight>), <astralsorcery:blockmarble:4>,
	<astralsorcery:blockmarble:2>, null, <astralsorcery:blockmarble:2>
]);

//=======================================
//Attunement
Altar.addAttunmentAltarRecipe(<astralsorcery:itemusabledust> * 8, 80, 600, [
	<betterwithmods:sand_pile>, <astralsorcery:itemcraftingcomponent>, <betterwithmods:sand_pile>,
	null, <minecraft:gunpowder>, null,
	<betterwithmods:sand_pile>, null, <betterwithmods:sand_pile>,
	<quark:glass_shards>, <quark:glass_shards>, <quark:glass_shards>, <quark:glass_shards>
]);

Altar.addAttunmentAltarRecipe(<astralsorcery:blockcustomore:1> * 1, 1400, 600, [
	<astralsorcery:itemusabledust>, <astralsorcery:itemcraftingcomponent:2>, <astralsorcery:itemusabledust>,
	<minecraft:stone>, <geolosys:cluster:0>, <minecraft:stone>,
	<astralsorcery:itemusabledust>, <astralsorcery:itemcraftingcomponent:2>, <astralsorcery:itemusabledust>,
	<astralsorcery:itemusabledust:1>, <astralsorcery:itemusabledust:1>, <astralsorcery:itemusabledust:1>, <astralsorcery:itemusabledust:1>
]);

//Conversion Wand
Altar.removeAltarRecipe(<astralsorcery:itemexchangewand>, 1);
Altar.addAttunmentAltarRecipe(<astralsorcery:itemexchangewand> * 1, 600, 180, [
	null, <astralsorcery:itemcraftingcomponent:2>, <thebetweenlands:crimson_middle_gem>,
	<minecraft:diamond>, <astralsorcery:blockmarble:6>, null,
	<astralsorcery:blockmarble:6>, null, null,
	null, null, <astralsorcery:blockmarble:6>, null
]);

//Modifies the Altar recipe to use TF items
Altar.removeAltarRecipe(<astralsorcery:blockaltar:2>, 1);
Altar.addAttunmentAltarRecipe(<astralsorcery:blockaltar:2>, 1250, 600, [
	<astralsorcery:blockworldilluminator>, <twilightforest:firefly_jar>, <astralsorcery:blockworldilluminator>,
	<twilightforest:maze_stone:3>, <ore:asCrystal>, <twilightforest:maze_stone:3>,
	<twilightforest:maze_stone:6>, <twilightforest:ironwood_ingot>, <twilightforest:maze_stone:6>,
	<twilightforest:liveroot>, <twilightforest:liveroot>, <twilightforest:maze_stone:2>, <twilightforest:maze_stone:2>
]);

//=======================================
//Constellation
Altar.addConstellationAltarRecipe(<stevescarts:cartmodule:0>, 3000, 900, [
	metals.fiery.gear, <tconstruct:seared_furnace_controller>, metals.fiery.gear,
	<minecraft:ghast_tear>, <twilightforest:tower_device:12>, <minecraft:ghast_tear>,
	metals.fiery.gear, <betterwithmods:cooking_pot:1>, metals.fiery.gear,
	<minecraft:anvil>, <minecraft:anvil>, <ironchest:iron_chest:1>, <ironchest:iron_chest:1>,
	<minecraft:sticky_piston>, <minecraft:sticky_piston>,
	metals.steeleaf.rod, metals.steeleaf.rod,
	metals.steeleaf.rod, metals.steeleaf.rod,
	<minecraft:sticky_piston>, <minecraft:sticky_piston>
]);

//=======================================
// Trait
Altar.removeAltarRecipe(<astralsorcery:blockchalice>, 3);
Altar.addTraitAltarRecipe(<astralsorcery:blockchalice>, 5500, 700, [
	// 0-2
	null, null, null,
	// 3-5
	null, null, null,
	// 6-8
	null, <astralsorcery:itemcraftingcomponent:1>, null,
	// 9-12
	null, null, null, null,
	// 13-14
	metals.platinum.ingot, metals.platinum.ingot,
	// 15-18
	null, null, null, null,
	// 19-20
	metals.platinum.ingot, metals.platinum.ingot,
	// 21-22
	<astralsorcery:itemcraftingcomponent:1>, <astralsorcery:itemcraftingcomponent:4>,
	// 23-24
	<astralsorcery:itemcraftingcomponent:4>, <astralsorcery:blockblackmarble>,
	// Outer Items, indices 25+
	<astralsorcery:itemcraftingcomponent>, <astralsorcery:itemcraftingcomponent>,
	<astralsorcery:itemcraftingcomponent>, <astralsorcery:itemcraftingcomponent>,
	<astralsorcery:itemcraftingcomponent>
]);

/*
	Starlight Infusion

	http://crafttweaker.readthedocs.io/en/latest/#Mods/Astral_Sorcery/Infusion/
*/
StarlightInfusion.removeInfusion(<astralsorcery:itemchargedcrystalpickaxe>);

StarlightInfusion.addInfusion(<actuallyadditions:item_dust:5>, <astralsorcery:itemcraftingcomponent:2>, false, 0.25, 300);

/*
	Starlight Transmutation

	https://crafttweaker.readthedocs.io/en/latest/#Mods/Astral_Sorcery/Transmutation/
*/

LightTransmutation.addTransmutation(<extraplanets:kepler22b:2>, <mysticalagriculture:inferium_ore>, 1000);
LightTransmutation.addTransmutation(<extraplanets:kepler22b:4>, <mysticalagriculture:prosperity_ore>, 1000);
