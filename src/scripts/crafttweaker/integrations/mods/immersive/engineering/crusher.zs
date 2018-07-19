/*
	SevTech: Ages Immersive Engineering Crusher Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/

function init() {
	immersiveEngineering.removeCrusher(<actuallyadditions:item_dust:4>);
	immersiveEngineering.addCrusher(<primal:tannin_ground> * 2, <ore:barkWood>, 3000); // Ground Resin from bark
	immersiveEngineering.addCrusher(<betterwithmods:material:3> * 2, <betterwithmods:material:2>, 3000);
	immersiveEngineering.addCrusher(<minecraft:dye:15> * 9, <minecraft:bone_block>, 3000);
	immersiveEngineering.addCrusher(<minecraft:sugar> * 2, <minecraft:reeds>, 3000);
	immersiveEngineering.addCrusher(<betterwithmods:material:15>, <minecraft:netherrack>, 3000); // Ground netherrack
	immersiveEngineering.addCrusher(<appliedenergistics2:material:8>, <appliedenergistics2:material:7>, 3000); // Fluix dust can be made in immersiveEngineering
	immersiveEngineering.addCrusher(metals.spacePlatinum.dust.firstItem * 2, <ore:oreSpacePlatinum>, 3000); // Osmium ore to dust
	immersiveEngineering.addCrusher(<ore:dustCoal>.firstItem, <ore:coal>, 3000); // Coal to coal dust
	immersiveEngineering.addCrusher(<appliedenergistics2:material:2>, <appliedenergistics2:material>, 3000); // Certus Quartz to Certus Dust
	immersiveEngineering.addCrusher(<horsepower:flour>, <minecraft:wheat>, 3000); // Wheat to Flour
	immersiveEngineering.addCrusher(<primal:bone_knapp>, <primal:sharp_bone>, 3000); // Sharp Bone to Bone Knapp
	immersiveEngineering.addCrusher(<minecraft:dye:15> * 2, <primal:shark_tooth>, 3000); // Sharp Bone to Bone Knapp
	immersiveEngineering.addCrusher(<primal:salt_dust_netjry> * 4, <primal:salt_netjry_block>, 3000); // Netjry Salt to Netjry Salt
	immersiveEngineering.addCrusher(<primal:salt_dust_rock> * 4, <primal:ore_salt>, 3000); // Halite Salt Ore to Halite Rock Salt
	immersiveEngineering.addCrusher(<primal:salt_dust_fire> * 4, <primal:ore_salt:1>, 3000); // Fire Salt Ore to Fire Rock Salt
	immersiveEngineering.addCrusher(<betterwithmods:material:37>, <minecraft:coal:1>, 3000); // Charcoal to Dust
	immersiveEngineering.addCrusher(<ore:dustSalt>.firstItem * 4, <mekanism:saltblock>, 3000); // Salt Block -> Dust
	immersiveEngineering.addCrusher(<minecraft:diamond> * 9, <minecraft:diamond_block>, 3000); // Diamond Block -> Diamonds
	immersiveEngineering.addCrusher(<minecraft:dye:4> * 9, <minecraft:lapis_block>, 3000); // Lapis Block -> Lapis
	immersiveEngineering.addCrusher(<minecraft:redstone> * 9, <minecraft:redstone_block>, 3000); // Redstone Block -> Redstone
	immersiveEngineering.addCrusher(<minecraft:emerald> * 9, <minecraft:emerald_block>, 3000); // Emerald Block -> Emerald
}
