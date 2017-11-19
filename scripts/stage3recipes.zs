//Shorthand
val ip = <ore:plateIron>;
val cp = <ore:plateCopper>;
val lp = <ore:plateLead>;
val np = <ore:plateNickel>;
val tp = <ore:plateTin>;
val sp = <ore:plateSteel>;
val gp = <ore:plateGold>;
val bp = <ore:plateBronze>;
val ap = <ore:plateAluminum>;
val sip = <ore:plateSilver>;
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

//Entire Mods into Stage three
var modIDs = [
"stevescarts",
"openglider",
"enderutilities",
"immersivepetroleum"
] as string[];
for id in modIDs {
    for item in loadedMods[id].items {
        mods.recipestages.Recipes.setRecipeStage("three", item);
    }
}


mods.recipestages.Recipes.setRecipeStage("three", <minecraft:glowstone_dust>);
mods.recipestages.Recipes.setRecipeStage("three", <minecraft:dispenser>);
mods.recipestages.Recipes.setRecipeStage("three", <minecraft:noteblock>);

mods.recipestages.Recipes.setRecipeStage("three", <minecraft:brewing_stand>);

mods.recipestages.Recipes.setRecipeStage("three", <minecraft:enchanting_table>);
mods.recipestages.Recipes.addShaped("three", <minecraft:enchanting_table>, [[<minecraft:dye:4>, <minecraft:obsidian>, <minecraft:dye:4>], [<minecraft:obsidian>, <ore:book>, <minecraft:obsidian>], [<minecraft:dye:4>, <minecraft:obsidian>, <minecraft:dye:4>]]);

mods.recipestages.Recipes.setRecipeStage("three", <primal:quartz_hoe>);
mods.recipestages.Recipes.setRecipeStage("three", <primal:opal_hoe>);

mods.recipestages.Recipes.setRecipeStage("three", <minecraft:soul_sand>);
mods.recipestages.Recipes.setRecipeStage("three", <minecraft:trapped_chest>);
mods.recipestages.Recipes.setRecipeStage("three", <minecraft:observer>);
mods.recipestages.Recipes.setRecipeStage("three", <minecraft:glowstone>);
mods.recipestages.Recipes.setRecipeStage("three", <minecraft:skull:1>);


//Immersive Engineering

mods.recipestages.Recipes.addShaped("three", <immersiveengineering:tool>.withTag({multiblockInterdiction: ["IE:Assembler"]}), [[null, iron, str], [null, stick, iron], [stick, null, null]]);

recipes.remove(<immersiveengineering:metal_decoration0:3>);
recipes.remove(<immersiveengineering:material:20>);
recipes.remove(<immersiveengineering:material:21>);
recipes.remove(<immersiveengineering:material:22>);
recipes.remove(<immersiveengineering:material:23>);
recipes.remove(<immersiveengineering:tool:1>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:stone_decoration:*>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:storage:1>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:storage:2>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:storage:3>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:storage:4>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:storage:6>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:storage:7>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:storage:8>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:storage_slab:1>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:storage_slab:2>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:storage_slab:3>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:storage_slab:4>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:storage_slab:6>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:storage_slab:7>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:storage_slab:8>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:stone_decoration_slab>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:stone_decoration_slab:1>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:stone_decoration_slab:2>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:stone_decoration_slab:4>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:stone_decoration_slab:5>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:stone_decoration_slab:6>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:stone_decoration_slab:7>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:stone_decoration_slab:10>);

mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:metal>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:storage>);
mods.recipestages.Recipes.addShaped("three", <immersiveengineering:metal_decoration0:3>, [[ip, <contenttweaker:material_part:55>, ip], [<contenttweaker:material_part:55>, <immersiveengineering:material:26>, <contenttweaker:material_part:55>], [ip, <contenttweaker:material_part:55>, ip]]);
mods.recipestages.Recipes.addShapeless("three", <immersiveengineering:material:20>, [<immersiveengineering:tool:1>, <immersiveengineering:metal:30>]);
mods.recipestages.Recipes.addShapeless("three", <immersiveengineering:material:21>, [<immersiveengineering:tool:1>, <immersiveengineering:metal:37>]);
mods.recipestages.Recipes.addShapeless("three", <immersiveengineering:material:22>, [<immersiveengineering:tool:1>, <immersiveengineering:metal:31>]);
mods.recipestages.Recipes.addShapeless("three", <immersiveengineering:material:23>, [<immersiveengineering:tool:1>, <immersiveengineering:metal:38>]);
mods.recipestages.Recipes.addShaped("three", <immersiveengineering:tool:1>, [[<ore:stickTreatedWood>, <tconstruct:knife_blade>.withTag({Material: "iron"})], [null, <ore:stickTreatedWood>]]);

mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:stone_decoration_stairs_hempcrete>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:stone_decoration_stairs_concrete>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:stone_decoration_stairs_concrete_tile>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:stone_decoration_stairs_concrete_leaded>);

mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:jerrycan>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:drillhead>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:drillhead:1>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:revolver>);
mods.recipestages.Recipes.setRecipeStage("three", <immersivetech:connectors>);


mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:treated_wood>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:treated_wood:1>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:treated_wood:2>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:treated_wood_slab>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:treated_wood_slab:1>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:treated_wood_slab:2>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:treated_wood_stairs0>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:treated_wood_stairs1>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:treated_wood_stairs2>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:wooden_decoration>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:wooden_decoration:1>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:wooden_device0>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:wooden_device0:1>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:wooden_device0:2>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:wooden_device0:3>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:wooden_device0:4>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:wooden_device0:5>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:wooden_device0:6>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:wooden_device0:7>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:wooden_device1>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:wooden_device1:1>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:wooden_device1:3>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:wooden_device1:4>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:cloth_device>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:cloth_device:1>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:cloth_device:2>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:sheetmetal>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:sheetmetal:1>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:sheetmetal:2>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:sheetmetal:3>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:sheetmetal:4>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:sheetmetal:5>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:sheetmetal:6>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:sheetmetal:7>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:sheetmetal:8>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:sheetmetal:9>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:sheetmetal:10>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:sheetmetal_slab>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:sheetmetal_slab:1>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:sheetmetal_slab:2>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:sheetmetal_slab:3>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:sheetmetal_slab:4>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:sheetmetal_slab:5>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:sheetmetal_slab:6>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:sheetmetal_slab:7>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:sheetmetal_slab:8>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:sheetmetal_slab:10>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:metal_decoration0>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:metal_decoration0:1>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:metal_decoration0:2>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:metal_decoration0:4>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:metal_decoration0:5>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:metal_decoration0:6>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:metal_decoration0:7>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:metal_decoration1>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:metal_decoration1:1>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:metal_decoration1:2>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:metal_decoration1:3>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:metal_decoration1:4>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:metal_decoration1:5>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:metal_decoration1:6>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:metal_decoration1:7>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:metal_decoration2>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:metal_decoration2:1>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:metal_decoration2:2>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:metal_decoration2:3>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:metal_decoration2:4>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:metal_decoration2:5>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:metal_decoration1_slab:1>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:metal_decoration1_slab:2>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:metal_decoration1_slab:3>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:metal_decoration1_slab:5>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:metal_decoration1_slab:6>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:metal_decoration1_slab:7>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:steel_scaffolding_stairs0>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:steel_scaffolding_stairs1>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:steel_scaffolding_stairs2>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:aluminum_scaffolding_stairs0>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:aluminum_scaffolding_stairs1>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:aluminum_scaffolding_stairs2>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:connector>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:connector:1>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:connector:2>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:connector:3>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:connector:4>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:connector:5>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:connector:6>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:connector:7>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:connector:8>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:connector:9>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:connector:10>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:connector:11>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:connector:12>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:connector:13>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:metal_device0>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:metal_device0:1>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:metal_device0:2>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:metal_device0:4>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:metal_device0:5>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:metal_device0:6>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:metal_device1>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:metal_device1:1>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:metal_device1:2>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:metal_device1:3>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:metal_device1:4>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:metal_device1:5>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:metal_device1:6>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:metal_device1:7>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:metal_device1:8>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:metal_device1:9>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:metal_device1:10>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:metal_device1:11>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:metal_device1:13>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:conveyor>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:conveyor>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:conveyor>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:conveyor>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:conveyor>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:conveyor>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:conveyor>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:material>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:material:4>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:material:5>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:material:6>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:material:7>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:material:8>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:material:9>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:material:10>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:material:11>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:material:12>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:material:13>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:material:14>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:material:15>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:material:16>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:material:17>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:material:18>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:tool:1>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:tool:2>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:tool:3>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:toolbox>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:wirecoil>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:wirecoil:1>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:wirecoil:2>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:wirecoil:3>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:wirecoil:4>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:wirecoil:5>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:drill>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:speedloader>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:bullet>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:bullet:1>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:blueprint>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:blueprint>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:blueprint>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:blueprint>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:blueprint>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:chemthrower>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:railgun>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:skyhook>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:toolupgrade>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:toolupgrade:1>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:toolupgrade:2>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:toolupgrade:3>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:toolupgrade:4>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:toolupgrade:5>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:toolupgrade:6>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:toolupgrade:7>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:toolupgrade:8>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:toolupgrade:9>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:toolupgrade:10>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:toolupgrade:11>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:toolupgrade:12>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:toolupgrade:13>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:earmuffs>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:graphite_electrode>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:faraday_suit_feet>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:faraday_suit_legs>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:faraday_suit_chest>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:faraday_suit_head>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:fluorescent_tube>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:powerpack>);
mods.recipestages.Recipes.setRecipeStage("three", <immersiveengineering:shield>);

//Prospector
recipes.remove(<prospectors:prospector_med>);
mods.recipestages.Recipes.addShaped("three", <prospectors:prospector_med>, [[null, <minecraft:redstone>, <ore:blockGlass>], [null, <minecraft:dye:4>, <minecraft:redstone>], [<minecraft:dye:4>, null, null]]);

