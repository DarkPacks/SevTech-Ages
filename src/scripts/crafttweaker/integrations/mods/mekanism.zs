/*
	SevTech: Ages Mekanism Craft Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

// Map for additional Precision Sawmill recipes - output: [inputs]. Will produce 6 times output, and
// 25% chance of sawdust.
static sawRecipes as IIngredient[][IItemStack] = {
	<ore:stickWood>.firstItem: [
		<ore:plankWood>
	],
	<thebetweenlands:items_misc:20>: [
		<thebetweenlands:weedwood_planks:0>
	],
	<thebetweenlands:nibblestick:0>: [
		<thebetweenlands:nibbletwig_planks:0>
	],
	<natura:nether_planks:1>: [
		<natura:nether_logs2:*>
	]
};

// Sticks to be turned into a dust at a 1:1 ratio
static sticksToDust as IItemStack[] = [
	<natura:sticks:*>,
	<ore:stickWood>.firstItem,
	<primal:yew_stick>,
	<thebetweenlands:items_misc:20>
];

// These recipes must be explicitly removed - for some reason oredict removal doesn't catch them.
static sawRecipeRemove as IIngredient[] = [
	<chisel:planks-spruce:*>,
	<rustic:planks:*>,
	<chisel:planks-acacia:*>,
	<chisel:planks-oak:*>,
	<chisel:planks-jungle:*>,
	<chisel:planks-birch:*>,
	<chisel:planks-dark-oak:*>,
	<betterwithaddons:planks_sakura:*>,
	<betterwithaddons:planks_mulberry:*>
];

function init() {
	/*
		Chemical Injection Recipes
	*/

	// Add a recipe to make Sulfer using the Chemical Injection. TODO: Use the resources global once completed.
	mekanism.addChemicalInjection(<minecraft:gunpowder:0>, <gas:hydrogenChloride>, <ore:dustSulfur>.firstItem);

	/*
		Combiner Recipes
	*/

	// Generic Removals
	mekanism.removeCombiner(<geolosys:cluster:2>);
	mekanism.removeCombiner(<geolosys:cluster:3>);
	mekanism.removeCombiner(<geolosys:cluster:4>);
	mekanism.removeCombiner(<geolosys:cluster:5>);
	mekanism.removeCombiner(<geolosys:cluster:6>);
	mekanism.removeCombiner(<geolosys:cluster:7>);
	mekanism.removeCombiner(<geolosys:cluster:8>);
	mekanism.removeCombiner(<geolosys:cluster:9>);
	mekanism.removeCombiner(<geolosys:cluster:12>);
	mekanism.removeCombiner(<minecraft:iron_ore:0>);
	mekanism.removeCombiner(<minecraft:gold_ore:0>);
	mekanism.removeCombiner(<minecraft:coal_ore:0>);
	mekanism.removeCombiner(<minecraft:diamond_ore:0>);
	mekanism.removeCombiner(<minecraft:redstone_ore:0>);
	mekanism.removeCombiner(<minecraft:emerald_ore:0>);

	mekanism.removeCombiner(<minecraft:quartz_ore:0>, <actuallyadditions:item_dust:5> * 8, <minecraft:cobblestone:0>);

	/*
		Enrichment Recipes
	*/

	// Obsidian Fix
	mekanism.removeEnrichment(<minecraft:obsidian:0>);
	mekanism.addEnrichment(<minecraft:obsidian:0>, <ore:dustObsidian>.firstItem * 4);

	mekanism.removeEnrichment(<actuallyadditions:item_dust:5>, <minecraft:quartz:0>);

	/*
		Metallurgic Infuser
	*/
	mekanism.addInfusion("OBSIDIAN", 20, <ore:oreCheese>.firstItem, <appliedenergistics2:sky_stone_block:0> * 2);
	mekanism.addInfusion("OBSIDIAN", 20, <galacticraftcore:cheese_curd:0>, <appliedenergistics2:sky_stone_block:0>);

	// Correct steel dust
	mekanism.addInfusion("CARBON", 10, <mekanism:enrichediron:0>, metals.steel.dust.firstItem);

	mekanism.addInfusion("DIAMOND", 80, <ironchest:iron_chest:1>, <ironchest:iron_chest:2>);

	/*
		Energized Smelter
	*/
	mekanism.removeSmelter(<betterwithaddons:japanmat:4>);

	/*
		Crusher
	*/
	mekanism.addCrusher(<minecraft:blaze_rod:0>, <minecraft:blaze_powder:0> * 4);
	mekanism.addCrusher(<actuallyadditions:item_food:16>, <betterwithaddons:japanmat:4>);
	mekanism.addCrusher(<minecraft:wheat:0>, <horsepower:flour:0>);
	mekanism.addCrusher(<natura:materials:0>, <horsepower:flour:0>);
	mekanism.addCrusher(<minecraft:bone:0>, <minecraft:dye:15>);
	mekanism.addCrusher(<minecraft:bone_block:0>, <minecraft:dye:15> * 9);
	mekanism.addCrusher(<minecraft:reeds:0>, <minecraft:sugar:0> * 2);
	mekanism.addCrusher(<actuallyadditions:item_misc:5>, <actuallyadditions:item_dust:7>);
	mekanism.addCrusher(<immersiveengineering:material:7>, <minecraft:sand:0>);
	mekanism.addCrusher(<astralsorcery:itemcraftingcomponent:1>, <astralsorcery:itemcraftingcomponent:2>);
	mekanism.addCrusher(<astralsorcery:blockcustomore:1>, <astralsorcery:itemcraftingcomponent:2> * 2);
	mekanism.addCrusher(<death_compass:death_compass>.withTag({}), <minecraft:dye:15> * 3); // Death Compass -> Bone Meal

	/*
		Saw
	*/
	for input in sawRecipeRemove {
		mekanism.removeSawmill(input);
	}

	for output, inputs in sawRecipes {
		for inputIngredient in inputs {
			mekanism.removeSawmill(inputIngredient);
			for input in inputIngredient.items {
				mekanism.addSawmill(input, output * 6, <ore:dustWood>.firstItem, 0.25);
			}
		}
	}

	// Slabs to sticks - re-create as they output mekanism sawdust
	mekanism.removeSawmill(<ore:slabWood>);
	mekanism.addSawmill(<ore:slabWood>, <ore:stickWood>.firstItem * 3, <ore:dustWood>.firstItem, 0.13);

	for input in sticksToDust {
		mekanism.addSawmill(input, <ore:dustWood>.firstItem);
	}

	// Jukebox handling
	mekanism.removeSawmill(<minecraft:jukebox:0> as IIngredient);
	mekanism.addSawmill(<minecraft:jukebox:0>, <minecraft:planks:0> * 8, <minecraft:quartz:0>, 1.0);

	/*
		Pressurised Reaction Chamber
	*/
	// mekanism.removePRC(null, <gas:hydrogen>, <mekanism:sawdust>, <liquid:water>, <gas:oxygen>); // TODO: Was not able to remove the recipe
	mekanism.addPRC(<ore:dustWood>, <liquid:water> * 20, <gas:oxygen> * 20, null, <gas:hydrogen> * 20, 0.0, 30);
}
