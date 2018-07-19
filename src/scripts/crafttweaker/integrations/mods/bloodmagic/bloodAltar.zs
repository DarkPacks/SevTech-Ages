/*
	SevTech: Ages Blood Magic Blood Altar Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/

function init() {
	bloodMagic.removeAltar(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:apprentice"}));
	bloodMagic.addAltar(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:apprentice"}), <abyssalcraft:cpearl>, 1, 5000, 5, 5);

	bloodMagic.removeAltar(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"}));
	bloodMagic.addAltar(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"}), <tconstruct:edible:3>, 0, 2000, 2, 1);

	bloodMagic.removeAltar(<bloodmagic:sanguine_book>);
	bloodMagic.addAltar(<bloodmagic:sanguine_book>, <primal:plant_cloth>, 0, 1000, 20, 0);

	bloodMagic.removeAltar(<bloodmagic:dagger_of_sacrifice>);
	bloodMagic.addAltar(<bloodmagic:dagger_of_sacrifice>, <actuallyadditions:item_sword_quartz>, 0, 3000, 5, 5);

	bloodMagic.addAltar(<cyclicmagic:food_step>, <minecraft:apple>, 0, 1500, 5, 5);
}