//Tinkers'
mods.recipestages.Recipes.setRecipeStage("three", <tconstruct:seared_tank>);
mods.recipestages.Recipes.setRecipeStage("three", <tcomplement:porcelain_tank>);

//Rails 
mods.recipestages.Recipes.setRecipeStage("three", <minecraft:rail>);
mods.recipestages.Recipes.setRecipeStage("three", <minecraft:golden_rail>);
mods.recipestages.Recipes.setRecipeStage("three", <minecraft:detector_rail>);
mods.recipestages.Recipes.setRecipeStage("three", <minecraft:activator_rail>);
mods.recipestages.Recipes.setRecipeStage("three", <betterwithmods:booster>);
mods.recipestages.Recipes.setRecipeStage("three", <tconstruct:wood_rail>);
mods.recipestages.Recipes.setRecipeStage("three", <tconstruct:wood_rail_trapdoor>);


//Redstone
mods.recipestages.Recipes.setRecipeStage("three", <minecraft:daylight_detector>);
mods.recipestages.Recipes.setRecipeStage("three", <minecraft:dropper>);
mods.recipestages.Recipes.setRecipeStage("three", <minecraft:redstone_torch>);
mods.recipestages.Recipes.setRecipeStage("three", <minecraft:repeater>);
mods.recipestages.Recipes.setRecipeStage("three", <minecraft:comparator>);
mods.recipestages.Recipes.setRecipeStage("three", <minecraft:activator_rail>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:placer_block>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:builder_block>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:clock>);
mods.recipestages.Recipes.setRecipeStage("three", <minecraft:redstone_lamp>);


//Embers Stage 3
mods.recipestages.Recipes.setRecipeStage("three", <embers:item_dropper>);
mods.recipestages.Recipes.setRecipeStage("three", <embers:bin>);
mods.recipestages.Recipes.setRecipeStage("three", <embers:heat_coil>);
mods.recipestages.Recipes.setRecipeStage("three", <embers:large_tank>);

recipes.remove(<embers:shovel_nickel>);
recipes.remove(<embers:pickaxe_nickel>);
recipes.remove(<embers:axe_nickel>);
recipes.remove(<embers:sword_nickel>);
recipes.remove(<embers:hoe_nickel>);
recipes.remove(<embers:pickaxe_aluminum>);
recipes.remove(<embers:axe_aluminum>);
recipes.remove(<embers:shovel_aluminum>);
recipes.remove(<embers:sword_aluminum>);
recipes.remove(<embers:hoe_aluminum>);
recipes.remove(<embers:pickaxe_silver>);
recipes.remove(<embers:axe_silver>);
recipes.remove(<embers:shovel_silver>);
recipes.remove(<embers:hoe_silver>);
recipes.remove(<embers:sword_silver>);
recipes.remove(<embers:pickaxe_lead>);
recipes.remove(<embers:axe_lead>);
recipes.remove(<embers:shovel_lead>);
recipes.remove(<embers:hoe_lead>);
recipes.remove(<embers:sword_lead>);
mods.recipestages.Recipes.addShaped("three", <embers:shovel_nickel>, [[null, np, null], [null, stick, null], [null, stick, null]]);
mods.recipestages.Recipes.addShaped("three", <embers:pickaxe_nickel>, [[np, np, np], [null, stick, null], [null, stick, null]]);
mods.recipestages.Recipes.addShaped("three", <embers:axe_nickel>, [[np, np, null], [np, stick, null], [null, stick, null]]);
mods.recipestages.Recipes.addShaped("three", <embers:sword_nickel>, [[null, np, null], [null, np, null], [null, stick, null]]);
mods.recipestages.Recipes.addShaped("three", <embers:hoe_nickel>, [[np, np, null], [null, stick, null], [null, stick, null]]);
mods.recipestages.Recipes.addShaped("three", <embers:shovel_aluminum>, [[null, ap, null], [null, stick, null], [null, stick, null]]);
mods.recipestages.Recipes.addShaped("three", <embers:pickaxe_aluminum>, [[ap, ap, ap], [null, stick, null], [null, stick, null]]);
mods.recipestages.Recipes.addShaped("three", <embers:axe_aluminum>, [[ap, ap, null], [ap, stick, null], [null, stick, null]]);
mods.recipestages.Recipes.addShaped("three", <embers:sword_aluminum>, [[null, ap, null], [null, ap, null], [null, stick, null]]);
mods.recipestages.Recipes.addShaped("three", <embers:hoe_aluminum>, [[ap, ap, null], [null, stick, null], [null, stick, null]]);
mods.recipestages.Recipes.addShaped("three", <embers:shovel_silver>, [[null, sip, null], [null, stick, null], [null, stick, null]]);
mods.recipestages.Recipes.addShaped("three", <embers:pickaxe_silver>, [[sip, sip, sip], [null, stick, null], [null, stick, null]]);
mods.recipestages.Recipes.addShaped("three", <embers:axe_silver>, [[sip, sip, null], [sip, stick, null], [null, stick, null]]);
mods.recipestages.Recipes.addShaped("three", <embers:sword_silver>, [[null, sip, null], [null, sip, null], [null, stick, null]]);
mods.recipestages.Recipes.addShaped("three", <embers:hoe_silver>, [[sip, sip, null], [null, stick, null], [null, stick, null]]);
mods.recipestages.Recipes.addShaped("three", <embers:shovel_lead>, [[null, lp, null], [null, stick, null], [null, stick, null]]);
mods.recipestages.Recipes.addShaped("three", <embers:pickaxe_lead>, [[lp, lp, lp], [null, stick, null], [null, stick, null]]);
mods.recipestages.Recipes.addShaped("three", <embers:axe_lead>, [[lp, lp, null], [lp, stick, null], [null, stick, null]]);
mods.recipestages.Recipes.addShaped("three", <embers:sword_lead>, [[null, lp, null], [null, lp, null], [null, stick, null]]);
mods.recipestages.Recipes.addShaped("three", <embers:hoe_lead>, [[lp, lp, null], [null, stick, null], [null, stick, null]]);

