import crafttweaker.item.IItemStack;

import mods.betterwithaddons.Condensed;
import mods.betterwithaddons.SoakingBox;
import mods.betterwithaddons.Spindle;
import mods.betterwithmods.Cauldron;
import mods.betterwithmods.Mill;
import mods.betterwithmods.StokedCauldron;
import mods.betterwithmods.Turntable;

/*
	Turntable

	http://crafttweaker.readthedocs.io/en/latest/#Mods/Modtweaker/BetterWithMods/Turntable/
*/
Turntable.add(<ceramics:clay_barrel_unfired>, <ceramics:clay_barrel_unfired:1>, []);
Turntable.add(<ceramics:clay_barrel_unfired:1>, <ceramics:clay_bucket_block>, []);

/*
	Mill

	http://crafttweaker.readthedocs.io/en/latest/#Mods/Modtweaker/BetterWithMods/Mill/
*/
//Rice Flour
Mill.add(<betterwithaddons:japanmat:4>, null, [<actuallyadditions:item_food:16>]);

Mill.add(<ceramics:unfired_clay:4>, null, [<minecraft:dye:15>, <minecraft:clay_ball>, <minecraft:flint>]);
Mill.add(<tconstruct:soil> * 2, null, [<minecraft:sand>, <minecraft:clay_ball>, <minecraft:gravel>]);

//THERE CAN BE ONLY 1 FLOUR!
Mill.remove(<betterwithmods:raw_pastry:3>);

Mill.add(<horsepower:flour>, null, [<minecraft:wheat>]);
Mill.add(<horsepower:flour>, null, [<natura:materials>]);

Mill.add(<actuallyadditions:item_dust:7>, null, [<actuallyadditions:block_misc:3>]);
Mill.add(<astralsorcery:itemcraftingcomponent> * 1, null, [<materialpart:aquamarine:ore_minecraft_stone>]);

Mill.add(<minecraft:flint> * 2, null, [<primal_tech:flint_block>]);

Mill.add(<minecraft:coal:1> * 9, null, [<charcoalblock:charcoal_block>]);
Mill.add(<minecraft:coal:1> * 4, null, [<primal_tech:charcoal_block>]);
Mill.add(<minecraft:coal> * 9, null, [<minecraft:coal_block>]);

Mill.add(<tconstruct:stone_stick> * 1, null, [<minecraft:cobblestone>]);

Mill.add(<pickletweaks:dye_powder:14> * 2, null, [<minecraft:dye:1>]);
Mill.add(<pickletweaks:dye_powder> * 2, null, [<minecraft:dye:15>]);
Mill.add(<pickletweaks:dye_powder:13> * 2, null, [<minecraft:dye:2>]);
Mill.add(<pickletweaks:dye_powder:15> * 2, null, [<minecraft:dye>]);
Mill.add(<pickletweaks:dye_powder:12> * 2, null, [<minecraft:dye:3>]);
Mill.add(<pickletweaks:dye_powder:11> * 2, null, [<minecraft:dye:4>]);
Mill.add(<pickletweaks:dye_powder:14> * 2, null, [<rustic:wildberries>]);
Mill.add(<pickletweaks:dye_powder:15> * 2, null, [<actuallyadditions:block_black_lotus>]);
Mill.add(<pickletweaks:dye_powder:9> * 2, null, [<ferdinandsflowers:block_cff_flowersd:10>]);
Mill.add(<pickletweaks:dye_powder:3> * 2, null, [<ferdinandsflowers:block_cff_flowersd:11>]);
Mill.add(<pickletweaks:dye_powder:3> * 2, null, [<ferdinandsflowers:block_cff_flowersd:12>]);
Mill.add(<pickletweaks:dye_powder:3> * 2, null, [<ferdinandsflowers:block_cff_flowersd:13>]);
Mill.add(<pickletweaks:dye_powder:11> * 2, null, [<ferdinandsflowers:block_cff_flowersd:14>]);
Mill.add(<pickletweaks:dye_powder:2> * 2, null, [<ferdinandsflowers:block_cff_flowersd:15>]);

Mill.add(<astralsorcery:itemcraftingcomponent:2>, null, [<astralsorcery:itemcraftingcomponent:1>]);

Mill.add(<actuallyadditions:item_dust:5>, null, [<minecraft:quartz>]);

Mill.add(<primal:bone_knapp>, null, [<primal:sharp_bone>]);

for bark in <ore:barkWood>.items {
	Mill.add(<primal:tannin_ground> * 2, null, [bark]);
}

/*
	Soaking Box

	https://github.com/DaedalusGame/BetterWithAddons/wiki/CraftTweaker-Support#soaking-unit
*/
SoakingBox.remove(<betterwithaddons:log_mulberry>);
SoakingBox.remove(<betterwithaddons:japanmat:36>);

/*
	Spindle
*/
Spindle.add([<primal:leather_cordage>], <primal:leather_strip> * 4, false);

