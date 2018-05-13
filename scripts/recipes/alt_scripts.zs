for item in loadedMods["primalchests"].items {
	recipes.remove(item);
}

recipes.remove(<ceramics:unfired_clay:4>);
recipes.remove(<minecraft:dye:15>);

recipes.addShaped(<primalchests:primal_chest>, [[<abyssalcraft:dltplank>, plank, <abyssalcraft:dltplank>], [plank, <immcraft:chest>, plank], [<abyssalcraft:dltplank>, plank, <abyssalcraft:dltplank>]]);
recipes.addShaped(<primalchests:primal_chest_advanced>, [[null, <ore:barkWood>, null], [<ore:barkWood>, <primalchests:primal_chest>, <ore:barkWood>], [null, <ore:barkWood>, null]]);