recipes.remove(<immersiveengineering:metal:15>);

//Nether new Recipes
mods.recipestages.Recipes.addShapeless("three", <primal:nether_cordage>, [<primal:nether_fiber>, <primal:nether_fiber>, <primal:nether_fiber>]);

//Bibliocraft
mods.recipestages.Recipes.setRecipeStage("three", <bibliocraft:dinnerplate>);
mods.recipestages.Recipes.setRecipeStage("three", <bibliocraft:cookiejar>);
mods.recipestages.Recipes.setRecipeStage("three", <bibliocraft:printingpress>);
mods.recipestages.Recipes.setRecipeStage("three", <bibliocraft:typesettingtable>);
mods.recipestages.Recipes.setRecipeStage("three", <bibliocraft:bell>);
mods.recipestages.Recipes.setRecipeStage("three", <bibliocraft:typewriter:*>);
mods.recipestages.Recipes.setRecipeStage("three", <bibliocraft:paintingpress>);
mods.recipestages.Recipes.setRecipeStage("three", <bibliocraft:clock:*>);
mods.recipestages.Recipes.setRecipeStage("three", <bibliocraft:potionshelf:*>);
mods.recipestages.Recipes.setRecipeStage("three", <bibliocraft:biblioglasses>);
mods.recipestages.Recipes.setRecipeStage("three", <bibliocraft:deathcompass>);
mods.recipestages.Recipes.setRecipeStage("three", <bibliocraft:biblioglasses:2>);
mods.recipestages.Recipes.setRecipeStage("three", <bibliocraft:biblioglasses:1>);
mods.recipestages.Recipes.setRecipeStage("three", <bibliocraft:biblioclipboard>);
mods.recipestages.Recipes.setRecipeStage("three", <bibliocraft:bibliodrill>);
mods.recipestages.Recipes.setRecipeStage("three", <bibliocraft:enchantedplate>);
mods.recipestages.Recipes.setRecipeStage("three", <bibliocraft:printplate>);
mods.recipestages.Recipes.setRecipeStage("three", <bibliocraft:bibliochase>);
mods.recipestages.Recipes.setRecipeStage("three", <bibliocraft:tape>);
mods.recipestages.Recipes.setRecipeStage("three", <bibliocraft:tapemeasure>);
mods.recipestages.Recipes.setRecipeStage("three", <bibliocraft:atlasplate>);
mods.recipestages.Recipes.setRecipeStage("three", <bibliocraft:discrack>);

//Nether 
mods.recipestages.Recipes.setRecipeStage("three", <primal:quartz_pickaxe>);
mods.recipestages.Recipes.setRecipeStage("three", <primal:quartz_shovel>);
mods.recipestages.Recipes.setRecipeStage("three", <primal:quartz_hoe>);
mods.recipestages.Recipes.setRecipeStage("three", <primal:quartz_hatchet>);
mods.recipestages.Recipes.setRecipeStage("three", <primal:quartz_axe>);
mods.recipestages.Recipes.setRecipeStage("three", <primal:quartz_shears>);
mods.recipestages.Recipes.setRecipeStage("three", <primal:quartz_workblade>);
mods.recipestages.Recipes.setRecipeStage("three", <primal:quartz_gallagher>);
mods.recipestages.Recipes.setRecipeStage("three", <primal:quartz_saw>);
mods.recipestages.Recipes.setRecipeStage("three", <primal:quartz_clippers>);
mods.recipestages.Recipes.setRecipeStage("three", <primal:arrow_quartz>);


//Steve's Carts

recipes.remove(<stevescarts:blockcartassembler>);
recipes.remove(<stevescarts:modulecomponents:9>);

