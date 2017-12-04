/*
mods.tconstruct.Casting.addTableRecipe(output>, input, fluid, time);
mods.tconstruct.Casting.addBasinRecipe(output, input, fluid, time);
mods.tconstruct.Casting.addTableRecipe(output>, input, fluid, time, consumeCast);
mods.tconstruct.Casting.addBasinRecipe(output, input, fluid, time, consumeCast);

mods.tconstruct.Casting.removeTableRecipe(output);
mods.tconstruct.Casting.removeBasinRecipe(output);


mods.tconstruct.Casting.addTableRecipe(<minecraft:diamond>, <minecraft:dirt>, <liquid:cryotheum>, 50);
mods.tconstruct.Casting.addBasinRecipe(<minecraft:grass>, <minecraft:glass>, <liquid:obsidian>, 50);
mods.tconstruct.Casting.addTableRecipe(<minecraft:diamond>, <minecraft:gold_nugget>, <liquid:cryotheum>, 50, true);
mods.tconstruct.Casting.addBasinRecipe(<minecraft:grass>, <minecraft:gold_nugget>, <liquid:obsidian>, 50, true);

mods.tconstruct.Casting.removeTableRecipe(<minecraft:gold_nugget>);
mods.tconstruct.Casting.removeBasinRecipe(<minecraft:iron_block>);
*/

/*
mods.tconstruct.Melting.addRecipe(<liquid:cryotheum>, <minecraft:glass>);
mods.tconstruct.Melting.removeRecipe(<liquid:obsidian>);

mods.tconstruct.Melting.addRecipe(output, input);
mods.tconstruct.Melting.removeRecipe(output);
*/
mods.tconstruct.Casting.removeTableRecipe(<minecraft:glass_pane>);
mods.tconstruct.Casting.addTableRecipe(<minecraft:glass_pane>, null, <liquid:glass>, 500);

mods.tconstruct.Casting.removeBasinRecipe(<tconstruct:clear_glass>);
mods.tconstruct.Casting.addBasinRecipe(<minecraft:glass>, null, <liquid:glass>, 1000);

//Casting
mods.tconstruct.Casting.addTableRecipe(<minecraft:ender_pearl>, <tconstruct:cast>.withTag({PartType: "tconstruct:pan_head"}), <liquid:ender_pearl>, 250, false);
mods.tconstruct.Casting.addBasinRecipe(<betterwithmods:aesthetic:8>, null, <liquid:ender_pearl>, 2250);

mods.tconstruct.Casting.addTableRecipe(<tcomplement:cast>, <ceramics:clay_bucket>, metalItems.gold.liquid.liquids[0], 288, true);
mods.tconstruct.Casting.addTableRecipe(<tcomplement:cast>, <ceramics:clay_bucket>, <liquid:brass>, 144, true);
mods.tconstruct.Casting.addTableRecipe(<tcomplement:cast>, <ceramics:clay_bucket>, metalItems.aluminumBrass.liquid.liquids[0], 144, true);

mods.tconstruct.Casting.addTableRecipe(<tcomplement:cast>, <ceramics:clay_bucket_block>, metalItems.gold.liquid.liquids[0], 288, true);
mods.tconstruct.Casting.addTableRecipe(<tcomplement:cast>, <ceramics:clay_bucket_block>, <liquid:brass>, 144, true);
mods.tconstruct.Casting.addTableRecipe(<tcomplement:cast>, <ceramics:clay_bucket_block>, metalItems.aluminumBrass.liquid.liquids[0], 144, true);

mods.tconstruct.Casting.addTableRecipe(<contenttweaker:material_part:42>, <tconstruct:cast>.withTag({PartType: "tconstruct:tool_rod"}), metalItems.steeleaf.liquid.liquids[0], 144, false);
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:material_part:39>, <tconstruct:cast_custom:3>, metalItems.steeleaf.liquid.liquids[0], 144, false);
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:material_part:38>, <tconstruct:cast_custom:4>, metalItems.steeleaf.liquid.liquids[0], 576, false);
mods.tconstruct.Casting.addTableRecipe(<twilightforest:steeleaf_ingot>, <tconstruct:cast_custom>, metalItems.steeleaf.liquid.liquids[0], 144, false);
mods.tconstruct.Casting.addBasinRecipe(<twilightforest:block_storage:2>, null, metalItems.steeleaf.liquid.liquids[0], 1296, false);

