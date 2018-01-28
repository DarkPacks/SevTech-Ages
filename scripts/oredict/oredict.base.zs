#priority 1050

import crafttweaker.item.IItemStack;

function addShear(shear as IItemStack, isUnique as bool) {
	<ore:shears>.add(shear);
	<ore:toolShears>.add(shear);

	if (isUnique) {
		<ore:toolUniqueShears>.add(shear);
	} else {
		<ore:toolBasicShears>.add(shear);
	}
}

//===============================================================
//Seeds
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

//===============================================================
//Shears
var shearTypesAndItems as IItemStack[][string] = {
	"basic": [
		<ceramics:clay_shears:*>,
		<cyclicmagic:ender_wool:*>,
		<minecraft:shears:*>,
		<mysticalagriculture:inferium_shears:*>,
		<mysticalagriculture:intermedium_shears:*>,
		<mysticalagriculture:prudentium_shears:*>,
		<mysticalagriculture:superium_shears:*>,
		<primal:flint_shears:*>,
		<primal:quartz_shears:*>,
		<primal_tech:bone_shears:*>,
		<thebetweenlands:syrmorite_shears:*>
	],

	"unique": [
		<mysticalagriculture:supremium_shears:*>
	]
};

for shearType, shears in shearTypesAndItems {
	for shear in shears {
		var isUnique = shearType == "unique";
		addShear(shear, isUnique);
	}
}

//===============================================================
//Plastics
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

//===============================================================
//Actually Additions Drills
for i in 0 to 16 {
	var drill = <actuallyadditions:item_drill>.definition.makeStack(i);
	<ore:toolDrill>.add(drill);
}

//===============================================================
//Logs
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
<ore:logWood>.add(<thebetweenlands:log_weedwood>);
<ore:logWood>.add(<totemic:stripped_cedar_log>);

//===============================================================
//Misc
<ore:rock>.add(<immcraft:rock>);

<ore:cordageGeneral>.add(<primal_tech:twine>);

<ore:plantfiber>.add(<primal:plant_fiber>);

//There shall be one and only one FLOUR!
<ore:foodFlour>.remove(<betterwithmods:raw_pastry:3>);
<ore:foodFlour>.add(<horsepower:flour>);

<ore:thatchingMaterialBasic>.add(<primal:rush_stems>);

<ore:torch>.add(<primal_tech:fibre_torch>);
<ore:torch>.add(<primal_tech:fibre_torch_lit>);

<ore:dyeBrown>.remove(<betterwithmods:material:5>);

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

<ore:table>.add(<bibliocraft:table>);
<ore:table>.add(<bibliocraft:table:1>);
<ore:table>.add(<bibliocraft:table:2>);
<ore:table>.add(<bibliocraft:table:3>);
<ore:table>.add(<bibliocraft:table:4>);
<ore:table>.add(<bibliocraft:table:5>);

<ore:dustVanadium>.remove(<primal:vanadium_dust>);
<ore:ingotVanadium>.remove(<primal:vanadium_ingot>);
<ore:nuggetVanadium>.remove(<primal:vanadium_nugget>);
<ore:dustWootz>.remove(<primal:wootz_dust>);
<ore:ingotWootz>.remove(<primal:wootz_ingot>);
<ore:nuggetWootz>.remove(<primal:wootz_nugget>);
<ore:dustZinc>.remove(<primal:zinc_dust>);
<ore:ingotZinc>.remove(<primal:zinc_ingot>);
<ore:nuggetZinc>.remove(<primal:zinc_nugget>);
<ore:ingotTamahagane>.remove(<primal:tamahagane_ingot>);

<ore:plateZinc>.remove(<primal:zinc_plate>);

<ore:nuggetDiamond>.remove(<betterwithmods:material:46>);
<ore:nuggetSoulium>.remove(<mysticalagriculture:crafting:45>);
<ore:nuggetInsanium>.remove(<mysticalagradditions:insanium:3>);

//Knightminer made me do it! XD
<ore:knightTorch>.add(<minecraft:torch>);
<ore:knightTorch>.add(<tconstruct:stone_torch>);

//Flowers and Lapis no longer are just dye!
<ore:dye>.remove(<minecraft:dye:*>);

<ore:dyeBlack>.remove(<actuallyadditions:item_misc:17>);
<ore:dyeBlack>.remove(<minecraft:dye>);
<ore:dyeBlack>.remove(<nex:item_dust_wither>);
<ore:dyeBlack>.remove(<primal:netherwax_clump>);
<ore:dyeBlue>.remove(<minecraft:dye:4>);
<ore:dyeBrown>.remove(<minecraft:dye:3>);
<ore:dyeBrown>.remove(<primal:earthwax_clump>);
<ore:dyeGreen>.remove(<minecraft:dye:2>);
<ore:dyePurple>.remove(<primal:sinuous_resin>);
<ore:dyeRed>.remove(<minecraft:dye:1>);
<ore:dyeRed>.remove(<rustic:wildberries>);
<ore:dyeWhite>.remove(<minecraft:dye:15>);
<ore:dyeYellow>.remove(<minecraft:dye:11>);

//I HAVE BARK! YOU HAS BARK! LETS OREDICTIONARY OUR BARK
<ore:plankWood>.add(<primal:planks:0>);

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

<ore:oreBasicCertusQuartz>.add(<appliedenergistics2:quartz_ore>); //Add this oredict to differentiate between the two ores

//Fiery bottles
<ore:bottleFiery>.add(<twilightforest:fiery_blood>);
<ore:bottleFiery>.add(<twilightforest:fiery_tears>);

//Natura oredicts glass wrong
<ore:glass>.remove(<natura:nether_glass>);
<ore:glass>.remove(<natura:nether_glass:1>);
<ore:glassBlock>.add(<natura:nether_glass:*>);
