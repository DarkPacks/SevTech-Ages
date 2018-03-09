//==================================
//Vanilla
recipes.remove(<minecraft:clay>);

//Fleece to String
recipes.addShapeless(<minecraft:string> * 4, [<betterwithaddons:wool:*>, <ore:toolShears>.transformNew(scripts.transformers.shearsTransformFunction)]);
recipes.addShapeless(<minecraft:string> * 4, [<betterwithaddons:wool:*>, <ore:toolWorkBlade>]);

//Pickle Tweaks Mesh
recipes.addShapeless(<minecraft:flint>, [<pickletweaks:reinforced_mesh:*>, <betterwithmods:gravel_pile>]);

//==================================
//Primal Core
recipes.addShapeless(<primal:leather_strip> * 9, [leather, <ore:toolWorkBlade>]);

recipes.addShapeless(<primal:plant_cloth>, [cordage, cordage, cordage, cordage, cordage, cordage, cordage, cordage, cordage]);

//==================================
//Primal Tech
recipes.addShapeless(<primal_tech:fire_sticks>, [stick, stick]);