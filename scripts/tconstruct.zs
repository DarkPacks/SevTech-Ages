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

mods.tconstruct.Casting.addTableRecipe(<tcomplement:cast>, <ceramics:clay_bucket>, <liquid:gold>, 288, true);
mods.tconstruct.Casting.addTableRecipe(<tcomplement:cast>, <ceramics:clay_bucket>, <liquid:brass>, 144, true);
mods.tconstruct.Casting.addTableRecipe(<tcomplement:cast>, <ceramics:clay_bucket>, <liquid:alubrass>, 144, true);

mods.tconstruct.Casting.addTableRecipe(<tcomplement:cast>, <ceramics:clay_bucket_block>, <liquid:gold>, 288, true);
mods.tconstruct.Casting.addTableRecipe(<tcomplement:cast>, <ceramics:clay_bucket_block>, <liquid:brass>, 144, true);
mods.tconstruct.Casting.addTableRecipe(<tcomplement:cast>, <ceramics:clay_bucket_block>, <liquid:alubrass>, 144, true);

mods.tconstruct.Casting.addTableRecipe(<contenttweaker:material_part:42>, <tconstruct:cast>.withTag({PartType: "tconstruct:tool_rod"}), <liquid:steeleaf>, 144, false);
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:material_part:39>, <tconstruct:cast_custom:3>, <liquid:steeleaf>, 144, false);
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:material_part:38>, <tconstruct:cast_custom:4>, <liquid:steeleaf>, 576, false);
mods.tconstruct.Casting.addTableRecipe(<twilightforest:steeleaf_ingot>, <tconstruct:cast_custom>, <liquid:steeleaf>, 144, false);
mods.tconstruct.Casting.addBasinRecipe(<twilightforest:block_storage:2>, null, <liquid:steeleaf>, 1296, false);

mods.tconstruct.Casting.addTableRecipe(<contenttweaker:material_part:47>, <tconstruct:cast>.withTag({PartType: "tconstruct:tool_rod"}), <liquid:fiery>, 144, false);
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:material_part:44>, <tconstruct:cast_custom:3>, <liquid:fiery>, 144, false);
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:material_part:43>, <tconstruct:cast_custom:4>, <liquid:fiery>, 576, false);
mods.tconstruct.Casting.addTableRecipe(<twilightforest:fiery_ingot>, <tconstruct:cast_custom>, <liquid:fiery>, 144, false);
mods.tconstruct.Casting.addBasinRecipe(<twilightforest:block_storage:1>, null, <liquid:fiery>, 1296, false);

//Gem cast with Astral Sorcery Aquamarine
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:2>, <astralsorcery:itemcraftingcomponent>, <liquid:gold>, 288, true);
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:2>, <astralsorcery:itemcraftingcomponent>, <liquid:brass>, 144, true);
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:2>, <astralsorcery:itemcraftingcomponent>, <liquid:alubrass>, 144, true);

mods.tconstruct.Casting.addTableRecipe(<embers:nugget_dawnstone>, <tconstruct:cast_custom:1>, <liquid:dawnstone>, 16, false);
mods.tconstruct.Casting.addTableRecipe(<embers:ingot_dawnstone>, <tconstruct:cast_custom>, <liquid:dawnstone>, 144, false);
mods.tconstruct.Casting.addBasinRecipe(<embers:block_dawnstone>, null, <liquid:dawnstone>, 1296, false);
mods.tconstruct.Casting.addTableRecipe(<embers:plate_dawnstone>, <tconstruct:cast_custom:3>, <liquid:dawnstone>, 144, false);

//Melting
mods.tconstruct.Melting.addRecipe(<liquid:glass> * 250, <betterwithmods:sand_pile>);
mods.tconstruct.Melting.addRecipe(<liquid:glass> * 250, <quark:glass_shards>);
mods.tconstruct.Melting.addRecipe(<liquid:ender_pearl> * 250, <appliedenergistics2:material:46>);

mods.tconstruct.Melting.addRecipe(<liquid:fiery> * 144, <contenttweaker:material_part:47>);
mods.tconstruct.Melting.addRecipe(<liquid:fiery> * 576, <contenttweaker:material_part:44>);
mods.tconstruct.Melting.addRecipe(<liquid:fiery> * 144, <contenttweaker:material_part:43>);
mods.tconstruct.Melting.addRecipe(<liquid:fiery> * 144, <twilightforest:fiery_ingot>);
mods.tconstruct.Melting.addRecipe(<liquid:fiery> * 1296, <twilightforest:block_storage:1>);


mods.tconstruct.Melting.addRecipe(<liquid:steeleaf> * 144, <contenttweaker:material_part:42>);
mods.tconstruct.Melting.addRecipe(<liquid:steeleaf> * 576, <contenttweaker:material_part:39>);
mods.tconstruct.Melting.addRecipe(<liquid:steeleaf> * 144, <contenttweaker:material_part:38>);
mods.tconstruct.Melting.addRecipe(<liquid:steeleaf> * 144, <twilightforest:steeleaf_ingot>);
mods.tconstruct.Melting.addRecipe(<liquid:steeleaf> * 1296, <twilightforest:block_storage:2>);

