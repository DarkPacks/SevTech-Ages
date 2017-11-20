//Shorthand
val ip = <ore:plateIron>;
val cp = <ore:plateCopper>;
val lp = <ore:plateLead>;
val np = <ore:plateNickel>;
val tp = <ore:plateTin>;
val sp = <ore:plateSteel>;
val gp = <ore:plateGold>;
val bp = <ore:plateBronze>;
val dp = <ore:plateDawnstone>;
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


//Entire Mods into Stage two
var modIDs = [
"astralsorcery",
"uppers",
"farmingforblockheads"
] as string[];
for id in modIDs {
    for item in loadedMods[id].items {
        mods.recipestages.Recipes.setRecipeStage("two", item);
    }
}

//Vanilla
recipes.remove(<minecraft:paper>);
mods.recipestages.Recipes.addShaped("two", <minecraft:bookshelf>, [[plank, plank, plank], [<minecraft:book>, <minecraft:book>, <minecraft:book>], [plank, plank, plank]]);
mods.recipestages.Recipes.addShapeless("two", <minecraft:book>, [<minecraft:paper>, leather, <minecraft:paper>, <minecraft:paper>]);
mods.recipestages.Recipes.addShapeless("two", <minecraft:writable_book>, [<minecraft:book>, <minecraft:dye>, <minecraft:feather>]);

mods.recipestages.Recipes.setRecipeStage("three", <minecraft:cauldron>);
mods.recipestages.Recipes.setRecipeStage("three", <minecraft:milk_bucket>);
mods.recipestages.Recipes.setRecipeStage("three", <minecraft:lava_bucket>);
mods.recipestages.Recipes.setRecipeStage("three", <minecraft:water_bucket>);
mods.recipestages.Recipes.setRecipeStage("three", <minecraft:name_tag>);
mods.recipestages.Recipes.setRecipeStage("three", <minecraft:tripwire_hook>);
mods.recipestages.Recipes.setRecipeStage("three", <minecraft:lapis_block>);
mods.recipestages.Recipes.setRecipeStage("three", <minecraft:dye:4>);

mods.recipestages.Recipes.setRecipeStage("two", <minecraft:armor_stand>);

mods.recipestages.Recipes.addShapeless("two", <primal:plant_fiber_pulp> * 3, [<betterwithmods:material:22>, <betterwithmods:material:12>, <minecraft:water_bucket>]);

mods.recipestages.Recipes.addShapeless("two", <primal:plant_fiber_pulp> * 3, [<betterwithmods:material:22>, <betterwithmods:material:12>, <primal_tech:fluid_bladder:1>.withTag({Fluid: {FluidName: "water", Amount: 1000}})]);


mods.recipestages.Recipes.setRecipeStage("two", <minecraft:bow>);
mods.recipestages.Recipes.setRecipeStage("two", <minecraft:arrow>);

recipes.remove(<minecraft:hopper>);
mods.recipestages.Recipes.addShaped("two", <minecraft:hopper>, [[ip, <minecraft:chest>,ip], [ip, bgear,ip], [null, ip, null]]);

mods.recipestages.Recipes.setRecipeStage("two", <minecraft:minecart>);
mods.recipestages.Recipes.setRecipeStage("two", <minecraft:chest_minecart>);
mods.recipestages.Recipes.setRecipeStage("two", <minecraft:furnace_minecart>);
mods.recipestages.Recipes.setRecipeStage("two", <minecraft:tnt_minecart>);
mods.recipestages.Recipes.setRecipeStage("two", <minecraft:hopper_minecart>);

mods.recipestages.Recipes.setRecipeStage("two", <minecraft:bookshelf>);
mods.recipestages.Recipes.setRecipeStage("two", <minecraft:glass_pane>);
mods.recipestages.Recipes.setRecipeStage("two", <minecraft:iron_bars>);
mods.recipestages.Recipes.setRecipeStage("two", <minecraft:anvil>);
mods.recipestages.Recipes.setRecipeStage("two", <minecraft:banner:*>);
mods.recipestages.Recipes.setRecipeStage("two", <minecraft:flint_and_steel>);
mods.recipestages.Recipes.setRecipeStage("two", <minecraft:glass_bottle>);

mods.recipestages.Recipes.setRecipeStage("two", <minecraft:cauldron>);
mods.recipestages.Recipes.setRecipeStage("two", <minecraft:writable_book>);
mods.recipestages.Recipes.setRecipeStage("two", <minecraft:golden_apple>);
mods.recipestages.Recipes.setRecipeStage("two", <minecraft:golden_apple:1>);
mods.recipestages.Recipes.setRecipeStage("two", <minecraft:speckled_melon>);


mods.recipestages.Recipes.setRecipeStage("two", <minecraft:shears>);
mods.recipestages.Recipes.setRecipeStage("two", <minecraft:stonebrick>);
mods.recipestages.Recipes.setRecipeStage("two", <minecraft:stonebrick:1>);

mods.recipestages.Recipes.setRecipeStage("two", <minecraft:iron_trapdoor>);
mods.recipestages.Recipes.setRecipeStage("two", <minecraft:iron_door>);

mods.recipestages.Recipes.setRecipeStage("two", <abyssalcraft:ahoe>);
mods.recipestages.Recipes.setRecipeStage("two", <abyssalcraft:corhoe>);
mods.recipestages.Recipes.setRecipeStage("two", <abyssalcraft:dreadiumhoe>);
mods.recipestages.Recipes.setRecipeStage("two", <abyssalcraft:ethaxiumhoe>);


mods.recipestages.Recipes.setRecipeStage("two", <cyclicmagic:gold_minecart>);
mods.recipestages.Recipes.setRecipeStage("two", <cyclicmagic:stone_minecart>);


mods.recipestages.Recipes.setRecipeStage("two", <chisel:chisel_iron>);

mods.recipestages.Recipes.setRecipeStage("two", <minecraft:redstone>);
mods.recipestages.Recipes.setRecipeStage("two", <minecraft:redstone_block>);

recipes.remove(<minecraft:piston>);
mods.recipestages.Recipes.addShaped("two", <minecraft:piston>, [[<ore:sidingWood>, <ore:sidingWood>, <ore:sidingWood>], [cobblestone, ip, cobblestone], [cobblestone, <minecraft:redstone>, cobblestone]]);
mods.recipestages.Recipes.setRecipeStage("two", <minecraft:sticky_piston>);


