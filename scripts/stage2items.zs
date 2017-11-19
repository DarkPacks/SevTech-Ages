
var modIDs = [
"twilightforest",
"uppers",
"farmingforblockheads"
] as string[];
for id in modIDs {
    for item in loadedMods[id].items {
        mods.ItemStages.addItemStage("two", item);
    }
}

mods.ItemStages.addItemStage("two", <minecraft:wool:*>);
mods.ItemStages.addItemStage("two", <minecraft:carpet:*>);
mods.ItemStages.addItemStage("two", <minecraft:banner:*>);
mods.ItemStages.addItemStage("two", <prospectors:prospector_low>);

mods.ItemStages.addItemStage("two", <minecraft:sticky_piston>);
mods.ItemStages.addItemStage("two", <minecraft:redstone>);
mods.ItemStages.addItemStage("two", <minecraft:redstone_block>);
mods.ItemStages.addItemStage("two", <minecraft:piston>);

mods.ItemStages.addItemStage("two", <minecraft:boat>);
mods.ItemStages.addItemStage("two", <minecraft:spruce_boat>);
mods.ItemStages.addItemStage("two", <minecraft:birch_boat>);
mods.ItemStages.addItemStage("two", <minecraft:jungle_boat>);
mods.ItemStages.addItemStage("two", <minecraft:acacia_boat>);
mods.ItemStages.addItemStage("two", <minecraft:dark_oak_boat>);

mods.ItemStages.addItemStage("two", <minecraft:bed:*>);

mods.ItemStages.addItemStage("two", <minecraft:arrow>);
mods.ItemStages.addItemStage("two", <minecraft:spectral_arrow>);

mods.ItemStages.addItemStage("two", <minecraft:bookshelf>);
mods.ItemStages.addItemStage("two", <minecraft:book>);
mods.ItemStages.addItemStage("two", <minecraft:writable_book>);
mods.ItemStages.addItemStage("two", <minecraft:written_book>);
mods.ItemStages.addItemStage("two", <minecraft:knowledge_book>);

mods.ItemStages.addItemStage("two", <minecraft:cauldron>);
mods.ItemStages.addItemStage("two", <minecraft:milk_bucket>);
mods.ItemStages.addItemStage("two", <minecraft:lava_bucket>);
mods.ItemStages.addItemStage("two", <minecraft:water_bucket>);
mods.ItemStages.addItemStage("two", <minecraft:name_tag>);
mods.ItemStages.addItemStage("two", <minecraft:tripwire_hook>);
mods.ItemStages.addItemStage("two", <minecraft:lapis_block>);
mods.ItemStages.addItemStage("two", <minecraft:armor_stand>);
mods.ItemStages.addItemStage("two", <minecraft:compass>);
mods.ItemStages.addItemStage("two", <minecraft:clock>);
mods.ItemStages.addItemStage("two", <minecraft:lever>);
mods.ItemStages.addItemStage("two", <minecraft:dye:4>);

mods.ItemStages.addItemStage("two", <minecraft:hopper>);
mods.ItemStages.addItemStage("two", <minecraft:bucket>);
mods.ItemStages.addItemStage("two", <minecraft:chainmail_chestplate>);
mods.ItemStages.addItemStage("two", <minecraft:chainmail_leggings>);
mods.ItemStages.addItemStage("two", <minecraft:chainmail_boots>);
mods.ItemStages.addItemStage("two", <minecraft:shield>);
mods.ItemStages.addItemStage("two", <minecraft:anvil>);
mods.ItemStages.addItemStage("two", <minecraft:chainmail_helmet>);
mods.ItemStages.addItemStage("two", <minecraft:lapis_ore>);
mods.ItemStages.addItemStage("two", <minecraft:iron_ore>);
mods.ItemStages.addItemStage("two", <minecraft:light_weighted_pressure_plate>);
mods.ItemStages.addItemStage("two", <minecraft:gold_ingot>);
mods.ItemStages.addItemStage("two", <minecraft:gold_block>);
mods.ItemStages.addItemStage("two", <minecraft:heavy_weighted_pressure_plate>);

//Ore 
mods.ItemStages.addItemStage("two", <minecraft:gold_ore>);
mods.ItemStages.addItemStage("two", <abyssalcraft:abyiroore>);
mods.ItemStages.addItemStage("two", <abyssalcraft:abygolore>);
mods.ItemStages.addItemStage("two", <abyssalcraft:abynitore>);

//Plates
mods.ItemStages.addItemStage("two", <immersiveengineering:metal:40>);
mods.ItemStages.addItemStage("two", <immersiveengineering:metal:38>);
mods.ItemStages.addItemStage("two", <immersiveengineering:metal:39>);

//Glass
mods.ItemStages.addItemStage("two", <minecraft:glass>);
mods.ItemStages.addItemStage("two", <minecraft:stained_glass:*>);
mods.ItemStages.addItemStage("two", <minecraft:glass_pane>);
mods.ItemStages.addItemStage("two", <minecraft:stained_glass_pane:*>);

mods.ItemStages.addItemStage("two", <quark:glass_shards:*>);
mods.ItemStages.addItemStage("two", <quark:glass_item_frame>);
mods.ItemStages.addItemStage("two", <minecraft:glass_bottle>);

//Iron Stuff
mods.ItemStages.addItemStage("two", <minecraft:iron_sword>);
mods.ItemStages.addItemStage("two", <minecraft:iron_ingot>);
mods.ItemStages.addItemStage("two", <minecraft:iron_axe>);
mods.ItemStages.addItemStage("two", <minecraft:iron_pickaxe>);
mods.ItemStages.addItemStage("two", <minecraft:iron_shovel>);
mods.ItemStages.addItemStage("two", <minecraft:iron_door>);
mods.ItemStages.addItemStage("two", <minecraft:iron_trapdoor>);
mods.ItemStages.addItemStage("two", <minecraft:iron_bars>);
mods.ItemStages.addItemStage("two", <minecraft:iron_block>);
mods.ItemStages.addItemStage("two", <betterbuilderswands:wandiron>);
mods.ItemStages.addItemStage("two", <minecraft:iron_nugget>);
mods.ItemStages.addItemStage("two", <minecraft:iron_horse_armor>);
mods.ItemStages.addItemStage("two", <minecraft:iron_hoe>);
mods.ItemStages.addItemStage("two", <minecraft:iron_helmet>);
mods.ItemStages.addItemStage("two", <minecraft:iron_chestplate>);
mods.ItemStages.addItemStage("two", <minecraft:iron_leggings>);
mods.ItemStages.addItemStage("two", <minecraft:iron_boots>);
mods.ItemStages.addItemStage("two", <quark:iron_ladder>);

