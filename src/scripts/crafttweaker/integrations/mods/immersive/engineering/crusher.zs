/*
	SevTech: Ages Immersive Engineering Crusher Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/

function init() {
	immersiveEngineering.removeCrusher(<actuallyadditions:item_dust:4>);
	immersiveEngineering.addCrusher(<primal:tannin_ground:0> * 2, <ore:barkWood>, 3000); // Ground Resin from bark
	immersiveEngineering.addCrusher(<betterwithmods:material:3> * 2, <betterwithmods:material:2>, 3000);
	immersiveEngineering.addCrusher(<minecraft:dye:15> * 9, <minecraft:bone_block:0>, 3000);
	immersiveEngineering.addCrusher(<minecraft:sugar:0> * 2, <minecraft:reeds:0>, 3000);
	immersiveEngineering.addCrusher(<betterwithmods:material:15>, <ore:netherrack>, 3000); // Ground netherrack
	immersiveEngineering.addCrusher(<appliedenergistics2:material:8>, <appliedenergistics2:material:7>, 3000); // Fluix dust can be made in immersiveEngineering
	immersiveEngineering.addCrusher(metals.spacePlatinum.dust.firstItem * 2, <ore:oreSpacePlatinum>, 3000); // Osmium ore to dust
	immersiveEngineering.addCrusher(<ore:dustCoal>.firstItem, <ore:coal>, 3000); // Coal to coal dust
	immersiveEngineering.addCrusher(<appliedenergistics2:material:2>, <appliedenergistics2:material:0>, 3000); // Certus Quartz to Certus Dust
	immersiveEngineering.addCrusher(<horsepower:flour:0>, <minecraft:wheat:0>, 3000); // Wheat to Flour
	immersiveEngineering.addCrusher(<primal:bone_knapp:0>, <primal:sharp_bone:0>, 3000); // Sharp Bone to Bone Knapp
	immersiveEngineering.addCrusher(<minecraft:dye:15> * 2, <primal:shark_tooth:0>, 3000); // Sharp Bone to Bone Knapp
	immersiveEngineering.addCrusher(<primal:salt_dust_netjry:0> * 4, <primal:salt_netjry_block:0>, 3000); // Netjry Salt to Netjry Salt
	immersiveEngineering.addCrusher(<primal:salt_dust_rock:0> * 4, <primal:ore_salt:0>, 3000); // Halite Salt Ore to Halite Rock Salt
	immersiveEngineering.addCrusher(<primal:salt_dust_fire:0> * 4, <primal:ore_salt:1>, 3000); // Fire Salt Ore to Fire Rock Salt
	immersiveEngineering.addCrusher(<betterwithmods:material:37>, <minecraft:coal:1>, 3000); // Charcoal to Dust
	immersiveEngineering.addCrusher(<ore:dustSalt>.firstItem * 4, <mekanism:saltblock:0>, 3000); // Salt Block -> Dust
	immersiveEngineering.addCrusher(<minecraft:diamond:0> * 9, <minecraft:diamond_block:0>, 3000); // Diamond Block -> Diamonds
	immersiveEngineering.addCrusher(<minecraft:dye:4> * 9, <minecraft:lapis_block:0>, 3000); // Lapis Block -> Lapis
	immersiveEngineering.addCrusher(<minecraft:redstone:0> * 9, <minecraft:redstone_block:0>, 3000); // Redstone Block -> Redstone
	immersiveEngineering.addCrusher(<minecraft:emerald:0> * 9, <minecraft:emerald_block:0>, 3000); // Emerald Block -> Emerald
	immersiveEngineering.addCrusher(<minecraft:dye:15> * 3, <death_compass:death_compass>.withTag({}), 3000); // Death Compass -> Bone Meal

	// Remove wool -> minecraft dye and string.
	immersiveEngineering.removeCrusher(<minecraft:string:0>);

	immersiveEngineering.removeCrusher(<primal:quartz_vitrified:0>);
}