mods.tconstruct.Casting.addTableRecipe(<contenttweaker:material_part:47>, <tconstruct:cast>.withTag({PartType: "tconstruct:tool_rod"}), metalItems.fiery.liquid.liquids[0], 144, false);
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:material_part:44>, <tconstruct:cast_custom:3>, metalItems.fiery.liquid.liquids[0], 144, false);
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:material_part:43>, <tconstruct:cast_custom:4>, metalItems.fiery.liquid.liquids[0], 576, false);
mods.tconstruct.Casting.addTableRecipe(<twilightforest:fiery_ingot>, <tconstruct:cast_custom>, metalItems.fiery.liquid.liquids[0], 144, false);
mods.tconstruct.Casting.addBasinRecipe(<twilightforest:block_storage:1>, null, metalItems.fiery.liquid.liquids[0], 1296, false);

//Gem cast with Astral Sorcery Aquamarine
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:2>, <astralsorcery:itemcraftingcomponent>, metalItems.gold.liquid.liquids[0], 288, true);
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:2>, <astralsorcery:itemcraftingcomponent>, <liquid:brass>, 144, true);
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:2>, <astralsorcery:itemcraftingcomponent>, metalItems.aluminumBrass.liquid.liquids[0], 144, true);

mods.tconstruct.Casting.addTableRecipe(<embers:nugget_dawnstone>, <tconstruct:cast_custom:1>, metalItems.dawnstone.liquid.liquids[0], 16, false);
mods.tconstruct.Casting.addTableRecipe(<embers:ingot_dawnstone>, <tconstruct:cast_custom>, metalItems.dawnstone.liquid.liquids[0], 144, false);
mods.tconstruct.Casting.addBasinRecipe(<embers:block_dawnstone>, null, metalItems.dawnstone.liquid.liquids[0], 1296, false);
mods.tconstruct.Casting.addTableRecipe(<embers:plate_dawnstone>, <tconstruct:cast_custom:3>, metalItems.dawnstone.liquid.liquids[0], 144, false);

//Melting
mods.tconstruct.Melting.addRecipe(<liquid:glass> * 250, <betterwithmods:sand_pile>);
mods.tconstruct.Melting.addRecipe(<liquid:glass> * 250, <quark:glass_shards>);
mods.tconstruct.Melting.addRecipe(<liquid:ender_pearl> * 250, <appliedenergistics2:material:46>);

mods.tconstruct.Melting.addRecipe(metalItems.fiery.liquid.liquids[0] * 144, <contenttweaker:material_part:47>);
mods.tconstruct.Melting.addRecipe(metalItems.fiery.liquid.liquids[0] * 576, <contenttweaker:material_part:44>);
mods.tconstruct.Melting.addRecipe(metalItems.fiery.liquid.liquids[0] * 144, <contenttweaker:material_part:43>);
mods.tconstruct.Melting.addRecipe(metalItems.fiery.liquid.liquids[0] * 144, <twilightforest:fiery_ingot>);
mods.tconstruct.Melting.addRecipe(metalItems.fiery.liquid.liquids[0] * 1296, <twilightforest:block_storage:1>);


mods.tconstruct.Melting.addRecipe(metalItems.steeleaf.liquid.liquids[0] * 144, <contenttweaker:material_part:42>);
mods.tconstruct.Melting.addRecipe(metalItems.steeleaf.liquid.liquids[0] * 576, <contenttweaker:material_part:39>);
mods.tconstruct.Melting.addRecipe(metalItems.steeleaf.liquid.liquids[0] * 144, <contenttweaker:material_part:38>);
mods.tconstruct.Melting.addRecipe(metalItems.steeleaf.liquid.liquids[0] * 144, <twilightforest:steeleaf_ingot>);
mods.tconstruct.Melting.addRecipe(metalItems.steeleaf.liquid.liquids[0] * 1296, <twilightforest:block_storage:2>);

mods.tconstruct.Melting.addRecipe(metalItems.dawnstone.liquid.liquids[0] * 16, <embers:nugget_dawnstone>);
mods.tconstruct.Melting.addRecipe(metalItems.dawnstone.liquid.liquids[0] * 144, <embers:ingot_dawnstone>);
mods.tconstruct.Melting.addRecipe(metalItems.dawnstone.liquid.liquids[0] * 144, <embers:plate_dawnstone>);
mods.tconstruct.Melting.addRecipe(metalItems.dawnstone.liquid.liquids[0] * 1296, <embers:block_dawnstone>);


//New seared stone mechanic
mods.tconstruct.Melting.removeRecipe(<liquid:stone>);