//Gold Stuff
mods.ItemStages.addItemStage("two", <minecraft:golden_sword>);
mods.ItemStages.addItemStage("two", <minecraft:golden_shovel>);
mods.ItemStages.addItemStage("two", <minecraft:golden_pickaxe>);
mods.ItemStages.addItemStage("two", <minecraft:golden_axe>);
mods.ItemStages.addItemStage("two", <minecraft:golden_hoe>);
mods.ItemStages.addItemStage("two", <minecraft:golden_helmet>);
mods.ItemStages.addItemStage("two", <minecraft:golden_chestplate>);
mods.ItemStages.addItemStage("two", <minecraft:golden_leggings>);
mods.ItemStages.addItemStage("two", <minecraft:golden_boots>);
mods.ItemStages.addItemStage("two", <minecraft:golden_apple>);
mods.ItemStages.addItemStage("two", <minecraft:golden_apple:1>);
mods.ItemStages.addItemStage("two", <minecraft:golden_carrot>);
mods.ItemStages.addItemStage("two", <minecraft:golden_horse_armor>);
mods.ItemStages.addItemStage("two", <betterwithaddons:gold_spade>);
mods.ItemStages.addItemStage("two", <betterwithaddons:gold_matchpick>);
mods.ItemStages.addItemStage("two", <betterwithaddons:gold_machete>);
mods.ItemStages.addItemStage("two", <betterwithaddons:gold_kukri>);
mods.ItemStages.addItemStage("two", <betterwithaddons:gold_carpentersaw>);
mods.ItemStages.addItemStage("two", <betterwithaddons:gold_masonpick>);
mods.ItemStages.addItemStage("two", <ceramics:clay_hard:3>);
mods.ItemStages.addItemStage("two", <ceramics:clay_wall:4>);
mods.ItemStages.addItemStage("two", <ceramics:clay_slab:3>);
mods.ItemStages.addItemStage("two", <ceramics:golden_bricks_stairs>);
mods.ItemStages.addItemStage("two", <chiselsandbits:chisel_gold>);
mods.ItemStages.addItemStage("two", <jaff:golden_fishing_rod>);
mods.ItemStages.addItemStage("two", <nex:tool_sword_bone>);
mods.ItemStages.addItemStage("two", <nex:tool_pickaxe_bone>);
mods.ItemStages.addItemStage("two", <nex:tool_shovel_bone>);
mods.ItemStages.addItemStage("two", <nex:tool_axe_bone>);
mods.ItemStages.addItemStage("two", <nex:tool_hoe_bone>);
mods.ItemStages.addItemStage("two", <nex:tool_hammer_bone>);
mods.ItemStages.addItemStage("two", <roots:gold_knife>);

//Better With Mods 
mods.ItemStages.addItemStage("two", <betterwithmods:metal_chime:*>);
mods.ItemStages.addItemStage("two", <betterwithmods:aesthetic:12>);
mods.ItemStages.addItemStage("two", <betterwithmods:ender_spectacles>);

//Storage Drawers 
mods.ItemStages.addItemStage("two", <storagedrawers:trim>);
mods.ItemStages.addItemStage("two", <storagedrawers:trim:1>);
mods.ItemStages.addItemStage("two", <storagedrawers:trim:2>);
mods.ItemStages.addItemStage("two", <storagedrawers:trim:3>);
mods.ItemStages.addItemStage("two", <storagedrawers:trim:4>);
mods.ItemStages.addItemStage("two", <storagedrawers:trim:5>);
mods.ItemStages.addItemStage("two", <storagedrawers:framingtable>);
mods.ItemStages.addItemStage("two", <storagedrawers:customdrawers>);
mods.ItemStages.addItemStage("two", <storagedrawers:customdrawers:1>);
mods.ItemStages.addItemStage("two", <storagedrawers:customdrawers:2>);
mods.ItemStages.addItemStage("two", <storagedrawers:customdrawers:3>);
mods.ItemStages.addItemStage("two", <storagedrawers:customdrawers:4>);
mods.ItemStages.addItemStage("two", <storagedrawers:customtrim>);
mods.ItemStages.addItemStage("two", <storagedrawers:drawer_key>);
mods.ItemStages.addItemStage("two", <storagedrawers:shroud_key>);
mods.ItemStages.addItemStage("two", <storagedrawers:personal_key>);
mods.ItemStages.addItemStage("two", <storagedrawers:quantify_key>);
mods.ItemStages.addItemStage("two", <storagedrawers:tape>);
mods.ItemStages.addItemStage("two", <storagedrawers:upgrade_template>);
mods.ItemStages.addItemStage("two", <storagedrawers:upgrade_storage>);
mods.ItemStages.addItemStage("two", <storagedrawers:upgrade_storage:1>);
mods.ItemStages.addItemStage("two", <storagedrawers:upgrade_storage:2>);
mods.ItemStages.addItemStage("two", <storagedrawers:upgrade_one_stack>);
mods.ItemStages.addItemStage("two", <storagedrawers:upgrade_conversion>);

//Steves Carts Stage 3 Trigger Item
mods.ItemStages.addItemStage("two", <stevescarts:cartmodule>);

