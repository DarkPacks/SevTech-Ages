/*
	SevTech: Ages Durability Modification Script

	This script allows for the modification of an ItemStack's durability.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;

static durabilityMap as int[IItemStack] = {
	<cyclicmagic:sleeping_mat:0>: 25,

	<primal:sharp_bone:0>: 135,

	// Bone Tools
	<primal_tech:bone_axe>: 195,
	<primal_tech:bone_pickaxe>: 195,
	<primal_tech:bone_shovel>: 195,
	<primal_tech:bone_sword>: 195,
	<primal_tech:bone_club>: 195,

	// Flint Tools
	<primal:flint_pickaxe:0>: 140,
	<primal:flint_axe:0>: 140,
	<primal:flint_shovel:0>: 140,
	<primal:flint_hatchet:0>: 100,

	// Wooden Tools
	<minecraft:wooden_sword:0>: 70,
	<minecraft:wooden_pickaxe:0>: 70,
	<minecraft:wooden_shovel:0>: 70,
	<minecraft:wooden_axe:0>: 70,
	<primal_tech:wood_club>: 70,

	// Stone Tools
	<minecraft:stone_axe:0>: 225,
	<minecraft:stone_sword:0>: 225,
	<minecraft:stone_pickaxe:0>: 225,
	<minecraft:stone_shovel:0>: 225,
	<primal_tech:stone_club>: 225,

	// Gold Tools
	<minecraft:golden_sword:0>: 72,
	<minecraft:golden_shovel:0>: 72,
	<minecraft:golden_pickaxe:0>: 72,
	<minecraft:golden_axe:0>: 72,
	<minecraft:golden_hoe:0>: 72,

	// Gold Armor
	<minecraft:golden_helmet:0>: 100,
	<minecraft:golden_chestplate:0>: 165,
	<minecraft:golden_leggings:0>: 155,
	<minecraft:golden_boots:0>: 95,

	// Tin
	// Now for any mod that can provide these tools. GOD DAMNIT
	// pickaxe_tin>: 240,
	// axe_tin>: 240,
	// shovel_tin>: 240,
	// sword_tin>: 240,
	// hoe_tin>: 240,

	// Copper Tools
	// Same as tin. If we can get a mod that adds these tools use the values for them.
	// pickaxe_copper>: 340,
	// axe_copper>: 340,
	// shovel_copper>: 340,
	// hoe_copper>: 340,
	// sword_copper>: 340,

	// Copper Armor
	<contenttweaker:copper_head:0>: 200,
	<contenttweaker:copper_chest:0>: 375,
	<contenttweaker:copper_legs:0>: 350,
	<contenttweaker:copper_feet:0>: 175,

	// Bronze Armor
	<contenttweaker:bronze_head:0>: 275,
	<contenttweaker:bronze_chest:0>: 450,
	<contenttweaker:bronze_legs:0>: 425,
	<contenttweaker:bronze_feet:0>: 250,

	// Iron Tools
	<minecraft:iron_shovel:0>: 450,
	<minecraft:iron_pickaxe:0>: 450,
	<minecraft:iron_axe:0>: 450,
	<minecraft:iron_sword:0>: 450,
	<minecraft:iron_hoe:0>: 450,

	// Iron Armor
	<minecraft:iron_helmet:0>: 275,
	<minecraft:iron_chestplate:0>: 450,
	<minecraft:iron_leggings:0>: 425,
	<minecraft:iron_boots:0>: 250,

	<actuallyadditions:item_helm_quartz:0>: 115,
	<actuallyadditions:item_chest_quartz:0>: 165,
	<actuallyadditions:item_pants_quartz:0>: 155,
	<actuallyadditions:item_boots_quartz:0>: 105,

	<actuallyadditions:item_pickaxe_quartz:0>: 275,
	<actuallyadditions:item_sword_quartz:0>: 275,
	<actuallyadditions:item_axe_quartz:0>: 275,
	<actuallyadditions:item_shovel_quartz:0>: 275,
	<actuallyadditions:item_hoe_quartz:0>: 275,

	// Armor
	<primal:armor_wolf_head:0>: 140,
	<primal:armor_wolf_body:0>: 168,
	<primal:armor_wolf_legs:0>: 160,
	<primal:armor_wolf_feet:0>: 140,

	<minecraft:leather_helmet:0>: 75,
	<minecraft:leather_chestplate:0>: 100,
	<minecraft:leather_leggings:0>: 95,
	<minecraft:leather_boots:0>: 75,

	<primal_tech:bone_shears>: 170,
	<primal:iron_workblade:0>: 650,

	<tcomplement:manyullyn_helmet:0>: 825,
	<tcomplement:manyullyn_chestplate:0>: 1350,
	<tcomplement:manyullyn_leggings:0>: 1275,
	<tcomplement:manyullyn_boots:0>: 750,

	<minecraft:diamond_helmet:0>: 1000,
	<minecraft:diamond_chestplate:0>: 1500,
	<minecraft:diamond_leggings:0>: 1450,
	<minecraft:diamond_boots:0>: 950,

	// Actually Additions
	<actuallyadditions:item_helm_crystal_red:0>: 396,
	<actuallyadditions:item_chest_crystal_red:0>: 576,
	<actuallyadditions:item_pants_crystal_red:0>: 540,
	<actuallyadditions:item_boots_crystal_red:0>: 468,

	<actuallyadditions:item_helm_crystal_blue:0>: 396,
	<actuallyadditions:item_chest_crystal_blue:0>: 576,
	<actuallyadditions:item_pants_crystal_blue:0>: 540,
	<actuallyadditions:item_boots_crystal_blue:0>: 468,

	<actuallyadditions:item_helm_crystal_light_blue:0>: 770,
	<actuallyadditions:item_chest_crystal_light_blue:0>: 1120,
	<actuallyadditions:item_pants_crystal_light_blue:0>: 1050,
	<actuallyadditions:item_boots_crystal_light_blue:0>: 910,

	<actuallyadditions:item_helm_crystal_black:0>: 264,
	<actuallyadditions:item_chest_crystal_black:0>: 384,
	<actuallyadditions:item_pants_crystal_black:0>: 360,
	<actuallyadditions:item_boots_crystal_black:0>: 312,

	<actuallyadditions:item_helm_crystal_green:0>: 1320,
	<actuallyadditions:item_chest_crystal_green:0>: 1920,
	<actuallyadditions:item_pants_crystal_green:0>: 1800,
	<actuallyadditions:item_boots_crystal_green:0>: 1560,

	<actuallyadditions:item_helm_crystal_white:0>: 396,
	<actuallyadditions:item_chest_crystal_white:0>: 576,
	<actuallyadditions:item_pants_crystal_white:0>: 540,
	<actuallyadditions:item_boots_crystal_white:0>: 468,

	// Better Builder Wands
	<betterbuilderswands:wandstone:0>: 650,
	<betterbuilderswands:wandiron:0>: 1000,
	<betterbuilderswands:wanddiamond:0>: 3500,

	// Chisel
	<chisel:chisel_iron:0>: 1500,
	<chisel:chisel_diamond:0>: 6500,
	<chisel:chisel_hitech:0>: 12500,

	<pickletweaks:grass_mesh:0>: 64,

	// Dog Boots
	<animalium:dog_boots:0>: 260,

	<cyclicmagic:ender_dungeon:0>: 1250
};

function init() {
	for item, durability in durabilityMap {
		item.maxDamage = durability;
	}
}
