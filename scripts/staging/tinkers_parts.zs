//Thank you to Dawenzel for putting this script together!
import crafttweaker.item.IItemStack;

var partsStages as IItemStack[][string] = {
	STAGES.two : [
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
		<tconstruct:large_plate>,
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
	],

	STAGES.three : [
		<tcomplement:chisel_head>,
		<tconstruct:knife_blade>,
		<tconstruct:large_sword_blade>,
		<yoyos:yoyo_axle>,
		<yoyos:yoyo_body>,
		<yoyos:yoyo_cord>
	],

	//Unique stage intended to disable a tool
	STAGES.disabled : [
		<tconstruct:kama_head>
	]
};

for partStage, parts in partsStages {
	for part in parts {
		for materialStage, materials in scripts.staging.tinkers.materialsForStage {
			var stage = scripts.utils.getHighestStage(partStage, materialStage);

			for material in materials {
				mods.ItemStages.addItemStage(stage, part.withTag({Material: material}));
			}
		}
	}
}

mods.ItemStages.addItemStage(STAGES.two, <tconstruct:arrow_shaft>.withTag({Material: "nagascale"}));
