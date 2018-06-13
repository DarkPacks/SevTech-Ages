#priority 1050

import crafttweaker.item.IItemStack;

/*
	Seeds
*/
//IF YOU MAKE A SEED ADD IT TO THE ALLSEEDS LIST! >:()
var seedOreDict = <ore:thisIsWhatHappensWhenYouDontFollowOreDictionariesForSeeds>;
var seeds = [
	<actuallyadditions:item_canola_seed>,
	<actuallyadditions:item_coffee_seed>,
	<actuallyadditions:item_flax_seed>,
	<actuallyadditions:item_misc:23>,
	<actuallyadditions:item_misc:24>,
	<actuallyadditions:item_rice_seed>,
	<betterwithaddons:crop_rice>,
	<betterwithaddons:crop_rush>,
	<betterwithmods:hemp>,
	//<cavern:acresia>,
	<minecraft:beetroot_seeds>,
	<minecraft:carrot>,
	<minecraft:melon_seeds>,
	<minecraft:nether_wart>,
	<minecraft:potato>,
	<minecraft:pumpkin_seeds>,
	<minecraft:wheat_seeds>,
	<natura:overworld_seeds:1>,
	<natura:overworld_seeds>,
	<primal:aconite_root>,
	<primal:corn_seeds>,
	<primal:corypha_seed>,
	<primal:daucus_murn_seeds>,
	<primal:dry_grass_seed>,
	<primal:nether_seed>,
	<primal:rush_seeds>,
	<primal:searing_ember>,
	<primal:sinuous_spores>,
	<primal:valus_seed>,
	<primal:void_seed>
] as IItemStack[];

for seed in seeds {
	seedOreDict.add(seed);
}

/*
	Shears
*/
var shears as IItemStack[] = [
	<ceramics:clay_shears:*>,
	<cyclicmagic:ender_wool:*>,
	<minecraft:shears:*>,
	<mysticalagriculture:inferium_shears:*>,
	<mysticalagriculture:intermedium_shears:*>,
	<mysticalagriculture:prudentium_shears:*>,
	<mysticalagriculture:superium_shears:*>,
	<mysticalagriculture:supremium_shears:*>,
	<primal:flint_shears:*>,
	<primal:quartz_shears:*>,
	<primal_tech:bone_shears:*>,
	<thebetweenlands:syrmorite_shears:*>
];

for shear in shears {
	<ore:shears>.add(shear);
	<ore:toolShears>.add(shear);
}

/*
	Plastics
*/
var coloredPlastics as IItemStack[string] = {
	black: <pneumaticcraft:plastic>,
	red: <pneumaticcraft:plastic:1>,
	green: <pneumaticcraft:plastic:2>,
	brown: <pneumaticcraft:plastic:3>,
	blue: <pneumaticcraft:plastic:4>,
	purple: <pneumaticcraft:plastic:5>,
	cryan: <pneumaticcraft:plastic:6>,
	lightGray: <pneumaticcraft:plastic:7>,
	gray: <pneumaticcraft:plastic:8>,
	pink: <pneumaticcraft:plastic:9>,
	lime: <pneumaticcraft:plastic:10>,
	yellow: <pneumaticcraft:plastic:11>,
	lightBlue: <pneumaticcraft:plastic:12>,
	magenta: <pneumaticcraft:plastic:13>,
	orange: <pneumaticcraft:plastic:14>,
	white: <pneumaticcraft:plastic:15>
};

for color, plastic in coloredPlastics {
	oreDict.get("plastic" + color).remove(plastic);

	<ore:plasticColored>.add(plastic);
	oreDict.get("plasticColored" + color).add(plastic);
}

/*
	Actually Additions Drills
*/
for i in 0 to 16 {
	var drill = <actuallyadditions:item_drill>.definition.makeStack(i);
	<ore:toolDrill>.add(drill);
}

/*
	Wood Logs
*/
//<ore:logWood>.add(<abyssalcraft:dltlog:12>); //TODO: Is this needed?

