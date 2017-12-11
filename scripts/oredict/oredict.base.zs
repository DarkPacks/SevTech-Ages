#priority 900

import crafttweaker.item.IItemStack;

var seedOreDict = <ore:thisIsWhatHappensWhenYouDontFollowOreDictionariesForSeeds>;
//IF YOU MAKE A SEED ADD IT TO THE ALLSEEDS LIST! >:()
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
	<primal:void_seed>,
	<roots:aubergine_seeds>,
	<roots:moontinged_seed>
] as IItemStack[];

for seed in seeds {
	seedOreDict.add(seed);
}

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

<ore:logWood>.add(<abyssalcraft:dltlog:12>);
<ore:logWood>.add(<minecraft:log:1>); //Temp Fix
<ore:logWood>.add(<totemic:stripped_cedar_log>);
<ore:logWood>.add(<traverse:fir_log>);
<ore:logWood>.add(<traverse:fir_log:1>);
<ore:logWood>.add(<traverse:fir_log:2>);

//No need for all these extra sticks
<ore:stickWood>.remove(<natura:sticks:0>);
<ore:stickWood>.remove(<natura:sticks:1>);
<ore:stickWood>.remove(<natura:sticks:2>);
<ore:stickWood>.remove(<natura:sticks:3>);
<ore:stickWood>.remove(<natura:sticks:4>);
<ore:stickWood>.remove(<natura:sticks:5>);
<ore:stickWood>.remove(<natura:sticks:6>);
<ore:stickWood>.remove(<natura:sticks:7>);
<ore:stickWood>.remove(<natura:sticks:8>);
<ore:stickWood>.remove(<natura:sticks:9>);
<ore:stickWood>.remove(<natura:sticks:10>);
<ore:stickWood>.remove(<natura:sticks:11>);
<ore:stickWood>.remove(<natura:sticks:12>);

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

<ore:nuggetBlackIron>.remove(<extendedcrafting:material:1>);
<ore:nuggetDiamond>.remove(<betterwithmods:material:46>);
<ore:nuggetSoulium>.remove(<mysticalagriculture:crafting:45>);
<ore:nuggetInsanium>.remove(<mysticalagradditions:insanium:3>);

//Knightminer made me do it! XD
<ore:knightTorch>.add(<minecraft:torch>);
<ore:knightTorch>.add(<tconstruct:stone_torch>);

//Flowers and Lapis no longer are just dye!
<ore:dye>.remove(<minecraft:dye:*>);

<ore:dyeBlack>.remove(<minecraft:dye>);
<ore:dyeRed>.remove(<minecraft:dye:1>);
<ore:dyeGreen>.remove(<minecraft:dye:2>);
<ore:dyeBrown>.remove(<minecraft:dye:3>);
<ore:dyeBlue>.remove(<minecraft:dye:4>);
<ore:dyeYellow>.remove(<minecraft:dye:11>);
<ore:dyeWhite>.remove(<minecraft:dye:15>);

//<ore:dyeOrange>.remove(<coralreef:coral>);
//<ore:dyeMagenta>.remove(<coralreef:coral:1>);
//<ore:dyePink>.remove(<coralreef:coral:2>);
//<ore:dyeCyan>.remove(<coralreef:coral:3>);
//<ore:dyeGreen>.remove(<coralreef:coral:4>);
//<ore:dyeGray>.remove(<coralreef:coral:5>);

//I HAVE BARK! YOU HAS BARK! LETS OREDICTIONARY OUR BARK
<ore:barkOak>.add(<roots:bark_oak>);
<ore:barkSpruce>.add(<roots:bark_spruce>);
<ore:barkBirch>.add(<roots:bark_birch>);
<ore:barkJungle>.add(<roots:bark_jungle>);
<ore:barkDarkOak>.add(<roots:bark_dark_oak>);
<ore:barkAcacia>.add(<roots:bark_acacia>);
<ore:barkWood>.add(<roots:bark_oak>);
<ore:barkWood>.add(<roots:bark_spruce>);
<ore:barkWood>.add(<roots:bark_birch>);
<ore:barkWood>.add(<roots:bark_jungle>);
<ore:barkWood>.add(<roots:bark_dark_oak>);
<ore:barkWood>.add(<roots:bark_acacia>);

<ore:plankWood>.add(<primal:planks:0>);

<ore:shears>.add(<minecraft:shears>);
<ore:shears>.add(<cyclicmagic:ender_wool>);
<ore:shears>.add(<primal:flint_shears>);
<ore:shears>.add(<primal:quartz_shears>);
//<ore:shears>.add(<xreliquary:shears_of_winter>);
<ore:shears>.add(<roots:wood_shears>);
<ore:shears>.add(<primal_tech:bone_shears>);

//Unregister Extra items
<ore:gearWood>.remove(<appliedenergistics2:material:40>);

<ore:asCrystal>.add(<astralsorcery:itemrockcrystalsimple>);
<ore:asCrystal>.add(<astralsorcery:itemcelestialcrystal>);
<ore:asCrystal>.add(<astralsorcery:itemtunedcelestialcrystal>);

<ore:gearWood>.remove(<teslacorelib:gear_wood>);

//Temp Fix
<ore:logWood>.add(<minecraft:log:1>);

<ore:hideTanned>.remove(<betterwithmods:material:6>);
<ore:hideScoured>.remove(<betterwithmods:material:7>);

<ore:dustWood>.add(<betterwithmods:material:22>);
