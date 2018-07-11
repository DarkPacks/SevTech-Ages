//Random
recipes.remove(<horsepower:dough>);

//==================================
//Iron Chests
recipes.addShaped(<ironchest:iron_chest:7>, [[<minecraft:dirt>, <minecraft:dirt>, <minecraft:dirt>], [<minecraft:dirt>, <minecraft:chest>, <minecraft:dirt>], [<minecraft:dirt>, <minecraft:dirt>, <minecraft:dirt>]]);

//==================================
//Horse Power
recipes.addShaped(<horsepower:hand_grindstone>, [[null, stick, null], [stone, stone, stone], [stone, stone, stone]]);
recipes.addShaped(<horsepower:grindstone>, [[<minecraft:lead>, stick, <minecraft:lead>], [stone, stone, stone], [stone, stone, stone]]);

//==================================
//Primal Tech
recipes.addShaped(<primal_tech:clay_kiln>, [[clayball, clayball, clayball], [clayball, null, clayball], [clayball, <ore:slabCobblestone>, clayball]]);
recipes.addShaped(<primal_tech:wood_club>, [[null, log], [stick, null]]);
recipes.addShaped(<primal_tech:bone_club>, [[null, <minecraft:bone_block>], [stick, null]]);
recipes.addShaped(<primal_tech:stone_club>, [[null, stone], [stick, null]]);
recipes.addShaped(<primal_tech:bone_pickaxe>, [[<primal:sharp_bone>, bone, <primal:sharp_bone>], [null, stick, null], [null, stick, null]]);
recipes.addShaped(<primal_tech:bone_axe>, [[<primal:bone_knapp>, bone, null], [<primal:bone_knapp>, stick, null], [null, stick, null]]);
recipes.addShaped(<primal_tech:bone_shovel>, [[null, <primal:bone_knapp>, null], [null, stick, null], [null, stick, null]]);
recipes.addShaped(<primal_tech:bone_sword>, [[null, <primal:sharp_bone>, null], [null, bone, null], [null, stick, null]]);
recipes.addShaped(<primal_tech:fibre_torch>, [[cordage], [stick]]);
recipes.addShaped(<primal_tech:stick_bundle>, [[stick, cordage, stick], [stick, stick, stick], [stick, cordage, stick]]);
recipes.addShaped(<primal_tech:stone_grill>, [[null, <immcraft:rock>, null], [<immcraft:rock>, null, <immcraft:rock>], [<minecraft:stone:*>, <minecraft:stone:*>, <minecraft:stone:*>]]);
recipes.addShaped(<primal_tech:fluid_bladder>, [[null, null, null], [<ore:dyeBrown>, <minecraft:dye>, <ore:dyeBrown>], [<primal:plant_cordage>, <primal:plant_cordage>, <primal:plant_cordage>]]);

recipes.addShaped(<primal_tech:work_stump_upgraded>, [[null, <immcraft:shelf>, null], [<horsepower:chopping_block>, <primal_tech:work_stump>, <horsepower:chopping_block>], [null, <minecraft:log2:1>, null]]);
recipes.addShaped(<primal_tech:work_stump_upgraded>, [[null, <immcraft:shelf>, null], [<horsepower:chopping_block>, <primal_tech:work_stump>, <horsepower:chopping_block>], [null, <natura:overworld_logs2:1>, null]]);
recipes.addShaped(<primal_tech:work_stump_upgraded>, [
	[null, <immcraft:shelf>, null],
	[<horsepower:chopping_block>, <primal_tech:work_stump>, <horsepower:chopping_block>],
	[null, <natura:overworld_logs2:3> | <betterwithaddons:log_sakura>, null]
]);
recipes.addShaped(<primal_tech:work_stump>, [[<horsepower:chopping_block>], [log]]);

recipes.addShaped(<primal_tech:bone_shears>, [[<minecraft:bone>, null], [cordage, <minecraft:bone>]]);

recipes.remove(<primal_tech:rock>);
recipes.addShapeless(<primal_tech:rock>, [<immcraft:rock>]);

recipes.addShaped(<primal_tech:charcoal_hopper>, [
	[<totemic:cedar_plank>, <abyssalcraft:shadowgem>, <totemic:cedar_plank>],
	[<betterwithmods:material:37>, <primal:shark_tooth>, <betterwithmods:material:37>],
	[null, <primal_tech:wooden_hopper>, null]
]);

//==================================
//Galacticraft
recipes.remove(<galacticraftplanets:carbon_fragments>);
recipes.addShapeless(<galacticraftplanets:carbon_fragments> * 16, [<minecraft:coal:1>, <minecraft:coal:1>, <minecraft:coal:1>, <minecraft:coal:1>]);
recipes.addShapeless(<galacticraftplanets:carbon_fragments> * 32, [<minecraft:coal>, <minecraft:coal>, <minecraft:coal>, <minecraft:coal>]);

////==================================
//Immersive Craft
//Fixes Immersive Craft not using OreDict for Wood and adds recipes
recipes.remove(<immcraft:bookshelf>);
recipes.addShaped(<immcraft:bookshelf>, [[plank, <immcraft:rock>, plank], [plank, <minecraft:book>, plank], [plank, plank, plank]]);

recipes.remove(<immcraft:chest>);
recipes.addShaped(<immcraft:chest>, [[plank, plank, plank], [plank, <immcraft:rock>, plank], [plank, plank, plank]]);

recipes.remove(<immcraft:cupboard>);
recipes.addShaped(<immcraft:cupboard>, [[plank, plank, plank], [plank, plank, plank], [plank, <immcraft:rock>, plank]]);

recipes.remove(<immcraft:furnace>);
recipes.addShaped(<immcraft:furnace>, [[stone, stone, stone], [stone, <primal_tech:stone_grill>, stone], [stone, stone, stone]]);