//mods.recipestages.Recipes.addShaped("three", <stevescarts:blockcartassembler>, [<primal:nether_cordage>, <primal:nether_cordage>, <primal:nether_cordage>]);
//mods.recipestages.Recipes.addShaped("three", <stevescarts:modulecomponents:9>, [<primal:nether_cordage>, <primal:nether_cordage>, <primal:nether_cordage>]);




//Rails

//mods.recipestages.Recipes.addShaped("three", <>, [<>, <>, <>]);
recipes.remove(<minecraft:rail>);
recipes.remove(<minecraft:activator_rail>);
recipes.remove(<minecraft:golden_rail>);
recipes.remove(<minecraft:detector_rail>);
recipes.remove(<tconstruct:wood_rail>);
mods.recipestages.Recipes.addShaped("three", <minecraft:rail>, [[ip, plank, ip], [ip, plank, ip], [ip, plank, ip]]);
mods.recipestages.Recipes.addShaped("three", <minecraft:activator_rail>, [[ip, plank, ip], [ip, <minecraft:redstone_torch>, ip], [ip, plank, ip]]);
mods.recipestages.Recipes.addShaped("three", <minecraft:golden_rail>, [[gp, <minecraft:redstone>, gp], [gp, plank, gp], [gp, <minecraft:redstone>, gp]]);
mods.recipestages.Recipes.addShaped("three", <minecraft:detector_rail>, [[ip, <minecraft:redstone>, ip], [ip, <minecraft:light_weighted_pressure_plate>, ip], [ip, <minecraft:redstone>, ip]]);
mods.recipestages.Recipes.addShaped("three", <tconstruct:wood_rail>, [[<ore:thinWood>, plank, <ore:thinWood>], [<ore:thinWood>, plank, <ore:thinWood>], [<ore:thinWood>, plank, <ore:thinWood>]]);

//Storage Drawers
recipes.remove(<storagedrawers:controller>);
recipes.remove(<storagedrawers:controllerslave>);
recipes.remove(<storagedrawers:compdrawers>);
mods.recipestages.Recipes.addShaped("three", <storagedrawers:controller>, [[<ore:platePlatinum>, <nex:block_amethyst>, <ore:platePlatinum>], [<immersiveengineering:metal_decoration0:3>, <ore:drawerTrim>, <immersiveengineering:metal_decoration0:3>], [<ore:platePlatinum>, <astralsorcery:itemcraftingcomponent:1>, <ore:platePlatinum>]]);
mods.recipestages.Recipes.addShaped("three", <storagedrawers:controllerslave>, [[<ore:platePlatinum>, <ore:plateRedstoneAlloy>, <ore:platePlatinum>], [ip, <ore:drawerTrim>, ip], [<ore:platePlatinum>, <immersiveengineering:metal_decoration0:3>, <ore:platePlatinum>]]);
mods.recipestages.Recipes.addShaped("three", <storagedrawers:compdrawers>, [[ip, <ore:platePlatinum>, ip], [<minecraft:piston>, <ore:drawerTrim>, <minecraft:piston>], [ip, <astralsorcery:itemcraftingcomponent:1>, ip]]);
mods.recipestages.Recipes.setRecipeStage("three", <storagedrawers:keybutton>);
mods.recipestages.Recipes.setRecipeStage("three", <storagedrawers:keybutton:1>);
mods.recipestages.Recipes.setRecipeStage("three", <storagedrawers:keybutton:2>);
mods.recipestages.Recipes.setRecipeStage("three", <storagedrawers:keybutton:3>);
mods.recipestages.Recipes.setRecipeStage("three", <storagedrawers:upgrade_status>);
mods.recipestages.Recipes.setRecipeStage("three", <storagedrawers:upgrade_status:1>);
mods.recipestages.Recipes.setRecipeStage("three", <storagedrawers:upgrade_void>);
mods.recipestages.Recipes.setRecipeStage("three", <storagedrawers:upgrade_redstone>);
mods.recipestages.Recipes.setRecipeStage("three", <storagedrawers:upgrade_redstone:1>);
mods.recipestages.Recipes.setRecipeStage("three", <storagedrawers:upgrade_redstone:2>);



////
//
//Extended Crafting 
//
////
recipes.remove(<extendedcrafting:material:15>);
recipes.remove(<extendedcrafting:material:14>);
recipes.remove(<extendedcrafting:material:7>);
mods.recipestages.Recipes.setRecipeStage("three", <extendedcrafting:table_basic>);
mods.recipestages.Recipes.setRecipeStage("three", <extendedcrafting:table_advanced>);
mods.recipestages.Recipes.addShapeless("three", <extendedcrafting:material:7>, [<minecraft:redstone>, <minecraft:glowstone_dust>, <minecraft:gunpowder>, <astralsorcery:itemcraftingcomponent:2>]);
mods.recipestages.Recipes.addShapeless("three", <extendedcrafting:material:14>, [<immersiveengineering:material:1>, <immersiveengineering:material:1>, <extendedcrafting:material:2>, <extendedcrafting:material:7>]);
mods.recipestages.Recipes.addShapeless("three", <extendedcrafting:material:15>, [<primal:golden_stick>, <primal:golden_stick>, <extendedcrafting:material:2>, <extendedcrafting:material:7>]);