//Remove wildcard
<ore:logWood>.remove(<minecraft:log2:*>);
<ore:logWood>.remove(<minecraft:log:*>);
<ore:logWood>.remove(<natura:nether_logs2:*>);
<ore:logWood>.remove(<natura:nether_logs:*>);
<ore:logWood>.remove(<natura:overworld_logs2:*>);
<ore:logWood>.remove(<natura:overworld_logs:*>);
<ore:logWood>.remove(<natura:redwood_logs:*>);
<ore:logWood>.remove(<twilightforest:magic_log:*>);
<ore:logWood>.remove(<twilightforest:twilight_log:*>);

//Add subblocks of wildcarded ones
<ore:logWood>.add(<minecraft:log2:1>);
<ore:logWood>.add(<minecraft:log2>);
<ore:logWood>.add(<minecraft:log:1>);
<ore:logWood>.add(<minecraft:log:2>);
<ore:logWood>.add(<minecraft:log:3>);
<ore:logWood>.add(<minecraft:log>);
<ore:logWood>.add(<natura:nether_logs2:15>);
<ore:logWood>.add(<natura:nether_logs2>);
<ore:logWood>.add(<natura:nether_logs:1>);
<ore:logWood>.add(<natura:nether_logs:2>);
<ore:logWood>.add(<natura:nether_logs>);
<ore:logWood>.add(<natura:overworld_logs2:1>);
<ore:logWood>.add(<natura:overworld_logs2:2>);
<ore:logWood>.add(<natura:overworld_logs2:3>);
<ore:logWood>.add(<natura:overworld_logs2>);
<ore:logWood>.add(<natura:overworld_logs:1>);
<ore:logWood>.add(<natura:overworld_logs:2>);
<ore:logWood>.add(<natura:overworld_logs:3>);
<ore:logWood>.add(<natura:overworld_logs>);
<ore:logWood>.add(<natura:redwood_logs:1>);
<ore:logWood>.add(<natura:redwood_logs:2>);
<ore:logWood>.add(<natura:redwood_logs>);
<ore:logWood>.add(<twilightforest:magic_log:1>);
<ore:logWood>.add(<twilightforest:magic_log:2>);
<ore:logWood>.add(<twilightforest:magic_log:3>);
<ore:logWood>.add(<twilightforest:magic_log>);
<ore:logWood>.add(<twilightforest:twilight_log:1>);
<ore:logWood>.add(<twilightforest:twilight_log:2>);
<ore:logWood>.add(<twilightforest:twilight_log:3>);
<ore:logWood>.add(<twilightforest:twilight_log>);

//Add these to ensure theyre in oredict at CrT time
<ore:logWood>.add(<betterwithaddons:log_mulberry>);
<ore:logWood>.add(<betterwithaddons:log_sakura>);
<ore:logWood>.add(<betterwithmods:blood_log>);
<ore:logWood>.add(<totemic:cedar_log>);
<ore:logWood>.add(<traverse:fir_log>);

//Add to oredict
<ore:logWood>.add(<betterwithaddons:log_luretree>);
<ore:logWood>.add(<betterwithaddons:log_luretree_face>);
<ore:logWood>.add(<extraplanets:kepler22b_maple_logs2:1>);
<ore:logWood>.add(<extraplanets:kepler22b_maple_logs2>);
<ore:logWood>.add(<extraplanets:kepler22b_maple_logs:1>);
<ore:logWood>.add(<extraplanets:kepler22b_maple_logs:2>);
<ore:logWood>.add(<extraplanets:kepler22b_maple_logs:3>);
<ore:logWood>.add(<extraplanets:kepler22b_maple_logs>);
<ore:logWood>.add(<primal:logs>);
<ore:logWood>.add(<primal:logs_stripped:1>);
<ore:logWood>.add(<primal:logs_stripped:2>);
<ore:logWood>.add(<primal:logs_stripped:3>);
<ore:logWood>.add(<primal:logs_stripped:4>);
<ore:logWood>.add(<primal:logs_stripped:5>);
<ore:logWood>.add(<primal:logs_stripped:6>);
<ore:logWood>.add(<primal:logs_stripped:7>);
<ore:logWood>.add(<primal:logs_stripped>);
<ore:logWood>.add(<thebetweenlands:log_rubber>);
<ore:logWood>.add(<thebetweenlands:log_sap>);
<ore:logWood>.add(<thebetweenlands:log_weedwood:12>);
<ore:logWood>.add(<thebetweenlands:log_weedwood>);
<ore:logWood>.add(<totemic:stripped_cedar_log>);

