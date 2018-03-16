import crafttweaker.item.IItemStack;

//Must be item not oreDict
var removeAndHideItems as IItemStack[] = [
	//TODO: Are these intended to be removed, or just because they wouldnt stage?
	<actuallyadditions:block_inputter>,
	<actuallyadditions:block_inputter_advanced>,

	<abyssalcraft:beefp>,
	<abyssalcraft:chickenp>,
	<abyssalcraft:cobbleu>,
	<abyssalcraft:eggp>,
	<abyssalcraft:fishp>,
	<abyssalcraft:ironp>,
	<abyssalcraft:mre>,
	<abyssalcraft:porkp>,
	<actuallyadditions:block_misc:5>,
	<actuallyadditions:item_misc:4>,
	<actuallyadditions:item_misc:10>,
	<actuallyadditions:item_misc:11>,
	<actuallyadditions:item_misc:17>,
	<actuallyadditions:item_wings_of_the_bats>,
	<advancedmortars:mortar:2>,
	<advancedmortars:mortar:3>,
	<betterwithaddons:bolt:3>,
	<betterwithaddons:bolt:4>,
	<betterwithaddons:bolt:5>,
	<betterwithmods:material:6>,
	<betterwithmods:material:7>,
	<betterwithmods:material:8>,
	<betterwithmods:material:31>,
	<betterwithmods:material:32>,
	<betterwithmods:material:33>,
	<betterwithmods:stump:*>,
	<betterwithmods:stump_remover>,
	<car:canola>,
	<car:canola_seeds>,
	<cyclicmagic:block_workbench>,
	<cyclicmagic:charm_air>,
	<cyclicmagic:tool_prospector>,
	<cyclicmagic:tool_randomize>,
	<immcraft:bookstand>,
	<immcraft:chisel>,
	<immcraft:furnace>,
	<immcraft:manual>,
	<immcraft:saw>,
	<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:diamond", spec: "UPGRADE"}}), //TODO: Add back when IronBackpacks adds upgrade functionality
	<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:gold", spec: "UPGRADE"}}), //TODO: Add back when IronBackpacks adds upgrade functionality
	<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:iron", spec: "UPGRADE"}}), //TODO: Add back when IronBackpacks adds upgrade functionality
	<ironbackpacks:upgrade>.withTag({upgrade: "ironbackpacks:damage_bar"}), //TODO: Add back when IronBackpacks adds upgrade functionality
	<ironbackpacks:upgrade>.withTag({upgrade: "ironbackpacks:everlasting"}), //TODO: Add back when IronBackpacks adds upgrade functionality
	<ironbackpacks:upgrade>.withTag({upgrade: "ironbackpacks:extra_upgrade"}), //TODO: Add back when IronBackpacks adds upgrade functionality
	<ironbackpacks:upgrade>.withTag({upgrade: "ironbackpacks:lock"}), //TODO: Add back when IronBackpacks adds upgrade functionality
	<ironbackpacks:upgrade>, //TODO: Add back when IronBackpacks adds upgrade functionality
	<microblockcbe:saw_diamond>,
	<microblockcbe:saw_iron>,
	<microblockcbe:saw_stone>,
	<microblockcbe:stone_rod>,
	<minecraft:wooden_axe>,
	<minecraft:wooden_hoe>,
	<minecraft:wooden_pickaxe>,
	<minecraft:wooden_shovel>,
	<minecraft:wooden_sword>,
	<modularmachinery:blockinputbus:0>,
	<modularmachinery:blockoutputbus:0>,
	<pickletweaks:grass_fiber>,
	<pickletweaks:reinforced_mesh>,
	<primal:ironglass>,
	<primal:satetsu:1>,
	<primal:satetsu:2>,
	<primal:satetsu:3>,
	<primal:satetsu:4>,
	<primal:satetsu>,
	<primal:soul_stone>,
	<quantumstorage:upgrade:3>,
	<quark:arrow_torch>,
	<quark:obsidian_pressure_plate>,
	<rustic:fertile_soil>,
	<stevescarts:modulecomponents:9>,
	<storagedrawers:basicdrawers:*>,
	<tconstruct:toolforge>.withTag({textureBlock: {id: "extraplanets:neptune", Count: 1 as byte, Damage: 7 as short}}),
	<tconstruct:toolforge>.withTag({textureBlock: {id: "primal:metalblock", Count: 1 as byte, Damage: 12 as short}}),
	<totemic:medicine_bag>,

	//Nuggets
	//TODO: Unify/handle these with a better removal
	<betterwithmods:material:46>,
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
	<natura:nether_doors:1>,
	<natura:nether_doors>,
	<natura:nether_pressure_plate>,
	<natura:overworld_doors:1>,
	<natura:overworld_doors:2>,
	<natura:overworld_doors:3>,
	<natura:overworld_doors:4>,
	<natura:redwood_button>,
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

	//Pneumaticraft
	<pneumaticcraft:refinery>,
	<pneumaticcraft:thermopneumatic_processing_plant>,

	//Buildcraft
	<buildcraftcore:spring:1>,
	<buildcraftcore:spring>,
	<buildcraftfactory:distiller>,

	//Cooking for Blockheads
	<cookingforblockheads:cow_jar>,
	<cookingforblockheads:milk_jar>,

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
	<galacticraftcore:refinery>
];

for item in removeAndHideItems {
	mods.jei.JEI.removeAndHide(item);
}