recipes.remove(<minecraft:wool:*>);
mods.recipestages.Recipes.addShaped("two", <minecraft:wool>, [[null, <betterwithaddons:wool>, null], [<betterwithaddons:wool>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool>], [null, <betterwithaddons:wool>, null]]);
mods.recipestages.Recipes.addShaped("two", <minecraft:wool:1>, [[null, <betterwithaddons:wool:1>, null], [<betterwithaddons:wool:1>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:1>], [null, <betterwithaddons:wool:1>, null]]);
mods.recipestages.Recipes.addShaped("two", <minecraft:wool:2>, [[null, <betterwithaddons:wool:2>, null], [<betterwithaddons:wool:2>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:2>], [null, <betterwithaddons:wool:2>, null]]);
mods.recipestages.Recipes.addShaped("two", <minecraft:wool:3>, [[null, <betterwithaddons:wool:3>, null], [<betterwithaddons:wool:3>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:3>], [null, <betterwithaddons:wool:3>, null]]);
mods.recipestages.Recipes.addShaped("two", <minecraft:wool:4>, [[null, <betterwithaddons:wool:4>, null], [<betterwithaddons:wool:4>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:4>], [null, <betterwithaddons:wool:4>, null]]);
mods.recipestages.Recipes.addShaped("two", <minecraft:wool:5>, [[null, <betterwithaddons:wool:5>, null], [<betterwithaddons:wool:5>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:5>], [null, <betterwithaddons:wool:5>, null]]);
mods.recipestages.Recipes.addShaped("two", <minecraft:wool:6>, [[null, <betterwithaddons:wool:6>, null], [<betterwithaddons:wool:6>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:6>], [null, <betterwithaddons:wool:6>, null]]);
mods.recipestages.Recipes.addShaped("two", <minecraft:wool:7>, [[null, <betterwithaddons:wool:7>, null], [<betterwithaddons:wool:7>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:7>], [null, <betterwithaddons:wool:7>, null]]);
mods.recipestages.Recipes.addShaped("two", <minecraft:wool:8>, [[null, <betterwithaddons:wool:8>, null], [<betterwithaddons:wool:8>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:8>], [null, <betterwithaddons:wool:8>, null]]);
mods.recipestages.Recipes.addShaped("two", <minecraft:wool:9>, [[null, <betterwithaddons:wool:9>, null], [<betterwithaddons:wool:9>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:9>], [null, <betterwithaddons:wool:9>, null]]);
mods.recipestages.Recipes.addShaped("two", <minecraft:wool:10>, [[null, <betterwithaddons:wool:10>, null], [<betterwithaddons:wool:10>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:10>], [null, <betterwithaddons:wool:10>, null]]);
mods.recipestages.Recipes.addShaped("two", <minecraft:wool:11>, [[null, <betterwithaddons:wool:11>, null], [<betterwithaddons:wool:11>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:11>], [null, <betterwithaddons:wool:11>, null]]);
mods.recipestages.Recipes.addShaped("two", <minecraft:wool:12>, [[null, <betterwithaddons:wool:12>, null], [<betterwithaddons:wool:12>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:12>], [null, <betterwithaddons:wool:12>, null]]);
mods.recipestages.Recipes.addShaped("two", <minecraft:wool:13>, [[null, <betterwithaddons:wool:13>, null], [<betterwithaddons:wool:13>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:13>], [null, <betterwithaddons:wool:13>, null]]);
mods.recipestages.Recipes.addShaped("two", <minecraft:wool:14>, [[null, <betterwithaddons:wool:14>, null], [<betterwithaddons:wool:14>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:14>], [null, <betterwithaddons:wool:14>, null]]);
mods.recipestages.Recipes.addShaped("two", <minecraft:wool:15>, [[null, <betterwithaddons:wool:15>, null], [<betterwithaddons:wool:15>, <betterwithmods:aesthetic:12>, <betterwithaddons:wool:15>], [null, <betterwithaddons:wool:15>, null]]);

mods.recipestages.Recipes.setRecipeStage("two", <minecraft:carpet:*>);


//Now you can make fleece in stage 2
mods.recipestages.Recipes.addShapeless("two", <betterwithaddons:wool>, [str, str, str, str]);

//Hopper Update Recipes in Stage 2
mods.recipestages.Recipes.addShaped("two", <primal_tech:charcoal_hopper>, [[null, <roots:petal_dust>.withTag({spell: "spell_orange_tulip"}), null], [null, <embers:ancient_motive_core>, null], [null, <minecraft:hopper>, null]]);

//Chisel 
mods.recipestages.Recipes.setRecipeStage("two", <chisel:waterstone1:1>);

//TComplement Melter Changes for Stage 2 / Twilight Access
mods.recipestages.Recipes.setRecipeStage("two", <tcomplement:materials>);
mods.recipestages.Recipes.setRecipeStage("two", <tconstruct:tooltables>);
mods.recipestages.Recipes.setRecipeStage("two", <tconstruct:toolforge>);
mods.recipestages.Recipes.setRecipeStage("two", <tconstruct:faucet>);


mods.recipestages.Recipes.setRecipeStage("two", <tcomplement:porcelain_tank:1>);
mods.recipestages.Recipes.setRecipeStage("two", <tcomplement:porcelain_tank:2>);
mods.recipestages.Recipes.addShaped("two", <tcomplement:porcelain_tank>, [[<ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>], [<ceramics:unfired_clay:5>, <ceramics:clay_barrel>, <ceramics:unfired_clay:5>], [<ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>]]);


mods.recipestages.Recipes.addShaped("two", <tconstruct:seared_tank>, [[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>], [<tconstruct:materials>, <ceramics:clay_barrel>, <tconstruct:materials>], [<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>]]);



//redstone
mods.recipestages.Recipes.setRecipeStage("two", <minecraft:lever>);

mods.recipestages.Recipes.setRecipeStage("two", <minecraft:stone_pressure_plate>);
mods.recipestages.Recipes.setRecipeStage("two", <minecraft:wooden_pressure_plate>);
mods.recipestages.Recipes.setRecipeStage("two", <minecraft:light_weighted_pressure_plate>);
mods.recipestages.Recipes.setRecipeStage("two", <minecraft:heavy_weighted_pressure_plate>);
mods.recipestages.Recipes.setRecipeStage("two", <abyssalcraft:dspplate>);
mods.recipestages.Recipes.setRecipeStage("two", <abyssalcraft:dltpplate>);
mods.recipestages.Recipes.setRecipeStage("two", <abyssalcraft:abypplate>);
mods.recipestages.Recipes.setRecipeStage("two", <abyssalcraft:cstonepplate>);

mods.recipestages.Recipes.setRecipeStage("two", "fishing_rod");

//Bed
recipes.remove(<minecraft:bed:*>);
mods.recipestages.Recipes.addShaped("two", <minecraft:bed>, [[<minecraft:wool:0>, <minecraft:wool:0>, <minecraft:wool:0>], [plank, plank, plank]]);
mods.recipestages.Recipes.addShaped("two", <minecraft:bed:1>, [[<minecraft:wool:1>, <minecraft:wool:1>, <minecraft:wool:1>], [plank, plank, plank]]);
mods.recipestages.Recipes.addShaped("two", <minecraft:bed:2>, [[<minecraft:wool:2>, <minecraft:wool:2>, <minecraft:wool:2>], [plank, plank, plank]]);
mods.recipestages.Recipes.addShaped("two", <minecraft:bed:3>, [[<minecraft:wool:3>, <minecraft:wool:3>, <minecraft:wool:3>], [plank, plank, plank]]);
mods.recipestages.Recipes.addShaped("two", <minecraft:bed:4>, [[<minecraft:wool:4>, <minecraft:wool:4>, <minecraft:wool:4>], [plank, plank, plank]]);
mods.recipestages.Recipes.addShaped("two", <minecraft:bed:5>, [[<minecraft:wool:5>, <minecraft:wool:5>, <minecraft:wool:5>], [plank, plank, plank]]);
mods.recipestages.Recipes.addShaped("two", <minecraft:bed:6>, [[<minecraft:wool:6>, <minecraft:wool:6>, <minecraft:wool:6>], [plank, plank, plank]]);
mods.recipestages.Recipes.addShaped("two", <minecraft:bed:7>, [[<minecraft:wool:7>, <minecraft:wool:7>, <minecraft:wool:7>], [plank, plank, plank]]);
mods.recipestages.Recipes.addShaped("two", <minecraft:bed:8>, [[<minecraft:wool:8>, <minecraft:wool:8>, <minecraft:wool:8>], [plank, plank, plank]]);
mods.recipestages.Recipes.addShaped("two", <minecraft:bed:9>, [[<minecraft:wool:9>, <minecraft:wool:9>, <minecraft:wool:9>], [plank, plank, plank]]);
mods.recipestages.Recipes.addShaped("two", <minecraft:bed:10>, [[<minecraft:wool:10>, <minecraft:wool:10>, <minecraft:wool:10>], [plank, plank, plank]]);
mods.recipestages.Recipes.addShaped("two", <minecraft:bed:11>, [[<minecraft:wool:11>, <minecraft:wool:11>, <minecraft:wool:11>], [plank, plank, plank]]);
mods.recipestages.Recipes.addShaped("two", <minecraft:bed:12>, [[<minecraft:wool:12>, <minecraft:wool:12>, <minecraft:wool:12>], [plank, plank, plank]]);
mods.recipestages.Recipes.addShaped("two", <minecraft:bed:13>, [[<minecraft:wool:13>, <minecraft:wool:13>, <minecraft:wool:13>], [plank, plank, plank]]);
mods.recipestages.Recipes.addShaped("two", <minecraft:bed:14>, [[<minecraft:wool:14>, <minecraft:wool:14>, <minecraft:wool:14>], [plank, plank, plank]]);
mods.recipestages.Recipes.addShaped("two", <minecraft:bed:15>, [[<minecraft:wool:15>, <minecraft:wool:15>, <minecraft:wool:15>], [plank, plank, plank]]);

