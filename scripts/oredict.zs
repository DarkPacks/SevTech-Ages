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

<ore:dustBrass>.remove(<primal:brass_dust>);
<ore:ingotBrass>.remove(<primal:brass_ingot>);
<ore:nuggetBrass>.remove(<primal:brass_nugget>);
<ore:dustBronze>.remove(<primal:bronze_dust>);
<ore:ingotBronze>.remove(<primal:bronze_ingot>);
<ore:nuggetBronze>.remove(<primal:bronze_nugget>);
<ore:dustCopper>.remove(<primal:copper_dust>);
<ore:ingotCopper>.remove(<primal:copper_ingot>);
<ore:nuggetCopper>.remove(<primal:copper_nugget>);
<ore:dustLead>.remove(<primal:lead_dust>);
<ore:ingotLead>.remove(<primal:lead_ingot>);
<ore:nuggetLead>.remove(<primal:lead_nugget>);
<ore:dustPigiron>.remove(<primal:pigiron_dust>);
<ore:ingotPigiron>.remove(<primal:pigiron_ingot>);
<ore:nuggetPigiron>.remove(<primal:pigiron_nugget>);
<ore:dustSilver>.remove(<primal:silver_dust>);
<ore:ingotSilver>.remove(<primal:silver_ingot>);
<ore:nuggetSilver>.remove(<primal:silver_nugget>);
<ore:dustTin>.remove(<primal:tin_dust>);
<ore:ingotTin>.remove(<primal:tin_ingot>);
<ore:nuggetTin>.remove(<primal:tin_nugget>);
<ore:dustVanadium>.remove(<primal:vanadium_dust>);
<ore:ingotVanadium>.remove(<primal:vanadium_ingot>);
<ore:nuggetVanadium>.remove(<primal:vanadium_nugget>);
<ore:dustWootz>.remove(<primal:wootz_dust>);
<ore:ingotWootz>.remove(<primal:wootz_ingot>);
<ore:nuggetWootz>.remove(<primal:wootz_nugget>);
<ore:dustZinc>.remove(<primal:zinc_dust>);
<ore:ingotZinc>.remove(<primal:zinc_ingot>);
<ore:nuggetZinc>.remove(<primal:zinc_nugget>);
<ore:ingotSteel>.remove(<primal:steel_ingot>);
<ore:ingotTamahagane>.remove(<primal:tamahagane_ingot>);
<ore:dustIron>.remove(<primal:iron_dust>);

<ore:plateIron>.remove(<primal:iron_plate>);
<ore:plateGold>.remove(<primal:gold_plate>);
<ore:platePigiron>.remove(<primal:pigiron_plate>);
<ore:plateSilver>.remove(<primal:silver_plate>);
<ore:plateZinc>.remove(<primal:zinc_plate>);
<ore:plateBrass>.remove(<primal:brass_plate>);

<ore:plateSteel>.remove(<nuclearphysics:plate_steel>);
<ore:plateBronze>.remove(<nuclearphysics:plate_bronze>);

<ore:ingotCopper>.remove(<factorytech:ingot>);
<ore:ingotNickel>.remove(<factorytech:ingot:1>);
<ore:ingotInvar>.remove(<factorytech:ingot:3>);

<ore:dustIron>.remove(<actuallyadditions:item_dust>);
<ore:dustGold>.remove(<actuallyadditions:item_dust:1>);

<ore:dustIron>.remove(<libvulpes:productdust:1>);
<ore:dustGold>.remove(<libvulpes:productdust:2>);
<ore:dustCopper>.remove(<libvulpes:productdust:4>);
<ore:dustTin>.remove(<libvulpes:productdust:5>);
<ore:dustSteel>.remove(<libvulpes:productdust:6>);
<ore:dustAluminum>.remove(<libvulpes:productdust:9>);
<ore:plateIron>.remove(<libvulpes:productplate:1>);
<ore:plateGold>.remove(<libvulpes:productplate:2>);
<ore:plateCopper>.remove(<libvulpes:productplate:4>);
<ore:plateTin>.remove(<libvulpes:productplate:5>);
<ore:plateSteel>.remove(<libvulpes:productplate:6>);
<ore:plateAluminum>.remove(<libvulpes:productplate:9>);
<ore:rodIron>.remove(<libvulpes:productrod:1>);
<ore:rodCopper>.remove(<libvulpes:productrod:4>);
<ore:rodSteel>.remove(<libvulpes:productrod:6>);
<ore:blockCopper>.remove(<libvulpes:metal0:4>);
<ore:blockTin>.remove(<libvulpes:metal0:5>);
<ore:blockSteel>.remove(<libvulpes:metal0:6>);
<ore:blockAluminum>.remove(<libvulpes:metal0:9>);

