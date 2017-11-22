//Thank you to Dawenzel for putting this script together!
import crafttweaker.item.IItemStack;

var parts = [
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
	<tconstruct:wide_guard>
] as IItemStack[];

var materialsForStage = {
	"one" : [
		"bone",
		"cactus",
		"flint",
		"stone",
		"wood"
	],

	"two" : [
		"abyssalnite",
		"blueslime",
		"bronze",
		"constantan",
		"copper",
		"dreadium",
		"electrum",
		"iron",
		"knightslime",
		"prismarine",
		"refined_coralium",
		"silver",
		"slime",
		"sponge"
	],

	"three" : [
		"endstone",
		"firewood",
		"lead",
		"magmaslime",
		"netherrack",
		"obsidian",
		"paper",
		"steel",
		"treatedwood"
	],

	"four" : [
		"ardite",
		"cobalt",
		"integrationforegoing.pink_slime",
		"integrationforegoing.plastic",
		"manyullyn",
		"pigiron"
	],

	"five" : [
		"ma.base_essence",
		"ma.inferium",
		"ma.intermedium",
		"ma.prosperity",
		"ma.prudentium",
		"ma.soulium",
		"ma.superium",
		"ma.supremium"
	]
} as string[][string];

for part in parts {
	for stage in materialsForStage {
		for material in materialsForStage[stage] {
			mods.ItemStages.addItemStage(stage, part.withTag({Material: material}));
		}
	}
}