//Better With Mods 
recipes.remove(<betterwithmods:aesthetic:12>);
recipes.remove(<betterwithaddons:redstone_emitter>);
mods.recipestages.Recipes.setRecipeStage("two", <betterwithmods:metal_chime:*>);

mods.recipestages.Recipes.addShaped("two", <betterwithmods:aesthetic:12>, [[<betterwithmods:wicker>, <betterwithmods:wicker>], [<betterwithmods:wicker>, <betterwithmods:wicker>]]);
mods.recipestages.Recipes.addShaped("two", <betterwithmods:ender_spectacles>, [[null, null, null], [<betterwithmods:material:40>, <ore:cordageLeather>, <betterwithmods:material:40>], [null, null, null]]);

mods.recipestages.Recipes.addShaped("two", <betterwithaddons:redstone_emitter>, [[<ore:sidingWood>, <ore:sidingWood>, <ore:sidingWood>], [<betterwithmods:wicker>, <betterwithmods:wooden_gearbox>, <minecraft:lever>], [<ore:sidingWood>, <ore:sidingWood>, <ore:sidingWood>]]);


mods.recipestages.Recipes.setRecipeStage("two", <minecraft:chainmail_helmet>);
mods.recipestages.Recipes.setRecipeStage("two", <minecraft:chainmail_chestplate>);
mods.recipestages.Recipes.setRecipeStage("two", <minecraft:chainmail_leggings>);
mods.recipestages.Recipes.setRecipeStage("two", <minecraft:chainmail_boots>);

recipes.remove(<minecraft:iron_helmet>);
recipes.remove(<minecraft:iron_chestplate>);
recipes.remove(<minecraft:iron_leggings>);
recipes.remove(<minecraft:iron_boots>);
mods.recipestages.Recipes.addShaped("two", <minecraft:iron_helmet>, [[ip, ip, ip], [ip, null, ip]]);
mods.recipestages.Recipes.addShaped("two", <minecraft:iron_chestplate>, [[ip, null, ip], [ip, ip, ip], [ip, ip, ip]]);
mods.recipestages.Recipes.addShaped("two", <minecraft:iron_leggings>, [[ip, ip, ip], [ip, null, ip], [ip, null, ip]]);
mods.recipestages.Recipes.addShaped("two", <minecraft:iron_boots>, [[ip, null, ip], [ip, null, ip]]);
recipes.remove(<minecraft:iron_shovel>);
recipes.remove(<minecraft:iron_pickaxe>);
recipes.remove(<minecraft:iron_axe>);
recipes.remove(<minecraft:iron_sword>);
recipes.remove(<minecraft:iron_hoe>);
mods.recipestages.Recipes.addShaped("two", <minecraft:iron_shovel>, [[null, ip, null], [null, stick, null], [null, stick, null]]);
mods.recipestages.Recipes.addShaped("two", <minecraft:iron_pickaxe>, [[ip, ip, ip], [null, stick, null], [null, stick, null]]);
mods.recipestages.Recipes.addShaped("two", <minecraft:iron_axe>, [[ip, ip, null], [ip, stick, null], [null, stick, null]]);
mods.recipestages.Recipes.addShaped("two", <minecraft:iron_sword>, [[null, ip, null], [null, ip, null], [null, stick, null]]);
mods.recipestages.Recipes.addShaped("two", <minecraft:iron_hoe>, [[ip, ip, null], [null, stick, null], [null, stick, null]]);

recipes.remove(<minecraft:golden_helmet>);
recipes.remove(<minecraft:golden_chestplate>);
recipes.remove(<minecraft:golden_leggings>);
recipes.remove(<minecraft:golden_boots>);
mods.recipestages.Recipes.addShaped("two", <minecraft:golden_helmet>, [[gp, gp, gp], [gp, null, gp]]);
mods.recipestages.Recipes.addShaped("two", <minecraft:golden_chestplate>, [[gp, null, gp], [gp, gp, gp], [gp, gp, gp]]);
mods.recipestages.Recipes.addShaped("two", <minecraft:golden_leggings>, [[gp, gp, gp], [gp, null, gp], [gp, null, gp]]);
mods.recipestages.Recipes.addShaped("two", <minecraft:golden_boots>, [[gp, null, gp], [gp, null, gp]]);

recipes.remove(<minecraft:golden_shovel>);
recipes.remove(<minecraft:golden_pickaxe>);
recipes.remove(<minecraft:golden_axe>);
recipes.remove(<minecraft:golden_sword>);
recipes.remove(<minecraft:golden_hoe>);
mods.recipestages.Recipes.addShaped("two", <minecraft:golden_shovel>, [[null, gp, null], [null, stick, null], [null, stick, null]]);
mods.recipestages.Recipes.addShaped("two", <minecraft:golden_pickaxe>, [[gp, gp, gp], [null, stick, null], [null, stick, null]]);
mods.recipestages.Recipes.addShaped("two", <minecraft:golden_axe>, [[gp, gp, null], [gp, stick, null], [null, stick, null]]);
mods.recipestages.Recipes.addShaped("two", <minecraft:golden_sword>, [[null, gp, null], [null, gp, null], [null, stick, null]]);
mods.recipestages.Recipes.addShaped("two", <minecraft:golden_hoe>, [[gp, gp, null], [null, stick, null], [null, stick, null]]);

//Smiley Cloud is craftable. You're welcome.
recipes.remove(<actuallyadditions:block_smiley_cloud>);
mods.recipestages.Recipes.addShaped("two", <actuallyadditions:block_smiley_cloud>, [[null, <minecraft:wool:*>, null], [<minecraft:wool:*>, <forge:bucketfilled>.withTag({FluidName: "xpjuice", Amount: 1000}), <minecraft:wool:*>], [null, <minecraft:wool:*>, null]]);


//Shields
recipes.remove(<spartanshields:shield_basic_iron>);
recipes.remove(<spartanshields:shield_basic_gold>);
recipes.remove(<spartanshields:shield_basic_silver>);
recipes.remove(<minecraft:shield>);
mods.recipestages.Recipes.addShaped("two", <spartanshields:shield_basic_iron>, [[null, ip, null], [ip, <spartanshields:shield_basic_wood>, ip], [null, ip, null]]);
mods.recipestages.Recipes.addShaped("two", <spartanshields:shield_basic_gold>, [[null, gp, null], [gp, <spartanshields:shield_basic_wood>, gp], [null, gp, null]]);
mods.recipestages.Recipes.addShaped("two", <spartanshields:shield_basic_silver>, [[null, sp, null], [sp, <spartanshields:shield_basic_wood>, sp], [null, sp, null]]);
mods.recipestages.Recipes.addShaped("two", <minecraft:shield>, [[plank, ip, plank], [plank, plank, plank], [null, plank, null]]);


//Prospector
recipes.remove(<prospectors:prospector_low>);
mods.recipestages.Recipes.addShaped("two", <prospectors:prospector_low>, [[null, <minecraft:coal:*>, <ore:blockGlass>], [null, <ore:logWood>, <minecraft:coal:*>], [<ore:logWood>, null, null]]);




//Recipes needed for this stage - Create later

