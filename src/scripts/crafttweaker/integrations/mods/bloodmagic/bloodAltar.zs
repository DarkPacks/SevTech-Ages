/*
	SevTech: Ages Blood Magic Blood Altar Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/

function init() {
	bloodMagic.removeAltar(<bloodmagic:blood_orb:0>.withTag({orb: "bloodmagic:apprentice"}));
	bloodMagic.addAltar(<bloodmagic:blood_orb:0>.withTag({orb: "bloodmagic:apprentice"}), <abyssalcraft:cpearl:0>, 1, 5000, 5, 5);

	bloodMagic.removeAltar(<bloodmagic:blood_orb:0>.withTag({orb: "bloodmagic:weak"}));
	bloodMagic.addAltar(<bloodmagic:blood_orb:0>.withTag({orb: "bloodmagic:weak"}), <tconstruct:edible:3>, 0, 2000, 2, 1);

	bloodMagic.removeAltar(<bloodmagic:sanguine_book:0>);
	bloodMagic.addAltar(<bloodmagic:sanguine_book:0>, <primal:plant_cloth:0>, 0, 1000, 20, 0);

	bloodMagic.removeAltar(<bloodmagic:dagger_of_sacrifice:0>);
	bloodMagic.addAltar(<bloodmagic:dagger_of_sacrifice:0>, <actuallyadditions:item_sword_quartz:0>, 0, 3000, 5, 5);

	bloodMagic.addAltar(<cyclicmagic:food_step:0>, <minecraft:apple:0>, 0, 1500, 5, 5);
}
