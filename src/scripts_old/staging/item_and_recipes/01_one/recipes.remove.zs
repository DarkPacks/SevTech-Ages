#priority -2

import crafttweaker.item.IItemStack;

var removeItems as IItemStack[] = [
	<betterbuilderswands:wandstone>,
	<bibliocraft:plumbline>,
	<cyclicmagic:ender_torch>,
	<cyclicmagic:food_step>,
	<dungpipe:dung_pipe>,
	<dungpipe:sewer_pipe>,
	<huntingdim:frame>,
	<immersiveengineering:tool>,
	<minecraft:crafting_table>,
	<minecraft:ladder>,
	<minecraft:torch>,
	<primal_tech:leaf_bed>,
	<primal_tech:stone_anvil>,
	<progressiontweaks:blank_teleporter>, //Beneath Porter Recipe
	<progressiontweaks:unfired_clay_bowl>,
	<prospectors:prospector_lowest>, //Prospector

	//Better With Mods
	<betterwithaddons:aqueduct:0>,
	<betterwithaddons:aqueduct:1>,
	<betterwithaddons:aqueduct:2>,
	<betterwithaddons:aqueduct:3>,
	<betterwithaddons:aqueduct:4>,
	<betterwithaddons:aqueduct:5>,
	<betterwithaddons:aqueduct:6>,
	<betterwithaddons:aqueduct:7>,
	<betterwithaddons:aqueduct:8>,
	<betterwithaddons:aqueduct:9>,
	<betterwithaddons:aqueduct:10>,
	<betterwithmods:axle_generator:1>,
	<betterwithmods:cooking_pot:1>,
	<betterwithmods:material:10>,
	<betterwithmods:material:24>,
	<betterwithmods:rope>,
	<betterwithmods:saw>,
	<betterwithmods:single_machine:3>,
	<betterwithmods:wooden_axle>,
	<betterwithmods:wooden_gearbox>,

	//Abyssalcraft for Stage1
	<abyssalcraft:charm>,
	<abyssalcraft:decorativestatue:1>,
	<abyssalcraft:decorativestatue:2>,
	<abyssalcraft:decorativestatue:3>,
	<abyssalcraft:decorativestatue:4>,
	<abyssalcraft:decorativestatue:5>,
	<abyssalcraft:decorativestatue:6>,
	<abyssalcraft:decorativestatue>,
	<abyssalcraft:necronomicon>,
	<abyssalcraft:shadowfragment>,
	<abyssalcraft:shadowgem>,
	<abyssalcraft:shadowshard>,

	//Tinkers'
	<tcomplement:melter:8>,
	<tcomplement:melter>,
	<tcomplement:porcelain_melter:8>,
	<tcomplement:porcelain_melter>,
	<tconstruct:book>,
	<tconstruct:stone_stick>,
	<tconstruct:stone_torch>,

	//BWM changes
	<betterwithmods:bellows>,
	<betterwithaddons:spindle>,

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