//Bibliocraft
mods.ItemStages.addItemStage("two", <bibliocraft:armorstand>);
mods.ItemStages.addItemStage("two", <bibliocraft:armorstand:1>);
mods.ItemStages.addItemStage("two", <bibliocraft:armorstand:2>);
mods.ItemStages.addItemStage("two", <bibliocraft:armorstand:3>);
mods.ItemStages.addItemStage("two", <bibliocraft:armorstand:4>);
mods.ItemStages.addItemStage("two", <bibliocraft:armorstand:5>);
mods.ItemStages.addItemStage("two", <bibliocraft:armorstand:6>);
mods.ItemStages.addItemStage("two", <bibliocraft:bookcase:*>);
mods.ItemStages.addItemStage("two", <bibliocraft:bookcasecreative:*>);
mods.ItemStages.addItemStage("two", <bibliocraft:lanterngold:*>);
mods.ItemStages.addItemStage("two", <bibliocraft:lanterniron:*>);
mods.ItemStages.addItemStage("two", <bibliocraft:lampgold:*>);
mods.ItemStages.addItemStage("two", <bibliocraft:lampiron:*>);
mods.ItemStages.addItemStage("two", <bibliocraft:furniturepaneler:*>);
mods.ItemStages.addItemStage("two", <bibliocraft:framedchest:*>);
mods.ItemStages.addItemStage("two", <bibliocraft:fancysign:*>);
mods.ItemStages.addItemStage("two", <bibliocraft:fancyworkbench:*>);
mods.ItemStages.addItemStage("two", <bibliocraft:label:*>);
mods.ItemStages.addItemStage("two", <bibliocraft:desk:*>);
mods.ItemStages.addItemStage("two", <bibliocraft:table:*>);
mods.ItemStages.addItemStage("two", <bibliocraft:seat:*>);
mods.ItemStages.addItemStage("two", <bibliocraft:case:*>);
mods.ItemStages.addItemStage("two", <bibliocraft:mapframe:*>);
mods.ItemStages.addItemStage("two", <bibliocraft:paintingframeflat:*>);
mods.ItemStages.addItemStage("two", <bibliocraft:swordpedestal:*>);
mods.ItemStages.addItemStage("two", <bibliocraft:compass>);
mods.ItemStages.addItemStage("two", <bibliocraft:maptool>);
mods.ItemStages.addItemStage("two", <bibliocraft:stockroomcatalog>);
mods.ItemStages.addItemStage("two", <bibliocraft:framingsaw>);
mods.ItemStages.addItemStage("two", <bibliocraft:framingboard>);
mods.ItemStages.addItemStage("two", <bibliocraft:framingsheet>);
mods.ItemStages.addItemStage("two", <bibliocraft:atlasbook>);
mods.ItemStages.addItemStage("two", <bibliocraft:paintingcanvas>);
mods.ItemStages.addItemStage("two", <bibliocraft:bigbook>);
mods.ItemStages.addItemStage("two", <bibliocraft:handdrill>);
mods.ItemStages.addItemStage("two", <bibliocraft:seatback1:*>);
mods.ItemStages.addItemStage("two", <bibliocraft:seatback2:*>);
mods.ItemStages.addItemStage("two", <bibliocraft:seatback3:*>);
mods.ItemStages.addItemStage("two", <bibliocraft:seatback4:*>);
mods.ItemStages.addItemStage("two", <bibliocraft:seatback5:*>);
mods.ItemStages.addItemStage("two", <bibliocraft:paintingframesimple:*>);
mods.ItemStages.addItemStage("two", <bibliocraft:paintingframemiddle:*>);
mods.ItemStages.addItemStage("two", <bibliocraft:paintingframefancy:*>);
mods.ItemStages.addItemStage("two", <bibliocraft:paintingframeborderless:*>);

//Chisel 
mods.ItemStages.addItemStage("two", <chisel:antiblock:*>);
mods.ItemStages.addItemStage("two", <chisel:bookshelf_oak:*>);
mods.ItemStages.addItemStage("two", <chisel:bookshelf_spruce:*>);
mods.ItemStages.addItemStage("two", <chisel:bookshelf_birch:*>);
mods.ItemStages.addItemStage("two", <chisel:bookshelf_jungle:*>);
mods.ItemStages.addItemStage("two", <chisel:bookshelf_darkoak:*>);
mods.ItemStages.addItemStage("two", <chisel:bookshelf_acacia:*>);
mods.ItemStages.addItemStage("two", <chisel:carpet_blue:*>);
mods.ItemStages.addItemStage("two", <chisel:carpet_brown:*>);
mods.ItemStages.addItemStage("two", <chisel:carpet_green:*>);
mods.ItemStages.addItemStage("two", <chisel:carpet_red:*>);
mods.ItemStages.addItemStage("two", <chisel:carpet_black:*>);
mods.ItemStages.addItemStage("two", <chisel:carpet_white:*>);
mods.ItemStages.addItemStage("two", <chisel:carpet_orange:*>);
mods.ItemStages.addItemStage("two", <chisel:carpet_magenta:*>);
mods.ItemStages.addItemStage("two", <chisel:carpet_lightblue:*>);
mods.ItemStages.addItemStage("two", <chisel:carpet_yellow:*>);
mods.ItemStages.addItemStage("two", <chisel:carpet_lime:*>);
mods.ItemStages.addItemStage("two", <chisel:carpet_pink:*>);
mods.ItemStages.addItemStage("two", <chisel:carpet_gray:*>);
mods.ItemStages.addItemStage("two", <chisel:carpet_lightgray:*>);
mods.ItemStages.addItemStage("two", <chisel:carpet_cyan:*>);
mods.ItemStages.addItemStage("two", <chisel:carpet_purple:*>);
mods.ItemStages.addItemStage("two", <chisel:carpet_blue:*>);
mods.ItemStages.addItemStage("two", <chisel:glass:*>);
mods.ItemStages.addItemStage("two", <chisel:glassdyedblack:*>);
mods.ItemStages.addItemStage("two", <chisel:glassdyedred:*>);
mods.ItemStages.addItemStage("two", <chisel:glassdyedgreen:*>);
mods.ItemStages.addItemStage("two", <chisel:glassdyedbrown:*>);
mods.ItemStages.addItemStage("two", <chisel:glassdyedblue:*>);
mods.ItemStages.addItemStage("two", <chisel:glassdyedpurple:*>);
mods.ItemStages.addItemStage("two", <chisel:glassdyedcyan:*>);
mods.ItemStages.addItemStage("two", <chisel:glassdyedlightgray:*>);
mods.ItemStages.addItemStage("two", <chisel:glassdyedgray:*>);
mods.ItemStages.addItemStage("two", <chisel:glassdyedpink:*>);
mods.ItemStages.addItemStage("two", <chisel:glassdyedlime:*>);
mods.ItemStages.addItemStage("two", <chisel:glassdyedyellow:*>);
mods.ItemStages.addItemStage("two", <chisel:glassdyedlightblue:*>);
mods.ItemStages.addItemStage("two", <chisel:glassdyedmagenta:*>);
mods.ItemStages.addItemStage("two", <chisel:glassdyedorange:*>);
mods.ItemStages.addItemStage("two", <chisel:glassdyedwhite:*>);
mods.ItemStages.addItemStage("two", <chisel:lavastone:*>);
mods.ItemStages.addItemStage("two", <chisel:lavastone1:*>);
mods.ItemStages.addItemStage("two", <chisel:lavastone2:*>);
mods.ItemStages.addItemStage("two", <chisel:blockgold:*>);
mods.ItemStages.addItemStage("two", <chisel:blockiron:*>);
mods.ItemStages.addItemStage("two", <chisel:lapis:*>);
mods.ItemStages.addItemStage("two", <chisel:waterstone2:*>);
mods.ItemStages.addItemStage("two", <chisel:waterstone:*>);
mods.ItemStages.addItemStage("two", <chisel:waterstone1:*>);
mods.ItemStages.addItemStage("two", <chisel:iron:*>);
mods.ItemStages.addItemStage("two", <chisel:gold:*>);

