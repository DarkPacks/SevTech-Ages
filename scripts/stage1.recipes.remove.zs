import crafttweaker.item.IItemStack;

var removeItems = [
	<betterbuilderswands:wandstone>,
	<bibliocraft:plumbline>,
	<cyclicmagic:ender_torch>,
	<dungpipe:dung_pipe>,
	<dungpipe:sewer_pipe>,
	<minecraft:crafting_table>,
	<minecraft:ladder>,
	<minecraft:torch>,
	<primal_tech:leaf_bed>,
	<progressiontweaks:blank_teleporter>, //Beneath Porter Recipe
	<progressiontweaks:unfired_clay_bowl>,
	<prospectors:prospector_lowest>, //Prospector
	<tconstruct:stone_stick>,
	<tconstruct:stone_torch>,

	//Better With Mods
	<betterwithaddons:aqueduct:0>,
	<betterwithaddons:aqueduct:10>,
	<betterwithaddons:aqueduct:1>,
	<betterwithaddons:aqueduct:2>,
	<betterwithaddons:aqueduct:3>,
	<betterwithaddons:aqueduct:4>,
	<betterwithaddons:aqueduct:5>,
	<betterwithaddons:aqueduct:6>,
	<betterwithaddons:aqueduct:7>,
	<betterwithaddons:aqueduct:8>,
	<betterwithaddons:aqueduct:9>,
	<betterwithmods:axle_generator:1>,
	<betterwithmods:cooking_pot:1>,
	<betterwithmods:material:10>,
	<betterwithmods:material:24>,
	<betterwithmods:rope>,
	<betterwithmods:saw>,
	<betterwithmods:single_machine:3>,
	<betterwithmods:wooden_axle>,
	<betterwithmods:wooden_gearbox>,

	//Embers recipes fixed for Stage1
	<embers:archaic_circuit>,
	<embers:archaic_edge>,
	<embers:archaic_light>,
	<embers:axe_bronze>,
	<embers:axe_copper>,
	<embers:axe_tin>,
	<embers:blend_caminite>,
	<embers:block_caminite_brick>,
	<embers:block_caminite_brick_slab>,
	<embers:block_lantern>,
	<embers:codex>,
	<embers:copper_cell>,
	<embers:crystal_ember>,
	<embers:ember_activator>,
	<embers:ember_bore>,
	<embers:ember_detector>,
	<embers:ember_emitter>,
	<embers:ember_gauge>,
	<embers:ember_receiver>,
	<embers:fluid_gauge>,
	<embers:hoe_bronze>,
	<embers:hoe_copper>,
	<embers:hoe_tin>,
	<embers:mech_accessor>,
	<embers:mech_core>,
	<embers:mixer>,
	<embers:pickaxe_bronze>,
	<embers:pickaxe_copper>,
	<embers:pickaxe_tin>,
	<embers:shard_ember>,
	<embers:shovel_bronze>,
	<embers:shovel_copper>,
	<embers:shovel_tin>,
	<embers:stairs_caminite_brick>,
	<embers:stamper>,
	<embers:stamper_base>,
	<embers:sword_bronze>,
	<embers:sword_copper>,
	<embers:sword_tin>,
	<embers:tinker_hammer>,
	<embers:wall_caminite_brick>,

	//Abyssalcraft for Stage1
	<abyssalcraft:necronomicon>,
	<abyssalcraft:shadowfragment>,
	<abyssalcraft:shadowgem>,
	<abyssalcraft:shadowshard>,

	//Tinkers'
	<tcomplement:melter:8>,
	<tcomplement:melter>,
	<tcomplement:porcelain_melter:8>,
	<tcomplement:porcelain_melter>,
	<tconstruct:pattern>,

	//BWM changes
	<betterwithmods:bellows>,
	<betterwithaddons:spindle>
] as IItemStack[];

for item in removeItems {
	recipes.remove(item);
}
