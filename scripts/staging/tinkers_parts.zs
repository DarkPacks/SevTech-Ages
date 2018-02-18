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

for part in parts {
	for stage, materials in scripts.staging.tinkers.materialsForStage {
		for material in materials {
			mods.ItemStages.addItemStage(stage, part.withTag({Material: material}));
		}
	}
}