//Enchantment Book 
mods.ItemStages.addItemStage("two", <minecraft:enchanted_book:0>);
mods.ItemStages.addItemStage("two", <minecraft:enchanted_book:*>);

//Garden Stuffs
mods.ItemStages.addItemStage("two", <gardenstuff:metal_block>);
mods.ItemStages.addItemStage("two", <gardenstuff:bloomery_furnace>);
mods.ItemStages.addItemStage("two", <gardenstuff:metal_fence>);
mods.ItemStages.addItemStage("two", <gardenstuff:metal_fence:1>);
mods.ItemStages.addItemStage("two", <gardenstuff:metal_fence:2>);
mods.ItemStages.addItemStage("two", <gardenstuff:metal_fence:3>);
mods.ItemStages.addItemStage("two", <gardenstuff:metal_lattice>);
mods.ItemStages.addItemStage("two", <gardenstuff:metal_lattice:1>);
mods.ItemStages.addItemStage("two", <gardenstuff:metal_lattice:2>);
mods.ItemStages.addItemStage("two", <gardenstuff:metal_lattice:3>);
mods.ItemStages.addItemStage("two", <gardenstuff:metal_lattice:4>);
mods.ItemStages.addItemStage("two", <gardenstuff:candelabra:1>);
mods.ItemStages.addItemStage("two", <gardenstuff:candelabra:2>);
mods.ItemStages.addItemStage("two", <gardenstuff:candelabra:3>);
mods.ItemStages.addItemStage("two", <gardenstuff:material:1>);
mods.ItemStages.addItemStage("two", <gardenstuff:material:2>);
mods.ItemStages.addItemStage("two", <gardenstuff:material:3>);
mods.ItemStages.addItemStage("two", <gardenstuff:material:4>);
mods.ItemStages.addItemStage("two", <gardenstuff:material:5>);

//TCon Test
mods.ItemStages.addItemStage("two", <tconstruct:pick_head>.withTag({Material: "wood"}));
mods.ItemStages.addItemStage("two", <tconstruct:pick_head>.withTag({Material: "flint"}));

//Astral Sorcery Stage 2
mods.ItemStages.addItemStage("two", <astralsorcery:itemcraftingcomponent:*>);
mods.ItemStages.addItemStage("two", <astralsorcery:itemconstellationpaper:*>);
mods.ItemStages.addItemStage("two", <astralsorcery:iteminfusedglass:*>);
mods.ItemStages.addItemStage("two", <astralsorcery:itemrockcrystalsimple>);
mods.ItemStages.addItemStage("two", <astralsorcery:itemtunedrockcrystal:*>);
mods.ItemStages.addItemStage("two", <astralsorcery:itemcelestialcrystal>);
mods.ItemStages.addItemStage("two", <astralsorcery:itemtunedcelestialcrystal:*>);
mods.ItemStages.addItemStage("two", <astralsorcery:itemhandtelescope>);
mods.ItemStages.addItemStage("two", <astralsorcery:itemlinkingtool>);
mods.ItemStages.addItemStage("two", <astralsorcery:itemwand:*>);
mods.ItemStages.addItemStage("two", <astralsorcery:itemilluminationwand>);
mods.ItemStages.addItemStage("two", <astralsorcery:itemcoloredlens:*>);
mods.ItemStages.addItemStage("two", <astralsorcery:itemskyresonator>);
mods.ItemStages.addItemStage("two", <astralsorcery:itemshiftingstar>);
mods.ItemStages.addItemStage("two", <astralsorcery:itemarchitectwand>);
mods.ItemStages.addItemStage("two", <astralsorcery:itemexchangewand>);
mods.ItemStages.addItemStage("two", <astralsorcery:itemgrapplewand>);
mods.ItemStages.addItemStage("two", <astralsorcery:itemusabledust:*>);
mods.ItemStages.addItemStage("two", <astralsorcery:itemknowledgeshare:*>);
mods.ItemStages.addItemStage("two", <astralsorcery:itemcrystalpickaxe>);
mods.ItemStages.addItemStage("two", <astralsorcery:itemcrystalshovel>);
mods.ItemStages.addItemStage("two", <astralsorcery:itemcrystalaxe>);
mods.ItemStages.addItemStage("two", <astralsorcery:itemcrystalsword>);
mods.ItemStages.addItemStage("two", <astralsorcery:itemchargedcrystalaxe>);
mods.ItemStages.addItemStage("two", <astralsorcery:itemchargedcrystalsword>);
mods.ItemStages.addItemStage("two", <astralsorcery:itemchargedcrystalpickaxe>);
mods.ItemStages.addItemStage("two", <astralsorcery:itemchargedcrystalshovel>);
mods.ItemStages.addItemStage("two", <astralsorcery:itemcape:*>);
mods.ItemStages.addItemStage("two", <astralsorcery:blockchalice>);
mods.ItemStages.addItemStage("two", <astralsorcery:blockattunementaltar>);
mods.ItemStages.addItemStage("two", <astralsorcery:blockattunementrelay>);
mods.ItemStages.addItemStage("two", <astralsorcery:blockwell>);
mods.ItemStages.addItemStage("two", <astralsorcery:blockworldilluminator>);
mods.ItemStages.addItemStage("two", <astralsorcery:blockstarlightinfuser>);
mods.ItemStages.addItemStage("two", <astralsorcery:blockrituallink>);
mods.ItemStages.addItemStage("two", <astralsorcery:blocktreebeacon>);
mods.ItemStages.addItemStage("two", <astralsorcery:blockmapdrawingtable>);
mods.ItemStages.addItemStage("two", <astralsorcery:blockcelestialgateway>);
mods.ItemStages.addItemStage("two", <astralsorcery:blocklens>);
mods.ItemStages.addItemStage("two", <astralsorcery:blockprism>);
mods.ItemStages.addItemStage("two", <astralsorcery:blockcustomore:*>);
mods.ItemStages.addItemStage("two", <astralsorcery:blockcustomsandore>);
mods.ItemStages.addItemStage("two", <astralsorcery:blockcustomflower>);
mods.ItemStages.addItemStage("two", <astralsorcery:blockblackmarble:*>);
mods.ItemStages.addItemStage("two", <astralsorcery:blockmachine:*>);
mods.ItemStages.addItemStage("two", <astralsorcery:blockcelestialcrystals:*>);
mods.ItemStages.addItemStage("two", <astralsorcery:blockritualpedestal>);
mods.ItemStages.addItemStage("two", <astralsorcery:blockaltar:*>);
mods.ItemStages.addItemStage("two", <astralsorcery:blockcollectorcrystal:*>);
mods.ItemStages.addItemStage("two", <astralsorcery:blockcelestialcollectorcrystal:*>);
mods.ItemStages.addItemStage("two", <forge:bucketfilled>.withTag({FluidName: "astralsorcery.liquidstarlight", Amount: 1000}));
//mods.ItemStages.addItemStage("two", <astralsorcery:fluidblockliquidstarlight>);