/*
	Condensed
*/
//Using Spindle Drops Spindle when crafted
Condensed.setContainer(<betterwithaddons:bolt>, <betterwithaddons:spindle>);

/*
	Cauldron

	http://crafttweaker.readthedocs.io/en/latest/#Mods/Modtweaker/BetterWithMods/Cauldron/
*/
Cauldron.add(<betterwithmods:material:12>, null, [<minecraft:rotten_flesh>, <minecraft:rotten_flesh>, <minecraft:rotten_flesh>]);
Cauldron.add(<betterwithmods:material:12>, null, [<ore:pelt>]);
Cauldron.add(<betterwithmods:material:12> * 2, null, [<ore:peltLarge>]);
Cauldron.add(<betterwithmods:material:12>, null, [<animalium:wild_dog_pelt>]);
Cauldron.remove(<betterwithmods:material:6>);
Cauldron.remove(<rustic:tallow>);

//Remake laxative recipe using foodFlour instead of BWM flour only
Cauldron.remove(<betterwithaddons:laxative>);
Cauldron.add(<betterwithaddons:laxative>, null, [<betterwithaddons:food_mulberry> * 3, <minecraft:sugar>, <ore:foodFlour>]);

/*
	Stoked Cauldron

	http://crafttweaker.readthedocs.io/en/latest/#Mods/Modtweaker/BetterWithMods/StokedCauldron/
*/
StokedCauldron.remove(<betterwithmods:material:12>);

//TODO: I'm pretty sure this doesn't actually work but I'm leaving it here for now
StokedCauldron.remove(<minecraft:glass>);

/*
	Saw

	http://crafttweaker.readthedocs.io/en/latest/#Mods/Modtweaker/BetterWithMods/Saw/
*/
var sawRemovals as IItemStack[] = [
	//Sawing Corners only give 1 gear instead of 2
	<betterwithmods:wood_corner>,
	<betterwithmods:wood_corner:1>,
	<betterwithmods:wood_corner:2>,
	<betterwithmods:wood_corner:3>,
	<betterwithmods:wood_corner:4>,
	<betterwithmods:wood_corner:5>,

	<betterwithmods:saw>,
	<betterwithmods:bellows>,
	<betterwithmods:wooden_gearbox>,
	<betterwithmods:single_machine:2>,
	<betterwithmods:single_machine:1>
];

// Input : [Outputs]
var sawRecipes as IItemStack[][IItemStack] = {
	<minecraft:leaves> : [stick * 2],
	<minecraft:leaves:1> : [stick * 2],
	<minecraft:leaves:2> : [stick * 2],
	<minecraft:leaves:3> : [stick * 2],
	<minecraft:leaves2> : [stick * 2],
	<minecraft:leaves2:1> : [stick * 2],
	<abyssalcraft:dltleaves> : [stick * 2],
	<abyssalcraft:dreadleaves> : [stick * 2],
	<betterwithmods:blood_leaves> : [stick * 2],
	<natura:overworld_leaves> : [stick * 2],
	<natura:overworld_leaves:1> : [stick * 2],
	<natura:overworld_leaves:2> : [stick * 2],
	<natura:overworld_leaves2> : [stick * 2],
	<natura:overworld_leaves:3> : [stick * 2],
	<natura:overworld_leaves2:1> : [stick * 2],
	<natura:overworld_leaves2:2> : [stick * 2],
	<natura:overworld_leaves2:3> : [stick * 2],
	<natura:redwood_leaves> : [stick * 2],
	<natura:nether_leaves> : [stick * 2],
	<natura:nether_leaves:1> : [stick * 2],
	<natura:nether_leaves:2> : [stick * 2],
	<natura:nether_leaves2> : [stick * 2],
	<natura:nether_leaves2:1> : [stick * 2],
	<natura:nether_leaves2:2> : [stick * 2],
	<rustic:leaves_apple> : [stick * 2],
	<twilightforest:twilight_leaves> : [stick * 2],
	<twilightforest:twilight_leaves:1> : [stick * 2],
	<twilightforest:twilight_leaves:2> : [stick * 2],
	<twilightforest:twilight_leaves:3> : [stick * 2],
	<twilightforest:magic_leaves> : [stick * 2],
	<totemic:cedar_leaves> : [stick * 2],
	<traverse:fir_leaves> : [stick * 2],

	//Sawing Corners only give 1 gear instead of 2
	<betterwithmods:wood_corner> : [<betterwithmods:material>],
	<betterwithmods:wood_corner:1> : [<betterwithmods:material>],
	<betterwithmods:wood_corner:2> : [<betterwithmods:material>],
	<betterwithmods:wood_corner:3> : [<betterwithmods:material>],
	<betterwithmods:wood_corner:4> : [<betterwithmods:material>],
	<betterwithmods:wood_corner:5> : [<betterwithmods:material>]
};

for item in sawRemovals {
	mods.betterwithmods.Saw.remove(item);
}

for input in sawRecipes {
	mods.betterwithmods.Saw.add(sawRecipes[input], input);
}