/*
	Wood Planks
*/
//Add these to ensure theyre in oredict at CrT time
<ore:plankWood>.add(<betterwithaddons:planks_mulberry>);
<ore:plankWood>.add(<betterwithaddons:planks_sakura>);
<ore:plankWood>.add(<totemic:cedar_plank>);
<ore:plankWood>.add(<traverse:fir_planks>);

//Remove from oredict
<ore:plankWood>.add(<primal:planks:1>);

//Add to oredict
<ore:plankWood>.add(<extraplanets:kepler22b_planks:*>);
<ore:plankWood>.add(<primal:planks:*>);
<ore:plankWood>.add(<thebetweenlands:rubber_tree_planks>);
<ore:plankWood>.add(<thebetweenlands:weedwood_planks>);

/*
	Bark Wood
*/
<ore:barkWood>.add(<betterwithmods:bark:*>);

/*
	Slab Wood
*/
<ore:slabWood>.add(<abyssalcraft:dltslab1>);
<ore:slabWood>.add(<primal:slab_yew>);

/*
	Misc
*/
<ore:rock>.add(<immcraft:rock>);

<ore:cordageGeneral>.add(<primal_tech:twine>);

<ore:plantfiber>.add(<primal:plant_fiber>);

//There shall be one and only one FLOUR!
<ore:foodFlour>.remove(<betterwithmods:raw_pastry:3>);
<ore:foodFlour>.add(<horsepower:flour>);

//Add the salts so our recipe loops work correctly on load.
<ore:foodSalt>.add(<primal:salt_dust_netjry>);
<ore:foodSalt>.add(<primal:salt_dust_rock>);
<ore:foodSalt>.add(<primal:salt_dust_fire>);
<ore:foodSalt>.add(<primal:salt_dust_void>);
<ore:foodSalt>.add(<mekanism:salt>);
<ore:foodSalt>.add(<immersivetech:material>);

<ore:thatchingMaterialBasic>.add(<primal:rush_stems>);

<ore:torch>.add(<primal_tech:fibre_torch>);
<ore:torch>.add(<primal_tech:fibre_torch_lit>);

<ore:dung>.remove(<betterwithmods:material:5>);

<ore:cordageGeneral>.remove(<primal:silk_cordage>);

//Add sticks to oredict so we can unify
<ore:stickWood>.add(<natura:sticks:0>);
<ore:stickWood>.add(<natura:sticks:1>);
<ore:stickWood>.add(<natura:sticks:2>);
<ore:stickWood>.add(<natura:sticks:3>);
<ore:stickWood>.add(<natura:sticks:4>);
<ore:stickWood>.add(<natura:sticks:5>);
<ore:stickWood>.add(<natura:sticks:6>);
<ore:stickWood>.add(<natura:sticks:7>);
<ore:stickWood>.add(<natura:sticks:8>);
<ore:stickWood>.add(<natura:sticks:9>);
<ore:stickWood>.add(<natura:sticks:10>);
<ore:stickWood>.add(<natura:sticks:11>);
<ore:stickWood>.add(<natura:sticks:12>);
<ore:stickWood>.add(<primal:yew_stick>);

<ore:table>.add(<bibliocraft:table>);
<ore:table>.add(<bibliocraft:table:1>);
<ore:table>.add(<bibliocraft:table:2>);
<ore:table>.add(<bibliocraft:table:3>);
<ore:table>.add(<bibliocraft:table:4>);
<ore:table>.add(<bibliocraft:table:5>);

<ore:ingotTamahagane>.remove(<primal:tamahagane_ingot>);

<ore:nuggetSoulium>.remove(<mysticalagriculture:crafting:45>);
<ore:nuggetInsanium>.remove(<mysticalagradditions:insanium:3>);

//Knightminer made me do it! XD
<ore:knightTorch>.add(<minecraft:torch>);
<ore:knightTorch>.add(<tconstruct:stone_torch>);

//Add to then be removed
<ore:dyeBrown>.add(<betterwithmods:material:5>);
<ore:dyeBlack>.add(<nex:item_dust_wither>);

//Flowers and Lapis no longer are just dye!
<ore:dye>.remove(<minecraft:dye:*>);

