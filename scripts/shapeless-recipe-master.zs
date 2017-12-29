//Vanilla

recipes.remove(<minecraft:clay>);

recipes.addShapeless(<primal_tech:fire_sticks>, [stick, stick]);

recipes.addShapeless(<primal:leather_strip> * 9, [leather, <ore:toolWorkBlade>]);

recipes.addShapeless(<primal:plant_cloth>, [cordage, cordage, cordage, cordage, cordage, cordage, cordage, cordage, cordage]);

//Fleece to String
recipes.addShapeless(<minecraft:string>, [<betterwithaddons:wool:*>, <ore:toolBasicShears>.transformDamage()]);
recipes.addShapeless(<minecraft:string>, [<betterwithaddons:wool:*>, <ore:toolUniqueShears>.giveBack()]);

recipes.addShapeless(<minecraft:string>, [<betterwithaddons:wool:*>, <ore:toolWorkBlade>]);