recipes.remove(<immcraft:shelf>);
recipes.addShaped(<immcraft:shelf>, [[plank, <immcraft:rock>, plank], [plank, plank, plank], [plank, plank, plank]]);

////==================================
//Progression Tweaks
recipes.remove(<progressiontweaks:spear>);
recipes.remove(<progressiontweaks:stone_hammer>);
recipes.remove(<progressiontweaks:tomahawk>);
recipes.addShapedMirrored(<progressiontweaks:spear>, [[<primal:flint_knapp>, null, null], [null, stick, null], [null, null, stick]]);
recipes.addShaped(<progressiontweaks:spear>, [[null, null, <primal:flint_knapp>], [null, stick, null], [stick, null, null]]);
recipes.addShaped(<progressiontweaks:stone_hammer>, [[cordage, <ore:rock>], [stick, null]]);
recipes.addShaped(<progressiontweaks:tomahawk>, [[cordage, <primal:flint_knapp>], [<primal:flint_point>, stick]]);
recipes.addShaped(<progressiontweaks:fire_pit_unlit>, [[null, stick, null], [stick, cordage, stick], [<ore:rock>, <ore:rock>, <ore:rock>]]);

////==================================
//Totemic
recipes.addShaped(<totemic:drum>, [[plank, leather, plank], [plank, null, plank], [plank, null, plank]]);
recipes.addShaped(<totemic:flute>, [[null, <minecraft:tallgrass:*>, <minecraft:reeds>], [null, <minecraft:reeds>, null], [<minecraft:reeds>, null, null]]);
recipes.addShaped(<totemic:jingle_dress>, [[str, str, str], [<totemic:sub_items:1>, <totemic:sub_items:1>, <totemic:sub_items:1>]]);
recipes.addShaped(<totemic:rattle>, [[null, <totemic:sub_items:1>], [stick, null]]);
recipes.addShaped(<totemic:sub_items:1>, [[bone, cane, bone], [cane, bone, cane], [null, null, null]]);
recipes.addShaped(<totemic:tipi>, [[stick, leather, stick], [leather, stick, leather], [leather, stick, leather]]);
recipes.addShaped(<totemic:totem_torch>, [[null, <primal_tech:fibre_torch_lit>, null], [null, stick, null], [null, stick, null]]);
recipes.addShaped(<totemic:totem_whittling_knife>, [[null, <primal:flint_knapp>], [stick, null]]);
recipes.addShaped(<totemic:totemic_staff>, [[null, <minecraft:red_flower>, <minecraft:double_plant>], [null, stick, <minecraft:yellow_flower>], [stick, null, null]]);
recipes.addShaped(<totemic:wind_chime>, [[stick, stick, stick], [str, <minecraft:flint>, str], [<minecraft:reeds>, <minecraft:bone>, <minecraft:reeds>]]);

recipes.addShapeless(<totemic:totempedia>, [<ore:treeSapling>, <primal:plant_cloth>]);

// We have to remove this one manually cos it uses ForgeOreShapless Children for the dye recipes.
recipes.removeShaped(<quantumstorage:quantum_bag>, [
	[<ore:wool>, <minecraft:string>, <ore:wool>],
	[<ore:wool>, <quantumstorage:chest_diamond>, <ore:wool>],
	[<ore:wool>, <ore:wool>, <ore:wool>]
]);

////==================================
//Misc
recipes.addShapeless(<horsepower:dough>, [<ore:foodFlour>, <ore:foodSalt>, <ore:bottleWater>.transformReplace(<minecraft:glass_bottle>)]);
recipes.addShapeless(<horsepower:dough>, [<ore:foodFlour>, <ore:foodSalt>, scripts.crafting_utils.getBucketIngredient(<liquid:water>)]);
recipes.addShapeless(<horsepower:dough>, [<ore:foodFlour>, <ore:foodSalt>, <primal_tech:fluid_bladder:1>.withTag({Fluid: {FluidName: "water", Amount: 1000}})]);

//Wooden Hoppers
recipes.remove(<wopper:wopper>);
recipes.remove(<primal_tech:wooden_hopper>);
recipes.addShaped(<wopper:wopper>, [[plank, null, plank], [plank, <immcraft:chest>, plank], [null, plank, null]]);
recipes.addShaped(<primal_tech:wooden_hopper>, [[<ore:barkWood>, <minecraft:web>, <ore:barkWood>], [<ore:barkWood>, <wopper:wopper>, <ore:barkWood>], [null, <ore:barkWood>, null]]);

//Millstone requires grindstone
recipes.addShaped(<horsepower:press>, [[<minecraft:lead>, stick, <minecraft:lead>], [plank, <ore:slabWood>, plank], [plank, plank, plank]]);

//I'm tired of the annoyance of getting flint and we've changed that! Thanks to BlakeBr0! <3
recipes.remove(<pickletweaks:mesh>);

recipes.remove(<pickletweaks:grass_mesh>);
recipes.addShapedMirrored(<pickletweaks:grass_mesh>, [[<minecraft:stick>, <primal:plant_cordage>], [<primal:plant_cordage>, <minecraft:stick>]]);

//Horse Cart
recipes.addShaped(<astikoor:cargocart>, [[plank, null, plank], [<primalchests:primal_chest_advanced>, plank, <primalchests:primal_chest_advanced>], [<astikoor:wheel>, <ore:slabWood>, <astikoor:wheel>]]);
recipes.addShaped(<astikoor:wheel>, [[stick, stick, stick], [stick, plank, stick], [stick, stick, stick]]);
recipes.addShaped(<astikoor:plowcart>, [[null, null, null], [stick, stick, stick], [<astikoor:wheel>, <astikoor:wheel>, <minecraft:stone>]]);