<ore:dyeBlack>.remove(<actuallyadditions:item_misc:17>);
<ore:dyeBlack>.remove(<minecraft:dye>);
<ore:dyeBlack>.remove(<nex:item_dust_wither>);
<ore:dyeBlue>.remove(<minecraft:dye:4>);
<ore:dyeBrown>.remove(<betterwithmods:material:5>);
<ore:dyeBrown>.remove(<industrialforegoing:fertilizer>);
<ore:dyeBrown>.remove(<minecraft:dye:3>);
<ore:dyeBrown>.remove(<primal:earthwax_clump>);
<ore:dyeCyan>.remove(<minecraft:dye:6>);
<ore:dyeGray>.remove(<minecraft:dye:8>);
<ore:dyeGreen>.remove(<minecraft:dye:2>);
<ore:dyeLightBlue>.remove(<minecraft:dye:12>);
<ore:dyeLightGray>.remove(<minecraft:dye:7>);
<ore:dyeLime>.remove(<minecraft:dye:10>);
<ore:dyeMagenta>.remove(<minecraft:dye:13>);
<ore:dyeOrange>.remove(<minecraft:dye:14>);
<ore:dyePink>.remove(<minecraft:dye:9>);
<ore:dyePurple>.remove(<minecraft:dye:5>);
<ore:dyePurple>.remove(<primal:sinuous_resin>);
<ore:dyeRed>.remove(<minecraft:dye:1>);
<ore:dyeRed>.remove(<rustic:wildberries>);
<ore:dyeWhite>.remove(<minecraft:dye:15>);
<ore:dyeYellow>.remove(<minecraft:dye:11>);

<ore:asCrystal>.add(<astralsorcery:itemrockcrystalsimple>);
<ore:asCrystal>.add(<astralsorcery:itemcelestialcrystal>);
<ore:asCrystal>.add(<astralsorcery:itemtunedcelestialcrystal>);

<ore:hideTanned>.remove(<betterwithmods:material:6>);
<ore:hideScoured>.remove(<betterwithmods:material:7>);

<ore:dustWood>.add(<betterwithmods:material:22>);

//AE Wrenches
<ore:wrenchQuartz>.add(<appliedenergistics2:certus_quartz_wrench>);
<ore:wrenchQuartz>.add(<appliedenergistics2:nether_quartz_wrench>);

//Add to oredict so it can be removed
<ore:gearCompressedIron>.add(<pneumaticcraft:compressed_iron_gear>);

//Adding these to the list because THEY ARE COOKED MEAT AND WERE NOT ADDED >:O
<ore:listAllmeatcooked>.add(<betterwithmods:cooked_bat_wing>);
<ore:listAllmeatcooked>.add(<betterwithmods:cooked_wolf_chop>);
<ore:listAllmeatcooked>.add(<animalium:rat_meat_cooked>);
<ore:listAllmeatcooked>.add(<animalium:bear_meat_cooked>);
<ore:listAllmeatcooked>.add(<twilightforest:cooked_meef>);
<ore:listAllmeatcooked>.add(<twilightforest:cooked_venison>);
<ore:listAllmeatcooked>.add(<thebetweenlands:snail_flesh_cooked>);
<ore:listAllmeatcooked>.add(<thebetweenlands:frog_legs_cooked>);
<ore:listAllmeatcooked>.add(<thebetweenlands:angler_meat_cooked>);
<ore:listAllmeatcooked>.add(<nex:food_meat_ghast_cooked>);
<ore:listAllmeatcooked>.add(<natura:edibles:1>);

//Fiery bottles
<ore:bottleFiery>.add(<twilightforest:fiery_blood>);
<ore:bottleFiery>.add(<twilightforest:fiery_tears>);

//Natura oredicts glass wrong
<ore:glass>.remove(<natura:nether_glass>);
<ore:glass>.remove(<natura:nether_glass:1>);
<ore:glassBlock>.add(<natura:nether_glass:*>);

//Space Platinum
<ore:blockPlatinum>.remove(<extraplanets:kepler22b:14>);
<ore:blockSpacePlatinum>.add(<extraplanets:kepler22b:14>);
<ore:ingotPlatinum>.remove(<extraplanets:tier11_items:5>);
<ore:ingotSpacePlatinum>.add(<extraplanets:tier11_items:5>);
<ore:orePlatinum>.remove(<extraplanets:kepler22b:13>);
<ore:oreSpacePlatinum>.add(<extraplanets:kepler22b:13>);

