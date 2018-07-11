#priority -2

import crafttweaker.item.IItemStack;

var removeItems as IItemStack[] = [
	<betterbuilderswands:wandstone>,
	<bibliocraft:plumbline>,
	<dungpipe:dung_pipe>,
	<dungpipe:sewer_pipe>,
	<huntingdim:frame>,
	<immersiveengineering:tool>,
	<primal_tech:leaf_bed>,
	<primal_tech:stone_anvil>,
	<progressiontweaks:blank_teleporter>, //Beneath Porter Recipe
	<progressiontweaks:unfired_clay_bowl>,
	<prospectors:prospector_lowest>, //Prospector
	<tconstruct:book>,
	<tconstruct:stone_stick>,
	<tconstruct:stone_torch>,

	//Water Strain
	<waterstrainer:bait_pot>,

	//Blood Magic
	<bloodmagic:altar>,
	<bloodmagic:blood_rune:3>,
	<bloodmagic:blood_rune:4>,
	<bloodmagic:sacrificial_dagger>,
	<bloodmagic:soul_forge>,
	<bloodmagic:soul_snare>,

	//GuideAPI
	<guideapi:bloodmagic-guide>,
	<guideapi:cyclicmagic-guide>,

	//Chisel & Bits
	<chiselsandbits:bittank>,
	<chiselsandbits:chisel_iron>,

	<geolosys:field_manual>,
	<quark:trowel>,
	<farmingforblockheads:market>
];

for item in removeItems {
	recipes.remove(item);
}
