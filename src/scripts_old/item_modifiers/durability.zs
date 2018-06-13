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
	//Now for any mod that can provide these tools. GOD DAMNIT
	//pickaxe_tin> : 240,
	//axe_tin> : 240,
	//shovel_tin> : 240,
	//sword_tin> : 240,
	//hoe_tin> : 240,

	//Copper Tools
	//Same as tin. If we can get a mod that adds these tools use the values for them.
	//pickaxe_copper> : 340,
	//axe_copper> : 340,
	//shovel_copper> : 340,
	//hoe_copper> : 340,
	//sword_copper> : 340,

	//Copper Armor
	<contenttweaker:copper_head> : 200,
	<contenttweaker:copper_chest> : 375,
	<contenttweaker:copper_legs> : 350,
	<contenttweaker:copper_feet> : 175,

	//Bronze Armor
	<contenttweaker:bronze_head> : 275,
	<contenttweaker:bronze_chest> : 450,
	<contenttweaker:bronze_legs> : 425,
	<contenttweaker:bronze_feet> : 250,

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

	<minecraft:diamond_helmet> : 1000,
	<minecraft:diamond_chestplate> : 1500,
	<minecraft:diamond_leggings> : 1450,
	<minecraft:diamond_boots> : 950,

	//Actually Additions
	<actuallyadditions:item_helm_crystal_red> : 396,
	<actuallyadditions:item_chest_crystal_red> : 576,
	<actuallyadditions:item_pants_crystal_red> : 540,
	<actuallyadditions:item_boots_crystal_red> : 468,

	<actuallyadditions:item_helm_crystal_blue> : 396,
	<actuallyadditions:item_chest_crystal_blue> : 576,
	<actuallyadditions:item_pants_crystal_blue> : 540,
	<actuallyadditions:item_boots_crystal_blue> : 468,

	<actuallyadditions:item_helm_crystal_light_blue> : 770,
	<actuallyadditions:item_chest_crystal_light_blue> : 1120,
	<actuallyadditions:item_pants_crystal_light_blue> : 1050,
	<actuallyadditions:item_boots_crystal_light_blue> : 910,

	<actuallyadditions:item_helm_crystal_black> : 264,
	<actuallyadditions:item_chest_crystal_black> : 384,
	<actuallyadditions:item_pants_crystal_black> : 360,
	<actuallyadditions:item_boots_crystal_black> : 312,

	<actuallyadditions:item_helm_crystal_green> : 1320,
	<actuallyadditions:item_chest_crystal_green> : 1920,
	<actuallyadditions:item_pants_crystal_green> : 1800,
	<actuallyadditions:item_boots_crystal_green> : 1560,

	<actuallyadditions:item_helm_crystal_white> : 396,
	<actuallyadditions:item_chest_crystal_white> : 576,
	<actuallyadditions:item_pants_crystal_white> : 540,
	<actuallyadditions:item_boots_crystal_white> : 468,

	//Better Builder Wands
	<betterbuilderswands:wandstone> : 650,
	<betterbuilderswands:wandiron> : 1000,
	<betterbuilderswands:wanddiamond> : 3500,

	//Chisel
	<chisel:chisel_iron> : 1500,
	<chisel:chisel_diamond> : 6500,
	<chisel:chisel_hitech> : 12500,

	<pickletweaks:grass_mesh> : 64,

	// Dog Boots
	<animalium:dog_boots>: 260,

	<cyclicmagic:ender_dungeon>: 1250

} as int[IItemStack];

for item in durabilityArray {
	item.maxDamage = durabilityArray[item];
}