mods.recipestages.Recipes.setRecipeStage("two", <minecraft:spectral_arrow>);
mods.recipestages.Recipes.setRecipeStage("two", <minecraft:tipped_arrow:*>);
mods.recipestages.Recipes.setRecipeStage("two", <betterwithmods:broadhead_arrow>);
mods.recipestages.Recipes.setRecipeStage("two", <betterwithaddons:material>);
mods.recipestages.Recipes.setRecipeStage("two", <betterwithaddons:greatarrow>);
mods.recipestages.Recipes.setRecipeStage("two", <betterwithaddons:bundle:*>);
mods.recipestages.Recipes.setRecipeStage("two", <enderutilities:enderarrow>);
mods.recipestages.Recipes.setRecipeStage("two", <primal:arrow_quartz>);
mods.recipestages.Recipes.setRecipeStage("two", <primal:arrow_torch_nether>);
mods.recipestages.Recipes.setRecipeStage("two", <primal:arrow_torch_redstone>);
mods.recipestages.Recipes.setRecipeStage("two", <quark:arrow_ender>);
mods.recipestages.Recipes.setRecipeStage("two", <quark:arrow_explosive>);
mods.recipestages.Recipes.setRecipeStage("two", <betterwithmods:material:43>);

mods.recipestages.Recipes.setRecipeStage("two", <primal:ironwood_bow>);
mods.recipestages.Recipes.setRecipeStage("two", <primal:corypha_bow>);
mods.recipestages.Recipes.setRecipeStage("two", <abyssalcraft:corbow>);
mods.recipestages.Recipes.setRecipeStage("two", <betterwithmods:composite_bow>);
mods.recipestages.Recipes.setRecipeStage("two", <betterwithaddons:greatbow>);
mods.recipestages.Recipes.setRecipeStage("two", <enderutilities:enderbow>);
mods.recipestages.Recipes.setRecipeStage("two", <totemic:baykok_bow>);

mods.recipestages.Recipes.setRecipeStage("two", <natura:materials:5>);

//Garden Stuffs
mods.recipestages.Recipes.setRecipeStage("two", <gardenstuff:metal_block>);
mods.recipestages.Recipes.setRecipeStage("two", <gardenstuff:bloomery_furnace>);
mods.recipestages.Recipes.setRecipeStage("two", <gardenstuff:metal_fence>);
mods.recipestages.Recipes.setRecipeStage("two", <gardenstuff:metal_fence:1>);
mods.recipestages.Recipes.setRecipeStage("two", <gardenstuff:metal_fence:2>);
mods.recipestages.Recipes.setRecipeStage("two", <gardenstuff:metal_fence:3>);
mods.recipestages.Recipes.setRecipeStage("two", <gardenstuff:metal_lattice>);
mods.recipestages.Recipes.setRecipeStage("two", <gardenstuff:metal_lattice:1>);
mods.recipestages.Recipes.setRecipeStage("two", <gardenstuff:metal_lattice:2>);
mods.recipestages.Recipes.setRecipeStage("two", <gardenstuff:metal_lattice:3>);
mods.recipestages.Recipes.setRecipeStage("two", <gardenstuff:metal_lattice:4>);
mods.recipestages.Recipes.setRecipeStage("two", <gardenstuff:candelabra:1>);
mods.recipestages.Recipes.setRecipeStage("two", <gardenstuff:candelabra:2>);
mods.recipestages.Recipes.setRecipeStage("two", <gardenstuff:candelabra:3>);
mods.recipestages.Recipes.setRecipeStage("two", <gardenstuff:material:1>);
mods.recipestages.Recipes.setRecipeStage("two", <gardenstuff:material:2>);
mods.recipestages.Recipes.setRecipeStage("two", <gardenstuff:material:3>);
mods.recipestages.Recipes.setRecipeStage("two", <gardenstuff:material:4>);
mods.recipestages.Recipes.setRecipeStage("two", <gardenstuff:material:5>);

//Boats in Stage2
recipes.remove(<minecraft:boat>);
recipes.remove(<minecraft:spruce_boat>);
recipes.remove(<minecraft:birch_boat>);
recipes.remove(<minecraft:jungle_boat>);
recipes.remove(<minecraft:acacia_boat>);
recipes.remove(<minecraft:dark_oak_boat>);
mods.recipestages.Recipes.addShaped("two", <minecraft:boat>, [[<betterwithmods:wood_siding>, null, <betterwithmods:wood_siding>], [<betterwithmods:wood_siding>, <betterwithmods:wood_siding>, <betterwithmods:wood_siding>]]);
mods.recipestages.Recipes.addShaped("two", <minecraft:spruce_boat>, [[<betterwithmods:wood_siding:1>, null, <betterwithmods:wood_siding:1>], [<betterwithmods:wood_siding:1>, <betterwithmods:wood_siding:1>, <betterwithmods:wood_siding:1>]]);
mods.recipestages.Recipes.addShaped("two", <minecraft:birch_boat>, [[<betterwithmods:wood_siding:2>, null, <betterwithmods:wood_siding:2>], [<betterwithmods:wood_siding:2>, <betterwithmods:wood_siding:2>, <betterwithmods:wood_siding:2>]]);
mods.recipestages.Recipes.addShaped("two", <minecraft:jungle_boat>, [[<betterwithmods:wood_siding:3>, null, <betterwithmods:wood_siding:3>], [<betterwithmods:wood_siding:3>, <betterwithmods:wood_siding:3>, <betterwithmods:wood_siding:3>]]);
mods.recipestages.Recipes.addShaped("two", <minecraft:acacia_boat>, [[<betterwithmods:wood_siding:4>, null, <betterwithmods:wood_siding:4>], [<betterwithmods:wood_siding:4>, <betterwithmods:wood_siding:4>, <betterwithmods:wood_siding:4>]]);
mods.recipestages.Recipes.addShaped("two", <minecraft:dark_oak_boat>, [[<betterwithmods:wood_siding:5>, null, <betterwithmods:wood_siding:5>], [<betterwithmods:wood_siding:5>, <betterwithmods:wood_siding:5>, <betterwithmods:wood_siding:5>]]);

//Applied Energistics
mods.recipestages.Recipes.addShaped("two", <appliedenergistics2:grindstone>, [[stone, <betterwithmods:material>, stone], [flint, stone, flint], [cobblestone, flint, cobblestone]]);
mods.recipestages.Recipes.addShaped("two", <appliedenergistics2:crank>, [[stick, stick, stick], [null, null, stick], [null, null, stick]]);

//Builder Wand
recipes.remove(<betterbuilderswands:wandiron>);
mods.recipestages.Recipes.addShaped("two", <betterbuilderswands:wandiron>, [[null, null, ip], [null, <ore:logWood>, null], [<ore:logWood>, null, null]]);

//Twilight Forest 
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:ironwood_hoe>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:steeleaf_hoe>);

recipes.remove(<twilightforest:magic_map_focus>);
mods.recipestages.Recipes.addShapeless("two", <twilightforest:magic_map_focus>, [<twilightforest:firefly>, <twilightforest:torchberries>, <twilightforest:raven_feather>]);

mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:naga_chestplate>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:naga_leggings>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:twilight_scepter>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:lifedrain_scepter>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:zombie_scepter>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:ironwood_raw>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:ironwood_ingot>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:ironwood_helmet>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:ironwood_chestplate>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:ironwood_leggings>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:ironwood_boots>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:ironwood_sword>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:ironwood_shovel>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:ironwood_pickaxe>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:ironwood_axe>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:ironwood_hoe>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:fiery_ingot>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:fiery_helmet>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:fiery_chestplate>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:fiery_leggings>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:fiery_boots>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:fiery_sword>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:fiery_pickaxe>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:steeleaf_ingot>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:steeleaf_helmet>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:steeleaf_chestplate>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:steeleaf_leggings>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:steeleaf_boots>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:steeleaf_sword>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:steeleaf_shovel>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:steeleaf_pickaxe>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:steeleaf_axe>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:steeleaf_hoe>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:magic_map_empty>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:maze_map_empty>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:ore_map_empty>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:moonworm_queen>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:charm_of_life_2>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:charm_of_keeping_2>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:charm_of_keeping_3>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:carminite>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:knightmetal_ingot>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:armor_shard_cluster>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:knightmetal_helmet>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:knightmetal_chestplate>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:knightmetal_leggings>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:knightmetal_boots>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:knightmetal_sword>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:knightmetal_pickaxe>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:knightmetal_axe>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:yeti_helmet>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:yeti_chestplate>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:yeti_leggings>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:yeti_boots>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:arctic_fur>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:arctic_helmet>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:arctic_chestplate>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:arctic_leggings>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:arctic_boots>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:giant_pickaxe>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:giant_sword>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:knightmetal_ring>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:block_and_chain>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:firefly_jar>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:uncrafting_table>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:fire_jet:6>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:fire_jet:1>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:tower_device:2>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:tower_device>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:tower_device:6>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:tower_device:12>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:aurora_pillar>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:aurora_slab>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:block_storage:4>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:block_storage:3>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:block_storage:2>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:block_storage:1>);
mods.recipestages.Recipes.setRecipeStage("two", <twilightforest:block_storage>);

//Bibliocraft
mods.recipestages.Recipes.setRecipeStage("two", <bibliocraft:armorstand>);
mods.recipestages.Recipes.setRecipeStage("two", <bibliocraft:armorstand:1>);
mods.recipestages.Recipes.setRecipeStage("two", <bibliocraft:armorstand:2>);
mods.recipestages.Recipes.setRecipeStage("two", <bibliocraft:armorstand:3>);
mods.recipestages.Recipes.setRecipeStage("two", <bibliocraft:armorstand:4>);
mods.recipestages.Recipes.setRecipeStage("two", <bibliocraft:armorstand:5>);
mods.recipestages.Recipes.setRecipeStage("two", <bibliocraft:armorstand:6>);
mods.recipestages.Recipes.setRecipeStage("two", <bibliocraft:bookcase:*>);
mods.recipestages.Recipes.setRecipeStage("two", <bibliocraft:bookcasecreative:*>);
mods.recipestages.Recipes.setRecipeStage("two", <bibliocraft:lanterngold:*>);
mods.recipestages.Recipes.setRecipeStage("two", <bibliocraft:lanterniron:*>);
mods.recipestages.Recipes.setRecipeStage("two", <bibliocraft:lampgold:*>);
mods.recipestages.Recipes.setRecipeStage("two", <bibliocraft:lampiron:*>);
mods.recipestages.Recipes.setRecipeStage("two", <bibliocraft:furniturepaneler:*>);
mods.recipestages.Recipes.setRecipeStage("two", <bibliocraft:framedchest:*>);
mods.recipestages.Recipes.setRecipeStage("two", <bibliocraft:fancysign:*>);
mods.recipestages.Recipes.setRecipeStage("two", <bibliocraft:fancyworkbench:*>);
mods.recipestages.Recipes.setRecipeStage("two", <bibliocraft:label:*>);
mods.recipestages.Recipes.setRecipeStage("two", <bibliocraft:desk:*>);
mods.recipestages.Recipes.setRecipeStage("two", <bibliocraft:table:*>);
mods.recipestages.Recipes.setRecipeStage("two", <bibliocraft:seat:*>);
mods.recipestages.Recipes.setRecipeStage("two", <bibliocraft:case:*>);
mods.recipestages.Recipes.setRecipeStage("two", <bibliocraft:mapframe:*>);
mods.recipestages.Recipes.setRecipeStage("two", <bibliocraft:paintingframeflat:*>);
mods.recipestages.Recipes.setRecipeStage("two", <bibliocraft:swordpedestal:*>);
mods.recipestages.Recipes.setRecipeStage("two", <bibliocraft:compass>);
mods.recipestages.Recipes.setRecipeStage("two", <bibliocraft:maptool>);
mods.recipestages.Recipes.setRecipeStage("two", <bibliocraft:stockroomcatalog>);
mods.recipestages.Recipes.setRecipeStage("two", <bibliocraft:framingsaw>);
mods.recipestages.Recipes.setRecipeStage("two", <bibliocraft:framingboard>);
mods.recipestages.Recipes.setRecipeStage("two", <bibliocraft:framingsheet>);
mods.recipestages.Recipes.setRecipeStage("two", <bibliocraft:atlasbook>);
mods.recipestages.Recipes.setRecipeStage("two", <bibliocraft:paintingcanvas>);
mods.recipestages.Recipes.setRecipeStage("two", <bibliocraft:bigbook>);
mods.recipestages.Recipes.setRecipeStage("two", <bibliocraft:handdrill>);
mods.recipestages.Recipes.setRecipeStage("two", <bibliocraft:seatback1:*>);
mods.recipestages.Recipes.setRecipeStage("two", <bibliocraft:seatback2:*>);
mods.recipestages.Recipes.setRecipeStage("two", <bibliocraft:seatback3:*>);
mods.recipestages.Recipes.setRecipeStage("two", <bibliocraft:seatback4:*>);
mods.recipestages.Recipes.setRecipeStage("two", <bibliocraft:seatback5:*>);
mods.recipestages.Recipes.setRecipeStage("two", <bibliocraft:paintingframesimple:*>);
mods.recipestages.Recipes.setRecipeStage("two", <bibliocraft:paintingframemiddle:*>);
mods.recipestages.Recipes.setRecipeStage("two", <bibliocraft:paintingframefancy:*>);
mods.recipestages.Recipes.setRecipeStage("two", <bibliocraft:paintingframeborderless:*>);

//Storage Drawers
mods.recipestages.Recipes.setRecipeStage("two", <storagedrawers:framingtable>);
mods.recipestages.Recipes.setRecipeStage("two", <storagedrawers:customdrawers>);
mods.recipestages.Recipes.setRecipeStage("two", <storagedrawers:customdrawers:1>);
mods.recipestages.Recipes.setRecipeStage("two", <storagedrawers:customdrawers:2>);
mods.recipestages.Recipes.setRecipeStage("two", <storagedrawers:customdrawers:3>);
mods.recipestages.Recipes.setRecipeStage("two", <storagedrawers:customdrawers:4>);
mods.recipestages.Recipes.setRecipeStage("two", <storagedrawers:customtrim>);
mods.recipestages.Recipes.setRecipeStage("two", <storagedrawers:trim>);
mods.recipestages.Recipes.setRecipeStage("two", <storagedrawers:trim:1>);
mods.recipestages.Recipes.setRecipeStage("two", <storagedrawers:trim:2>);
mods.recipestages.Recipes.setRecipeStage("two", <storagedrawers:trim:3>);
mods.recipestages.Recipes.setRecipeStage("two", <storagedrawers:trim:4>);
mods.recipestages.Recipes.setRecipeStage("two", <storagedrawers:trim:5>);
mods.recipestages.Recipes.setRecipeStage("two", <storagedrawers:upgrade_template>);
mods.recipestages.Recipes.setRecipeStage("two", <storagedrawers:upgrade_storage>);
mods.recipestages.Recipes.addShaped("two", <storagedrawers:upgrade_storage>, [[stick, stick, stick], [<minecraft:coal_block>, <storagedrawers:upgrade_template>, <minecraft:coal_block>], [stick, stick, stick]]);
mods.recipestages.Recipes.setRecipeStage("two", <storagedrawers:upgrade_storage:1>);
mods.recipestages.Recipes.setRecipeStage("two", <storagedrawers:upgrade_storage:2>);
mods.recipestages.Recipes.setRecipeStage("two", <storagedrawers:upgrade_one_stack>);
mods.recipestages.Recipes.setRecipeStage("two", <storagedrawers:upgrade_status>);
mods.recipestages.Recipes.setRecipeStage("two", <storagedrawers:upgrade_status:1>);
mods.recipestages.Recipes.setRecipeStage("two", <storagedrawers:upgrade_void>);
mods.recipestages.Recipes.setRecipeStage("two", <storagedrawers:upgrade_conversion>);
mods.recipestages.Recipes.setRecipeStage("two", <storagedrawers:upgrade_redstone>);
mods.recipestages.Recipes.setRecipeStage("two", <storagedrawers:upgrade_redstone:1>);
mods.recipestages.Recipes.setRecipeStage("two", <storagedrawers:upgrade_redstone:2>);
mods.recipestages.Recipes.setRecipeStage("two", <storagedrawers:drawer_key>);
mods.recipestages.Recipes.setRecipeStage("two", <storagedrawers:shroud_key>);
mods.recipestages.Recipes.setRecipeStage("two", <storagedrawers:personal_key>);
mods.recipestages.Recipes.setRecipeStage("two", <storagedrawers:quantify_key>);
mods.recipestages.Recipes.setRecipeStage("two", <storagedrawers:tape>);
mods.recipestages.Recipes.setRecipeStage("two", <storagedrawers:upgrade_one_stack>);
mods.recipestages.Recipes.setRecipeStage("two", <storagedrawers:upgrade_conversion>);



