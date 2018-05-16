#priority -2

import crafttweaker.item.IItemStack;

var removeItems as IItemStack[] = [
	<abyssalcraft:dltslab1>,
	<actuallyadditions:block_compost>,
	<animalium:dog_boots>,
	<betterwithaddons:bolt:1>,
	<betterwithaddons:bolt:3>,
	<betterwithaddons:bolt:6>,
	<betterwithmods:manual>,
	<betterwithmods:material>,
	<betterwithmods:shaft>,
	<betterwithmods:wicker>,
	<minecraft:arrow>,
	<minecraft:farmland>,
	<minecraft:gunpowder>,
	<minecraft:stone_slab2>,
	<minecraft:stone_slab:1>,
	<minecraft:stone_slab:3>,
	<minecraft:stone_slab:4>,
	<minecraft:stone_slab:7>,
	<minecraft:stone_slab>,
	<minecraft:wooden_slab:1>,
	<minecraft:wooden_slab:2>,
	<minecraft:wooden_slab:3>,
	<minecraft:wooden_slab:4>,
	<minecraft:wooden_slab:5>,
	<minecraft:wooden_slab>,
	<natura:nether_slab:1>,
	<natura:nether_slab:2>,
	<natura:nether_slab:3>,
	<natura:nether_slab>,
	<natura:overworld_slab2:1>,
	<natura:overworld_slab2:2>,
	<natura:overworld_slab2:3>,
	<natura:overworld_slab2>,
	<natura:overworld_slab:1>,
	<natura:overworld_slab:2>,
	<natura:overworld_slab:3>,
	<natura:overworld_slab:4>,
	<natura:overworld_slab>,
	<mekanism:saltblock>,
	<primal:slab_ironwood>,
	<rustic:ironwood_slab_item>,
	<rustic:olive_slab_item>,
	<tcomplement:melter:8>,
	<tcomplement:melter>,
	<tcomplement:porcelain_melter:8>,
	<tcomplement:porcelain_melter>,
	<tconstruct:firewood_slab:1>,
	<tconstruct:firewood_slab>,
	<traverse:fir_slab>,
	<waterstrainer:garden_trowel>,
	<waterstrainer:strainer_base>,

	//Nature's Compass
	<naturescompass:naturescompass>
];

for item in removeItems {
	recipes.remove(item);
}
