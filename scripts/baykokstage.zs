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

//mods.recipestages.Recipes.addShaped("one", <>, [[, , ], [, , ], [, , ]]);

mods.recipestages.Recipes.addShaped("baykok", <minecraft:arrow> * 4, [[flint, null], [stick, null], [<minecraft:feather>, null]]);