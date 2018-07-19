/*
	SevTech: Ages Blood Magic Alchemy Array Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/

function init() {
	bloodMagic.removeAlchemyArray(<minecraft:redstone>, <bloodmagic:slate:3>);
	bloodMagic.addAlchemyArray(<bloodmagic:sigil_divination>, <betterwithaddons:tweakmat>, <bloodmagic:slate>);

	bloodMagic.removeAlchemyArray(<bloodmagic:component:8>, <minecraft:diamond_sword>);
	bloodMagic.addAlchemyArray(<bloodmagic:bound_sword>.withTag({Unbreakable: 1 as byte, activated: 0 as byte}), <bloodmagic:component:8>, <minecraft:golden_sword>);

	bloodMagic.removeAlchemyArray(<bloodmagic:component:8>, <minecraft:diamond_pickaxe>);
	bloodMagic.addAlchemyArray(<bloodmagic:bound_pickaxe>.withTag({Unbreakable: 1 as byte, activated: 0 as byte}), <bloodmagic:component:8>, <minecraft:golden_pickaxe>);

	bloodMagic.removeAlchemyArray(<bloodmagic:component:8>, <minecraft:diamond_axe>);
	bloodMagic.addAlchemyArray(<bloodmagic:bound_axe>.withTag({Unbreakable: 1 as byte, activated: 0 as byte}), <bloodmagic:component:8>, <minecraft:golden_axe>);

	bloodMagic.removeAlchemyArray(<bloodmagic:component:8>, <minecraft:diamond_shovel>);
	bloodMagic.addAlchemyArray(<bloodmagic:bound_shovel>.withTag({Unbreakable: 1 as byte, activated: 0 as byte}), <bloodmagic:component:8>, <minecraft:golden_shovel>);

	bloodMagic.removeAlchemyArray(<bloodmagic:component:11>, <bloodmagic:slate:1>);
	bloodMagic.addAlchemyArray(<bloodmagic:sigil_blood_light>, <bloodmagic:component:11>, <bloodmagic:slate:1>);

	bloodMagic.removeAlchemyArray(<bloodmagic:component:27>, <bloodmagic:slate:1>);
	bloodMagic.addAlchemyArray(<bloodmagic:sigil_holding>, <bloodmagic:component:27>, <bloodmagic:slate:1>);
}