//Embers Stage 2
mods.ItemStages.addItemStage("two", <embers:adhesive>);
mods.ItemStages.addItemStage("two", <embers:alchemic_waste>);
mods.ItemStages.addItemStage("two", <embers:alchemy_pedestal>);
mods.ItemStages.addItemStage("two", <embers:alchemy_tablet>);
mods.ItemStages.addItemStage("two", <embers:ashen_brick>);
mods.ItemStages.addItemStage("two", <embers:ashen_brick_slab>);
mods.ItemStages.addItemStage("two", <embers:ashen_brick_slab_double>);
mods.ItemStages.addItemStage("two", <embers:ashen_cloak_boots>);
mods.ItemStages.addItemStage("two", <embers:ashen_cloak_chest>);
mods.ItemStages.addItemStage("two", <embers:ashen_cloak_head>);
mods.ItemStages.addItemStage("two", <embers:ashen_cloak_legs>);
mods.ItemStages.addItemStage("two", <embers:ashen_cloth>);
mods.ItemStages.addItemStage("two", <embers:ashen_stone>);
mods.ItemStages.addItemStage("two", <embers:ashen_stone_slab>);
mods.ItemStages.addItemStage("two", <embers:ashen_stone_slab_double>);
mods.ItemStages.addItemStage("two", <embers:ashen_tile>);
mods.ItemStages.addItemStage("two", <embers:ashen_tile_slab>);
mods.ItemStages.addItemStage("two", <embers:ashen_tile_slab_double>);
mods.ItemStages.addItemStage("two", <embers:aspectus_copper>);
mods.ItemStages.addItemStage("two", <embers:aspectus_dawnstone>);
mods.ItemStages.addItemStage("two", <embers:aspectus_iron>);
mods.ItemStages.addItemStage("two", <embers:auto_hammer>);
mods.ItemStages.addItemStage("two", <embers:axe_clockwork>);
mods.ItemStages.addItemStage("two", <embers:axe_dawnstone>);
mods.ItemStages.addItemStage("two", <embers:beam_cannon>);
mods.ItemStages.addItemStage("two", <embers:beam_splitter>);
mods.ItemStages.addItemStage("two", <embers:blasting_core>);
mods.ItemStages.addItemStage("two", <embers:block_dawnstone>);
mods.ItemStages.addItemStage("two", <embers:block_mithril>);
mods.ItemStages.addItemStage("two", <embers:block_tank>);
mods.ItemStages.addItemStage("two", <embers:boiler>);
mods.ItemStages.addItemStage("two", <embers:breaker>);
mods.ItemStages.addItemStage("two", <embers:caminite_lever>);
mods.ItemStages.addItemStage("two", <embers:caster_orb>);
mods.ItemStages.addItemStage("two", <embers:catalyzer>);
mods.ItemStages.addItemStage("two", <embers:charger>);
mods.ItemStages.addItemStage("two", <embers:cinder_plinth>);
mods.ItemStages.addItemStage("two", <embers:combustor>);
mods.ItemStages.addItemStage("two", <embers:crystal_cell>);
mods.ItemStages.addItemStage("two", <embers:dawnstone_anvil>);
mods.ItemStages.addItemStage("two", <embers:dust_ash>);
mods.ItemStages.addItemStage("two", <embers:eldritch_insignia>);
mods.ItemStages.addItemStage("two", <embers:ember_cartridge>);
mods.ItemStages.addItemStage("two", <embers:ember_cluster>);
mods.ItemStages.addItemStage("two", <embers:ember_injector>);
mods.ItemStages.addItemStage("two", <embers:ember_jar>);
mods.ItemStages.addItemStage("two", <embers:ember_pulser>);
mods.ItemStages.addItemStage("two", <embers:ember_relay>);
mods.ItemStages.addItemStage("two", <embers:field_chart>);
mods.ItemStages.addItemStage("two", <embers:flame_barrier>);
mods.ItemStages.addItemStage("two", <embers:glimmer_shard>);
mods.ItemStages.addItemStage("two", <embers:grandhammer>);
mods.ItemStages.addItemStage("two", <embers:hoe_dawnstone>);
mods.ItemStages.addItemStage("two", <embers:ignition_cannon>);
mods.ItemStages.addItemStage("two", <embers:inferno_forge>);
mods.ItemStages.addItemStage("two", <embers:inflictor_gem>);
mods.ItemStages.addItemStage("two", <embers:ingot_dawnstone>);
mods.ItemStages.addItemStage("two", <embers:ingot_mithril>);
mods.ItemStages.addItemStage("two", <embers:intelligent_apparatus>);
mods.ItemStages.addItemStage("two", <embers:isolated_materia>);
mods.ItemStages.addItemStage("two", <embers:item_transfer>);
mods.ItemStages.addItemStage("two", <embers:jet_augment>);
mods.ItemStages.addItemStage("two", <embers:nugget_dawnstone>);
mods.ItemStages.addItemStage("two", <embers:nugget_mithril>);
mods.ItemStages.addItemStage("two", <embers:ore_nickel>);
mods.ItemStages.addItemStage("two", <embers:pickaxe_clockwork>);
mods.ItemStages.addItemStage("two", <embers:pickaxe_dawnstone>);
mods.ItemStages.addItemStage("two", <embers:plate_dawnstone>);
mods.ItemStages.addItemStage("two", <embers:plate_gold>);
mods.ItemStages.addItemStage("two", <embers:plate_iron>);
mods.ItemStages.addItemStage("two", <embers:plate_mithril>);
mods.ItemStages.addItemStage("two", <embers:reactor>);
mods.ItemStages.addItemStage("two", <embers:resonating_bell>);
mods.ItemStages.addItemStage("two", <embers:sealed_planks>);
mods.ItemStages.addItemStage("two", <embers:seed>);
mods.ItemStages.addItemStage("two", <embers:seed:1>);
mods.ItemStages.addItemStage("two", <embers:seed:2>);
mods.ItemStages.addItemStage("two", <embers:shovel_dawnstone>);
mods.ItemStages.addItemStage("two", <embers:staff_ember>);
mods.ItemStages.addItemStage("two", <embers:stairs_ashen_brick>);
mods.ItemStages.addItemStage("two", <embers:stairs_ashen_stone>);
mods.ItemStages.addItemStage("two", <embers:stairs_ashen_tile>);
mods.ItemStages.addItemStage("two", <embers:superheater>);
mods.ItemStages.addItemStage("two", <embers:sword_dawnstone>);
mods.ItemStages.addItemStage("two", <embers:tyrfing>);
mods.ItemStages.addItemStage("two", <embers:vacuum>);
mods.ItemStages.addItemStage("two", <embers:wall_ashen_brick>);
mods.ItemStages.addItemStage("two", <embers:wall_ashen_stone>);
mods.ItemStages.addItemStage("two", <embers:wall_ashen_tile>);
mods.ItemStages.addItemStage("two", <embers:wildfire_core>);
mods.ItemStages.addItemStage("two", <embers:wrapped_sealed_planks>);
mods.ItemStages.addItemStage("two", <embers:archaic_bricks>);
mods.ItemStages.addItemStage("two", <embers:archaic_tile>);