//Workblade
mods.recipestages.Recipes.addShaped("two", <primal:iron_workblade>, [[ip, stick, ip], [ip, stick, ip], [null, stick, null]]);

//Iron Chests
//Iron Chests use plates
mods.recipestages.Recipes.addShaped("two", <ironchest:iron_chest>, [[ip, ip, ip], [ip, <minecraft:chest>, ip], [ip, ip, ip]]);
mods.recipestages.Recipes.addShaped("two", <ironchest:wood_iron_chest_upgrade>, [[ip, ip, ip], [ip, log, ip], [ip, ip, ip]]);

mods.recipestages.Recipes.addShaped("two", <ironchest:iron_chest:1>, [[gp, gp, gp], [gp, <minecraft:chest>, gp], [gp, gp, gp]]);
mods.recipestages.Recipes.addShaped("two", <ironchest:iron_gold_chest_upgrade>, [[gp, gp, gp], [gp, ip, gp], [gp, gp, gp]]);
mods.recipestages.Recipes.addShaped("two", <ironchest:iron_chest:4>, [[sp, sp, sp], [sp, <minecraft:chest>, sp], [sp, sp, sp]]);

mods.recipestages.Recipes.addShaped("two", <ironchest:copper_silver_chest_upgrade>, [[sp, sp, sp], [sp, cp, sp], [sp, sp, sp]]);
mods.recipestages.Recipes.addShaped("two", <ironchest:silver_gold_chest_upgrade>, [[gp, gp, gp], [gp, sp, gp], [gp, gp, gp]]);
mods.recipestages.Recipes.addShaped("two", <ironchest:copper_iron_chest_upgrade>, [[ip, ip, ip], [ip, cp, ip], [ip, ip, ip]]);

//Astral
recipes.remove(<astralsorcery:itemwand>);
mods.recipestages.Recipes.addShaped("two", <astralsorcery:itemwand>, [[null, <astralsorcery:itemcraftingcomponent>, <minecraft:ender_pearl>], [null, <ore:stoneMarble>, <astralsorcery:itemcraftingcomponent>], [<ore:stoneMarble>, null, null]]);
mods.recipestages.Recipes.addShaped("two", <astralsorcery:itemskyresonator>, [[null, <astralsorcery:itemcraftingcomponent>, null], [<ore:stoneMarble>, <ceramics:clay_bucket>.withTag({fluids: {FluidName: "astralsorcery.liquidstarlight", Amount: 1000}}), <ore:stoneMarble>], [null, <ore:rodBronze>, null]]);
mods.recipestages.Recipes.addShaped("two", <astralsorcery:itemskyresonator>, [[null, <astralsorcery:itemcraftingcomponent>, null], [<ore:stoneMarble>, <forge:bucketfilled>.withTag({FluidName: "astralsorcery.liquidstarlight", Amount: 1000}), <ore:stoneMarble>], [null, <ore:rodBronze>, null]]);

//Rustic
mods.recipestages.Recipes.setRecipeStage("two", <rustic:chain>);
mods.recipestages.Recipes.setRecipeStage("two", <rustic:candle>);
mods.recipestages.Recipes.setRecipeStage("two", <rustic:chandelier>);
mods.recipestages.Recipes.setRecipeStage("two", <rustic:beehive>);
mods.recipestages.Recipes.setRecipeStage("two", <rustic:apiary>);
mods.recipestages.Recipes.setRecipeStage("two", <rustic:slate_tile>);
mods.recipestages.Recipes.setRecipeStage("two", <rustic:slate_roof>);
mods.recipestages.Recipes.setRecipeStage("two", <rustic:slate_brick>);
mods.recipestages.Recipes.setRecipeStage("two", <rustic:slate_chiseled>);
mods.recipestages.Recipes.setRecipeStage("two", <rustic:stairs_slate_roof>);
mods.recipestages.Recipes.setRecipeStage("two", <rustic:slate_roof_slab_item>);
mods.recipestages.Recipes.setRecipeStage("two", <rustic:stairs_slate_brick>);
mods.recipestages.Recipes.setRecipeStage("two", <rustic:slate_brick_slab_item>);
mods.recipestages.Recipes.setRecipeStage("two", <rustic:iron_lattice>);
mods.recipestages.Recipes.setRecipeStage("two", <rustic:iron_lantern>);
mods.recipestages.Recipes.setRecipeStage("two", <rustic:gargoyle>);
mods.recipestages.Recipes.setRecipeStage("two", <rustic:condenser>);
mods.recipestages.Recipes.setRecipeStage("two", <rustic:retort>);
mods.recipestages.Recipes.setRecipeStage("two", <rustic:condenser_advanced>);
mods.recipestages.Recipes.setRecipeStage("two", <rustic:retort_advanced>);
mods.recipestages.Recipes.setRecipeStage("two", <rustic:brewing_barrel>);
mods.recipestages.Recipes.setRecipeStage("two", <rustic:liquid_barrel>);

//Twilight Parts
//mods.recipestages.Recipes.addShaped("two", <>, [[, , ], [, , ], [, , ]]);

//Steve's Carts Engine for End of Stage 2
recipes.remove(<stevescarts:cartmodule>);
//Recipe now exists in Astral Sorcery
//mods.recipestages.Recipes.addShaped("two", <stevescarts:cartmodule>, [[<ore:gearFiery>, <minecraft:sticky_piston>, <ore:gearFiery>], [<minecraft:ghast_tear>, <twilightforest:tower_device:12>, <minecraft:ghast_tear>], [<ore:rodSteeleaf>, <minecraft:sticky_piston>, <ore:rodSteeleaf>]]);

//Weirding Gadget
recipes.remove(<weirdinggadget:weirding_gadget>);
mods.recipestages.Recipes.addShaped("two", <weirdinggadget:weirding_gadget>, [[<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>], [<ore:blockGold>, <minecraft:ender_pearl>, <ore:blockGold>], [<ore:blockGold>, <ore:blockGold>, <ore:blockGold>]]);

//InfoItems
recipes.remove(<minecraft:compass>);
recipes.remove(<minecraft:clock>);
recipes.remove(<infoaccessories:info_accessory>);
recipes.remove(<infoaccessories:info_accessory:2>);
recipes.remove(<infoaccessories:info_accessory:6>);