mods.tconstruct.Melting.addRecipe(<liquid:stone> * 72, <tconstruct:soil:0>);
mods.tconstruct.Melting.addRecipe(<liquid:stone> * 72, <tconstruct:materials>);
mods.tconstruct.Melting.addRecipe(<liquid:stone> * 288, <tconstruct:seared:*>);

//Remove Constantan Allowing
mods.tconstruct.Alloy.removeRecipe(metalItems.constantan.liquid.liquids[0]);

//Gear Cast Allows Stone now. You're welcome. -________________- Oh, it's also made from stone so all the people don't get upset with me and call me names or tell me I don't know rocket surgery.
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:4>, <teslacorelib:gear_stone>, metalItems.gold.liquid.liquids[0], 288, true);
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:4>, <teslacorelib:gear_stone>, <liquid:brass>, 144, true);
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:4>, <teslacorelib:gear_stone>, metalItems.aluminumBrass.liquid.liquids[0], 144, true);

//Platinum
mods.tconstruct.Melting.addRecipe(metalItems.platinum.liquid.liquids[0] * 144, <geolosys:cluster:8>);
mods.tconstruct.Melting.addRecipe(metalItems.platinum.liquid.liquids[0] * 144, <contenttweaker:material_part:37>);
mods.tconstruct.Melting.addRecipe(metalItems.platinum.liquid.liquids[0] * 144, <contenttweaker:material_part:33>);
mods.tconstruct.Melting.addRecipe(metalItems.platinum.liquid.liquids[0] * 576, <contenttweaker:material_part:32>);
mods.tconstruct.Melting.addRecipe(metalItems.platinum.liquid.liquids[0] * 1296, <contenttweaker:sub_block_holder_0:1>);

mods.tconstruct.Casting.addTableRecipe(<contenttweaker:material_part:37>, <tconstruct:cast_custom>, metalItems.platinum.liquid.liquids[0], 144, false);
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:material_part:33>, <tconstruct:cast_custom:3>, metalItems.platinum.liquid.liquids[0], 144, false);
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:material_part:32>, <tconstruct:cast_custom:4>, metalItems.platinum.liquid.liquids[0], 576, false);
mods.tconstruct.Casting.addBasinRecipe(<contenttweaker:sub_block_holder_0:1>, null, metalItems.platinum.liquid.liquids[0], 1296, false);

//Liquid Glowstone
mods.tconstruct.Melting.addRecipe(<liquid:ftglowstone> * 100, <minecraft:glowstone_dust>);

//Liquid Redstone
mods.tconstruct.Melting.addRecipe(<liquid:redstone> * 100, <minecraft:redstone>);
mods.tconstruct.Melting.addRecipe(<liquid:redstone> * 900, <minecraft:redstone_block>);

//Redstone Alloy Creation
mods.tconstruct.Alloy.addRecipe(<liquid:redstone_alloy> * 288, [<liquid:redstone> * 100, <liquid:ftglowstone>* 100, metalItems.constantan.liquid.liquids[0] * 144]);

//Redstone Alloy Parts
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:material_part:59>, <tconstruct:cast_custom>, <liquid:redstone_alloy>, 144, false);
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:material_part:55>, <tconstruct:cast_custom:3>, <liquid:redstone_alloy>, 144, false);
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:material_part:54>, <tconstruct:cast_custom:4>, <liquid:redstone_alloy>, 576, false);
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:material_part:58>, <tconstruct:cast>.withTag({PartType: "tconstruct:tool_rod"}), <liquid:redstone_alloy>, 144, false);
mods.tconstruct.Casting.addBasinRecipe(<contenttweaker:sub_block_holder_0:2>, null, <liquid:redstone_alloy>, 1296, false);

//Redstone Alloy Parts Melted
mods.tconstruct.Melting.addRecipe(<liquid:redstone_alloy> * 144, <contenttweaker:material_part:59>);
mods.tconstruct.Melting.addRecipe(<liquid:redstone_alloy> * 144, <contenttweaker:material_part:55>);
mods.tconstruct.Melting.addRecipe(<liquid:redstone_alloy> * 576, <contenttweaker:material_part:54>);
mods.tconstruct.Melting.addRecipe(<liquid:redstone_alloy> * 144, <contenttweaker:material_part:58>);
mods.tconstruct.Melting.addRecipe(<liquid:redstone_alloy> * 1296, <contenttweaker:sub_block_holder_0:2>);