////
//
//ViesCraft
//
////
mods.recipestages.Recipes.setRecipeStage("three", <vc:guidebook_main>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:guidebook_control>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:guidebook_paint>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:guidebook_socket>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:viesoline_pellets>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:item_airship_dismounter>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:frames/airship_frame:0>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:frames/airship_frame:1>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:frames/airship_frame:2>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:frames/airship_frame:3>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:frames/airship_frame:4>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:frames/airship_frame:5>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:frames/airship_frame:6>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:frames/airship_frame:7>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:frames/airship_frame:8>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:frames/airship_frame:9>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:frames/airship_frame:10>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:frames/airship_frame:11>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:frames/airship_frame:12>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:frames/airship_frame:13>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:frames/airship_frame:14>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:frames/airship_frame:15>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:frames/airship_frame:16>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:frames/airship_frame:17>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:frames/airship_frame:18>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:frames/airship_frame:19>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:frames/airship_frame:20>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:frames/airship_frame:21>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:frames/airship_frame:22>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:frames/airship_frame:23>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:frames/airship_frame:24>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:frames/airship_frame:25>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:frames/airship_frame:26>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:frames/airship_frame:27>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:frames/airship_frame:28>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:patterns/airship_balloon_pattern:0>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:patterns/airship_balloon_pattern:1>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:patterns/airship_balloon_pattern:2>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:patterns/airship_balloon_pattern:3>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:patterns/airship_balloon_pattern:4>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:patterns/airship_balloon_pattern:5>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:patterns/airship_balloon_pattern:6>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:patterns/airship_balloon_pattern:7>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:patterns/airship_balloon_pattern:8>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:patterns/airship_balloon_pattern:9>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:patterns/airship_balloon_pattern:10>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:patterns/airship_balloon_pattern:11>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:patterns/airship_balloon_pattern:12>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:patterns/airship_balloon_pattern:13>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:patterns/airship_balloon_pattern:14>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:patterns/airship_balloon_pattern:15>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:patterns/airship_balloon_pattern:16>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:patterns/airship_balloon_pattern:17>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:patterns/airship_balloon_pattern:18>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:patterns/airship_balloon_pattern:19>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:patterns/airship_balloon_pattern:20>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:patterns/airship_balloon_pattern:21>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:patterns/airship_balloon_pattern:22>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:patterns/airship_balloon_pattern:23>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:patterns/airship_balloon_pattern:24>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:patterns/airship_balloon_pattern:25>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:modules/airship_module:0>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:modules/airship_module:1>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:modules/airship_module:2>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:modules/airship_module:3>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:modules/airship_module:4>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:modules/airship_module:5>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:modules/airship_module:6>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:modules/airship_module:7>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:modules/airship_module:8>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:modules/airship_module:9>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:modules/airship_module:10>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:item_balloon_colorizer>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v1/item_airship_v1:0>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v1/item_airship_v1:1>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v1/item_airship_v1:2>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v1/item_airship_v1:3>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v1/item_airship_v1:4>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v1/item_airship_v1:5>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v1/item_airship_v1:6>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v1/item_airship_v1:7>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v1/item_airship_v1:8>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v1/item_airship_v1:9>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v1/item_airship_v1:10>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v1/item_airship_v1:11>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v1/item_airship_v1:12>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v1/item_airship_v1:13>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v1/item_airship_v1:14>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v1/item_airship_v1:15>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v1/item_airship_v1:16>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v1/item_airship_v1:17>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v1/item_airship_v1:18>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v1/item_airship_v1:19>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v1/item_airship_v1:20>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v1/item_airship_v1:21>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v1/item_airship_v1:22>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v1/item_airship_v1:23>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v1/item_airship_v1:24>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v1/item_airship_v1:25>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v1/item_airship_v1:26>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v1/item_airship_v1:27>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v1/item_airship_v1:28>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v2/item_airship_v2:0>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v2/item_airship_v2:1>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v2/item_airship_v2:2>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v2/item_airship_v2:3>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v2/item_airship_v2:4>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v2/item_airship_v2:5>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v2/item_airship_v2:6>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v2/item_airship_v2:7>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v2/item_airship_v2:8>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v2/item_airship_v2:9>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v2/item_airship_v2:10>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v2/item_airship_v2:11>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v2/item_airship_v2:12>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v2/item_airship_v2:13>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v2/item_airship_v2:14>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v2/item_airship_v2:15>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v2/item_airship_v2:16>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v2/item_airship_v2:17>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v2/item_airship_v2:18>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v2/item_airship_v2:19>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v2/item_airship_v2:20>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v2/item_airship_v2:21>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v2/item_airship_v2:22>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v2/item_airship_v2:23>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v2/item_airship_v2:24>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v2/item_airship_v2:25>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v2/item_airship_v2:26>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v2/item_airship_v2:27>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v2/item_airship_v2:28>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v3/item_airship_v3:0>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v3/item_airship_v3:1>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v3/item_airship_v3:2>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v3/item_airship_v3:3>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v3/item_airship_v3:4>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v3/item_airship_v3:5>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v3/item_airship_v3:6>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v3/item_airship_v3:7>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v3/item_airship_v3:8>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v3/item_airship_v3:9>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v3/item_airship_v3:10>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v3/item_airship_v3:11>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v3/item_airship_v3:12>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v3/item_airship_v3:13>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v3/item_airship_v3:14>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v3/item_airship_v3:15>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v3/item_airship_v3:16>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v3/item_airship_v3:17>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v3/item_airship_v3:18>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v3/item_airship_v3:19>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v3/item_airship_v3:20>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v3/item_airship_v3:21>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v3/item_airship_v3:22>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v3/item_airship_v3:23>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v3/item_airship_v3:24>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v3/item_airship_v3:25>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v3/item_airship_v3:26>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v3/item_airship_v3:27>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v3/item_airship_v3:28>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v4/item_airship_v4:0>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v4/item_airship_v4:1>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v4/item_airship_v4:2>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v4/item_airship_v4:3>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v4/item_airship_v4:4>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v4/item_airship_v4:5>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v4/item_airship_v4:6>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v4/item_airship_v4:7>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v4/item_airship_v4:8>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v4/item_airship_v4:9>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v4/item_airship_v4:10>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v4/item_airship_v4:11>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v4/item_airship_v4:12>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v4/item_airship_v4:13>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v4/item_airship_v4:14>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v4/item_airship_v4:15>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v4/item_airship_v4:16>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v4/item_airship_v4:17>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v4/item_airship_v4:18>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v4/item_airship_v4:19>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v4/item_airship_v4:20>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v4/item_airship_v4:21>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v4/item_airship_v4:22>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v4/item_airship_v4:23>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v4/item_airship_v4:24>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v4/item_airship_v4:25>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v4/item_airship_v4:26>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v4/item_airship_v4:27>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v4/item_airship_v4:28>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:airship_workbench>);


