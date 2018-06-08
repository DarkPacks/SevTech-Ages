import crafttweaker.item.IItemStack;

//Must be item not oreDict
static removeAndHideItems as IItemStack[] = [
	<abyssalcraft:abyssalniteu>,
	<abyssalcraft:beefp>,
	<abyssalcraft:chickenp>,
	<abyssalcraft:cloth>,
	<abyssalcraft:cobbleu>,
	<abyssalcraft:cobbleu>,
	<abyssalcraft:coraliumu>,
	<abyssalcraft:diamondu>,
	<abyssalcraft:dreadiumu>,
	<abyssalcraft:eggp>,
	<abyssalcraft:ethaxiumu>,
	<abyssalcraft:fishp>,
	<abyssalcraft:goldu>,
	<abyssalcraft:ironp>,
	<abyssalcraft:ironu>,
	<abyssalcraft:mre>,
	<abyssalcraft:porkp>,
	<actuallyadditions:block_misc:5>,
	<actuallyadditions:item_crafter_on_a_stick>,
	<actuallyadditions:item_misc:10>,
	<actuallyadditions:item_misc:11>,
	<actuallyadditions:item_misc:17>,
	<actuallyadditions:item_misc:4>,
	<actuallyadditions:item_wings_of_the_bats>,
	<advancedmortars:mortar:2>,
	<advancedmortars:mortar:3>,
	<astikoor:carriage>,
	<astikoor:chariot>,
	<astralsorcery:blockmarbleslab>, // This is not a finshed Block; advised to not use it till completed.
	<astralsorcery:itemchargedcrystalpickaxe>, //<-- like seriously? a pick that shows hidden ores. ples hellfirepvp >.<
	<betterwithaddons:bag:10>,
	<betterwithaddons:bolt:3>,
	<betterwithaddons:bolt:4>,
	<betterwithaddons:bolt:5>,
	<betterwithaddons:ink_and_quill>,
	<betterwithaddons:japanmat:31>,
	<betterwithaddons:japanmat:32>,
	<betterwithaddons:japanmat:33>,
	<betterwithaddons:japanmat:34>,
	<betterwithaddons:log_termite>,
	<betterwithaddons:material:4>,
	<betterwithaddons:material:5>,
	<betterwithaddons:material:6>,
	<betterwithaddons:rail_rusted>,
	<betterwithaddons:tatami_full>,
	<betterwithaddons:writing_table:1>,
	<betterwithaddons:writing_table:2>,
	<betterwithaddons:writing_table:3>,
	<betterwithaddons:writing_table:4>,
	<betterwithaddons:writing_table:5>,
	<betterwithaddons:writing_table>,
	<betterwithmods:material:6>,
	<betterwithmods:material:7>,
	<betterwithmods:material:31>,
	<betterwithmods:material:32>,
	<betterwithmods:material:33>,
	<betterwithmods:raw_pastry:3>,
	<betterwithmods:stump_remover>,
	<betterwithmods:wood_table:1>,
	<betterwithmods:wood_table:2>,
	<betterwithmods:wood_table:3>,
	<betterwithmods:wood_table:4>,
	<betterwithmods:wood_table:5>,
	<betterwithmods:wood_table>,
	<bloodmagic:component:14>,
	<bloodmagic:sigil_compression>,
	<car:canola_seeds>,
	<car:canola>,
	<cyclicmagic:block_fishing>,
	<cyclicmagic:block_miner_smart>,
	<cyclicmagic:block_miner>,
	<cyclicmagic:block_workbench>,
	<cyclicmagic:charm_air>,
	<cyclicmagic:glowing_chorus>,
	<cyclicmagic:mattock>,
	<cyclicmagic:sack_ender>,
	<cyclicmagic:storage_bag>,
	<cyclicmagic:tool_prospector>,
	<cyclicmagic:tool_randomize>,
	<cyclicmagic:uncrafting_block>,
	<darkutils:sneaky_bedrock>,
	<ferdinandsflowers:block_dye_brick_half:*>,
	<ferdinandsflowers:block_dye_brick_halfb:*>,
	<ferdinandsflowers:block_dye_brick_halfc:*>,
	<ferdinandsflowers:block_dye_brick_halfd:*>,
	<ferdinandsflowers:block_dye_brick:*>,
	<ferdinandsflowers:block_dye_brickb:*>,
	<ferdinandsflowers:flower_dye:*>,
	<ferdinandsflowers:flower_dyeb:*>,
	<immcraft:bookstand>,
	<immcraft:chisel>,
	<immcraft:furnace>,
	<immcraft:manual>,
	<immcraft:saw>,
	<improvedbackpacks:ender_backpack>, // We have the ender pouch and this has no def recipe, darkoLUL
	<industrialforegoing:artificial_dye:*>,
	<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:diamond", spec: "UPGRADE"}}), //TODO: Add back when IronBackpacks adds upgrade functionality
	<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:gold", spec: "UPGRADE"}}), //TODO: Add back when IronBackpacks adds upgrade functionality
	<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:iron", spec: "UPGRADE"}}), //TODO: Add back when IronBackpacks adds upgrade functionality
	<ironbackpacks:upgrade>, //TODO: Add back when IronBackpacks adds upgrade functionality
	<ironbackpacks:upgrade>.withTag({upgrade: "ironbackpacks:damage_bar"}), //TODO: Add back when IronBackpacks adds upgrade functionality
	<ironbackpacks:upgrade>.withTag({upgrade: "ironbackpacks:everlasting"}), //TODO: Add back when IronBackpacks adds upgrade functionality
	<ironbackpacks:upgrade>.withTag({upgrade: "ironbackpacks:extra_upgrade"}), //TODO: Add back when IronBackpacks adds upgrade functionality
	<ironbackpacks:upgrade>.withTag({upgrade: "ironbackpacks:lock"}), //TODO: Add back when IronBackpacks adds upgrade functionality
	<microblockcbe:saw_diamond>,
	<microblockcbe:saw_iron>,
	<microblockcbe:saw_stone>,
	<microblockcbe:stone_rod>,
	<minecraft:dye:1>,
	<minecraft:dye:5>,
	<minecraft:dye:6>,
	<minecraft:dye:7>,
	<minecraft:dye:8>,
	<minecraft:dye:9>,
	<minecraft:dye:10>,
	<minecraft:dye:11>,
	<minecraft:dye:12>,
	<minecraft:dye:13>,
	<minecraft:dye:14>,
	<minecraft:wooden_axe>,
	<minecraft:wooden_hoe>,
	<minecraft:wooden_pickaxe>,
	<minecraft:wooden_shovel>,
	<minecraft:wooden_sword>,
	<mob_grinding_utils:mob_swab>,
	<modularmachinery:blockinputbus:0>,
	<modularmachinery:blockoutputbus:0>,
	<overloaded:energy_core>,
	<overloaded:fluid_core>,
	<overloaded:item_core>,
	<overloaded:multi_boots>,
	<overloaded:multi_chestplate>,
	<overloaded:multi_helmet>,
	<overloaded:multi_leggings>,
	<overloaded:nether_star_block>,
	<overloaded:ray_gun>,
	<pickletweaks:grass_fiber>,
	<pickletweaks:reinforced_mesh>,
	<primal:ash_wolf>,
	<primal:boat_ironwood>,
	<primal:boat_lacquer>,
	<primal:boat_yew>,
	<primal:dust_bin:*>,
	<primal:gate_ironwood>,
	<primal:ironglass>,
	<primal:magnetite_dust>,
	<primal:pigman_hide_salted>,
	<primal:quartz_workblade>,
	<primal:redstone_sand>,
	<primal:satetsu:1>,
	<primal:satetsu:2>,
	<primal:satetsu:3>,
	<primal:satetsu:4>,
	<primal:satetsu>,
	<primal:soul_stone>,
	<primal:worktable_shelf:*>,
	<primal:worktable_slab:*>,
	<quantumstorage:chest_diamond>, //Quantum Storage Metal Chests
	<quantumstorage:chest_gold>, //Quantum Storage Metal Chests
	<quantumstorage:chest_iron>, //Quantum Storage Metal Chests
	<quantumstorage:quantum_barrel>,
	<quantumstorage:quantum_battery>,
	<quantumstorage:upgrade:1>,
	<quantumstorage:upgrade:2>,
	<quantumstorage:upgrade:3>,
	<quantumstorage:upgrade>,
	<quark:arrow_torch>,
	<quark:obsidian_pressure_plate>,
	<rustic:fertile_soil>,
	<scannable:module_structure>,
	<stevescarts:cartmodule:87>,
	<stevescarts:cartmodule:92>,
	<stevescarts:modulecomponents:9>,
	<storagedrawers:basicdrawers:*>,
	<tconstruct:throwball:1>,
	<tconstruct:toolforge>.withTag({textureBlock: {id: "extraplanets:neptune", Count: 1 as byte, Damage: 7 as short}}),
	<totemic:medicine_bag>,

	//Nuggets
	<mysticalagradditions:insanium:3>,
	<mysticalagriculture:crafting:45>,  //Soulium Nugget

	//Actually Additions
	<actuallyadditions:block_treasure_chest>,
	<actuallyadditions:gold_paxel>,
	<actuallyadditions:iron_paxel>,
	<actuallyadditions:item_color_lens>,
	<actuallyadditions:item_dust:1>,
	<actuallyadditions:item_hairy_ball>,
	<actuallyadditions:item_jam:*>, //No
	<actuallyadditions:item_misc:15>,
	<actuallyadditions:item_solidified_experience>,
	<actuallyadditions:item_water_bowl>,
	<actuallyadditions:stone_paxel>,
	<actuallyadditions:wooden_paxel>,

	//Construct's Armory
	<conarm:travel_belt>,
	<conarm:travel_belt_base>,
	<conarm:travel_potion>,
	<conarm:travel_sack>,

	//Natura
	<natura:amaranth_button>,
	<natura:amaranth_pressure_plate>,
	<natura:amaranth_trap_door>,
	<natura:blaze_hopper>,
	<natura:blaze_rail>,
	<natura:blaze_rail_activator>,
	<natura:blaze_rail_detector>,
	<natura:blaze_rail_golden>,
	<natura:bloodwood_button>,
	<natura:bloodwood_pressure_plate>,
	<natura:bloodwood_trap_door>,
	<natura:darkwood_button>,
	<natura:darkwood_pressure_plate>,
	<natura:darkwood_trap_door>,
	<natura:eucalyptus_button>,
	<natura:eucalyptus_pressure_plate>,
	<natura:eucalyptus_trap_door>,
	<natura:fusewood_button>,
	<natura:fusewood_pressure_plate>,
	<natura:fusewood_trap_door>,
	<natura:ghostwood_button>,
	<natura:ghostwood_pressure_plate>,
	<natura:ghostwood_trap_door>,
	<natura:hopseed_button>,
	<natura:hopseed_pressure_plate>,
	<natura:hopseed_trap_door>,
	<natura:maple_button>,
	<natura:maple_pressure_plate>,
	<natura:maple_trap_door>,
	<natura:nether_button>,
	<natura:nether_pressure_plate>,
	<natura:nether_workbenches:1>,
	<natura:nether_workbenches:2>,
	<natura:nether_workbenches:3>,
	<natura:nether_workbenches>,
	<natura:overworld_workbenches:1>,
	<natura:overworld_workbenches:2>,
	<natura:overworld_workbenches:3>,
	<natura:overworld_workbenches:4>,
	<natura:overworld_workbenches:5>,
	<natura:overworld_workbenches:6>,
	<natura:overworld_workbenches:7>,
	<natura:overworld_workbenches:8>,
	<natura:overworld_workbenches>,
	<natura:redwood_pressure_plate>,
	<natura:redwood_trap_door>,
	<natura:sakura_button>,
	<natura:sakura_pressure_plate>,
	<natura:sakura_trap_door>,
	<natura:silverbell_button>,
	<natura:silverbell_pressure_plate>,
	<natura:silverbell_trap_door>,
	<natura:tiger_button>,
	<natura:tiger_pressure_plate>,
	<natura:tiger_trap_door>,
	<natura:willow_button>,
	<natura:willow_pressure_plate>,
	<natura:willow_trap_door>,

	//Pneumaticraft
	<pneumaticcraft:refinery>,
	<pneumaticcraft:thermopneumatic_processing_plant>,

	//Buildcraft
	<buildcraftcore:spring:1>,
	<buildcraftcore:spring>,
	<buildcraftfactory:distiller>,
	<buildcraftsilicon:redstone_chipset:*>,

	//Cooking for Blockheads
	<cookingforblockheads:cow_jar>,

	//Simply Arrows
	<simplyarrows:arrow_cake>,
	<simplyarrows:arrow_flame>,
	<simplyarrows:arrow_iron>,
	<simplyarrows:arrow_love>,
	<simplyarrows:arrow_tnt>,
	<simplyarrows:arrow_torch>,

	//Applied Energistics
	<appliedenergistics2:material:21>, //Inscriber Name Press
	<appliedenergistics2:material:45>, //Skystone Dust
	<appliedenergistics2:vibration_chamber>,

	//The beginning of bringing down the Minecraft community as we know it
	//by combining AE2 and RS recipes to use many of the same items. DOWN WITH THE SYSTEM
	<refinedstorage:core:1>,
	<refinedstorage:core>,
	<refinedstorage:solderer>,

	//Remove Galacticraft refineries
	<extraplanets:advanced_refinery>,
	<extraplanets:ultimate_refinery>,
	<galacticraftcore:refinery>,

	//Tomb Many Graves
	<tombmanygraves:death_list>,

	//Twilight Forest
	<twilightforest:ore_map_empty>,

	//Biblio Craft
	<bibliocraft:printingpress>, //This can be re-shown once the mod is updated/fixed.

	//Mekanism
	<mekanism:machineblock:4>, //Bye bye miner!

	// Still in DEV! Won't enable till it's finished.
	<cyclicmagic:robot_spawner>,

	// Industrial Logistics
	<indlog:tank:8>,
	<indlog:tank:9>,
	<indlog:tank:10>,
	<indlog:tank:11>,
	<indlog:tank:12>,
	<indlog:tank:13>,
	<indlog:tank:14>,
	<indlog:tank:15>,

	// Ceramics
	<ceramics:clay_boots_raw>,
	<ceramics:clay_chestplate_raw>,
	<ceramics:clay_helmet_raw>,
	<ceramics:clay_leggings_raw>
];

for item in removeAndHideItems {
	mods.jei.JEI.removeAndHide(item);
}