//Nugget Removal
mods.tconstruct.Casting.removeTableRecipe(<embers:nugget_tin>);
mods.tconstruct.Casting.removeTableRecipe(<embers:nugget_bronze>);
mods.tconstruct.Casting.removeTableRecipe(<embers:nugget_dawnstone>);
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:nuggets:4>);
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:nuggets:3>);
mods.tconstruct.Casting.removeTableRecipe(<mysticalagriculture:crafting:45>);
mods.tconstruct.Casting.removeTableRecipe(<immersiveengineering:metal:25>);
mods.tconstruct.Casting.removeTableRecipe(<immersiveengineering:metal:21>);
mods.tconstruct.Casting.removeTableRecipe(<immersiveengineering:metal:20>);

//Spartan Shields
mods.tconstruct.Casting.addTableRecipe(<spartanshields:shield_basic_bronze>, <spartanshields:shield_basic_wood>, metalItems.bronze.liquid.liquids[0], 576, true);
mods.tconstruct.Casting.addTableRecipe(<spartanshields:shield_basic_steel>, <spartanshields:shield_basic_wood>, metalItems.steel.liquid.liquids[0], 576, true);
mods.tconstruct.Casting.addTableRecipe(<spartanshields:shield_basic_copper>, <spartanshields:shield_basic_wood>, metalItems.copper.liquid.liquids[0], 576, true);
mods.tconstruct.Casting.addTableRecipe(<spartanshields:shield_basic_tin>, <spartanshields:shield_basic_wood>, metalItems.tin.liquid.liquids[0], 576, true);
mods.tconstruct.Casting.addTableRecipe(<spartanshields:shield_basic_silver>, <spartanshields:shield_basic_wood>, metalItems.silver.liquid.liquids[0], 576, true);
mods.tconstruct.Casting.addTableRecipe(<spartanshields:shield_basic_platinum>, <spartanshields:shield_basic_wood>, metalItems.platinum.liquid.liquids[0], 576, true);
mods.tconstruct.Casting.addTableRecipe(<spartanshields:shield_basic_electrum>, <spartanshields:shield_basic_wood>, metalItems.electrum.liquid.liquids[0], 576, true);
mods.tconstruct.Casting.addTableRecipe(<spartanshields:shield_basic_nickel>, <spartanshields:shield_basic_wood>, metalItems.nickel.liquid.liquids[0], 576, true);
mods.tconstruct.Casting.addTableRecipe(<spartanshields:shield_basic_iron>, <spartanshields:shield_basic_wood>, metalItems.iron.liquid.liquids[0], 576, true);
mods.tconstruct.Casting.addTableRecipe(<spartanshields:shield_basic_gold>, <spartanshields:shield_basic_wood>, metalItems.gold.liquid.liquids[0], 576, true);
mods.tconstruct.Casting.addTableRecipe(<spartanshields:shield_basic_obsidian>, <spartanshields:shield_basic_wood>, <liquid:obsidian>, 576, true);
mods.tconstruct.Casting.addTableRecipe(<spartanshields:shield_basic_lead>, <spartanshields:shield_basic_wood>, metalItems.lead.liquid.liquids[0], 576, true);
//mods.tconstruct.Casting.addTableRecipe(<spartanshields:shield_basic_invar>, <spartanshields:shield_basic_wood>, <liquid:invar>, 576, true);

//Modularium
mods.tconstruct.Alloy.addRecipe(<liquid:modularium> * 288, [<liquid:redstone> * 100, <liquid:iron>* 144, <liquid:dawnstone> * 144]);
//ingot, plate, gear, block
mods.tconstruct.Casting.addTableRecipe(<modularmachinery:itemmodularium>, <tconstruct:cast_custom>, <liquid:modularium>, 144, false);
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:material_part:71>, <tconstruct:cast_custom:3>, <liquid:modularium>, 144, false);
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:material_part:70>, <tconstruct:cast_custom:4>, <liquid:modularium>, 576, false);
//mods.tconstruct.Casting.addBasinRecipe(<contenttweaker:sub_block_holder_0:1>, null, <liquid:modularium>, 1296, false);

//ingot, plate, gear, rod
mods.tconstruct.Melting.addRecipe(<liquid:modularium> * 144, <modularmachinery:itemmodularium>);
mods.tconstruct.Melting.addRecipe(<liquid:modularium> * 144, <contenttweaker:material_part:71>);
mods.tconstruct.Melting.addRecipe(<liquid:modularium> * 576, <contenttweaker:material_part:70>);
mods.tconstruct.Melting.addRecipe(<liquid:modularium> * 144, <contenttweaker:material_part:74>);
//mods.tconstruct.Melting.addRecipe(<liquid:modularium> * 1296, <contenttweaker:sub_block_holder_0:2>);