mods.recipestages.Recipes.addShaped("two", <minecraft:compass>, [[null, ip, null], [ip, <tconstruct:arrow_head>.withTag({Material: "iron"}), ip], [null, ip, null]]);
mods.recipestages.Recipes.addShaped("two", <minecraft:clock>, [[<minecraft:dye:4>, gp, <minecraft:dye:4>], [gp, <minecraft:dye:4>, gp], [<minecraft:dye:4>, gp, <minecraft:dye:4>]]);

mods.recipestages.Recipes.addShaped("two", <infoaccessories:info_accessory:2>, [[null, <twilightforest:ironwood_ingot>, null], [<twilightforest:ironwood_ingot>, <minecraft:compass>, <twilightforest:ironwood_ingot>], [null, tgear, null]]);
mods.recipestages.Recipes.addShaped("two", <infoaccessories:info_accessory:6>, [[null, <twilightforest:torchberries>, null], [<twilightforest:twilight_plant:8>, <twilightforest:magic_map_empty>, <twilightforest:twilight_sapling>], [null, <twilightforest:twilight_sapling:1>, null]]);
mods.recipestages.Recipes.addShaped("two", <infoaccessories:info_accessory>, [[null, <abyssalcraft:dsbutton>, null], [<twilightforest:firefly_jar>, <minecraft:clock>, <twilightforest:firefly_jar>], [null, tgear, null]]);

//Tinkers'
mods.recipestages.Recipes.setRecipeStage("two", <tconstruct:clear_stained_glass:*>);
recipes.remove(<tconstruct:smeltery_controller>);
recipes.remove(<tconstruct:seared_furnace_controller>);
recipes.remove(<tconstruct:tinker_tank_controller>);
mods.recipestages.Recipes.addShaped("two", <tconstruct:smeltery_controller>, [[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>], [<tconstruct:materials>, <embers:ember_cluster>, <tconstruct:materials>], [<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>]]);
mods.recipestages.Recipes.addShaped("two", <tconstruct:seared_furnace_controller>, [[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>], [<tconstruct:materials>, <embers:ember_cluster>, <tconstruct:materials>], [<tconstruct:materials>, <minecraft:furnace>, <tconstruct:materials>]]);
mods.recipestages.Recipes.addShaped("two", <tconstruct:tinker_tank_controller>, [[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>], [<tconstruct:materials>, <embers:ember_cluster>, <tconstruct:materials>], [<tconstruct:materials>, <minecraft:bucket>, <tconstruct:materials>]]);

mods.recipestages.Recipes.setRecipeStage("two", <tconstruct:seared_tank:1>);
mods.recipestages.Recipes.setRecipeStage("two", <tconstruct:seared_tank:2>);
mods.recipestages.Recipes.setRecipeStage("two", <tconstruct:casting>);
mods.recipestages.Recipes.setRecipeStage("two", <tcomplement:porcelain_casting>);
mods.recipestages.Recipes.setRecipeStage("two", <tconstruct:smeltery_io>);
mods.recipestages.Recipes.setRecipeStage("two", <tconstruct:seared_glass>);
mods.recipestages.Recipes.setRecipeStage("two", <tconstruct:stone_torch>);
mods.recipestages.Recipes.setRecipeStage("two", <tconstruct:seared_stairs_stone>);
mods.recipestages.Recipes.setRecipeStage("two", <tconstruct:seared_stairs_cobble>);
mods.recipestages.Recipes.setRecipeStage("two", <tconstruct:seared_stairs_paver>);
mods.recipestages.Recipes.setRecipeStage("two", <tconstruct:seared_stairs_brick>);
mods.recipestages.Recipes.setRecipeStage("two", <tconstruct:seared_stairs_brick_cracked>);
mods.recipestages.Recipes.setRecipeStage("two", <tconstruct:seared_stairs_brick_fancy>);
mods.recipestages.Recipes.setRecipeStage("two", <tconstruct:seared_stairs_brick_square>);
mods.recipestages.Recipes.setRecipeStage("two", <tconstruct:seared_stairs_brick_triangle>);
mods.recipestages.Recipes.setRecipeStage("two", <tconstruct:seared_stairs_brick_small>);
mods.recipestages.Recipes.setRecipeStage("two", <tconstruct:seared_stairs_road>);
mods.recipestages.Recipes.setRecipeStage("two", <tconstruct:seared_stairs_tile>);
mods.recipestages.Recipes.setRecipeStage("two", <tconstruct:seared_stairs_creeper>);

mods.recipestages.Recipes.setRecipeStage("two", <tconstruct:piggybackpack>);

mods.recipestages.Recipes.addShapeless("two", <tconstruct:clear_glass>, [<minecraft:glass>]);
mods.recipestages.Recipes.setRecipeStage("two", <quark:glass_item_frame>);

//Recipes to allow lift in Stage2
mods.recipestages.Recipes.addShaped("two", <betterwithmods:material:34>, [[<minecraft:lever>, null], [gp, null]]);
mods.recipestages.Recipes.addShaped("two", <betterwithmods:single_machine:1>, [[plank, ip, plank], [<ore:gearWood>, <betterwithmods:material:34>, <ore:gearWood>], [plank, ip, plank]]);
mods.recipestages.Recipes.addShaped("two", <betterwithmods:anchor>, [[null, ip, null], [<ore:stone>, <ore:stone>, <ore:stone>]]);

//Stage 2 Easier Gearbox and Axle
mods.recipestages.Recipes.addShaped("two", <betterwithmods:wooden_gearbox>, [[<ore:mouldingWood>, <betterwithmods:material>, <ore:mouldingWood>], [bp, <betterwithmods:wooden_axle>, bp], [<ore:mouldingWood>, <betterwithmods:material>, <ore:mouldingWood>]]);
mods.recipestages.Recipes.addShaped("two", <betterwithmods:wooden_axle>, [[null, <minecraft:stick>, null], [<betterwithmods:rope>, <actuallyadditions:item_misc:5>, <betterwithmods:rope>], [null, <minecraft:stick>, null]]);

recipes.remove(<pickletweaks:watering_can>);
mods.recipestages.Recipes.addShaped("two", <pickletweaks:watering_can>, [[ip, <actuallyadditions:item_fertilizer>, null], [ip, <minecraft:bucket>, ip], [null, ip, null]]);

//Composting
mods.recipestages.Recipes.addShaped("two", <actuallyadditions:block_compost>, [[<betterwithmods:slats:*>, null, <betterwithmods:slats:*>], [<betterwithmods:slats:*>, null, <betterwithmods:slats:*>], [<betterwithmods:slats:*>, <minecraft:chest>, <betterwithmods:slats:*>]]);