mods.recipestages.Recipes.setRecipeStage("three", <vc:v1/item_airship_v1:29>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v2/item_airship_v2:29>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v3/item_airship_v3:29>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:v4/item_airship_v4:29>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:frames/airship_frame:29>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:patterns/airship_balloon_pattern:26>);
mods.recipestages.Recipes.setRecipeStage("three", <vc:modules/airship_module:11>);


//Dark Utils
mods.recipestages.Recipes.setRecipeStage("three", <darkutils:wither_block:1>);
mods.recipestages.Recipes.setRecipeStage("three", <darkutils:wither_block>);
mods.recipestages.Recipes.setRecipeStage("three", <darkutils:material:3>);
mods.recipestages.Recipes.setRecipeStage("three", <darkutils:material:2>);
mods.recipestages.Recipes.setRecipeStage("three", <darkutils:material:1>);
mods.recipestages.Recipes.setRecipeStage("three", <darkutils:material>);
mods.recipestages.Recipes.setRecipeStage("three", <darkutils:trap_tile:3>);
mods.recipestages.Recipes.setRecipeStage("three", <darkutils:trap_tile:5>);
mods.recipestages.Recipes.setRecipeStage("three", <darkutils:update_detector>);
mods.recipestages.Recipes.setRecipeStage("three", <darkutils:ender_tether>);
mods.recipestages.Recipes.setRecipeStage("three", <darkutils:filter:*>);
mods.recipestages.Recipes.setRecipeStage("three", <darkutils:filter_inverted:*>);
mods.recipestages.Recipes.setRecipeStage("three", <darkutils:ender_hopper>);
mods.recipestages.Recipes.setRecipeStage("three", <darkutils:grate>);
mods.recipestages.Recipes.setRecipeStage("three", <darkutils:fake_tnt>);
mods.recipestages.Recipes.setRecipeStage("three", <darkutils:timer>);
mods.recipestages.Recipes.setRecipeStage("three", <darkutils:wither_block:2>);
mods.recipestages.Recipes.setRecipeStage("three", <darkutils:wither_block:3>);
mods.recipestages.Recipes.setRecipeStage("three", <darkutils:wither_block:4>);
mods.recipestages.Recipes.setRecipeStage("three", <darkutils:wither_block:5>);
mods.recipestages.Recipes.setRecipeStage("three", <darkutils:charm_null>);
mods.recipestages.Recipes.setRecipeStage("three", <darkutils:focus_sash>);
mods.recipestages.Recipes.setRecipeStage("three", <darkutils:charm_agression>);
mods.recipestages.Recipes.setRecipeStage("three", <darkutils:trap_move_fast>);
mods.recipestages.Recipes.setRecipeStage("three", <darkutils:trap_move_hyper>);

