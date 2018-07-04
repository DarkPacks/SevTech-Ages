#priority -2

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.betterwithmods.MiniBlocks;


var STAGE = STAGES.two;

//Variables for Better with Mods miniBlock siding
var sidingAcacia as IIngredient = MiniBlocks.getMiniBlock("siding", <minecraft:planks:4>);
var sidingBirch as IIngredient = MiniBlocks.getMiniBlock("siding", <minecraft:planks:2>);
var sidingDarkoak as IIngredient = MiniBlocks.getMiniBlock("siding", <minecraft:planks:5>);
var sidingJungle as IIngredient = MiniBlocks.getMiniBlock("siding", <minecraft:planks:3>);
var sidingOak as IIngredient = MiniBlocks.getMiniBlock("siding", <minecraft:planks>);
var sidingSpruce as IIngredient = MiniBlocks.getMiniBlock("siding", <minecraft:planks:1>);

/*
<item> : [
	[RECIPE1],
	[RECIPE2],
	[Recipe3],
	[etc...]
]

Put the normal recipe you make inside of the main array from the item (<betterwithaddons:bolt:1> : [])

<testmod:test_item> : [
	//You can do one recipe or as many recipes as you want
	[
		//IF LONG
		[<testmod:test_item1>, <testmod:test_item>, <testmod:test_item>],
		[<testmod:test_item2>, <testmod:test_item>, <testmod:test_item>],
		[<testmod:test_item3>, <testmod:test_item>, <testmod:test_item>]
	],
	//IF SHORT
	[[<testmod:test_item>, <testmod:test_item>, null], [<testmod:test_item>, <testmod:test_item>, null]]
]
*/
var shapedRecipes as IIngredient[][][][IItemStack] = {
	<betterbuilderswands:wandiron> : [
		[[null, null, metals.iron.plate], [null, log, null], [log, null, null]]
	],
	<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:basic", spec: "NONE"}}) : [
		[[<minecraft:wool:*>, leather, <minecraft:wool:*>], [leather, <primal:storage_crate:*>, leather], [<minecraft:wool:*>, leather, <minecraft:wool:*>]]
	],
	<uppers:upper> : [
		[
			[null, metals.iron.plate, null],
			[metals.iron.plate, metals.bronze.gear, metals.iron.plate],
			[metals.iron.plate, <minecraft:chest>, metals.iron.plate]
		]
	],
	<pickletweaks:watering_can> : [
		[[metals.iron.plate, <actuallyadditions:item_fertilizer>, null], [metals.iron.plate, <minecraft:bucket>, metals.iron.plate], [null, metals.iron.plate, null]]
	],
	<prospectors:prospector_low> : [
		[[null, <minecraft:coal:*>, <ore:blockGlass>], [null, log, <minecraft:coal:*>], [log, null, null]]
	],
	<tcomplement:porcelain_tank> : [
		[
			[<ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>],
			[<ceramics:unfired_clay:5>, <ceramics:clay_barrel>, <ceramics:unfired_clay:5>],
			[<ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>]
		]
	],
	<tconstruct:seared_tank> : [
		[
			[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>],
			[<tconstruct:materials>, <ceramics:clay_barrel>, <tconstruct:materials>],
			[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>]
		]
	],

	//Hopper Update Recipes in Stage 2
	<primal_tech:charcoal_hopper> : [
		[[null, null, null], [null, <tconstruct:firewood>, null], [null, <minecraft:hopper>, null]]
	],

	//Better With Mods
	<betterwithmods:aesthetic:12> : [
		[[<betterwithmods:wicker>, <betterwithmods:wicker>], [<betterwithmods:wicker>, <betterwithmods:wicker>]]
	],
	<betterwithmods:material:36> : [
		[[null, <ore:cordageLeather>, null], [null, <ore:slimeball>, null], [null, mouldingWood, null]]
	],
	<betterwithmods:ender_spectacles> : [
		[[null, null, null], [<betterwithmods:material:40>, <ore:cordageLeather>, <betterwithmods:material:40>], [null, null, null]]
	],
	<betterwithaddons:redstone_emitter> : [
		[
			[sidingWood, sidingWood, sidingWood],
			[<betterwithmods:wicker>, <betterwithmods:wooden_gearbox>, <minecraft:lever>],
			[sidingWood, sidingWood, sidingWood]
		]
	],
	<betterwithaddons:aqueduct> * 3 : [
		[[null, null, null], [<minecraft:clay>, <minecraft:clay>, <minecraft:clay>], [<minecraft:stonebrick:*>, <minecraft:stonebrick:*>, <minecraft:stonebrick:*>]]
	],

	//Smiley Cloud is craftable. You're welcome.
	<actuallyadditions:block_smiley_cloud> : [
		[
			[null, <minecraft:wool:*>, null],
			[<minecraft:wool:*>, scripts.crafting_utils.getBucketIngredientFromName("xpjuice"), <minecraft:wool:*>],
			[null, <minecraft:wool:*>, null]
		]
	],

	//Applied Energistics
	<appliedenergistics2:crank> : [
		[[stick, stick, stick], [null, null, stick], [null, null, stick]]
	],
	<appliedenergistics2:grindstone> : [
		[[stone, <betterwithmods:material>, stone], [flint, stone, flint], [cobblestone, flint, cobblestone]]
	],

	//Storage Drawers
	<storagedrawers:upgrade_storage> : [
		[[stick, stick, stick], [<minecraft:coal_block>, <storagedrawers:upgrade_template>, <minecraft:coal_block>], [stick, stick, stick]]
	],
	<storagedrawers:upgrade_template> : [
		[[stick, stick, stick], [stick, <ore:drawerTrim>, stick], [stick, stick, stick]]
	],

	//Workblade
	<primal:iron_workblade> : [
		[[metals.iron.plate, stick, metals.iron.plate], [metals.iron.plate, stick, metals.iron.plate], [null, stick, null]]
	],

	//Iron Chests
	//Iron Chests use plates
	<ironchest:copper_iron_chest_upgrade> : [
		[
			[metals.iron.plate, metals.iron.plate, metals.iron.plate],
			[metals.iron.plate, metals.copper.plate, metals.iron.plate],
			[metals.iron.plate, metals.iron.plate, metals.iron.plate]
		]
	],
	<ironchest:copper_silver_chest_upgrade> : [
		[
			[metals.silver.plate, metals.silver.plate, metals.silver.plate],
			[metals.silver.plate, metals.copper.plate, metals.silver.plate],
			[metals.silver.plate, metals.silver.plate, metals.silver.plate]
		]
	],
	<ironchest:iron_chest:1> : [
		[
			[metals.gold.plate, metals.gold.plate, metals.gold.plate],
			[metals.gold.plate, <minecraft:chest>, metals.gold.plate],
			[metals.gold.plate, metals.gold.plate, metals.gold.plate]
		]
	],
	<ironchest:iron_chest:4> : [
		[
			[metals.silver.plate, metals.silver.plate, metals.silver.plate],
			[metals.silver.plate, <minecraft:chest>, metals.silver.plate],
			[metals.silver.plate, metals.silver.plate, metals.silver.plate]
		]
	],
	<ironchest:iron_chest> : [
		[
			[metals.iron.plate, metals.iron.plate, metals.iron.plate],
			[metals.iron.plate, <minecraft:chest>, metals.iron.plate],
			[metals.iron.plate, metals.iron.plate, metals.iron.plate]
		]
	],
	<ironchest:iron_gold_chest_upgrade> : [
		[
			[metals.gold.plate, metals.gold.plate, metals.gold.plate],
			[metals.gold.plate, metals.iron.plate, metals.gold.plate],
			[metals.gold.plate, metals.gold.plate, metals.gold.plate]
		]
	],
	<ironchest:silver_gold_chest_upgrade> : [
		[
			[metals.gold.plate, metals.gold.plate, metals.gold.plate],
			[metals.gold.plate, metals.silver.plate, metals.gold.plate],
			[metals.gold.plate, metals.gold.plate, metals.gold.plate]
		]
	],
	<ironchest:wood_iron_chest_upgrade> : [
		[
			[metals.iron.plate, metals.iron.plate, metals.iron.plate],
			[metals.iron.plate, log, metals.iron.plate],
			[metals.iron.plate, metals.iron.plate, metals.iron.plate]
		]
	],

	//Astral
	<astralsorcery:itemskyresonator> : [
		[
			[null, <astralsorcery:itemcraftingcomponent>, null],
			[<ore:stoneMarble>, scripts.crafting_utils.getBucketIngredient(<liquid:astralsorcery.liquidstarlight>), <ore:stoneMarble>],
			[null, metals.bronze.rod, null]
		]
	],
	<astralsorcery:itemwand> : [
		[
			[null, <astralsorcery:itemcraftingcomponent>, <minecraft:ender_pearl>],
			[null, <ore:stoneMarble>, <astralsorcery:itemcraftingcomponent>],
			[<ore:stoneMarble>, null, null]
		]
	],
	<astralsorcery:itemjournal> : [
		[
			[null, <astralsorcery:itemcraftingcomponent:5>, null],
			[<astralsorcery:itemcraftingcomponent>, <minecraft:book>, <astralsorcery:itemcraftingcomponent>],
			[null, <astralsorcery:itemcraftingcomponent>, null]
		]
	],
	//Weirding Gadget
	<weirdinggadget:weirding_gadget> : [
		[
			[metals.gold.ingot, metals.gold.ingot, metals.gold.ingot],
			[metals.gold.block, <minecraft:ender_pearl>, metals.gold.block],
			[metals.gold.block, metals.gold.block, metals.gold.block]
		]
	],

	//InfoItems
	<infoaccessories:info_accessory:1>: [
		[
			[null, null, null],
			[null, metals.gold.ingot, <astralsorcery:itemcraftingcomponent:3>],
			[metals.gold.ingot, <astralsorcery:itemcraftingcomponent:2>, metals.gold.ingot]
		]
	],
	<infoaccessories:info_accessory:2> : [
		[[null, <twilightforest:ironwood_ingot>, null], [<twilightforest:ironwood_ingot>, <minecraft:compass>, <twilightforest:ironwood_ingot>], [null, metals.tin.gear, null]]
	],
	<infoaccessories:info_accessory:6> : [
		[
			[null, <twilightforest:torchberries>, null],
			[<twilightforest:twilight_plant:8>, <twilightforest:magic_map_empty>, <twilightforest:twilight_sapling>],
			[null, <twilightforest:twilight_sapling:1>, null]
		]
	],
	<infoaccessories:info_accessory> : [
		[[null, <abyssalcraft:dsbutton>, null],
		[<twilightforest:firefly_jar>, <minecraft:clock>, <twilightforest:firefly_jar>],
		[null, metals.tin.gear, null]]
	],
	<infoaccessories:info_accessory:4> : [
		[[null, <minecraft:slime_ball>, null],
		[<minecraft:slime_ball>, <minecraft:compass>, <minecraft:slime_ball>],
		[null, <minecraft:slime_ball>, null]]
	],
	<infoaccessories:info_accessory:5> : [
	  	[[null, <minecraft:paper>, null],
	  	[<minecraft:paper>, <minecraft:clock>, <minecraft:paper>],
	  	[null, <minecraft:paper>, null]]
	],

	//Tinkers'
	<tconstruct:piggybackpack> : [
		[
			[null, stick, null],
			[leather, null, leather],
			[null, stick, null]
		]
	],
	<tconstruct:seared_furnace_controller> : [
		[
			[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>],
			[<tconstruct:materials>, <thebetweenlands:crimson_middle_gem>, <tconstruct:materials>],
			[<tconstruct:materials>, <minecraft:furnace>, <tconstruct:materials>]
		]
	],
	<tconstruct:smeltery_controller> : [
		[
			[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>],
			[<tconstruct:materials>, <thebetweenlands:aqua_middle_gem>, <tconstruct:materials>],
			[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>]
		]
	],
	<tconstruct:tinker_tank_controller> : [
		[
			[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>],
			[<tconstruct:materials>, <thebetweenlands:green_middle_gem>, <tconstruct:materials>],
			[<tconstruct:materials>, <minecraft:bucket>, <tconstruct:materials>]
		]
	],

	//Recipes to allow lift in Stage2
	<betterwithmods:anchor> : [
		[[null, metals.iron.plate, null], [<ore:stone>, <ore:stone>, <ore:stone>]]
	],
	<betterwithmods:material:34> : [
		[[<minecraft:lever>, null], [metals.gold.plate, null]]
	],
	<betterwithmods:single_machine:1> : [
		[[plank, metals.iron.plate, plank], [<ore:gearWood>, <betterwithmods:material:34>, <ore:gearWood>], [plank, metals.iron.plate, plank]]
	],

	//Stage 2 Easier Gearbox and Axle
	<betterwithmods:wooden_axle> : [
		[
			[null, mouldingWood, null],
			[null, <betterwithmods:rope>, null],
			[null, mouldingWood, null]
		]
	],
	<betterwithmods:wooden_gearbox> : [
		[
			[mouldingWood, <betterwithmods:material>, mouldingWood],
			[metals.bronze.plate, <betterwithmods:wooden_axle>, metals.bronze.plate],
			[mouldingWood, <betterwithmods:material>, mouldingWood]
		]
	],

	//Composting
	<actuallyadditions:block_compost> : [
		[
			[<betterwithmods:slats:*>, null, <betterwithmods:slats:*>],
			[<betterwithmods:slats:*>, null, <betterwithmods:slats:*>],
			[<betterwithmods:slats:*>, <minecraft:chest>, <betterwithmods:slats:*>]
		]
	],

	//Abyssalcraft
	<abyssalcraft:gatewaykey> : [
		[
			[null, <abyssalcraft:cpearl>, <abyssalcraft:oc>],
			[null, <thebetweenlands:items_misc:14>, <abyssalcraft:cpearl>],
			[<thebetweenlands:items_misc:14>, null, null]
		]
	],

	//Improved Backpacks
	<improvedbackpacks:upgrade:2> : [
		[
			[null, leather, null],
			[metals.iron.ingot, <improvedbackpacks:upgrade:1>, metals.iron.ingot],
			[null, metals.iron.ingot, null]
		]
	],
	<improvedbackpacks:upgrade:3> : [
		[
			[null, leather, null],
			[metals.gold.ingot, <improvedbackpacks:upgrade:2>, metals.gold.ingot],
			[null, metals.gold.ingot, null]
		]
	],

	//Blood Magic
	<bloodmagic:lava_crystal> : [
		[
			[<ore:blockGlass>, scripts.crafting_utils.getBucketIngredient(<liquid:lava>), <ore:blockGlass>],
			[scripts.crafting_utils.getBucketIngredient(<liquid:lava>), <bloodmagic:blood_orb:*>, scripts.crafting_utils.getBucketIngredient(<liquid:lava>)],
			[<tconstruct:firewood>, <ore:bottleFiery>, <tconstruct:firewood>]
		]
	],
	<bloodmagic:experience_tome> : [
		[
			[str, <ore:blockLapis>, str],
			[<bloodmagic:slate:2>, <betterwithmods:arcane_scroll:*>, <bloodmagic:slate:2>],
			[metals.gold.ingot, <bloodmagic:blood_orb:*>, metals.gold.ingot]
		]
	],

	<supersoundmuffler:sound_muffler> : [
		[
			[null, <minecraft:wool:*>, null],
			[<minecraft:wool:*>, <thebetweenlands:weedwood_jukebox>, <minecraft:wool:*>],
			[null, <minecraft:wool:*>, null]
		]
	],

	//Ferdinand's Flowers
	<ferdinandsflowers:block_dye_glass> * 8: [
		[
			[<minecraft:glass>, <pickletweaks:dye_powder:14>, <minecraft:glass>],
			[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
			[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>]
		]
	],
	<ferdinandsflowers:block_dye_glass:1> * 8 : [
		[
			[<minecraft:glass>, <pickletweaks:dye_powder:1>, <minecraft:glass>],
			[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
			[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>]
		]
	],
	<ferdinandsflowers:block_dye_glass:2> * 7 : [
		[
			[<minecraft:glass>, <pickletweaks:dye_powder:1>, <minecraft:glass>],
			[<minecraft:glass>, <pickletweaks:dye_powder:4>, <minecraft:glass>],
			[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>]
		]
	],
	<ferdinandsflowers:block_dye_glass:3> * 8 : [
		[
			[<minecraft:glass>, <pickletweaks:dye_powder:4>, <minecraft:glass>],
			[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
			[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>]
		]
	],
	<ferdinandsflowers:block_dye_glass:4> * 8 : [
		[
			[<minecraft:glass>, <pickletweaks:dye_powder:5>, <minecraft:glass>],
			[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
			[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>]
		]
	],
	<ferdinandsflowers:block_dye_glass:5> * 8 : [
		[
			[<minecraft:glass>, <pickletweaks:dye_powder:13>, <minecraft:glass>],
			[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
			[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>]
		]
	],
	<ferdinandsflowers:block_dye_glass:6> * 7 : [
		[
			[<minecraft:glass>, <pickletweaks:dye_powder:11>, <minecraft:glass>],
			[<minecraft:glass>, <pickletweaks:dye_powder:13>, <minecraft:glass>],
			[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>]
		]
	],
	<ferdinandsflowers:block_dye_glass:7> * 8 : [
		[
			[<minecraft:glass>, <pickletweaks:dye_powder:9>, <minecraft:glass>],
			[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
			[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>]
		]
	],
	<ferdinandsflowers:block_dye_glass:8> * 8 : [
		[
			[<minecraft:glass>, <pickletweaks:dye_powder:3>, <minecraft:glass>],
			[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
			[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>]
		]
	],
	<ferdinandsflowers:block_dye_glass:9> * 7 : [
		[
			[<minecraft:glass>, <pickletweaks:dye_powder:11>, <minecraft:glass>],
			[<minecraft:glass>, <pickletweaks:dye_powder:3>, <minecraft:glass>],
			[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>]
		]
	],
	<ferdinandsflowers:block_dye_glass:10> * 8 : [
		[
			[<minecraft:glass>, <pickletweaks:dye_powder:11>, <minecraft:glass>],
			[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
			[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>]
		]
	],
	<ferdinandsflowers:block_dye_glass:11> * 7 : [
		[
			[<minecraft:glass>, <pickletweaks:dye_powder:11>, <minecraft:glass>],
			[<minecraft:glass>, <pickletweaks:dye_powder:10>, <minecraft:glass>],
			[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>]
		]
	],
	<ferdinandsflowers:block_dye_glass:12> * 8 : [
		[
			[<minecraft:glass>, <pickletweaks:dye_powder:10>, <minecraft:glass>],
			[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
			[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>]
		]
	],
	<ferdinandsflowers:block_dye_glass:13> * 7 : [
		[
			[<minecraft:glass>, <pickletweaks:dye_powder:8>, <minecraft:glass>],
			[<minecraft:glass>, <pickletweaks:dye_powder:10>, <minecraft:glass>],
			[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>]
		]
	],
	<ferdinandsflowers:block_dye_glass:14> * 8 : [
		[
			[<minecraft:glass>, <pickletweaks:dye_powder:2>, <minecraft:glass>],
			[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
			[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>]
		]
	],
	<ferdinandsflowers:block_dye_glass:15> * 8 : [
		[
			[<minecraft:glass>, <pickletweaks:dye_powder:6>, <minecraft:glass>],
			[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
			[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>]
		]
	],

	//Extended Crafting
	<extendedcrafting:table_basic>: [
		[
			[<extendedcrafting:material:14>, <extendedcrafting:material:8>, <extendedcrafting:material:14>],
			[<minecraft:crafting_table>, metals.iron.block, <minecraft:crafting_table>],
			[<extendedcrafting:material:14>, <extendedcrafting:material:2>, <extendedcrafting:material:14>]
		]
	],
	<extendedcrafting:material:14> : [
		[
			[metals.iron.rod, metals.iron.rod],
			[<extendedcrafting:material:2>, <astralsorcery:itemcraftingcomponent:2>]
		]
	],

	//Natura
	<natura:overworld_bookshelves> : [
		[
			[<natura:overworld_planks>, <natura:overworld_planks>, <natura:overworld_planks>],
			[<minecraft:book>, <minecraft:book>, <minecraft:book>],
			[<natura:overworld_planks>, <natura:overworld_planks>, <natura:overworld_planks>]
		]
	],
	<natura:overworld_bookshelves:1> : [
		[
			[<natura:overworld_planks:1>, <natura:overworld_planks:1>, <natura:overworld_planks:1>],
			[<minecraft:book>, <minecraft:book>, <minecraft:book>],
			[<natura:overworld_planks:1>, <natura:overworld_planks:1>, <natura:overworld_planks:1>]
		]
	],
	<natura:overworld_bookshelves:2> : [
		[
			[<natura:overworld_planks:2>, <natura:overworld_planks:2>, <natura:overworld_planks:2>],
			[<minecraft:book>, <minecraft:book>, <minecraft:book>],
			[<natura:overworld_planks:2>, <natura:overworld_planks:2>, <natura:overworld_planks:2>]
		]
	],
	<natura:overworld_bookshelves:3> : [
		[
			[<natura:overworld_planks:3>, <natura:overworld_planks:3>, <natura:overworld_planks:3>],
			[<minecraft:book>, <minecraft:book>, <minecraft:book>],
			[<natura:overworld_planks:3>, <natura:overworld_planks:3>, <natura:overworld_planks:3>]
		]
	],
	<natura:overworld_bookshelves:4> : [
		[
			[<natura:overworld_planks:4>, <natura:overworld_planks:4>, <natura:overworld_planks:4>],
			[<minecraft:book>, <minecraft:book>, <minecraft:book>],
			[<natura:overworld_planks:4>, <natura:overworld_planks:4>, <natura:overworld_planks:4>]
		]
	],
	<natura:overworld_bookshelves:5> : [
		[
			[<natura:overworld_planks:5>, <natura:overworld_planks:5>, <natura:overworld_planks:5>],
			[<minecraft:book>, <minecraft:book>, <minecraft:book>],
			[<natura:overworld_planks:5>, <natura:overworld_planks:5>, <natura:overworld_planks:5>]
		]
	],
	<natura:overworld_bookshelves:6> : [
		[
			[<natura:overworld_planks:6>, <natura:overworld_planks:6>, <natura:overworld_planks:6>],
			[<minecraft:book>, <minecraft:book>, <minecraft:book>],
			[<natura:overworld_planks:6>, <natura:overworld_planks:6>, <natura:overworld_planks:6>]
		]
	],
	<natura:overworld_bookshelves:7> : [
		[
			[<natura:overworld_planks:7>, <natura:overworld_planks:7>, <natura:overworld_planks:7>],
			[<minecraft:book>, <minecraft:book>, <minecraft:book>],
			[<natura:overworld_planks:7>, <natura:overworld_planks:7>, <natura:overworld_planks:7>]
		]
	],
	<natura:overworld_bookshelves:8> : [
		[
			[<natura:overworld_planks:8>, <natura:overworld_planks:8>, <natura:overworld_planks:8>],
			[<minecraft:book>, <minecraft:book>, <minecraft:book>],
			[<natura:overworld_planks:8>, <natura:overworld_planks:8>, <natura:overworld_planks:8>]
		]
	],
	<natura:maple_fence_gate> : [
		[
			[null, null, null],
			[stick, <natura:overworld_planks>, stick],
			[stick, <natura:overworld_planks>, stick]
		]
	],
	<natura:silverbell_fence_gate> : [
		[
			[null, null, null],
			[stick, <natura:overworld_planks:1>, stick],
			[stick, <natura:overworld_planks:1>, stick]
		]
	],
	<natura:amaranth_fence_gate> : [
		[
			[null, null, null],
			[stick, <natura:overworld_planks:2>, stick],
			[stick, <natura:overworld_planks:2>, stick]
		]
	],
	<natura:tiger_fence_gate> : [
		[
			[null, null, null],
			[stick, <natura:overworld_planks:3>, stick],
			[stick, <natura:overworld_planks:3>, stick]
		]
	],
	<natura:willow_fence_gate> : [
		[
			[null, null, null],
			[stick, <natura:overworld_planks:4>, stick],
			[stick, <natura:overworld_planks:4>, stick]
		]
	],
	<natura:eucalyptus_fence_gate> : [
		[
			[null, null, null],
			[stick, <natura:overworld_planks:5>, stick],
			[stick, <natura:overworld_planks:5>, stick]
		]
	],
	<natura:hopseed_fence_gate> : [
		[
			[null, null, null],
			[stick, <natura:overworld_planks:6>, stick],
			[stick, <natura:overworld_planks:6>, stick]
		]
	],
	<natura:sakura_fence_gate> : [
		[
			[null, null, null],
			[stick, <natura:overworld_planks:7>, stick],
			[stick, <natura:overworld_planks:7>, stick]
		]
	],
	<natura:redwood_fence_gate> : [
		[
			[null, null, null],
			[stick, <natura:overworld_planks:8>, stick],
			[stick, <natura:overworld_planks:8>, stick]
		]
	],
	<natura:maple_fence> * 3 : [
		[
			[null, null, null],
			[<natura:overworld_planks>, stick, <natura:overworld_planks>],
			[<natura:overworld_planks>, stick, <natura:overworld_planks>]
		]
	],
	<natura:silverbell_fence> * 3 : [
		[
			[null, null, null],
			[<natura:overworld_planks:1>, stick, <natura:overworld_planks:1>],
			[<natura:overworld_planks:1>, stick, <natura:overworld_planks:1>]
		]
	],
	<natura:amaranth_fence> * 3 : [
		[
			[null, null, null],
			[<natura:overworld_planks:2>, stick, <natura:overworld_planks:2>],
			[<natura:overworld_planks:2>, stick, <natura:overworld_planks:2>]
		]
	],
	<natura:tiger_fence> * 3 : [
		[
			[null, null, null],
			[<natura:overworld_planks:3>, stick, <natura:overworld_planks:3>],
			[<natura:overworld_planks:3>, stick, <natura:overworld_planks:3>]
		]
	],
	<natura:willow_fence> * 3 : [
		[
			[null, null, null],
			[<natura:overworld_planks:4>, stick, <natura:overworld_planks:4>],
			[<natura:overworld_planks:4>, stick, <natura:overworld_planks:4>]
		]
	],
	<natura:eucalyptus_fence> * 3 : [
		[
			[null, null, null],
			[<natura:overworld_planks:5>, stick, <natura:overworld_planks:5>],
			[<natura:overworld_planks:5>, stick, <natura:overworld_planks:5>]
		]
	],
	<natura:hopseed_fence> * 3 : [
		[
			[null, null, null],
			[<natura:overworld_planks:6>, stick, <natura:overworld_planks:6>],
			[<natura:overworld_planks:6>, stick, <natura:overworld_planks:6>]
		]
	],
	<natura:sakura_fence> * 3 : [
		[
			[null, null, null],
			[<natura:overworld_planks:7>, stick, <natura:overworld_planks:7>],
			[<natura:overworld_planks:7>, stick, <natura:overworld_planks:7>]
		]
	],
	<natura:redwood_fence> * 3 : [
		[
			[null, null, null],
			[<natura:overworld_planks:8>, stick, <natura:overworld_planks:8>],
			[<natura:overworld_planks:8>, stick, <natura:overworld_planks:8>]
		]
	],
	<natura:overworld_doors> * 3 : [
		[
			[<natura:overworld_planks:5>, <natura:overworld_planks:5>],
			[<natura:overworld_planks:5>, <natura:overworld_planks:5>],
			[<natura:overworld_planks:5>, <natura:overworld_planks:5>]
		]
	],
	<natura:overworld_doors:1> * 3 : [
		[
			[<natura:overworld_planks:6>, <natura:overworld_planks:6>],
			[<natura:overworld_planks:6>, <natura:overworld_planks:6>],
			[<natura:overworld_planks:6>, <natura:overworld_planks:6>]
		]
	],
	<natura:overworld_doors:2> * 3 : [
		[
			[<natura:overworld_planks:7>, <natura:overworld_planks:7>],
			[<natura:overworld_planks:7>, <natura:overworld_planks:7>],
			[<natura:overworld_planks:7>, <natura:overworld_planks:7>]
		]
	],
	<natura:overworld_doors:3> * 3 : [
		[
			[<natura:overworld_planks:8>, <natura:overworld_planks:8>],
			[<natura:overworld_planks:8>, <natura:overworld_planks:8>],
			[<natura:overworld_planks:8>, <natura:overworld_planks:8>]
		]
	],
	<natura:overworld_doors:4> * 3 : [
		[
			[<natura:redwood_logs>, <natura:redwood_logs>],
			[<natura:redwood_logs>, <natura:redwood_logs>],
			[<natura:redwood_logs>, <natura:redwood_logs>]
		]
	],
	<twilightforest:uncrafting_table> : [
		[
			[<immersiveengineering:stone_decoration:1>, <tconstruct:tooltables>,<immersiveengineering:stone_decoration:1>],
			[<immersiveengineering:stone_decoration:1>, <twilightforest:maze_map_focus>, <immersiveengineering:stone_decoration:1>],
			[<immersiveengineering:stone_decoration:1>, <tconstruct:tooltables>,<immersiveengineering:stone_decoration:1>]
		]
	],
	<twilightforest:fiery_pickaxe> : [
		[
			[metals.fiery.plate, metals.fiery.plate, metals.fiery.plate],
			[null, <minecraft:stick>, null],
			[null, <minecraft:stick>, null]
		]
	],
	<twilightforest:fiery_sword> : [
		[
			[null, metals.fiery.plate, null],
			[null, metals.fiery.plate, null],
			[null, <minecraft:stick>, null]
		]
	]
};

for item, recipesForItem in shapedRecipes {
	for recipe in recipesForItem {
		mods.recipestages.Recipes.addShaped(STAGE, item, recipe);
	}
}

//Tinkers'
mods.recipestages.Recipes.addShapedMirrored(STAGE, <tconstruct:pattern> * 4, [
	[<ore:barkWood>, sidingWood],
	[sidingWood, <ore:barkWood>]
]);

mods.recipestages.Recipes.addShapedMirrored(STAGE, <natura:overworld_stairs_maple> * 4, [
	[null, null, <natura:overworld_planks>],
	[null, <natura:overworld_planks>, <natura:overworld_planks>],
	[<natura:overworld_planks>, <natura:overworld_planks>, <natura:overworld_planks>]
]);
mods.recipestages.Recipes.addShapedMirrored(STAGE, <natura:overworld_stairs_silverbell> * 4, [
	[null, null, <natura:overworld_planks:1>],
	[null, <natura:overworld_planks:1>, <natura:overworld_planks:1>],
	[<natura:overworld_planks:1>, <natura:overworld_planks:1>, <natura:overworld_planks:1>]
]);
mods.recipestages.Recipes.addShapedMirrored(STAGE, <natura:overworld_stairs_amaranth> * 4, [
	[null, null, <natura:overworld_planks:2>],
	[null, <natura:overworld_planks:2>, <natura:overworld_planks:2>],
	[<natura:overworld_planks:2>, <natura:overworld_planks:2>, <natura:overworld_planks:2>]
]);
mods.recipestages.Recipes.addShapedMirrored(STAGE, <natura:overworld_stairs_tiger> * 4, [
	[null, null, <natura:overworld_planks:3>],
	[null, <natura:overworld_planks:3>, <natura:overworld_planks:3>],
	[<natura:overworld_planks:3>, <natura:overworld_planks:3>, <natura:overworld_planks:3>]
]);
mods.recipestages.Recipes.addShapedMirrored(STAGE, <natura:overworld_stairs_willow> * 4, [
	[null, null, <natura:overworld_planks:4>],
	[null, <natura:overworld_planks:4>, <natura:overworld_planks:4>],
	[<natura:overworld_planks:4>, <natura:overworld_planks:4>, <natura:overworld_planks:4>]
]);
mods.recipestages.Recipes.addShapedMirrored(STAGE, <natura:overworld_stairs_eucalyptus> * 4, [
	[null, null, <natura:overworld_planks:5>],
	[null, <natura:overworld_planks:5>, <natura:overworld_planks:5>],
	[<natura:overworld_planks:5>, <natura:overworld_planks:5>, <natura:overworld_planks:5>]
]);
mods.recipestages.Recipes.addShapedMirrored(STAGE, <natura:overworld_stairs_hopseed> * 4, [
	[null, null, <natura:overworld_planks:6>],
	[null, <natura:overworld_planks:6>, <natura:overworld_planks:6>],
	[<natura:overworld_planks:6>, <natura:overworld_planks:6>, <natura:overworld_planks:6>]
]);
mods.recipestages.Recipes.addShapedMirrored(STAGE, <natura:overworld_stairs_sakura> * 4, [
	[null, null, <natura:overworld_planks:7>],
	[null, <natura:overworld_planks:7>, <natura:overworld_planks:7>],
	[<natura:overworld_planks:7>, <natura:overworld_planks:7>, <natura:overworld_planks:7>]
]);
mods.recipestages.Recipes.addShapedMirrored(STAGE, <natura:overworld_stairs_redwood> * 4, [
	[null, null, <natura:overworld_planks:8>],
	[null, <natura:overworld_planks:8>, <natura:overworld_planks:8>],
	[<natura:overworld_planks:8>, <natura:overworld_planks:8>, <natura:overworld_planks:8>]
]);
