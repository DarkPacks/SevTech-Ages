//Shorthand
val ip = <ore:plateIron>;
val cp = <ore:plateCopper>;
val lp = <ore:plateLead>;
val np = <ore:plateNickel>;
val tp = <ore:plateTin>;
val sp = <ore:plateSteel>;
val gp = <ore:plateGold>;
val bp = <ore:plateBronze>;
val cgear = <ore:gearCopper>;
val tgear = <ore:gearTin>;
val bgear = <ore:gearBronze>;
val iron = <minecraft:iron_ingot>;
val gold = <minecraft:gold_ingot>;
val diamond = <minecraft:diamond>;
val emerald = <minecraft:emerald>;
val redstone = <minecraft:redstone>;
val coal = <minecraft:coal>;
val charcoal = <minecraft:coal:1>;
val shears = <ore:shears>;
val clayball = <minecraft:clay_ball>;
val log = <ore:logWood>;
val flint = <minecraft:flint>;
val plank = <ore:plankWood>;
val stick = <minecraft:stick>;
val stone = <minecraft:stone>;
val bone = <minecraft:bone>;
val leather = <minecraft:leather>;
val cobblestone = <minecraft:cobblestone>;
val cordage = <ore:cordageGeneral>;
val cane = <minecraft:reeds>;
val wool = <ore:wool>;
val str = <minecraft:string>;


//recipes.addShaped(<>, [[<>, <>, <>], [<>, <>, <>], [<>, <>, <>]]);
//mods.jei.JEI.hide(<>);

//recipes.addShaped(<>, [[<>, <>, <>], [<>, <>, <>], [<>, <>, <>]]);
//mods.jei.JEI.hide(<>);

//mods.recipestages.Recipes.addShapedMirrored

//recipes.remove(<chiselsandbits:bit_bag>);
//recipes.addShaped(<chiselsandbits:bit_bag>, [[leather, leather, leather], [leather, <chiselsandbits:block_bit>, leather], [leather, leather, leather]]);


//recipes.remove(<minecraft:iron_leggings>);
//mods.recipestages.Recipes.addShaped("test", "one", <minecraft:iron_leggings>,[[<minecraft:gold_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],[<minecraft:iron_ingot>, null, <minecraft:iron_ingot>],[<minecraft:iron_ingot>, null, <minecraft:iron_ingot>]]);
//mods.recipestages.Recipes.addShaped("two", <minecraft:iron_leggings>,[[<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:iron_ingot>],[<minecraft:iron_ingot>, null, <minecraft:iron_ingot>],[<minecraft:iron_ingot>, <minecraft:diamond>, <minecraft:iron_ingot>]]);




//Ores 
recipes.remove(<minecraft:iron_ingot>);
recipes.remove(<minecraft:gold_ingot>);
recipes.remove(<minecraft:brick>);
recipes.remove(<minecraft:netherbrick>);
recipes.remove(<abyssalcraft:abyingot>);
recipes.remove(<abyssalcraft:cingot>);
recipes.remove(<abyssalcraft:dreadiumingot>);
recipes.remove(<minecraft:iron_block>);
recipes.remove(<minecraft:gold_block>);
recipes.remove(<abyssalcraft:ingotblock>);
recipes.remove(<abyssalcraft:ingotblock:1>);
recipes.remove(<abyssalcraft:ingotblock:2>);
recipes.remove(<minecraft:gold_nugget>);
recipes.remove(<minecraft:iron_nugget>);
recipes.remove(<abyssalcraft:ingotnugget>);
recipes.remove(<abyssalcraft:ingotnugget:1>);
recipes.remove(<abyssalcraft:ingotnugget:2>);
recipes.remove(<abyssalcraft:ingotnugget:3>);


//Vanilla
recipes.remove(<minecraft:lead>);
recipes.addShaped(<minecraft:lead>, [[str, null, null], [null, <ore:cordageLeather>, null], [null, null, str]]);

