/*
	SevTech: Ages Blood Magic Alchemy Array Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/

function init() {
	bloodMagic.removeAlchemyArray(<minecraft:redstone:0>, <bloodmagic:slate:3>);
	bloodMagic.addAlchemyArray(<bloodmagic:sigil_divination:0>, <betterwithaddons:tweakmat:0>, <bloodmagic:slate:0>);

	bloodMagic.removeAlchemyArray(<bloodmagic:component:8>, <minecraft:diamond_sword:0>);
	bloodMagic.addAlchemyArray(<bloodmagic:bound_sword:0>.withTag({Unbreakable: 1 as byte, activated: 0 as byte}), <bloodmagic:component:8>, <minecraft:golden_sword:0>);

	bloodMagic.removeAlchemyArray(<bloodmagic:component:8>, <minecraft:diamond_pickaxe:0>);
	bloodMagic.addAlchemyArray(<bloodmagic:bound_pickaxe:0>.withTag({Unbreakable: 1 as byte, activated: 0 as byte}), <bloodmagic:component:8>, <minecraft:golden_pickaxe:0>);

	bloodMagic.removeAlchemyArray(<bloodmagic:component:8>, <minecraft:diamond_axe:0>);
	bloodMagic.addAlchemyArray(<bloodmagic:bound_axe:0>.withTag({Unbreakable: 1 as byte, activated: 0 as byte}), <bloodmagic:component:8>, <minecraft:golden_axe:0>);

	bloodMagic.removeAlchemyArray(<bloodmagic:component:8>, <minecraft:diamond_shovel:0>);
	bloodMagic.addAlchemyArray(<bloodmagic:bound_shovel:0>.withTag({Unbreakable: 1 as byte, activated: 0 as byte}), <bloodmagic:component:8>, <minecraft:golden_shovel:0>);

	bloodMagic.removeAlchemyArray(<bloodmagic:component:11>, <bloodmagic:slate:1>);
	bloodMagic.addAlchemyArray(<bloodmagic:sigil_blood_light:0>, <bloodmagic:component:11>, <bloodmagic:slate:1>);

	bloodMagic.removeAlchemyArray(<bloodmagic:component:27>, <bloodmagic:slate:1>);
	bloodMagic.addAlchemyArray(<bloodmagic:sigil_holding:0>, <bloodmagic:component:27>, <bloodmagic:slate:1>);
}