//Actually Additions
mods.recipestages.Recipes.setRecipeStage("three", <actuallyadditions:item_helm_obsidian>);
mods.recipestages.Recipes.setRecipeStage("three", <actuallyadditions:item_chest_obsidian>);
mods.recipestages.Recipes.setRecipeStage("three", <actuallyadditions:item_pants_obsidian>);
mods.recipestages.Recipes.setRecipeStage("three", <actuallyadditions:item_boots_obsidian>);
mods.recipestages.Recipes.setRecipeStage("three", <actuallyadditions:item_pickaxe_obsidian>);
mods.recipestages.Recipes.setRecipeStage("three", <actuallyadditions:item_axe_obsidian>);
mods.recipestages.Recipes.setRecipeStage("three", <actuallyadditions:item_shovel_obsidian>);
mods.recipestages.Recipes.setRecipeStage("three", <actuallyadditions:item_sword_obsidian>);
mods.recipestages.Recipes.setRecipeStage("three", <actuallyadditions:item_hoe_obsidian>);
mods.recipestages.Recipes.setRecipeStage("three", <actuallyadditions:obsidian_paxel>);
mods.recipestages.Recipes.setRecipeStage("three", <actuallyadditions:item_food:9>);
mods.recipestages.Recipes.setRecipeStage("three", <actuallyadditions:item_food:7>);
mods.recipestages.Recipes.setRecipeStage("three", <actuallyadditions:item_food:6>);
mods.recipestages.Recipes.setRecipeStage("three", <actuallyadditions:item_food:5>);
mods.recipestages.Recipes.setRecipeStage("three", <actuallyadditions:item_food:4>);
mods.recipestages.Recipes.setRecipeStage("three", <actuallyadditions:item_food:3>);
mods.recipestages.Recipes.setRecipeStage("three", <actuallyadditions:item_food:2>);
mods.recipestages.Recipes.setRecipeStage("three", <actuallyadditions:item_food:1>);
mods.recipestages.Recipes.setRecipeStage("three", <actuallyadditions:item_food>);
mods.recipestages.Recipes.setRecipeStage("three", <actuallyadditions:item_food:19>);
mods.recipestages.Recipes.setRecipeStage("three", <actuallyadditions:item_food:20>);
mods.recipestages.Recipes.setRecipeStage("three", <actuallyadditions:item_misc>);
mods.recipestages.Recipes.setRecipeStage("three", <actuallyadditions:item_food:18>);
mods.recipestages.Recipes.setRecipeStage("three", <actuallyadditions:item_food:8>);
mods.recipestages.Recipes.setRecipeStage("three", <actuallyadditions:item_food:15>);
mods.recipestages.Recipes.setRecipeStage("three", <actuallyadditions:item_food:14>);
mods.recipestages.Recipes.setRecipeStage("three", <actuallyadditions:item_food:13>);
mods.recipestages.Recipes.setRecipeStage("three", <actuallyadditions:item_food:12>);
mods.recipestages.Recipes.setRecipeStage("three", <actuallyadditions:item_food:11>);
mods.recipestages.Recipes.setRecipeStage("three", <actuallyadditions:item_food:10>);
mods.recipestages.Recipes.setRecipeStage("three", <actuallyadditions:item_misc:3>);
mods.recipestages.Recipes.setRecipeStage("three", <actuallyadditions:item_misc:2>);
mods.recipestages.Recipes.setRecipeStage("three", <actuallyadditions:item_knife>);

//Ore Excavation
mods.recipestages.Recipes.setRecipeStage("three", <minecraft:grass>);

////
//
// TO DO
//
////
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:tool_auto_torch>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:wand_missile>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:fire_killer>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:purple_boots>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:charm_wing>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:gold_furnace_minecart>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:turret_minecart>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:password_block>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:plate_push_fast>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:ender_blaze>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:chest_sack_empty>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:entity_detector>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:tool_swap>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:charm_fire>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:gold_minecart>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:stone_minecart>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:plate_push>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:magnet_anti_block>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:ender_water>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:chest_sack>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:carbon_paper>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:purple_chestplate>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:purple_helmet>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:sprinkler>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:block_hydrator>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:dropper_minecart>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:horse_upgrade_speed>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:plate_push_slowest>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:ender_snow>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:evoker_fang>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:tool_push>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:fire_dark>);
mods.recipestages.Recipes.setRecipeStage("three", <cyclicmagic:horse_upgrade_jump>);

//AbyssalCraft
mods.recipestages.Recipes.setRecipeStage("three", <abyssalcraft:crystal:*>);
mods.recipestages.Recipes.setRecipeStage("three", <abyssalcraft:crystalshard:*>);
mods.recipestages.Recipes.setRecipeStage("three", <abyssalcraft:crystalcluster:*>);
mods.recipestages.Recipes.setRecipeStage("three", <abyssalcraft:crystalcluster2:*>);
mods.recipestages.Recipes.setRecipeStage("three", <abyssalcraft:crystalfragment:*>);
mods.recipestages.Recipes.setRecipeStage("three", <abyssalcraft:transmutator>);
mods.recipestages.Recipes.setRecipeStage("three", <abyssalcraft:transmutationgem>);
