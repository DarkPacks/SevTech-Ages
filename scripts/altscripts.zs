//Shorthand
val ip = <ore:plateIron>;
val cp = <ore:plateCopper>;
val lp = <ore:plateLead>;
val np = <ore:plateNickel>;
val tp = <ore:plateTin>;
val sp = <ore:plateSteel>;
val gp = <ore:plateGold>;
val bp = <ore:plateBronze>;
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


for item in loadedMods["primalchests"].items {
recipes.remove(item);
}


recipes.remove(<actuallyadditions:item_misc:17>);

recipes.remove(<ceramics:unfired_clay:4>);
recipes.remove(<tconstruct:faucet>);
recipes.remove(<minecraft:dye:15>);


recipes.addShaped(<primalchests:primal_chest>, [[<abyssalcraft:dltplank>, plank, <abyssalcraft:dltplank>], [plank, <immcraft:chest>, plank], [<abyssalcraft:dltplank>, plank, <abyssalcraft:dltplank>]]);
recipes.addShaped(<primalchests:primal_chest_advanced>, [[null, <ore:barkWood>, null], [<ore:barkWood>, <primalchests:primal_chest>, <ore:barkWood>], [null, <ore:barkWood>, null]]);







