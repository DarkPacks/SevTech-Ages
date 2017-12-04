//recipes.addShapeless(, []);



//Vanilla

recipes.remove(<minecraft:clay>);


recipes.addShapeless(<primal_tech:fire_sticks>, [stick, stick]);



recipes.addShapeless(<primal:leather_strip> * 9, [leather, <ore:toolWorkBlade>]);

//Horse Power

//mods.horsepower.Recipes.addShaped(<ore:plankWood, <horsepower:chopping_block>, [<ingredients>]);


mods.horsepower.Recipes.addShapeless(log, <horsepower:chopping_block>, [log]);


mods.horsepower.Recipes.addShaped(<horsepower:chopping_block>, <horsepower:chopper>, [[<minecraft:lead>, <ore:stickWood>, <minecraft:lead>], [plank, <minecraft:flint>, plank], [plank, <horsepower:chopping_block>, plank]]);


recipes.addShapeless(<primal:plant_cloth>, [cordage, cordage, cordage, cordage, cordage, cordage, cordage, cordage, cordage]);

//Fleece to String
recipes.addShapeless(<minecraft:string>, [<betterwithaddons:wool:*>, <minecraft:shears:*>]);
recipes.addShapeless(<minecraft:string>, [<betterwithaddons:wool:*>, <cyclicmagic:ender_wool:*>]);
recipes.addShapeless(<minecraft:string>, [<betterwithaddons:wool:*>, <primal:flint_shears:*>]);
recipes.addShapeless(<minecraft:string>, [<betterwithaddons:wool:*>, <primal:quartz_shears:*>]);
recipes.addShapeless(<minecraft:string>, [<betterwithaddons:wool:*>, <roots:wood_shears:*>]);
recipes.addShapeless(<minecraft:string>, [<betterwithaddons:wool:*>, <primal_tech:bone_shears:*>]);

recipes.addShapeless(<minecraft:string>, [<betterwithaddons:wool:*>, <ore:toolWorkBlade>]);