mods.tconstruct.Melting.addRecipe(<liquid:dawnstone> * 16, <embers:nugget_dawnstone>);
mods.tconstruct.Melting.addRecipe(<liquid:dawnstone> * 144, <embers:ingot_dawnstone>);
mods.tconstruct.Melting.addRecipe(<liquid:dawnstone> * 144, <embers:plate_dawnstone>);
mods.tconstruct.Melting.addRecipe(<liquid:dawnstone> * 1296, <embers:block_dawnstone>);


//New seared stone mechanic
mods.tconstruct.Melting.removeRecipe(<liquid:stone>);

mods.tconstruct.Melting.addRecipe(<liquid:stone> * 72, <tconstruct:soil:0>);
mods.tconstruct.Melting.addRecipe(<liquid:stone> * 72, <tconstruct:materials>);
mods.tconstruct.Melting.addRecipe(<liquid:stone> * 288, <tconstruct:seared:*>);

//Remove Constantan Allowing
mods.tconstruct.Alloy.removeRecipe(<liquid:constantan>);

//Gear Cast Allows Stone now. You're welcome. -________________- Oh, it's also made from stone so all the people don't get upset with me and call me names or tell me I don't know rocket surgery. 
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:4>, <teslacorelib:gear_stone>, <liquid:gold>, 288, true);
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:4>, <teslacorelib:gear_stone>, <liquid:brass>, 144, true);
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:4>, <teslacorelib:gear_stone>, <liquid:alubrass>, 144, true);

//Platinum
mods.tconstruct.Melting.addRecipe(<liquid:platinum> * 144, <geolosys:cluster:8>);
mods.tconstruct.Melting.addRecipe(<liquid:platinum> * 144, <contenttweaker:material_part:37>);
mods.tconstruct.Melting.addRecipe(<liquid:platinum> * 144, <contenttweaker:material_part:33>);
mods.tconstruct.Melting.addRecipe(<liquid:platinum> * 576, <contenttweaker:material_part:32>);
mods.tconstruct.Melting.addRecipe(<liquid:platinum> * 1296, <contenttweaker:sub_block_holder_0:1>);

mods.tconstruct.Casting.addTableRecipe(<contenttweaker:material_part:37>, <tconstruct:cast_custom>, <liquid:platinum>, 144, false);
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:material_part:33>, <tconstruct:cast_custom:3>, <liquid:platinum>, 144, false);
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:material_part:32>, <tconstruct:cast_custom:4>, <liquid:platinum>, 576, false);
mods.tconstruct.Casting.addBasinRecipe(<contenttweaker:sub_block_holder_0:1>, null, <liquid:platinum>, 1296, false);

//Liquid Glowstone
mods.tconstruct.Melting.addRecipe(<liquid:ftglowstone> * 100, <minecraft:glowstone_dust>);

//Liquid Redstone
mods.tconstruct.Melting.addRecipe(<liquid:redstone> * 100, <minecraft:redstone>);
mods.tconstruct.Melting.addRecipe(<liquid:redstone> * 900, <minecraft:redstone_block>);

//Redstone Alloy Creation
mods.tconstruct.Alloy.addRecipe(<liquid:redstone_alloy> * 288, [<liquid:redstone> * 100, <liquid:ftglowstone>* 100, <liquid:constantan> * 144]);

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
mods.tconstruct.Casting.addTableRecipe(<spartanshields:shield_basic_bronze>, <spartanshields:shield_basic_wood>, <liquid:bronze>, 576, true);
mods.tconstruct.Casting.addTableRecipe(<spartanshields:shield_basic_steel>, <spartanshields:shield_basic_wood>, <liquid:steel>, 576, true);
mods.tconstruct.Casting.addTableRecipe(<spartanshields:shield_basic_copper>, <spartanshields:shield_basic_wood>, <liquid:copper>, 576, true);
mods.tconstruct.Casting.addTableRecipe(<spartanshields:shield_basic_tin>, <spartanshields:shield_basic_wood>, <liquid:tin>, 576, true);
mods.tconstruct.Casting.addTableRecipe(<spartanshields:shield_basic_silver>, <spartanshields:shield_basic_wood>, <liquid:silver>, 576, true);
mods.tconstruct.Casting.addTableRecipe(<spartanshields:shield_basic_platinum>, <spartanshields:shield_basic_wood>, <liquid:platinum>, 576, true);
mods.tconstruct.Casting.addTableRecipe(<spartanshields:shield_basic_electrum>, <spartanshields:shield_basic_wood>, <liquid:electrum>, 576, true);
mods.tconstruct.Casting.addTableRecipe(<spartanshields:shield_basic_nickel>, <spartanshields:shield_basic_wood>, <liquid:nickel>, 576, true);
mods.tconstruct.Casting.addTableRecipe(<spartanshields:shield_basic_iron>, <spartanshields:shield_basic_wood>, <liquid:iron>, 576, true);
mods.tconstruct.Casting.addTableRecipe(<spartanshields:shield_basic_gold>, <spartanshields:shield_basic_wood>, <liquid:gold>, 576, true);
mods.tconstruct.Casting.addTableRecipe(<spartanshields:shield_basic_obsidian>, <spartanshields:shield_basic_wood>, <liquid:obsidian>, 576, true);
mods.tconstruct.Casting.addTableRecipe(<spartanshields:shield_basic_lead>, <spartanshields:shield_basic_wood>, <liquid:lead>, 576, true);
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