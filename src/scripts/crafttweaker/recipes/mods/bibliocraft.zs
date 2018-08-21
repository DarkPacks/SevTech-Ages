/*
    SevTech: Ages BiblioCraft Recipe Script

    This script handles the recipes for BiblioCraft.

    Note: These scripts are created and for the usage in SevTech: Ages and other
    modpacks curated by DarkPacks. You can use these scripts for reference and for
    learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.zenstages.Utils;

import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageFive;

/*
    Shaped Recipes
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<bibliocraft:plumbline:0> : [
		[
			[<betterwithaddons:bolt:6>, null, null],
			[null, <betterwithaddons:bolt:6>, null],
			[null, null, <ore:rock>]
		]
	],
	<bibliocraft:shelf:0> : [
		[
			[<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "oak"}, Name: "minecraft:planks"}}), <betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "oak"}, Name: "minecraft:planks"}}), <betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "oak"}, Name: "minecraft:planks"}})],
			[null, <minecraft:planks>, null],
			[<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "oak"}, Name: "minecraft:planks"}}), <betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "oak"}, Name: "minecraft:planks"}}), <betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "oak"}, Name: "minecraft:planks"}})]
			]
		],
	<bibliocraft:shelf:1> : [
		[
			[<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "spruce"}, Name: "minecraft:planks"}}), <betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "spruce"}, Name: "minecraft:planks"}}), <betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "spruce"}, Name: "minecraft:planks"}})],
			[null, <minecraft:planks:1>, null],
			[<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "spruce"}, Name: "minecraft:planks"}}), <betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "spruce"}, Name: "minecraft:planks"}}), <betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "spruce"}, Name: "minecraft:planks"}})]
			]
		],
	<bibliocraft:shelf:2> : [
		[
			[<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "birch"}, Name: "minecraft:planks"}}), <betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "birch"}, Name: "minecraft:planks"}}), <betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "birch"}, Name: "minecraft:planks"}})],
			[null, <minecraft:planks:2>, null],
			[<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "birch"}, Name: "minecraft:planks"}}), <betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "birch"}, Name: "minecraft:planks"}}), <betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "birch"}, Name: "minecraft:planks"}})]
			]
		],
	<bibliocraft:shelf:3> : [
		[
			[<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "jungle"}, Name: "minecraft:planks"}}), <betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "jungle"}, Name: "minecraft:planks"}}), <betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "jungle"}, Name: "minecraft:planks"}})],
			[null, <minecraft:planks:3>, null],
			[<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "jungle"}, Name: "minecraft:planks"}}), <betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "jungle"}, Name: "minecraft:planks"}}), <betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "jungle"}, Name: "minecraft:planks"}})]
			]
		],
	<bibliocraft:shelf:4> : [
		[
			[<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "acacia"}, Name: "minecraft:planks"}}), <betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "acacia"}, Name: "minecraft:planks"}}), <betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "acacia"}, Name: "minecraft:planks"}})],
			[null, <minecraft:planks:4>, null],
			[<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "acacia"}, Name: "minecraft:planks"}}), <betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "acacia"}, Name: "minecraft:planks"}}), <betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "acacia"}, Name: "minecraft:planks"}})]
			]
		],
	<bibliocraft:shelf:5> : [
		[
			[<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "dark_oak"}, Name: "minecraft:planks"}}), <betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "dark_oak"}, Name: "minecraft:planks"}}), <betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "dark_oak"}, Name: "minecraft:planks"}})],
			[null, <minecraft:planks:5>, null],
			[<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "dark_oak"}, Name: "minecraft:planks"}}), <betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "dark_oak"}, Name: "minecraft:planks"}}), <betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "dark_oak"}, Name: "minecraft:planks"}})]
			]
		],
	<bibliocraft:stockroomcatalog:0> : [
		[
			[<minecraft:paper:0>, <ore:dyeGreen>, <minecraft:paper:0>],
			[<minecraft:paper:0>, <minecraft:writable_book:0>, <minecraft:paper:0>],
			[<minecraft:paper:0>, <minecraft:paper:0>, <minecraft:paper:0>]
		]
	],
	<bibliocraft:biblioglasses:1> : [
		[
			[<bibliocraft:biblioglasses:0>, <ore:dyeGray>]
		]
	],
	<bibliocraft:tape:0> : [
		[
			[<minecraft:string:0>, <minecraft:string:0>, <minecraft:string:0>],
			[<minecraft:string:0>, <ore:dyeYellow>, <minecraft:string:0>],
			[<minecraft:string:0>, <minecraft:string:0>, <minecraft:string:0>]
		]
	]
};

static namedShapedRecipes as IIngredient[][][][string][IItemStack] = {};

/*
    Mirrored Recipes
*/
static mirroredRecipes as IIngredient[][][][IItemStack] = {};