//Iron Backpacks
recipes.remove(<ironbackpacks:backpack>);
mods.recipestages.Recipes.addShaped("two", <ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:basic", spec: "NONE"}}), [[<minecraft:wool:*>, leather, <minecraft:wool:*>], [leather, <primal:storage_crate:*>, leather], [<minecraft:wool:*>, leather, <minecraft:wool:*>]]);
mods.recipestages.Recipes.setRecipeStage("two", <ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:iron", spec: "STORAGE"}}));
mods.recipestages.Recipes.setRecipeStage("two", <ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:iron", spec: "UPGRADE"}}));
mods.recipestages.Recipes.setRecipeStage("two", <ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:gold", spec: "STORAGE"}}));
mods.recipestages.Recipes.setRecipeStage("two", <ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:gold", spec: "UPGRADE"}}));
mods.recipestages.Recipes.setRecipeStage("two", <ironbackpacks:upgrade>);
mods.recipestages.Recipes.setRecipeStage("two", <ironbackpacks:upgrade>.withTag({upgrade: "ironbackpacks:damage_bar"}));
mods.recipestages.Recipes.setRecipeStage("two", <ironbackpacks:upgrade>.withTag({upgrade: "ironbackpacks:lock"}));

//Antique Atlas
mods.recipestages.Recipes.addShaped("two", <antiqueatlas:empty_antique_atlas>, [[<minecraft:leather>, <minecraft:paper>, null], [<minecraft:leather>, <minecraft:map>, null], [<minecraft:leather>, <minecraft:paper>, null]]);

//Dark Utils
mods.recipestages.Recipes.setRecipeStage("two", <darkutils:lore_tag:*>);
mods.recipestages.Recipes.setRecipeStage("two", <darkutils:sneaky_plate>);
mods.recipestages.Recipes.setRecipeStage("two", <darkutils:sneaky_obsidian>);
mods.recipestages.Recipes.setRecipeStage("two", <darkutils:sneaky_torch>);
mods.recipestages.Recipes.setRecipeStage("two", <darkutils:sneaky_ghost>);
mods.recipestages.Recipes.setRecipeStage("two", <darkutils:sneaky_lever>);
mods.recipestages.Recipes.setRecipeStage("two", <darkutils:sneaky>);
mods.recipestages.Recipes.setRecipeStage("two", <darkutils:charm_portal>);
mods.recipestages.Recipes.setRecipeStage("two", <darkutils:charm_null>);
mods.recipestages.Recipes.setRecipeStage("two", <darkutils:focus_sash>);
mods.recipestages.Recipes.setRecipeStage("two", <darkutils:trap_move>);

//Embers Stage 2
recipes.remove(<embers:shovel_dawnstone>);
recipes.remove(<embers:pickaxe_dawnstone>);
recipes.remove(<embers:axe_dawnstone>);
recipes.remove(<embers:sword_dawnstone>);
recipes.remove(<embers:hoe_dawnstone>);
recipes.remove(<embers:cinder_plinth>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:hoe_silver>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:hoe_lead>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:hoe_dawnstone>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:hoe_aluminum>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:hoe_nickel>);
mods.recipestages.Recipes.addShaped("two", <embers:shovel_dawnstone>, [[null, dp, null], [null, stick, null], [null, stick, null]]);
mods.recipestages.Recipes.addShaped("two", <embers:pickaxe_dawnstone>, [[dp, dp, dp], [null, stick, null], [null, stick, null]]);
mods.recipestages.Recipes.addShaped("two", <embers:axe_dawnstone>, [[dp, dp, null], [dp, stick, null], [null, stick, null]]);
mods.recipestages.Recipes.addShaped("two", <embers:sword_dawnstone>, [[null, dp, null], [null, dp, null], [null, stick, null]]);
mods.recipestages.Recipes.addShaped("two", <embers:hoe_dawnstone>, [[dp, dp, null], [null, stick, null], [null, stick, null]]);
mods.recipestages.Recipes.addShaped("two", <embers:cinder_plinth>, [[null, ip, null], [ip, <minecraft:furnace>, ip], [ip, <embers:block_caminite_brick>, ip]]);
mods.recipestages.Recipes.setRecipeStage("two", <embers:archaic_bricks>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:archaic_tile>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:ashen_tile_slab>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:ashen_brick_slab>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:ashen_stone_slab>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:ingot_dawnstone>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:ingot_mithril>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:nugget_dawnstone>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:nugget_mithril>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:plate_dawnstone>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:plate_iron>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:plate_gold>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:plate_mithril>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:pickaxe_dawnstone>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:axe_dawnstone>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:shovel_dawnstone>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:hoe_dawnstone>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:sword_dawnstone>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:ignition_cannon>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:staff_ember>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:axe_clockwork>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:pickaxe_clockwork>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:grandhammer>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:dust_ash>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:aspectus_iron>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:aspectus_copper>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:aspectus_dawnstone>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:alchemic_waste>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:ashen_cloak_head>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:ashen_cloak_chest>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:ashen_cloak_legs>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:ashen_cloak_boots>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:inflictor_gem>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:glimmer_shard>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:ashen_cloth>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:isolated_materia>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:tyrfing>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:adhesive>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:ember_cluster>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:wildfire_core>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:superheater>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:jet_augment>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:blasting_core>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:caster_orb>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:resonating_bell>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:flame_barrier>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:eldritch_insignia>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:intelligent_apparatus>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:block_dawnstone>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:block_mithril>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:block_tank>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:beam_splitter>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:ember_relay>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:crystal_cell>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:charger>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:ashen_stone>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:stairs_ashen_stone>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:ashen_brick>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:stairs_ashen_brick>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:ashen_tile>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:stairs_ashen_tile>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:cinder_plinth>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:alchemy_pedestal>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:alchemy_tablet>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:item_transfer>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:beam_cannon>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:dawnstone_anvil>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:auto_hammer>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:sealed_planks>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:wrapped_sealed_planks>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:vacuum>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:breaker>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:seed>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:seed:1>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:seed:2>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:ember_injector>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:boiler>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:reactor>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:combustor>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:catalyzer>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:field_chart>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:ember_pulser>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:inferno_forge>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:caminite_lever>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:ore_nickel>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:ember_jar>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:ember_cartridge>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:wall_ashen_stone>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:wall_ashen_brick>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:wall_ashen_tile>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:ashen_stone_slab_double>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:ashen_brick_slab_double>);
mods.recipestages.Recipes.setRecipeStage("two", <embers:ashen_tile_slab_double>);

////
//
// TO DO
//
////

mods.recipestages.Recipes.setRecipeStage("two", <cyclicmagic:block_fragile_weak>);
mods.recipestages.Recipes.setRecipeStage("two", <cyclicmagic:ender_lightning>);
mods.recipestages.Recipes.setRecipeStage("two", <cyclicmagic:water_freezer>);
mods.recipestages.Recipes.setRecipeStage("two", <cyclicmagic:apple_lapis>);
mods.recipestages.Recipes.setRecipeStage("two", <cyclicmagic:spikes_iron>);
mods.recipestages.Recipes.setRecipeStage("two", <cyclicmagic:horse_upgrade_variant>);
mods.recipestages.Recipes.setRecipeStage("two", <cyclicmagic:tool_spawn_inspect>);
mods.recipestages.Recipes.setRecipeStage("two", <cyclicmagic:block_fragile>);
mods.recipestages.Recipes.setRecipeStage("two", <cyclicmagic:tool_torch_launcher>);
mods.recipestages.Recipes.setRecipeStage("two", <cyclicmagic:mattock>);
mods.recipestages.Recipes.setRecipeStage("two", <cyclicmagic:tool_rotate>);
mods.recipestages.Recipes.setRecipeStage("two", <cyclicmagic:tool_trade>);
mods.recipestages.Recipes.setRecipeStage("two", <cyclicmagic:block_soundproofing>);
mods.recipestages.Recipes.setRecipeStage("two", <cyclicmagic:block_fragile_auto>);
mods.recipestages.Recipes.setRecipeStage("two", <cyclicmagic:food_step>);
mods.recipestages.Recipes.setRecipeStage("two", <cyclicmagic:tool_spelunker>);
mods.recipestages.Recipes.setRecipeStage("two", <cyclicmagic:charm_water>);
mods.recipestages.Recipes.setRecipeStage("two", <cyclicmagic:charm_speed>);
mods.recipestages.Recipes.setRecipeStage("two", <cyclicmagic:charm_antidote>);
mods.recipestages.Recipes.setRecipeStage("two", <cyclicmagic:block_fishing>);
mods.recipestages.Recipes.setRecipeStage("two", <cyclicmagic:tool_harvest_crops>);
mods.recipestages.Recipes.setRecipeStage("two", <cyclicmagic:ender_dungeon>);
mods.recipestages.Recipes.setRecipeStage("two", <cyclicmagic:ender_dungeon>);
mods.recipestages.Recipes.setRecipeStage("two", <cyclicmagic:ender_dungeon>);
mods.recipestages.Recipes.setRecipeStage("two", <cyclicmagic:ender_dungeon>);
mods.recipestages.Recipes.setRecipeStage("two", <cyclicmagic:ender_dungeon>);