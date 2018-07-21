/*
	SevTech: Ages Astral Sorcery Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import mods.astralsorcery.Altar;
import mods.astralsorcery.LightTransmutation;
import mods.astralsorcery.StarlightInfusion;

import scripts.crafttweaker.craftingUtils;

function init() {
	/*
		Altar

		http://crafttweaker.readthedocs.io/en/latest/#Mods/Astral_Sorcery/Altar/
	*/

	// =======================================
	// Discovery
	Altar.removeAltarRecipe(<astralsorcery:blockaltar:1>, 0);

	Altar.addDiscoveryAltarRecipe(<astralsorcery:blockaltar:1>, 200, 1600, [
		<astralsorcery:blockmarble:2>, <ore:asCrystal>, <astralsorcery:blockmarble:2>,
		<astralsorcery:blockmarble:4>, craftingUtils.getBucketIngredient(<liquid:astralsorcery.liquidstarlight>), <astralsorcery:blockmarble:4>,
		<astralsorcery:blockmarble:2>, null, <astralsorcery:blockmarble:2>
	]);

	// =======================================
	// Attunement
	Altar.addAttunmentAltarRecipe(<astralsorcery:itemusabledust:0> * 8, 80, 600, [
		<betterwithmods:sand_pile:0>, <astralsorcery:itemcraftingcomponent:0>, <betterwithmods:sand_pile:0>,
		null, <minecraft:gunpowder:0>, null,
		<betterwithmods:sand_pile:0>, null, <betterwithmods:sand_pile:0>,
		<quark:glass_shards:0>, <quark:glass_shards:0>, <quark:glass_shards:0>, <quark:glass_shards:0>
	]);

	Altar.addAttunmentAltarRecipe(<astralsorcery:blockcustomore:1> * 1, 1400, 600, [
		<astralsorcery:itemusabledust:0>, <astralsorcery:itemcraftingcomponent:2>, <astralsorcery:itemusabledust:0>,
		<minecraft:stone:0>, <geolosys:cluster:0>, <minecraft:stone:0>,
		<astralsorcery:itemusabledust:0>, <astralsorcery:itemcraftingcomponent:2>, <astralsorcery:itemusabledust:0>,
		<astralsorcery:itemusabledust:1>, <astralsorcery:itemusabledust:1>, <astralsorcery:itemusabledust:1>, <astralsorcery:itemusabledust:1>
	]);

	// Conversion Wand
	Altar.removeAltarRecipe(<astralsorcery:itemexchangewand:0>, 1);
	Altar.addAttunmentAltarRecipe(<astralsorcery:itemexchangewand:0> * 1, 600, 180, [
		null, <astralsorcery:itemcraftingcomponent:2>, <thebetweenlands:crimson_middle_gem:0>,
		<minecraft:diamond:0>, <astralsorcery:blockmarble:6>, null,
		<astralsorcery:blockmarble:6>, null, null,
		null, null, <astralsorcery:blockmarble:6>, null
	]);

	// Modifies the Altar recipe to use TF items
	Altar.removeAltarRecipe(<astralsorcery:blockaltar:2>, 1);
	Altar.addAttunmentAltarRecipe(<astralsorcery:blockaltar:2>, 1250, 600, [
		<astralsorcery:blockworldilluminator:0>, <twilightforest:firefly_jar:0>, <astralsorcery:blockworldilluminator:0>,
		<twilightforest:maze_stone:3>, <ore:asCrystal>, <twilightforest:maze_stone:3>,
		<twilightforest:maze_stone:6>, <twilightforest:ironwood_ingot:0>, <twilightforest:maze_stone:6>,
		<twilightforest:liveroot:0>, <twilightforest:liveroot:0>, <twilightforest:maze_stone:2>, <twilightforest:maze_stone:2>
	]);

	// =======================================
	// Constellation
	Altar.addConstellationAltarRecipe(<stevescarts:cartmodule:0>, 3000, 900, [
		metals.fiery.gear, <tconstruct:seared_furnace_controller:0>, metals.fiery.gear,
		<minecraft:ghast_tear:0>, <twilightforest:tower_device:12>, <minecraft:ghast_tear:0>,
		metals.fiery.gear, <betterwithmods:cooking_pot:1>, metals.fiery.gear,
		<minecraft:anvil:0>, <minecraft:anvil:0>, <ironchest:iron_chest:1>, <ironchest:iron_chest:1>,
		<minecraft:sticky_piston:0>, <minecraft:sticky_piston:0>,
		metals.steeleaf.rod, metals.steeleaf.rod,
		metals.steeleaf.rod, metals.steeleaf.rod,
		<minecraft:sticky_piston:0>, <minecraft:sticky_piston:0>
	]);

	// =======================================
	// Trait
	Altar.removeAltarRecipe(<astralsorcery:blockchalice:0>, 3);
	Altar.addTraitAltarRecipe(<astralsorcery:blockchalice:0>, 5500, 700, [
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
		<astralsorcery:itemcraftingcomponent:4>, <astralsorcery:blockblackmarble:0>,
		// Outer Items, indices 25+
		<astralsorcery:itemcraftingcomponent:0>, <astralsorcery:itemcraftingcomponent:0>,
		<astralsorcery:itemcraftingcomponent:0>, <astralsorcery:itemcraftingcomponent:0>,
		<astralsorcery:itemcraftingcomponent:0>
	]);

	/*
		Starlight Infusion

		http://crafttweaker.readthedocs.io/en/latest/#Mods/Astral_Sorcery/Infusion/
	*/
	StarlightInfusion.removeInfusion(<astralsorcery:itemchargedcrystalpickaxe:0>);

	StarlightInfusion.addInfusion(<actuallyadditions:item_dust:5>, <astralsorcery:itemcraftingcomponent:2>, false, 0.25, 300);

	/*
		Starlight Transmutation

		https://crafttweaker.readthedocs.io/en/latest/#Mods/Astral_Sorcery/Transmutation/
	*/
	LightTransmutation.addTransmutation(<extraplanets:kepler22b:2>, <mysticalagriculture:inferium_ore:0>, 1000);
	LightTransmutation.addTransmutation(<extraplanets:kepler22b:4>, <mysticalagriculture:prosperity_ore:0>, 1000);
}