recipes.addShaped(<minecraft:furnace>, [[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>], [<ore:cobblestone>, null, <ore:cobblestone>], [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]]);
recipes.addShaped(<minecraft:chest>, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [<ore:plankWood>, null, <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);
recipes.addShaped(<minecraft:cobblestone_wall> * 6, [[cobblestone, cobblestone, cobblestone], [cobblestone, cobblestone, cobblestone]]);
recipes.addShaped(<minecraft:wooden_button>, [[plank]]);
recipes.addShaped(<minecraft:stone_button>, [[stone]]);


recipes.addShaped(<minecraft:web>, [[stick, str, stick], [str, str, str], [stick, str, stick]]);




recipes.remove(<minecraft:leather_helmet>);
recipes.remove(<minecraft:leather_chestplate>);
recipes.remove(<minecraft:leather_leggings>);
recipes.remove(<minecraft:leather_boots>);
recipes.addShaped(<minecraft:leather_helmet>, [[leather, leather, leather], [leather, null, leather]]);
recipes.addShaped(<minecraft:leather_chestplate>, [[leather, null, leather], [leather, leather, leather], [leather, leather, leather]]);
recipes.addShaped(<minecraft:leather_leggings>, [[leather, leather, leather], [leather, null, leather], [leather, null, leather]]);
recipes.addShaped(<minecraft:leather_boots>, [[leather, null, leather], [leather, null, leather]]);

recipes.remove(<minecraft:brick_block>);
recipes.addShaped(<minecraft:brick_block>, [[<minecraft:brick>, <minecraft:brick>], [<minecraft:brick>, <minecraft:brick>]]);


recipes.remove(<minecraft:bowl>);
recipes.addShapeless(<minecraft:bowl>, [<primal:flint_workblade:*>, plank]);
recipes.addShapeless(<minecraft:bowl>, [<primal:quartz_workblade:*>, plank]);
recipes.addShapeless(<minecraft:bowl>, [<primal:iron_workblade:*>, plank]);
recipes.addShapeless(<minecraft:bowl>, [<primal:emerald_workblade:*>, plank]);
recipes.addShapeless(<minecraft:bowl>, [<primal:diamond_workblade:*>, plank]);
recipes.addShapeless(<minecraft:bowl>, [<primal:opal_workblade:*>, plank]);
recipes.addShapeless(<minecraft:bowl>, [<primal:obsidian_workblade:*>, plank]);

//Iron Chests
recipes.addShaped(<ironchest:iron_chest:7>, [[<minecraft:dirt>, <minecraft:dirt>, <minecraft:dirt>], [<minecraft:dirt>, <minecraft:chest>, <minecraft:dirt>], [<minecraft:dirt>, <minecraft:dirt>, <minecraft:dirt>]]);


//Horse Power
recipes.addShaped(<horsepower:hand_grindstone>, [[null, stick, null], [stone, stone, stone], [stone, stone, stone]]);
recipes.addShaped(<horsepower:grindstone>, [[<minecraft:lead>, stick, <minecraft:lead>], [stone, stone, stone], [stone, stone, stone]]);

//Primal Tech
recipes.addShaped(<primal_tech:clay_kiln>, [[clayball, clayball, clayball], [clayball, null, clayball], [clayball, <minecraft:stone_slab:3>, clayball]]);
recipes.addShaped(<primal_tech:wood_club>, [[null, log], [stick, null]]);
recipes.addShaped(<primal_tech:bone_club>, [[null, <minecraft:bone_block>], [stick, null]]);
recipes.addShaped(<primal_tech:stone_club>, [[null, stone], [stick, null]]);

recipes.remove(<primal_tech:stone_anvil>);
recipes.addShaped(<primal_tech:stone_anvil>, [[stone, stone, stone], [null, stone, null], [<minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>]]);
recipes.remove(<primal_tech:rock>);
recipes.addShapeless(<primal_tech:rock>, [<immcraft:rock>]);

recipes.addShaped(<primal_tech:bone_pickaxe>, [[<primal:sharp_bone>, bone, <primal:sharp_bone>], [null, stick, null], [null, stick, null]]);
recipes.addShaped(<primal_tech:bone_axe>, [[<primal:bone_knapp>, bone, null], [<primal:bone_knapp>, stick, null], [null, stick, null]]);
recipes.addShaped(<primal_tech:bone_shovel>, [[null, <primal:bone_knapp>, null], [null, stick, null], [null, stick, null]]);
recipes.addShaped(<primal_tech:bone_sword>, [[null, <primal:sharp_bone>, null], [null, bone, null], [null, stick, null]]);
recipes.addShaped(<primal_tech:fibre_torch>, [[<ore:cordageGeneral>], [stick]]);
recipes.addShaped(<primal_tech:stick_bundle>, [[stick, <ore:cordageGeneral>, stick], [stick, stick, stick], [stick, <ore:cordageGeneral>, stick]]);
recipes.addShaped(<primal_tech:stone_grill>, [[null, <immcraft:rock>, null], [<immcraft:rock>, null, <immcraft:rock>], [<minecraft:stone:*>, <minecraft:stone:*>, <minecraft:stone:*>]]);
recipes.addShaped(<primal_tech:fluid_bladder>, [[null, null, null], [<ore:dyeBrown>, <minecraft:dye>, <ore:dyeBrown>], [<primal:plant_cordage>, <primal:plant_cordage>, <primal:plant_cordage>]]);
recipes.addShaped(<primal_tech:flint_edged_disc>, [[null, <primal:flint_knapp>, null], [<primal:flint_knapp>, <ore:gearTin>, <primal:flint_knapp>], [null, <primal:flint_knapp>, null]]);


recipes.addShaped(<primal_tech:work_stump_upgraded>, [[null, <immcraft:shelf>, null], [<horsepower:chopping_block>, <primal_tech:work_stump>, <horsepower:chopping_block>], [null, <minecraft:log2:1>, null]]);
recipes.addShaped(<primal_tech:work_stump_upgraded>, [[null, <immcraft:shelf>, null], [<horsepower:chopping_block>, <primal_tech:work_stump>, <horsepower:chopping_block>], [null, <natura:overworld_logs2:1>, null]]);
recipes.addShaped(<primal_tech:work_stump_upgraded>, [[null, <immcraft:shelf>, null], [<horsepower:chopping_block>, <primal_tech:work_stump>, <horsepower:chopping_block>], [null, <natura:overworld_logs2:3>, null]]);
recipes.addShaped(<primal_tech:work_stump>, [[<horsepower:chopping_block>], [<ore:logWood>]]);

recipes.addShaped(<primal_tech:bone_shears>, [[<minecraft:bone>, null], [cordage, <minecraft:bone>]]);



//Primal Core
recipes.addShapeless(<primal:plant_cordage>, [<primal:plant_fiber>, <primal:plant_fiber>, <primal:plant_fiber>]);


//AbyssalCraft 





//Vanilla Stuffs
//recipes.remove(<minecraft:lever>);
//recipes.addShaped(<minecraft:lever>, [[null, stick, null], [null, <betterwithmods:material>, null], [<minecraft:stone_slab:*>, <minecraft:stone_slab:*>, <minecraft:stone_slab:*>]]);





recipes.addShaped(<progressiontweaks:fire_pit_unlit>, [[null, stick, null], [stick, <ore:cordageGeneral>, stick], [<ore:rock>, <ore:rock>, <ore:rock>]]);







//Cyclic
recipes.remove(<cyclicmagic:sleeping_mat>);
recipes.addShaped(<cyclicmagic:sleeping_mat>, [[leather, leather, leather], [<roots:straw>, <roots:straw>, <roots:straw>]]);
recipes.addShaped(<cyclicmagic:sleeping_mat>, [[leather, leather, leather], [<primal:thin_slab_thatch>, <primal:thin_slab_thatch>, <primal:thin_slab_thatch>]]);



//Fixes Immersive Craft not using OreDict for Wood and adds recipes
recipes.remove(<immcraft:furnace>);
recipes.remove(<immcraft:chest>);
recipes.remove(<immcraft:cupboard>);
recipes.remove(<immcraft:shelf>);
recipes.remove(<immcraft:bookshelf>);
recipes.remove(<horsepower:dough>);
recipes.remove(<actuallyadditions:item_misc:9>);
recipes.addShaped(<immcraft:chest>, [[plank, plank, plank], [plank, <immcraft:rock>, plank], [plank, plank, plank]]);
recipes.addShaped(<immcraft:cupboard>, [[plank, plank, plank], [plank, plank, plank], [plank, <immcraft:rock>, plank]]);
recipes.addShaped(<immcraft:shelf>, [[plank, <immcraft:rock>, plank], [plank, plank, plank], [plank, plank, plank]]);
recipes.addShaped(<immcraft:bookshelf>, [[plank, <immcraft:rock>, plank], [plank, <minecraft:book>, plank], [plank, plank, plank]]);
recipes.addShaped(<immcraft:furnace>, [[stone, stone, stone], [stone, <primal_tech:stone_grill>, stone], [stone, stone, stone]]);

recipes.remove(<minecraft:bread>);
recipes.addShapeless(<horsepower:dough>, [<ore:foodFlour>, <ore:foodSalt>, <ore:bottleWater>.giveBack(<minecraft:glass_bottle>)]);
recipes.addShapeless(<horsepower:dough>, [<ore:foodFlour>, <ore:foodSalt>, <minecraft:water_bucket>]);
recipes.addShapeless(<horsepower:dough>, [<ore:foodFlour>, <ore:foodSalt>, <primal_tech:fluid_bladder:1>.withTag({Fluid: {FluidName: "water", Amount: 1000}})]);
recipes.addShapeless(<actuallyadditions:item_misc:9>, [<betterwithaddons:japanmat:4>, <ore:foodSalt>, <ore:bottleWater>.giveBack(<minecraft:glass_bottle>)]);
recipes.addShapeless(<actuallyadditions:item_misc:9>, [<betterwithaddons:japanmat:4>, <ore:foodSalt>, <minecraft:water_bucket>]);
recipes.addShapeless(<actuallyadditions:item_misc:9>, [<betterwithaddons:japanmat:4>, <ore:foodSalt>, <primal_tech:fluid_bladder:1>.withTag({Fluid: {FluidName: "water", Amount: 1000}})]);

recipes.addShapeless(<primal:mud_clump>, [<minecraft:dirt>, <minecraft:dirt>, <ore:bottleWater>.giveBack(<minecraft:glass_bottle>)]);
recipes.addShapeless(<primal:mud_clump>, [<minecraft:dirt>, <minecraft:dirt>, <minecraft:water_bucket>]);
recipes.addShapeless(<primal:mud_clump>, [<minecraft:dirt>, <minecraft:dirt>, <primal_tech:fluid_bladder:1>.withTag({Fluid: {FluidName: "water", Amount: 1000}})]);

recipes.remove(<progressiontweaks:spear>);
recipes.remove(<progressiontweaks:stone_hammer>);
recipes.remove(<progressiontweaks:tomahawk>);
recipes.addShapedMirrored(<progressiontweaks:spear>, [[<primal:flint_knapp>, null, null], [null, stick, null], [null, null, stick]]);
recipes.addShaped(<progressiontweaks:spear>, [[null, null, <primal:flint_knapp>], [null, stick, null], [stick, null, null]]);
recipes.addShaped(<progressiontweaks:stone_hammer>, [[<ore:cordageGeneral>, <ore:rock>], [stick, null]]);
recipes.addShaped(<progressiontweaks:tomahawk>, [[<ore:cordageGeneral>, <primal:flint_knapp>], [<primal:flint_point>, stick]]);
recipes.remove(<primal:thatching_wet>);
recipes.addShaped(<primal:thatching_wet> * 4, [[<ore:thatchingMaterialBasic>, <ore:thatchingMaterialBasic>], [<ore:thatchingMaterialBasic>, <ore:thatchingMaterialBasic>]]);

//recipes.remove(<impstorage:controller>);
//recipes.addShaped(<impstorage:controller>, [[<ore:plankWood>, <immcraft:cupboard>, <ore:plankWood>], [<immcraft:cupboard>, <immcraft:chest>, <immcraft:cupboard>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);

//recipes.remove(<impstorage:controller_interface>);
//recipes.addShaped(<impstorage:controller_interface>, [[<ore:plankWood>, <immcraft:cupboard>, <ore:plankWood>], [<immcraft:cupboard>, <immcraft:chest>, <immcraft:cupboard>], [<ore:plankWood>, <wopper:wopper>, <ore:plankWood>]]);



//Wooden Hooper 
recipes.remove(<wopper:wopper>);
recipes.remove(<primal_tech:wooden_hopper>);
recipes.addShaped(<wopper:wopper>, [[<ore:plankWood>, null, <ore:plankWood>], [<ore:plankWood>, <immcraft:chest>, <ore:plankWood>], [null, <ore:plankWood>, null]]);
recipes.addShaped(<primal_tech:wooden_hopper>, [[<ore:barkWood>, <minecraft:web>, <ore:barkWood>], [<ore:barkWood>, <wopper:wopper>, <ore:barkWood>], [null, <ore:barkWood>, null]]);



//Roots
recipes.remove(<roots:pouch>);
recipes.remove(<roots:book_base>);
recipes.remove(<roots:pestle>);
recipes.remove(<roots:wood_knife>);
recipes.remove(<roots:stone_knife>);
recipes.remove(<roots:iron_knife>);
recipes.remove(<roots:diamond_knife>);
recipes.remove(<roots:gold_knife>);
recipes.remove(<roots:thatch>);
recipes.addShaped(<roots:pouch>, [[str, null, str], [<betterwithaddons:wool>, <pickletweaks:dye_powder:*>, <betterwithaddons:wool>], [null, <betterwithaddons:wool>, null]]);
recipes.addShaped(<roots:pestle>, [[null, <immcraft:rock>], [stick, null]]);
recipes.addShaped(<roots:wood_knife>, [[null, <ore:plankWood>], [stick, null]]);
recipes.addShaped(<roots:stone_knife>, [[null, <ore:cobblestone>], [stick, null]]);
recipes.addShaped(<roots:wood_shears>, [[null, plank, null], [plank, null, plank ], [stick, plank, null]]);
recipes.addShapeless(<roots:book_base>, [<primal:plant_cloth>, str, <ore:barkBirch>]);
recipes.addShaped(<roots:bonfire>, [[null, stick, null], [stick, <ore:barkWood>, stick], [cobblestone, cobblestone, cobblestone]]);
recipes.addShaped(<roots:thatch>, [[<roots:straw>, <roots:straw>], [<roots:straw>, <roots:straw>]]);
recipes.addShaped(<roots:iron_knife>, [[null, iron], [stick, null]]);
recipes.addShaped(<roots:diamond_knife>, [[null, diamond], [stick, null]]);
recipes.addShaped(<roots:gold_knife>, [[null, gold], [stick, null]]);






//recipes.addShaped(<simplyjuices:itemtooljuicer>, [[null, <roots:pestle>], [null, stone]]);

//Totemic
recipes.addShaped(<totemic:tipi>, [[stick, leather, stick], [leather, stick, leather], [leather, stick, leather]]);
recipes.addShaped(<totemic:wind_chime>, [[stick, stick, stick], [str, <minecraft:flint>, str], [<minecraft:reeds>, <minecraft:bone>, <minecraft:reeds>]]);
recipes.addShaped(<totemic:totem_whittling_knife>, [[null, <primal:flint_knapp>], [stick, null]]);
recipes.addShaped(<totemic:drum>, [[<ore:plankWood>, leather, <ore:plankWood>], [<ore:plankWood>, null, <ore:plankWood>], [<ore:plankWood>, null, <ore:plankWood>]]);
recipes.addShaped(<totemic:flute>, [[null, <minecraft:tallgrass:*>, <minecraft:reeds>], [null, <minecraft:reeds>, null], [<minecraft:reeds>, null, null]]);
recipes.addShaped(<totemic:totem_torch>, [[null, <primal_tech:fibre_torch_lit>, null], [null, stick, null], [null, stick, null]]);
recipes.addShaped(<totemic:totempedia>, [[null, <ore:treeSapling>, null], [null, <roots:book_base>, null], [null, null, null]]);
recipes.addShaped(<totemic:sub_items:1>, [[bone, cane, bone], [cane, bone, cane], [null, null, null]]);
recipes.addShaped(<totemic:totemic_staff>, [[null, <minecraft:red_flower>, <minecraft:double_plant>], [null, stick, <minecraft:yellow_flower>], [stick, null, null]]);
recipes.addShaped(<totemic:jingle_dress>, [[str, str, str], [<totemic:sub_items:1>, <totemic:sub_items:1>, <totemic:sub_items:1>], [null, null, null]]);
recipes.addShaped(<totemic:rattle>, [[stick, null], [null, <totemic:sub_items:1>]]);











//Millstone requires grindstone
recipes.remove(<betterwithmods:single_machine>);
recipes.addShaped(<betterwithmods:single_machine>, [[stone, <minecraft:stone_slab>, stone], [stone, <horsepower:hand_grindstone>, stone], [stone, stone, stone]]);
recipes.addShaped(<horsepower:press>, [[<minecraft:lead>, stick, <minecraft:lead>], [<ore:plankWood>, <ore:slabWood>, <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);



//I'm tired of the annoyance of getting flint and we've changed that! Thanks to BlakeBr0! <3
recipes.remove(<minecraft:flint>);
recipes.addShapeless(<minecraft:flint> * 9, [<betterwithmods:aesthetic:5>]);
recipes.addShapeless(<minecraft:flint>, [<pickletweaks:grass_mesh:*>, <minecraft:gravel>]);
recipes.remove(<pickletweaks:mesh>);
recipes.addShapedMirrored(<pickletweaks:grass_mesh>, [[stick, <ore:cordageGeneral>], [<ore:cordageGeneral>, stick]]);



recipes.addShaped(<primal_tech:charcoal_hopper>, [[<roots:petal_dust>.withTag({spell: "spell_orange_tulip"}), <abyssalcraft:shadowgem>, <roots:petal_dust>.withTag({spell: "spell_orange_tulip"})], [<roots:petal_dust>.withTag({spell: "spell_orange_tulip"}), <embers:ancient_motive_core>, <roots:petal_dust>.withTag({spell: "spell_orange_tulip"})], [null, <roots:petal_dust>.withTag({spell: "spell_orange_tulip"}), null]]);
//recipes.addShaped(<primal_tech:charcoal_hopper>, [[<roots:petal_dust>, <abyssalcraft:shadowgem>, <roots:petal_dust>], [<roots:petal_dust>, <embers:ancient_motive_core>, <roots:petal_dust>], [null, <roots:petal_dust>, null]]);





//Leather Processing
recipes.addShapeless(<primal:hide_salted>, [<primal:hide_raw>, <ore:foodSalt>, <primal_tech:fluid_bladder:1>.withTag({Fluid: {FluidName: "water", Amount: 1000}})]);
//recipes.addShapeless(<primal:hide_salted>, [<primal:hide_raw>, <ore:foodSalt>, <primal_tech:fluid_bladder:1>]);
recipes.addShapeless(<primal:hide_tanned>, [<primal:hide_dried>, <primal:tannin_ground>, <primal_tech:fluid_bladder:1>.withTag({Fluid: {FluidName: "water", Amount: 1000}})]);
//recipes.addShapeless(<primal:hide_tanned>, [<primal:hide_dried>, <primal:tannin_ground>, <primal_tech:fluid_bladder:1>]);

recipes.addShapeless(<primal:hide_raw> * 1, [<ore:toolWorkBlade>, <minecraft:rabbit_hide>, <minecraft:rabbit_hide>, <minecraft:rabbit_hide>, <minecraft:rabbit_hide>]);
recipes.addShapeless(<primal:hide_raw> * 6, [<ore:toolWorkBlade>, <totemic:buffalo_items>]);
recipes.addShapeless(<primal:hide_raw> * 4, [<ore:toolWorkBlade>, <ore:peltLarge>]);
recipes.addShapeless(<primal:hide_raw> * 2, [<ore:toolWorkBlade>, <primal:pelt_animal>]);
recipes.addShapeless(<primal:hide_raw> * 2, [<ore:toolWorkBlade>, <ore:peltWolf>]);
recipes.addShapeless(<primal:hide_raw> * 2, [<ore:toolWorkBlade>, <ore:peltPig>]);
recipes.addShapeless(<primal:hide_raw> * 3, [<ore:toolWorkBlade>, <ore:peltSheep>]);
recipes.addShapeless(<primal:hide_raw> * 2, [<ore:toolWorkBlade>, <ore:peltOvis>]);
recipes.addShapeless(<primal:hide_raw> * 2, [<ore:toolWorkBlade>, <animalium:wild_dog_pelt>]);
recipes.addShapeless(<primal:hide_raw> * 3, [<ore:toolWorkBlade>, <primal:pelt_shark>]);


recipes.remove(<minecraft:saddle>);
recipes.addShaped(<minecraft:saddle>, [[leather, leather, leather], [<primal:leather_cordage>, <primal:leather_cordage>, <primal:leather_cordage>], [null, null, null]]);



//string Recipes
recipes.remove(<minecraft:string>);
recipes.remove(<betterwithaddons:loom>);
recipes.addShapeless(<minecraft:string> * 8, [<betterwithaddons:bolt:6>]);
recipes.addShapeless(str, [<ore:toolWorkBlade>, <ore:cropCotton>, <ore:cropCotton>, <ore:cropCotton>]);
recipes.addShaped(<betterwithaddons:loom>, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [<ore:plankWood>, <betterwithmods:material>, <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);


//Wood Armor uses bark
//recipes.remove(<tp:wooden_helmet>);
//recipes.addShaped(<tp:wooden_helmet>, [[<primal:bark_oak>, <primal:bark_oak>, <primal:bark_oak>], [<primal:bark_oak>, null, <primal:bark_oak>]]);
//recipes.remove(<tp:wooden_chestplate>);
//recipes.addShaped(<tp:wooden_chestplate>, [[<primal:bark_oak>, null, <primal:bark_oak>], [<primal:bark_oak>, <primal:bark_oak>, <primal:bark_oak>], [<primal:bark_oak>, <primal:bark_oak>, <primal:bark_oak>]]);
//recipes.remove(<tp:wooden_leggings>);
//recipes.addShaped(<tp:wooden_leggings>, [[<primal:bark_oak>, <primal:bark_oak>, <primal:bark_oak>], [<primal:bark_oak>, null, <primal:bark_oak>], [<primal:bark_oak>, null, <primal:bark_oak>]]);
//recipes.remove(<tp:wooden_boots>);
//recipes.addShaped(<tp:wooden_boots>, [[<primal:bark_oak>, null, <primal:bark_oak>], [<primal:bark_oak>, null, <primal:bark_oak>]]);

//backpack
recipes.addShaped(<improvedbackpacks:backpack>, [[leather, leather, leather], [leather, <immcraft:chest>, leather], [leather, <primal:leather_cordage>, leather]]);


recipes.addShapeless(<improvedbackpacks:backpack>.withTag({Color: 0}), [<improvedbackpacks:backpack>, <pickletweaks:dye_powder:0>]);
recipes.addShapeless(<improvedbackpacks:backpack>.withTag({Color: 1}), [<improvedbackpacks:backpack>, <pickletweaks:dye_powder:1>]);
recipes.addShapeless(<improvedbackpacks:backpack>.withTag({Color: 2}), [<improvedbackpacks:backpack>, <pickletweaks:dye_powder:2>]);
recipes.addShapeless(<improvedbackpacks:backpack>.withTag({Color: 3}), [<improvedbackpacks:backpack>, <pickletweaks:dye_powder:3>]);
recipes.addShapeless(<improvedbackpacks:backpack>.withTag({Color: 4}), [<improvedbackpacks:backpack>, <pickletweaks:dye_powder:4>]);
recipes.addShapeless(<improvedbackpacks:backpack>.withTag({Color: 5}), [<improvedbackpacks:backpack>, <pickletweaks:dye_powder:5>]);
recipes.addShapeless(<improvedbackpacks:backpack>.withTag({Color: 6}), [<improvedbackpacks:backpack>, <pickletweaks:dye_powder:6>]);
recipes.addShapeless(<improvedbackpacks:backpack>.withTag({Color: 7}), [<improvedbackpacks:backpack>, <pickletweaks:dye_powder:7>]);
recipes.addShapeless(<improvedbackpacks:backpack>.withTag({Color: 8}), [<improvedbackpacks:backpack>, <pickletweaks:dye_powder:8>]);
recipes.addShapeless(<improvedbackpacks:backpack>.withTag({Color: 9}), [<improvedbackpacks:backpack>, <pickletweaks:dye_powder:9>]);
recipes.addShapeless(<improvedbackpacks:backpack>.withTag({Color: 10}), [<improvedbackpacks:backpack>, <pickletweaks:dye_powder:10>]);
recipes.addShapeless(<improvedbackpacks:backpack>.withTag({Color: 11}), [<improvedbackpacks:backpack>, <pickletweaks:dye_powder:11>]);
recipes.addShapeless(<improvedbackpacks:backpack>.withTag({Color: 12}), [<improvedbackpacks:backpack>, <pickletweaks:dye_powder:12>]);
recipes.addShapeless(<improvedbackpacks:backpack>.withTag({Color: 13}), [<improvedbackpacks:backpack>, <pickletweaks:dye_powder:13>]);
recipes.addShapeless(<improvedbackpacks:backpack>.withTag({Color: 14}), [<improvedbackpacks:backpack>, <pickletweaks:dye_powder:14>]);
recipes.addShapeless(<improvedbackpacks:backpack>.withTag({Color: 15}), [<improvedbackpacks:backpack>, <pickletweaks:dye_powder:15>]);



//Useless seeds can now be used!
recipes.addShaped(<actuallyadditions:item_misc:1>, [[null, null, null], [null, <ore:thisIsWhatHappensWhenYouDontFollowOreDictionariesForSeeds>, <ore:thisIsWhatHappensWhenYouDontFollowOreDictionariesForSeeds>], [null, <ore:thisIsWhatHappensWhenYouDontFollowOreDictionariesForSeeds>, <ore:thisIsWhatHappensWhenYouDontFollowOreDictionariesForSeeds>]]);



recipes.addShaped(<primal:flint_hatchet>, [[cordage, <primal:flint_knapp>], [stick, null]]);
recipes.addShaped(<primal:flint_shovel>, [[null, cordage, <primal:flint_knapp>], [null, stick, cordage], [stick, null, null]]);
recipes.addShaped(<primal:flint_hoe>, [[null, <primal:flint_knapp>, flint], [null, stick, cordage], [stick, null, null]]);
recipes.addShaped(<primal:flint_axe>, [[null, <primal:flint_knapp>, <primal:flint_knapp>], [cordage, stick, flint], [stick, cordage, null]]);
recipes.addShaped(<primal:flint_shears>, [[<primal:flint_knapp>, null, null], [<primal:flint_knapp>, null, null], [cordage, <primal:flint_knapp>, <primal:flint_knapp>]]);
recipes.addShaped(<primal:flint_workblade>, [[<primal:flint_knapp>, cordage, <primal:flint_knapp>], [<primal:flint_knapp>, stick, <primal:flint_knapp>], [null, stick, null]]);
recipes.addShaped(<primal:flint_saw>, [[cordage, null, null], [<primal:flint_knapp>, stick, null], [null, <primal:flint_knapp>, stick]]);
recipes.addShaped(<primal:flint_pickaxe>, [[null, <primal:flint_knapp>, cordage], [null, stick, <primal:flint_knapp>], [stick, null, null]]);


//recipes.addShaped(<>, [[<>, <>, <>], [<>, stick, <>], [null, stick, null]]);
//recipes.addShaped(<>, [[<>, <>, <>], [<>, stick, <>], [null, stick, null]]);
//recipes.addShaped(<>, [[<>, <>, <>], [<>, stick, <>], [null, stick, null]]);
//recipes.addShaped(<>, [[<>, <>, <>], [<>, <>, <>], [null, stick, null]]);
//recipes.addShaped(<>, [[<>, <>, <>], [<>, stick, <>], [null, stick, null]]);


//Tinkers Compliment Recipes
recipes.remove(<tcomplement:porcelain_casting:1>);
recipes.addShaped(<tcomplement:porcelain_casting:1>, [[<ceramics:unfired_clay:5>, null, <ceramics:unfired_clay:5>], [<ceramics:unfired_clay:5>, null, <ceramics:unfired_clay:5>], [<ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>]]);




//Runestone is more harder 'n stuff
recipes.remove(<roots:chiseled_runestone>);
recipes.addShaped(<roots:chiseled_runestone>, [[null, null, null], [null, null, null], [<primal:flint_point>, <roots:runestone>, null]]);

recipes.remove(<primal:leather_cordage>);
recipes.addShaped(<primal:leather_cordage>, [[null, <primal:leather_strip>, null], [<primal:leather_strip>, str, <primal:leather_strip>], [null, null, null]]);
recipes.remove(<betterwithmods:material:9>);
recipes.addShaped(<betterwithmods:material:9>, [[null, <ore:cordageLeather>, null], [<ore:cordageLeather>, <ore:slimeball>, <ore:cordageLeather>], [null, <ore:cordageLeather>, null]]);




//Fluid Bladder to Rice Slimeball
recipes.addShaped(<actuallyadditions:item_misc:12>, [[null, <actuallyadditions:item_misc:9>, null], [<actuallyadditions:item_misc:9>, <primal_tech:fluid_bladder:1>.withTag({Fluid: {FluidName: "water", Amount: 1000}}), <actuallyadditions:item_misc:9>], [null, <actuallyadditions:item_misc:9>, null]]);
recipes.addShaped(<actuallyadditions:item_misc:12>, [[null, <actuallyadditions:item_misc:9>, null], [<actuallyadditions:item_misc:9>, <ceramics:clay_bucket>.withTag({fluids: {FluidName: "water", Amount: 1000}}), <actuallyadditions:item_misc:9>], [null, <actuallyadditions:item_misc:9>, null]]);

//Horse Cart 
recipes.addShaped(<astikoor:cargocart>, [[<ore:plankWood>, null, <ore:plankWood>], [<primalchests:primal_chest_advanced>, plank, <primalchests:primal_chest_advanced>], [<astikoor:wheel>, <ore:slabWood>, <astikoor:wheel>]]);
recipes.addShaped(<astikoor:wheel>, [[stick, stick, stick], [stick, plank, stick], [stick, stick, stick]]);
recipes.addShaped(<astikoor:plowcart>, [[null, null, null], [stick, stick, stick], [<astikoor:wheel>, <astikoor:wheel>, <minecraft:stone>]]);

//Teacup uses porcelain 
recipes.remove(<simplytea:cup>);
 recipes.addShaped(<simplytea:cup>, [[<ceramics:unfired_clay:5>, null, <ceramics:unfired_clay:5>], [<ceramics:unfired_clay:5>, null, <ceramics:unfired_clay:5>], [null, <ceramics:unfired_clay:5>, null]]);