<ore:plateBronze>.remove(<embers:plate_bronze>);

<ore:nuggetBlackIron>.remove(<extendedcrafting:material:1>);
<ore:nuggetTin>.remove(<embers:nugget_tin>);
<ore:nuggetNickel>.remove(<embers:nugget_nickel>);
<ore:nuggetBronze>.remove(<embers:nugget_bronze>);
<ore:nuggetAluminum>.remove(<embers:nugget_aluminum>);
<ore:nuggetDawnstone>.remove(<embers:nugget_dawnstone>);
<ore:nuggetCopper>.remove(<embers:nugget_copper>);
<ore:nuggetDiamond>.remove(<betterwithmods:material:46>);
<ore:nuggetPigiron>.remove(<tconstruct:nuggets:4>);
<ore:nuggetKnightslime>.remove(<tconstruct:nuggets:3>);
<ore:nuggetSoulium>.remove(<mysticalagriculture:crafting:45>);
<ore:nuggetInsanium>.remove(<mysticalagradditions:insanium:3>);
<ore:nuggetIron>.remove(<immersiveengineering:metal:29>);
<ore:nuggetUranium>.remove(<immersiveengineering:metal:25>);
<ore:nuggetSilver>.remove(<embers:nugget_silver>);
<ore:nuggetLead>.remove(<embers:nugget_lead>);
<ore:nuggetAluminum>.remove(<immersiveengineering:metal:21>);
<ore:nuggetCopper>.remove(<immersiveengineering:metal:20>);

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

<ore:ingotCopper>.remove(<abyssalcraft:copperingot>);
<ore:ingotTin>.remove(<abyssalcraft:tiningot>);

<ore:plateLead>.remove(<primal:lead_plate>);
<ore:plateTin>.remove(<primal:tin_plate>);

<ore:plateCopper>.remove(<contenttweaker:material_part:1>);
<ore:plateCopper>.remove(<primal:copper_plate>);

<ore:plateBronze>.remove(<primal:bronze_plate>);

<ore:blockBronze>.remove(<embers:block_bronze>);

<ore:ingotCopper>.remove(<embers:ingot_copper>);
<ore:blockCopper>.remove(<embers:block_copper>);

<ore:asCrystal>.add(<astralsorcery:itemrockcrystalsimple>);
<ore:asCrystal>.add(<astralsorcery:itemcelestialcrystal>);
<ore:asCrystal>.add(<astralsorcery:itemtunedcelestialcrystal>);

<ore:ingotAluminum>.remove(<embers:ingot_aluminum>);
<ore:plateAluminum>.remove(<embers:plate_aluminum>);
<ore:ingotNickel>.remove(<embers:ingot_nickel>);
<ore:plateNickel>.remove(<embers:plate_nickel>);
<ore:ingotCopper>.remove(<embers:ingot_copper>);
<ore:ingotLead>.remove(<embers:ingot_lead>);
<ore:ingotSilver>.remove(<embers:ingot_silver>);
<ore:plateCopper>.remove(<embers:plate_copper>);
<ore:plateLead>.remove(<embers:plate_lead>);
<ore:plateSilver>.remove(<embers:plate_silver>);
<ore:plateIron>.remove(<embers:plate_iron>);
<ore:plateGold>.remove(<embers:plate_gold>);

<ore:gearGold>.remove(<teslacorelib:gear_gold>);
<ore:gearIron>.remove(<teslacorelib:gear_iron>);
<ore:gearWood>.remove(<teslacorelib:gear_wood>);

<ore:nuggetCopper>.remove(<factorytech:ore_dust:4>);
<ore:nuggetNickel>.remove(<factorytech:ore_dust:5>);
<ore:blockNickel>.remove(<factorytech:oreblock:1>);
<ore:blockCopper>.remove(<factorytech:oreblock>);
<ore:dustNickel>.remove(<factorytech:ore_dust:9>);
<ore:dustIron>.remove(<factorytech:ore_dust:6>);
<ore:dustCopper>.remove(<factorytech:ore_dust:8>);
<ore:dustGold>.remove(<factorytech:ore_dust:7>);
<ore:oreNickel>.remove(<factorytech:ore:1>);
<ore:oreCopper>.remove(<factorytech:ore>);

//Temp Fix
<ore:logWood>.add(<minecraft:log:1>);

<ore:hideTanned>.remove(<betterwithmods:material:6>);
<ore:hideScoured>.remove(<betterwithmods:material:7>);