static namedMirroredRecipes as IIngredient[][][][string][IItemStack] = {};

/*
    Shapeless Recipes
*/
static shapelessRecipes as IIngredient[][][IItemStack] = {
	// Lantern Gold
	<bibliocraft:lanterngold:0> : [
		[<bibliocraft:lanterngold:*>, <pickletweaks:dye_powder:0>]
	],
	<bibliocraft:lanterngold:1> : [
		[<bibliocraft:lanterngold:*>, <pickletweaks:dye_powder:8>]
	],
	<bibliocraft:lanterngold:2> : [
		[<bibliocraft:lanterngold:*>, <pickletweaks:dye_powder:7>]
	],
	<bibliocraft:lanterngold:3> : [
		[<bibliocraft:lanterngold:*>, <pickletweaks:dye_powder:15>]
	],
	<bibliocraft:lanterngold:4> : [
		[<bibliocraft:lanterngold:*>, <pickletweaks:dye_powder:14>]
	],
	<bibliocraft:lanterngold:5> : [
		[<bibliocraft:lanterngold:*>, <pickletweaks:dye_powder:1>]
	],
	<bibliocraft:lanterngold:6> : [
		[<bibliocraft:lanterngold:*>, <pickletweaks:dye_powder:4>]
	],
	<bibliocraft:lanterngold:7> : [
		[<bibliocraft:lanterngold:*>, <pickletweaks:dye_powder:5>]
	],
	<bibliocraft:lanterngold:8> : [
		[<bibliocraft:lanterngold:*>, <pickletweaks:dye_powder:13>]
	],
	<bibliocraft:lanterngold:9> : [
		[<bibliocraft:lanterngold:*>, <pickletweaks:dye_powder:9>]
	],
	<bibliocraft:lanterngold:10> : [
		[<bibliocraft:lanterngold:*>, <pickletweaks:dye_powder:3>]
	],
	<bibliocraft:lanterngold:11> : [
		[<bibliocraft:lanterngold:*>, <pickletweaks:dye_powder:11>]
	],
	<bibliocraft:lanterngold:12> : [
		[<bibliocraft:lanterngold:*>, <pickletweaks:dye_powder:10>]
	],
	<bibliocraft:lanterngold:13> : [
		[<bibliocraft:lanterngold:*>, <pickletweaks:dye_powder:2>]
	],
	<bibliocraft:lanterngold:14> : [
		[<bibliocraft:lanterngold:*>, <pickletweaks:dye_powder:6>]
	],
	<bibliocraft:lanterngold:15> : [
		[<bibliocraft:lanterngold:*>, <pickletweaks:dye_powder:12>]
	],

	// Lantern Iron
	<bibliocraft:lanterniron:0> : [
		[<bibliocraft:lanterniron:*>, <pickletweaks:dye_powder:0>]
	],
	<bibliocraft:lanterniron:1> : [
		[<bibliocraft:lanterniron:*>, <pickletweaks:dye_powder:8>]
	],
	<bibliocraft:lanterniron:2> : [
		[<bibliocraft:lanterniron:*>, <pickletweaks:dye_powder:7>]
	],
	<bibliocraft:lanterniron:3> : [
		[<bibliocraft:lanterniron:*>, <pickletweaks:dye_powder:15>]
	],
	<bibliocraft:lanterniron:4> : [
		[<bibliocraft:lanterniron:*>, <pickletweaks:dye_powder:14>]
	],
	<bibliocraft:lanterniron:5> : [
		[<bibliocraft:lanterniron:*>, <pickletweaks:dye_powder:1>]
	],
	<bibliocraft:lanterniron:6> : [
		[<bibliocraft:lanterniron:*>, <pickletweaks:dye_powder:4>]
	],
	<bibliocraft:lanterniron:7> : [
		[<bibliocraft:lanterniron:*>, <pickletweaks:dye_powder:5>]
	],
	<bibliocraft:lanterniron:8> : [
		[<bibliocraft:lanterniron:*>, <pickletweaks:dye_powder:13>]
	],
	<bibliocraft:lanterniron:9> : [
		[<bibliocraft:lanterniron:*>, <pickletweaks:dye_powder:9>]
	],
	<bibliocraft:lanterniron:10> : [
		[<bibliocraft:lanterniron:*>, <pickletweaks:dye_powder:3>]
	],
	<bibliocraft:lanterniron:11> : [
		[<bibliocraft:lanterniron:*>, <pickletweaks:dye_powder:11>]
	],
	<bibliocraft:lanterniron:12> : [
		[<bibliocraft:lanterniron:*>, <pickletweaks:dye_powder:10>]
	],
	<bibliocraft:lanterniron:13> : [
		[<bibliocraft:lanterniron:*>, <pickletweaks:dye_powder:2>]
	],
	<bibliocraft:lanterniron:14> : [
		[<bibliocraft:lanterniron:*>, <pickletweaks:dye_powder:6>]
	],
	<bibliocraft:lanterniron:15> : [
		[<bibliocraft:lanterniron:*>, <pickletweaks:dye_powder:12>]
	],

	// Lamp Gold
	<bibliocraft:lampgold:0> : [
		[<bibliocraft:lampgold:*>, <pickletweaks:dye_powder:0>]
	],
	<bibliocraft:lampgold:1> : [
		[<bibliocraft:lampgold:*>, <pickletweaks:dye_powder:8>]
	],
	<bibliocraft:lampgold:2> : [
		[<bibliocraft:lampgold:*>, <pickletweaks:dye_powder:7>]
	],
	<bibliocraft:lampgold:3> : [
		[<bibliocraft:lampgold:*>, <pickletweaks:dye_powder:15>]
	],
	<bibliocraft:lampgold:4> : [
		[<bibliocraft:lampgold:*>, <pickletweaks:dye_powder:14>]
	],
	<bibliocraft:lampgold:5> : [
		[<bibliocraft:lampgold:*>, <pickletweaks:dye_powder:1>]
	],
	<bibliocraft:lampgold:6> : [
		[<bibliocraft:lampgold:*>, <pickletweaks:dye_powder:4>]
	],
	<bibliocraft:lampgold:7> : [
		[<bibliocraft:lampgold:*>, <pickletweaks:dye_powder:5>]
	],
	<bibliocraft:lampgold:8> : [
		[<bibliocraft:lampgold:*>, <pickletweaks:dye_powder:13>]
	],
	<bibliocraft:lampgold:9> : [
		[<bibliocraft:lampgold:*>, <pickletweaks:dye_powder:9>]
	],
	<bibliocraft:lampgold:10> : [
		[<bibliocraft:lampgold:*>, <pickletweaks:dye_powder:3>]
	],
	<bibliocraft:lampgold:11> : [
		[<bibliocraft:lampgold:*>, <pickletweaks:dye_powder:11>]
	],
	<bibliocraft:lampgold:12> : [
		[<bibliocraft:lampgold:*>, <pickletweaks:dye_powder:10>]
	],
	<bibliocraft:lampgold:13> : [
		[<bibliocraft:lampgold:*>, <pickletweaks:dye_powder:2>]
	],
	<bibliocraft:lampgold:14> : [
		[<bibliocraft:lampgold:*>, <pickletweaks:dye_powder:6>]
	],
	<bibliocraft:lampgold:15> : [
		[<bibliocraft:lampgold:*>, <pickletweaks:dye_powder:12>]
	],

	// Iron Lamps
	<bibliocraft:lampiron:0> : [
		[<bibliocraft:lampiron:*>, <pickletweaks:dye_powder:0>]
	],
	<bibliocraft:lampiron:1> : [
		[<bibliocraft:lampiron:*>, <pickletweaks:dye_powder:8>]
	],
	<bibliocraft:lampiron:2> : [
		[<bibliocraft:lampiron:*>, <pickletweaks:dye_powder:7>]
	],
	<bibliocraft:lampiron:3> : [
		[<bibliocraft:lampiron:*>, <pickletweaks:dye_powder:15>]
	],
	<bibliocraft:lampiron:4> : [
		[<bibliocraft:lampiron:*>, <pickletweaks:dye_powder:14>]
	],
	<bibliocraft:lampiron:5> : [
		[<bibliocraft:lampiron:*>, <pickletweaks:dye_powder:1>]
	],
	<bibliocraft:lampiron:6> : [
		[<bibliocraft:lampiron:*>, <pickletweaks:dye_powder:4>]
	],
	<bibliocraft:lampiron:7> : [
		[<bibliocraft:lampiron:*>, <pickletweaks:dye_powder:5>]
	],
	<bibliocraft:lampiron:8> : [
		[<bibliocraft:lampiron:*>, <pickletweaks:dye_powder:13>]
	],
	<bibliocraft:lampiron:9> : [
		[<bibliocraft:lampiron:*>, <pickletweaks:dye_powder:9>]
	],
	<bibliocraft:lampiron:10> : [
		[<bibliocraft:lampiron:*>, <pickletweaks:dye_powder:3>]
	],
	<bibliocraft:lampiron:11> : [
		[<bibliocraft:lampiron:*>, <pickletweaks:dye_powder:11>]
	],
	<bibliocraft:lampiron:12> : [
		[<bibliocraft:lampiron:*>, <pickletweaks:dye_powder:10>]
	],
	<bibliocraft:lampiron:13> : [
		[<bibliocraft:lampiron:*>, <pickletweaks:dye_powder:2>]
	],
	<bibliocraft:lampiron:14> : [
		[<bibliocraft:lampiron:*>, <pickletweaks:dye_powder:6>]
	],
	<bibliocraft:lampiron:15> : [
		[<bibliocraft:lampiron:*>, <pickletweaks:dye_powder:12>]
	],

	// Typewriter
	<bibliocraft:typewriter:0> : [
		[<bibliocraft:typewriter:*>, <pickletweaks:dye_powder:0>]
	],
	<bibliocraft:typewriter:1> : [
		[<bibliocraft:typewriter:*>, <pickletweaks:dye_powder:8>]
	],
	<bibliocraft:typewriter:2> : [
		[<bibliocraft:typewriter:*>, <pickletweaks:dye_powder:7>]
	],
	<bibliocraft:typewriter:3> : [
		[<bibliocraft:typewriter:*>, <pickletweaks:dye_powder:15>]
	],
	<bibliocraft:typewriter:4> : [
		[<bibliocraft:typewriter:*>, <pickletweaks:dye_powder:14>]
	],
	<bibliocraft:typewriter:5> : [
		[<bibliocraft:typewriter:*>, <pickletweaks:dye_powder:1>]
	],
	<bibliocraft:typewriter:6> : [
		[<bibliocraft:typewriter:*>, <pickletweaks:dye_powder:4>]
	],
	<bibliocraft:typewriter:7> : [
		[<bibliocraft:typewriter:*>, <pickletweaks:dye_powder:5>]
	],
	<bibliocraft:typewriter:8> : [
		[<bibliocraft:typewriter:*>, <pickletweaks:dye_powder:13>]
	],
	<bibliocraft:typewriter:9> : [
		[<bibliocraft:typewriter:*>, <pickletweaks:dye_powder:9>]
	],
	<bibliocraft:typewriter:10> : [
		[<bibliocraft:typewriter:*>, <pickletweaks:dye_powder:3>]
	],
	<bibliocraft:typewriter:11> : [
		[<bibliocraft:typewriter:*>, <pickletweaks:dye_powder:11>]
	],
	<bibliocraft:typewriter:12> : [
		[<bibliocraft:typewriter:*>, <pickletweaks:dye_powder:10>]
	],
	<bibliocraft:typewriter:13> : [
		[<bibliocraft:typewriter:*>, <pickletweaks:dye_powder:2>]
	],
	<bibliocraft:typewriter:14> : [
		[<bibliocraft:typewriter:*>, <pickletweaks:dye_powder:6>]
	],
	<bibliocraft:typewriter:15> : [
		[<bibliocraft:typewriter:*>, <pickletweaks:dye_powder:12>]
	],

	// Sword Pedestal
	<bibliocraft:swordpedestal:0> : [
		[<bibliocraft:swordpedestal:*>, <pickletweaks:dye_powder:0>]
	],
	<bibliocraft:swordpedestal:1> : [
		[<bibliocraft:swordpedestal:*>, <pickletweaks:dye_powder:8>]
	],
	<bibliocraft:swordpedestal:2> : [
		[<bibliocraft:swordpedestal:*>, <pickletweaks:dye_powder:7>]
	],
	<bibliocraft:swordpedestal:3> : [
		[<bibliocraft:swordpedestal:*>, <pickletweaks:dye_powder:15>]
	],
	<bibliocraft:swordpedestal:4> : [
		[<bibliocraft:swordpedestal:*>, <pickletweaks:dye_powder:14>]
	],
	<bibliocraft:swordpedestal:5> : [
		[<bibliocraft:swordpedestal:*>, <pickletweaks:dye_powder:1>]
	],
	<bibliocraft:swordpedestal:6> : [
		[<bibliocraft:swordpedestal:*>, <pickletweaks:dye_powder:4>]
	],
	<bibliocraft:swordpedestal:7> : [
		[<bibliocraft:swordpedestal:*>, <pickletweaks:dye_powder:5>]
	],
	<bibliocraft:swordpedestal:8> : [
		[<bibliocraft:swordpedestal:*>, <pickletweaks:dye_powder:13>]
	],
	<bibliocraft:swordpedestal:9> : [
		[<bibliocraft:swordpedestal:*>, <pickletweaks:dye_powder:9>]
	],
	<bibliocraft:swordpedestal:10> : [
		[<bibliocraft:swordpedestal:*>, <pickletweaks:dye_powder:3>]
	],
	<bibliocraft:swordpedestal:11> : [
		[<bibliocraft:swordpedestal:*>, <pickletweaks:dye_powder:11>]
	],
	<bibliocraft:swordpedestal:12> : [
		[<bibliocraft:swordpedestal:*>, <pickletweaks:dye_powder:10>]
	],
	<bibliocraft:swordpedestal:13> : [
		[<bibliocraft:swordpedestal:*>, <pickletweaks:dye_powder:2>]
	],
	<bibliocraft:swordpedestal:14> : [
		[<bibliocraft:swordpedestal:*>, <pickletweaks:dye_powder:6>]
	],
	<bibliocraft:swordpedestal:15> : [
		[<bibliocraft:swordpedestal:*>, <pickletweaks:dye_powder:12>]
	]
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {};

/*
    Recipe Removals
*/
static removeRecipes as IItemStack[] = [
	<bibliocraft:biblioglasses:1>,
	<bibliocraft:plumbline:0>,
	<bibliocraft:stockroomcatalog:0>,
	<bibliocraft:tape:0>
];

function init() {
	// Un-named recipes
	recipeUtil.process(shapedRecipes, false);
    recipeUtil.process(mirroredRecipes, true);
    recipeUtil.process(shapelessRecipes);

	// Named recipes
	recipeUtil.processNamed(namedShapedRecipes, false);
    recipeUtil.processNamed(namedMirroredRecipes, true);
    recipeUtil.processNamed(namedShapelessRecipes);

	recipeUtil.removeRecipes(removeRecipes);

	// Remove only shapeless bibliocraft color recipes.
	recipes.removeShapeless(<bibliocraft:lanterngold:*>);
	recipes.removeShapeless(<bibliocraft:lanterniron:*>);
	recipes.removeShapeless(<bibliocraft:lampgold:*>);
	recipes.removeShapeless(<bibliocraft:lampiron:*>);
	recipes.removeShapeless(<bibliocraft:typewriter:*>);
	recipes.removeShapeless(<bibliocraft:swordpedestal:*>);
}