//Actually Additions
mods.ItemStages.addItemStage("two", <actuallyadditions:iron_paxel>);
mods.ItemStages.addItemStage("two", <actuallyadditions:block_smiley_cloud>);

//Content Tweaker
mods.ItemStages.addItemStage("two", <contenttweaker:material_part:38>);
mods.ItemStages.addItemStage("two", <contenttweaker:material_part:39>);
mods.ItemStages.addItemStage("two", <contenttweaker:material_part:40>);
mods.ItemStages.addItemStage("two", <contenttweaker:material_part:41>);
mods.ItemStages.addItemStage("two", <contenttweaker:material_part:42>);
mods.ItemStages.addItemStage("two", <contenttweaker:material_part:43>);
mods.ItemStages.addItemStage("two", <contenttweaker:material_part:44>);
mods.ItemStages.addItemStage("two", <contenttweaker:material_part:45>);
mods.ItemStages.addItemStage("two", <contenttweaker:material_part:46>);
mods.ItemStages.addItemStage("two", <contenttweaker:material_part:47>);
mods.ItemStages.addItemStage("two", <forge:bucketfilled>.withTag({FluidName: "steeleaf", Amount: 1000}));
mods.ItemStages.addItemStage("two", <forge:bucketfilled>.withTag({FluidName: "fiery", Amount: 1000}));
mods.ItemStages.addItemStage("two", <forge:bucketfilled>.withTag({FluidName: "ender_pearl", Amount: 1000}));

//Tinkers' Construct
mods.ItemStages.addItemStage("two", <tconstruct:pattern:*>);
mods.ItemStages.addItemStage("two", <tconstruct:clear_glass:*>);
mods.ItemStages.addItemStage("two", <tconstruct:fancy_frame:*>);
mods.ItemStages.addItemStage("two", <tconstruct:tooltables:1>);
mods.ItemStages.addItemStage("two", <tconstruct:tooltables:4>);
mods.ItemStages.addItemStage("two", <tconstruct:cast:*>);
mods.ItemStages.addItemStage("two", <tconstruct:cast_custom>);
mods.ItemStages.addItemStage("two", <tconstruct:cast_custom:1>);
mods.ItemStages.addItemStage("two", <tconstruct:cast_custom:2>);
mods.ItemStages.addItemStage("two", <tconstruct:cast_custom:3>);
mods.ItemStages.addItemStage("two", <tconstruct:cast_custom:4>);
mods.ItemStages.addItemStage("two", <tconstruct:clay_cast:*>);
mods.ItemStages.addItemStage("two", <tconstruct:tooltables:2>);
mods.ItemStages.addItemStage("two", <tconstruct:clear_stained_glass:*>);

