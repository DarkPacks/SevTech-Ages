import crafttweaker.item.IItemStack;

var durabilityArray = {
	<cyclicmagic:sleeping_mat> : 25,

	<primal:sharp_bone> : 135,

	//Bone Tools
	<primal_tech:bone_axe> : 195,
	<primal_tech:bone_pickaxe> : 195,
	<primal_tech:bone_shovel> : 195,
	<primal_tech:bone_sword> : 195,
	<primal_tech:bone_club> : 195,

	//Flint Tools
	<primal:flint_pickaxe> : 140,
	<primal:flint_axe> : 140,
	<primal:flint_shovel> : 140,
	<primal:flint_hatchet> : 100,

	//Wooden Tools
	<minecraft:wooden_sword> : 70,
	<minecraft:wooden_pickaxe> : 70,
	<minecraft:wooden_shovel> : 70,
	<minecraft:wooden_axe> : 70,
	<primal_tech:wood_club> : 70,

	//Stone Tools
	<minecraft:stone_axe> : 225,
	<minecraft:stone_sword> : 225,
	<minecraft:stone_pickaxe> : 225,
	<minecraft:stone_shovel> : 225,
	<primal_tech:stone_club> : 225,

	//Gold Tools
	<minecraft:golden_sword> : 72,
	<minecraft:golden_shovel> : 72,
	<minecraft:golden_pickaxe> : 72,
	<minecraft:golden_axe> : 72,
	<minecraft:golden_hoe> : 72,

	//Gold Armor
	<minecraft:golden_helmet> : 100,
	<minecraft:golden_chestplate> : 165,
	<minecraft:golden_leggings> : 155,
	<minecraft:golden_boots> : 95,

	//Tin
	<embers:pickaxe_tin> : 240,
	<embers:axe_tin> : 240,
	<embers:shovel_tin> : 240,
	<embers:sword_tin> : 240,
	<embers:hoe_tin> : 240,

	//Copper Tools
	<embers:pickaxe_copper> : 340,
	<embers:axe_copper> : 340,
	<embers:shovel_copper> : 340,
	<embers:hoe_copper> : 340,
	<embers:sword_copper> : 340,

	//Iron Tools
	<minecraft:iron_shovel> : 450,
	<minecraft:iron_pickaxe> : 450,
	<minecraft:iron_axe> : 450,
	<minecraft:iron_sword> : 450,
	<minecraft:iron_hoe> : 450,

	//Iron Armor
	<minecraft:iron_helmet> : 275,
	<minecraft:iron_chestplate> : 450,
	<minecraft:iron_leggings> : 425,
	<minecraft:iron_boots> : 250,

	<actuallyadditions:item_helm_quartz> : 115,
	<actuallyadditions:item_chest_quartz> : 165,
	<actuallyadditions:item_pants_quartz> : 155,
	<actuallyadditions:item_boots_quartz> : 105,

	<actuallyadditions:item_pickaxe_quartz> : 275,
	<actuallyadditions:item_sword_quartz> : 275,
	<actuallyadditions:item_axe_quartz> : 275,
	<actuallyadditions:item_shovel_quartz> : 275,
	<actuallyadditions:item_hoe_quartz> : 275,

	//Armor
	<primal:armor_wolf_head> : 140,
	<primal:armor_wolf_body> : 168,
	<primal:armor_wolf_legs> : 160,
	<primal:armor_wolf_feet> : 140,

	<minecraft:leather_helmet> : 75,
	<minecraft:leather_chestplate> : 100,
	<minecraft:leather_leggings> : 95,
	<minecraft:leather_boots> : 75,

	<primal_tech:bone_shears> : 170,
	<primal:iron_workblade> : 650,

	<tcomplement:manyullyn_helmet> : 825,
	<tcomplement:manyullyn_chestplate> : 1350,
	<tcomplement:manyullyn_leggings> : 1275,
	<tcomplement:manyullyn_boots> : 750,



	//Better Builder Wands
	<betterbuilderswands:wandstone> : 650,
	<betterbuilderswands:wandiron> : 1000,
	<betterbuilderswands:wanddiamond> : 3500,

	//Chisel
	<chisel:chisel_iron> : 1500,
	<chisel:chisel_diamond> : 6500,
	<chisel:chisel_hitech> : 12500,

	<pickletweaks:grass_mesh> : 64,

} as int[IItemStack];

for item in durabilityArray {
	item.maxDamage = durabilityArray[item];
}
