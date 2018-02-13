//Thank you to Dawenzel for putting this script together!
import crafttweaker.item.IItemStack;

var parts as IItemStack[] = [
	<tcomplement:chisel_head>,
	<tconstruct:arrow_head>,
	<tconstruct:arrow_shaft>,
	<tconstruct:axe_head>,
	<tconstruct:binding>,
	<tconstruct:bow_limb>,
	<tconstruct:bow_string>,
	<tconstruct:broad_axe_head>,
	<tconstruct:cross_guard>,
	<tconstruct:excavator_head>,
	<tconstruct:fletching>,
	<tconstruct:hammer_head>,
	<tconstruct:hand_guard>,
	<tconstruct:kama_head>,
	<tconstruct:knife_blade>,
	<tconstruct:large_plate>,
	<tconstruct:large_sword_blade>,
	<tconstruct:pan_head>,
	<tconstruct:pick_head>,
	<tconstruct:scythe_head>,
	<tconstruct:sharpening_kit>,
	<tconstruct:shovel_head>,
	<tconstruct:sign_head>,
	<tconstruct:sword_blade>,
	<tconstruct:tool_rod>,
	<tconstruct:tough_binding>,
	<tconstruct:tough_tool_rod>,
	<tconstruct:wide_guard>,
	<yoyos:yoyo_axle>,
	<yoyos:yoyo_body>,
	<yoyos:yoyo_cord>
];

var materialsForStage as string[][string] = {
	STAGES.one : [
		"bone",
		"cactus",
		"flint",
		"stone",
		"wood"
	],

	STAGES.two : [
		"abyssalnite",
		"blueslime",
		"bronze",
		"constantan",
		"copper",
		"dreadium",
		"electrum",
		"feather",
		"fierymetal",
		"hemp",
		"ice",
		"iron",
		"knightmetal",
		"leaf",
		"prismarine",
		"reed",
		"refined_coralium",
		"silver",
		"slime",
		"slimeleaf_blue",
		"slimeleaf_orange",
		"slimeleaf_purple",
		"slimevine_blue",
		"slimevine_purple",
		"sponge",
		"string",
		"vine"
	],

	STAGES.three : [
		"blaze",
		"endstone",
		"firewood",
		"lead",
		"magmaslime",
		"netherrack",
		"obsidian",
		"paper",
		"pigiron",
		"steel",
		"treatedwood"
	],

	STAGES.four : [
		"ardite",
		"cobalt",
		"endrod",
		"integrationforegoing.pink_slime",
		"integrationforegoing.plastic",
		"knightslime",
		"manyullyn"
	],

	STAGES.five : [
		"ma.base_essence",
		"ma.inferium",
		"ma.intermedium",
		"ma.prosperity",
		"ma.prudentium",
		"ma.soulium",
		"ma.superium",
		"ma.supremium"
	]
};

for part in parts {
	for stage, materials in materialsForStage {
		for material in materials {
			mods.ItemStages.addItemStage(stage, part.withTag({Material: material}));
		}
	}
}