mods.ItemStages.addItemStage("two", <tconstruct:smeltery_controller>);
mods.ItemStages.addItemStage("two", <tconstruct:seared_furnace_controller>);
mods.ItemStages.addItemStage("two", <tconstruct:tinker_tank_controller>);
mods.ItemStages.addItemStage("two", <tconstruct:seared_tank:1>);
mods.ItemStages.addItemStage("two", <tconstruct:seared_tank:2>);
mods.ItemStages.addItemStage("two", <tconstruct:casting>);
mods.ItemStages.addItemStage("two", <tcomplement:porcelain_casting>);
mods.ItemStages.addItemStage("two", <tconstruct:smeltery_io>);
mods.ItemStages.addItemStage("two", <tconstruct:seared_glass>);
mods.ItemStages.addItemStage("two", <tconstruct:stone_torch>);
mods.ItemStages.addItemStage("two", <tconstruct:seared_stairs_stone>);
mods.ItemStages.addItemStage("two", <tconstruct:seared_stairs_cobble>);
mods.ItemStages.addItemStage("two", <tconstruct:seared_stairs_paver>);
mods.ItemStages.addItemStage("two", <tconstruct:seared_stairs_brick>);
mods.ItemStages.addItemStage("two", <tconstruct:seared_stairs_brick_cracked>);
mods.ItemStages.addItemStage("two", <tconstruct:seared_stairs_brick_fancy>);
mods.ItemStages.addItemStage("two", <tconstruct:seared_stairs_brick_square>);
mods.ItemStages.addItemStage("two", <tconstruct:seared_stairs_brick_triangle>);
mods.ItemStages.addItemStage("two", <tconstruct:seared_stairs_brick_small>);
mods.ItemStages.addItemStage("two", <tconstruct:seared_stairs_road>);
mods.ItemStages.addItemStage("two", <tconstruct:seared_stairs_tile>);
mods.ItemStages.addItemStage("two", <tconstruct:seared_stairs_creeper>);

mods.ItemStages.addItemStage("two", <tcomplement:porcelain_tank>);
mods.ItemStages.addItemStage("two", <tcomplement:porcelain_tank:1>);
mods.ItemStages.addItemStage("two", <tcomplement:porcelain_tank:2>);

//Dark Utils
mods.ItemStages.addItemStage("two", <darkutils:lore_tag:*>);
mods.ItemStages.addItemStage("two", <darkutils:sneaky_plate>);
mods.ItemStages.addItemStage("two", <darkutils:sneaky_obsidian>);
mods.ItemStages.addItemStage("two", <darkutils:sneaky_torch>);
mods.ItemStages.addItemStage("two", <darkutils:sneaky_ghost>);
mods.ItemStages.addItemStage("two", <darkutils:sneaky_lever>);
mods.ItemStages.addItemStage("two", <darkutils:sneaky>);
mods.ItemStages.addItemStage("two", <darkutils:charm_portal>);
mods.ItemStages.addItemStage("two", <darkutils:charm_null>);
mods.ItemStages.addItemStage("two", <darkutils:focus_sash>);
mods.ItemStages.addItemStage("two", <darkutils:trap_move>);

//Rustic
mods.ItemStages.addItemStage("two", <rustic:chain>);
mods.ItemStages.addItemStage("two", <rustic:candle>);
mods.ItemStages.addItemStage("two", <rustic:chandelier>);
mods.ItemStages.addItemStage("two", <rustic:beehive>);
mods.ItemStages.addItemStage("two", <rustic:apiary>);
mods.ItemStages.addItemStage("two", <rustic:slate_tile>);
mods.ItemStages.addItemStage("two", <rustic:slate_roof>);
mods.ItemStages.addItemStage("two", <rustic:slate_brick>);
mods.ItemStages.addItemStage("two", <rustic:slate_chiseled>);
mods.ItemStages.addItemStage("two", <rustic:stairs_slate_roof>);
mods.ItemStages.addItemStage("two", <rustic:slate_roof_slab_item>);
mods.ItemStages.addItemStage("two", <rustic:stairs_slate_brick>);
mods.ItemStages.addItemStage("two", <rustic:slate_brick_slab_item>);
mods.ItemStages.addItemStage("two", <rustic:iron_lattice>);
mods.ItemStages.addItemStage("two", <rustic:iron_lantern>);
mods.ItemStages.addItemStage("two", <rustic:gargoyle>);
mods.ItemStages.addItemStage("two", <rustic:condenser>);
mods.ItemStages.addItemStage("two", <rustic:retort>);
mods.ItemStages.addItemStage("two", <rustic:condenser_advanced>);
mods.ItemStages.addItemStage("two", <rustic:retort_advanced>);