//Sulfur
<ore:dustSulphur>.remove(<natura:materials:4>);
<ore:dustSulfur>.add(<natura:materials:4>);

//Processors
<ore:processorCalculation>.add(<appliedenergistics2:material:23>);
<ore:processorEngineering>.add(<appliedenergistics2:material:24>);
<ore:processorLogic>.add(<appliedenergistics2:material:22>);

//Quartz Dust
<ore:dustQuartz>.add(<appliedenergistics2:material:2>); //Certus Quartz

//Natura Dye
<ore:dyeBlue>.add(<natura:materials:8>);
<ore:dyeBlue>.remove(<natura:materials:8>);

//Add BWM Diamond Nugget to be removed in unification
<ore:nuggetDiamond>.add(<betterwithmods:material:46>);

//Remove Cut Leather oredict
<ore:leather>.remove(<betterwithmods:material:31>);
<ore:hideTanned>.remove(<betterwithmods:material:32>);

//Certus Quartz Charged (This is for IE Excavator support)
<ore:crystalCertusQuartzCharged>.add(<appliedenergistics2:material:1>);

//The Betweenlands
<ore:stoneLimestone>.add(<thebetweenlands:limestone>);
<ore:stoneLimestone>.add(<thebetweenlands:limestone_chiseled>);
<ore:stoneLimestone>.add(<thebetweenlands:cracked_limestone_bricks>);
<ore:stoneLimestone>.add(<thebetweenlands:limestone_bricks>);
<ore:stoneLimestone>.add(<thebetweenlands:limestone_tiles>);
<ore:stoneLimestone>.add(<thebetweenlands:mossy_limestone_bricks>);
<ore:stoneLimestonePolished>.add(<thebetweenlands:polished_limestone>);
<ore:stoneLimestonePolished>.add(<thebetweenlands:weak_polished_limestone>);

// Heavy Oxygen Tanks
<ore:tankOxygenHeavy>.add(<galacticraftcore:oxygen_tank_heavy_full:*>);
<ore:tankOxygenHeavy>.add(<extraplanets:oxygen_tank_heavy_full_white:*>);
<ore:tankOxygenHeavy>.add(<extraplanets:oxygen_tank_heavy_full_orange:*>);
<ore:tankOxygenHeavy>.add(<extraplanets:oxygen_tank_heavy_full_magenta:*>);
<ore:tankOxygenHeavy>.add(<extraplanets:oxygen_tank_heavy_full_light_blue:*>);
<ore:tankOxygenHeavy>.add(<extraplanets:oxygen_tank_heavy_full_yellow:*>);
<ore:tankOxygenHeavy>.add(<extraplanets:oxygen_tank_heavy_full_pink:*>);
<ore:tankOxygenHeavy>.add(<extraplanets:oxygen_tank_heavy_full_gray:*>);
<ore:tankOxygenHeavy>.add(<extraplanets:oxygen_tank_heavy_full_light_gray:*>);
<ore:tankOxygenHeavy>.add(<extraplanets:oxygen_tank_heavy_full_cyan:*>);
<ore:tankOxygenHeavy>.add(<extraplanets:oxygen_tank_heavy_full_purple:*>);
<ore:tankOxygenHeavy>.add(<extraplanets:oxygen_tank_heavy_full_blue:*>);
<ore:tankOxygenHeavy>.add(<extraplanets:oxygen_tank_heavy_full_brown:*>);
<ore:tankOxygenHeavy>.add(<extraplanets:oxygen_tank_heavy_full_green:*>);
<ore:tankOxygenHeavy>.add(<extraplanets:oxygen_tank_heavy_full_lime:*>);
<ore:tankOxygenHeavy>.add(<extraplanets:oxygen_tank_heavy_full_black:*>);

// Cobblestone Slab
<ore:slabCobblestone>.add(<minecraft:stone_slab:3>);
<ore:slabCobblestone>.add(<abyssalcraft:darkcobbleslab1>);
<ore:slabCobblestone>.add(<traverse:red_rock_cobblestone_slab>);
<ore:slabCobblestone>.add(<traverse:blue_rock_cobblestone_slab>);

// String
<ore:string>.add(<natura:materials:7>);
