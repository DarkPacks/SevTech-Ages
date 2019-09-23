/*
	SevTech: Ages Blood Magic Tartaric Forge Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import mods.bloodmagic.TartaricForge;

function init() {
	TartaricForge.removeRecipe([<minecraft:redstone:0>, <pickletweaks:dye_powder:0>, <minecraft:gunpowder:0>, <minecraft:coal:*>]);
	TartaricForge.addRecipe(
		<bloodmagic:arcane_ashes:0>,
		[<betterwithaddons:tweakmat:0>, <minecraft:gunpowder:0>, <pickletweaks:dye_powder:0>, <minecraft:coal:1>],
		0, 0
	);

	TartaricForge.removeRecipe([<minecraft:glowstone:0>, <minecraft:torch:0>, <minecraft:redstone:0>, <minecraft:redstone:0>]);
	TartaricForge.addRecipe(
		<bloodmagic:component:11>,
		[<betterwithmods:candle:*>, <minecraft:torch:0>, <betterwithaddons:tweakmat:0>, <betterwithaddons:tweakmat:0>],
		200, 10
	);

	TartaricForge.removeRecipe([<minecraft:ice:0>, <minecraft:snowball:0>, <minecraft:snowball:0>, <minecraft:redstone:0>]);
	TartaricForge.addRecipe(
		<bloodmagic:component:32>,
		[<minecraft:snow:0>, <minecraft:snowball:0>, <minecraft:snowball:0>, <betterwithaddons:tweakmat:0>],
		80, 10
	);

	TartaricForge.removeRecipe([<bloodmagic:teleposer:0>, <minecraft:diamond:0>, <minecraft:ender_pearl:0>, <minecraft:obsidian:0>]);
	TartaricForge.addRecipe(
		<bloodmagic:component:18>,
		[<bloodmagic:teleposer:0>, metals.platinum.ingot, <minecraft:ender_pearl:0>, <minecraft:obsidian:0>],
		1500, 200
	);

	TartaricForge.removeRecipe([<minecraft:iron_block:0>, <minecraft:diamond:0>, <bloodmagic:slate:2>]);
	TartaricForge.addRecipe(
		<bloodmagic:master_routing_node:0>,
		[metals.iron.block, metals.platinum.ingot, <bloodmagic:slate:2>],
		400, 200
	);

	TartaricForge.removeRecipe([<minecraft:diamond_chestplate:0>, <bloodmagic:soul_gem:1>, <minecraft:iron_block:0>, <minecraft:obsidian:0>]);
	TartaricForge.addRecipe(
		<bloodmagic:sentient_armour_gem:0>,
		[<minecraft:golden_chestplate:0>, <bloodmagic:soul_gem:1>, metals.iron.block, <minecraft:obsidian:0>],
		240, 150
	);

	TartaricForge.removeRecipe([<minecraft:ghast_tear:0>, <minecraft:feather:0>, <minecraft:feather:0>]);
	TartaricForge.addRecipe(
		<bloodmagic:component:2>,
		[<minecraft:ghast_tear:0>, <twilightforest:raven_feather:0>, <twilightforest:raven_feather:0>, <minecraft:elytra:0>],
		128, 20
	);

	TartaricForge.removeRecipe([<bloodmagic:soul_forge:0>, <minecraft:stone:0>, <minecraft:dye:4>, <minecraft:glass:0>]);
	TartaricForge.addRecipe(
		<bloodmagic:demon_crystallizer:0>,
		[<bloodmagic:soul_forge:0>, <ore:stone>, metals.manyullyn.ingot, <ore:blockGlass>],
		500, 100
	);

	TartaricForge.removeRecipe([<bloodmagic:soul_gem:0>, <minecraft:diamond:0>, <minecraft:redstone_block:0>, <minecraft:lapis_block:0>]);
	TartaricForge.addRecipe(
		<bloodmagic:soul_gem:1>,
		[<bloodmagic:soul_gem:0>, <abyssalcraft:shadowshard:0>, metals.bronze.ingot, <minecraft:fermented_spider_eye:0>],
		60, 20
	);

	TartaricForge.removeRecipe([<bloodmagic:soul_gem:1>, <minecraft:diamond:0>, <minecraft:gold_block:0>, <bloodmagic:slate:2>]);
	TartaricForge.addRecipe(
		<bloodmagic:soul_gem:2>,
		[<bloodmagic:soul_gem:1>, <abyssalcraft:shadowgem:0>, metals.gold.block, <bloodmagic:slate:2>],
		240, 50
	);

	TartaricForge.removeRecipe([<minecraft:stick:0>, <bloodmagic:slate:1>, <minecraft:dye:4>, <minecraft:dye:4>]);
	TartaricForge.addRecipe(
		<bloodmagic:node_router:0>,
		[<ore:stickWood>, <bloodmagic:slate:1>, <minecraft:dye:4>, <minecraft:blaze_rod:0>],
		400, 5
	);

	TartaricForge.removeRecipe([<minecraft:cauldron:0>, <minecraft:stone:0>, <minecraft:dye:4>, <minecraft:diamond:0>]);
	TartaricForge.addRecipe(
		<bloodmagic:demon_crucible:0>,
		[<minecraft:cauldron:0>, <ore:stone>, <minecraft:dye:4>, metals.platinum.ingot],
		400, 5
	);

	TartaricForge.removeRecipe([<minecraft:glass:0>, <minecraft:stone:0>, <bloodmagic:slate:0>]);
	TartaricForge.addRecipe(
		<bloodmagic:component:10>,
		[<ore:blockGlass>, <bloodmagic:slate:0>, <minecraft:dye:4>, metals.silver.ingot],
		400, 10
	);

	TartaricForge.removeRecipe([<minecraft:redstone:0>, <minecraft:gold_ingot:0>, <minecraft:glass:0>, <pickletweaks:dye_powder:11>]);
	TartaricForge.addRecipe(
		<bloodmagic:soul_gem:0>,
		[<betterwithaddons:tweakmat:0>, metals.bronze.ingot, <pickletweaks:dye_powder:11>, <abyssalcraft:shadowfragment:0>],
		1, 1
	);

	TartaricForge.addRecipe(
		<astralsorcery:itemcraftingcomponent:2>,
		[<extendedcrafting:material:0>, <astralsorcery:itemrockcrystalsimple:0>, <appliedenergistics2:material:46>, <minecraft:dye:4>],
		100, 20
	);

	TartaricForge.addRecipe(
		<bloodmagic:sentient_sword:0>,
		[<bloodmagic:soul_gem:0>, <actuallyadditions:item_sword_quartz:0>],
		0, 0
	);
}