mods.ItemStages.addItemStage("two", <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:instant_health", Duration: 1, Amplifier: 0}]}));
mods.ItemStages.addItemStage("two", <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:instant_health", Duration: 1, Amplifier: 1}]}));
mods.ItemStages.addItemStage("two", <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:regeneration", Duration: 900, Amplifier: 0}]}));
mods.ItemStages.addItemStage("two", <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:regeneration", Duration: 1800, Amplifier: 0}]}));
mods.ItemStages.addItemStage("two", <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:regeneration", Duration: 450, Amplifier: 1}]}));
mods.ItemStages.addItemStage("two", <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:wither", Duration: 900, Amplifier: 0}]}));
mods.ItemStages.addItemStage("two", <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:wither", Duration: 1800, Amplifier: 0}]}));
mods.ItemStages.addItemStage("two", <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:wither", Duration: 450, Amplifier: 1}]}));
mods.ItemStages.addItemStage("two", <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:night_vision", Duration: 3600, Amplifier: 0}]}));
mods.ItemStages.addItemStage("two", <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:night_vision", Duration: 9600, Amplifier: 0}]}));
mods.ItemStages.addItemStage("two", <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:speed", Duration: 3600, Amplifier: 0}]}));
mods.ItemStages.addItemStage("two", <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:speed", Duration: 9600, Amplifier: 0}]}));
mods.ItemStages.addItemStage("two", <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:speed", Duration: 1800, Amplifier: 1}]}));
mods.ItemStages.addItemStage("two", <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:fire_resistance", Duration: 3600, Amplifier: 0}]}));
mods.ItemStages.addItemStage("two", <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:fire_resistance", Duration: 9600, Amplifier: 0}]}));
mods.ItemStages.addItemStage("two", <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:health_boost", Duration: 3600, Amplifier: 0}]}));
mods.ItemStages.addItemStage("two", <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:health_boost", Duration: 9600, Amplifier: 0}]}));
mods.ItemStages.addItemStage("two", <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:health_boost", Duration: 1800, Amplifier: 1}]}));
mods.ItemStages.addItemStage("two", <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:haste", Duration: 3600, Amplifier: 0}]}));
mods.ItemStages.addItemStage("two", <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:haste", Duration: 9600, Amplifier: 0}]}));
mods.ItemStages.addItemStage("two", <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:haste", Duration: 1800, Amplifier: 1}]}));
mods.ItemStages.addItemStage("two", <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:strength", Duration: 3600, Amplifier: 0}]}));
mods.ItemStages.addItemStage("two", <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:strength", Duration: 9600, Amplifier: 0}]}));
mods.ItemStages.addItemStage("two", <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:strength", Duration: 1800, Amplifier: 1}]}));
mods.ItemStages.addItemStage("two", <rustic:elixir>.withTag({ElixirEffects: [{Effect: "rustic:ironskin", Duration: 3600, Amplifier: 0}]}));
mods.ItemStages.addItemStage("two", <rustic:elixir>.withTag({ElixirEffects: [{Effect: "rustic:ironskin", Duration: 9600, Amplifier: 0}]}));
mods.ItemStages.addItemStage("two", <rustic:elixir>.withTag({ElixirEffects: [{Effect: "rustic:ironskin", Duration: 1800, Amplifier: 1}]}));
mods.ItemStages.addItemStage("two", <rustic:elixir>.withTag({ElixirEffects: [{Effect: "rustic:feather", Duration: 3600, Amplifier: 0}]}));
mods.ItemStages.addItemStage("two", <rustic:elixir>.withTag({ElixirEffects: [{Effect: "rustic:feather", Duration: 9600, Amplifier: 0}]}));
mods.ItemStages.addItemStage("two", <rustic:elixir>.withTag({ElixirEffects: [{Effect: "rustic:blazing_trail", Duration: 3600, Amplifier: 0}]}));
mods.ItemStages.addItemStage("two", <rustic:elixir>.withTag({ElixirEffects: [{Effect: "rustic:blazing_trail", Duration: 9600, Amplifier: 0}]}));
mods.ItemStages.addItemStage("two", <rustic:fluid_bottle>.withTag({Fluid: {FluidName: "oliveoil", Amount: 1000}}));
mods.ItemStages.addItemStage("two", <rustic:fluid_bottle>.withTag({Fluid: {FluidName: "ironberryjuice", Amount: 1000}}));
mods.ItemStages.addItemStage("two", <rustic:fluid_bottle>.withTag({Fluid: {FluidName: "wildberryjuice", Amount: 1000}}));
mods.ItemStages.addItemStage("two", <rustic:fluid_bottle>.withTag({Fluid: {FluidName: "grapejuice", Amount: 1000}}));
mods.ItemStages.addItemStage("two", <rustic:fluid_bottle>.withTag({Fluid: {FluidName: "applejuice", Amount: 1000}}));
mods.ItemStages.addItemStage("two", <rustic:fluid_bottle>.withTag({Fluid: {FluidName: "alewort", Amount: 1000}}));
mods.ItemStages.addItemStage("two", <rustic:fluid_bottle>.withTag({Fluid: {FluidName: "honey", Amount: 1000}}));
mods.ItemStages.addItemStage("two", <rustic:fluid_bottle>.withTag({Fluid: {FluidName: "ale", Amount: 1000, Tag: {Quality: 0.75 as float}}}));
mods.ItemStages.addItemStage("two", <rustic:fluid_bottle>.withTag({Fluid: {FluidName: "cider", Amount: 1000, Tag: {Quality: 0.75 as float}}}));
mods.ItemStages.addItemStage("two", <rustic:fluid_bottle>.withTag({Fluid: {FluidName: "ironwine", Amount: 1000, Tag: {Quality: 0.75 as float}}}));
mods.ItemStages.addItemStage("two", <rustic:fluid_bottle>.withTag({Fluid: {FluidName: "mead", Amount: 1000, Tag: {Quality: 0.75 as float}}}));
mods.ItemStages.addItemStage("two", <rustic:fluid_bottle>.withTag({Fluid: {FluidName: "wildberrywine", Amount: 1000, Tag: {Quality: 0.75 as float}}}));
mods.ItemStages.addItemStage("two", <rustic:fluid_bottle>.withTag({Fluid: {FluidName: "wine", Amount: 1000, Tag: {Quality: 0.75 as float}}}));
mods.ItemStages.addItemStage("two", <rustic:brewing_barrel>);
mods.ItemStages.addItemStage("two", <rustic:liquid_barrel>);

//Cyclic
mods.ItemStages.addItemStage("two", <cyclicmagic:block_fragile_weak>);
mods.ItemStages.addItemStage("two", <cyclicmagic:ender_lightning>);
mods.ItemStages.addItemStage("two", <cyclicmagic:water_freezer>);
mods.ItemStages.addItemStage("two", <cyclicmagic:apple_lapis>);
mods.ItemStages.addItemStage("two", <cyclicmagic:spikes_iron>);
mods.ItemStages.addItemStage("two", <cyclicmagic:horse_upgrade_variant>);
mods.ItemStages.addItemStage("two", <cyclicmagic:tool_spawn_inspect>);
mods.ItemStages.addItemStage("two", <cyclicmagic:block_fragile>);
mods.ItemStages.addItemStage("two", <cyclicmagic:tool_torch_launcher>);
mods.ItemStages.addItemStage("two", <cyclicmagic:mattock>);
mods.ItemStages.addItemStage("two", <cyclicmagic:tool_rotate>);
mods.ItemStages.addItemStage("two", <cyclicmagic:tool_trade>);
mods.ItemStages.addItemStage("two", <cyclicmagic:block_soundproofing>);
mods.ItemStages.addItemStage("two", <cyclicmagic:block_fragile_auto>);
mods.ItemStages.addItemStage("two", <cyclicmagic:food_step>);
mods.ItemStages.addItemStage("two", <cyclicmagic:tool_spelunker>);
mods.ItemStages.addItemStage("two", <cyclicmagic:charm_water>);
mods.ItemStages.addItemStage("two", <cyclicmagic:charm_speed>);
mods.ItemStages.addItemStage("two", <cyclicmagic:charm_antidote>);
mods.ItemStages.addItemStage("two", <cyclicmagic:block_fishing>);
mods.ItemStages.addItemStage("two", <cyclicmagic:tool_harvest_crops>);
mods.ItemStages.addItemStage("two", <cyclicmagic:ender_dungeon>);