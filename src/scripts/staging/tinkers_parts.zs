//Thank you to Dawenzel for putting this script together!
import crafttweaker.item.IItemStack;

var partsStages as IItemStack[][string] = {
	STAGES.two : [
		<conarm:armor_plate>,
		<conarm:armor_trim>,
		<conarm:boots_core>,
		<conarm:chest_core>,
		<conarm:helmet_core>,
		<conarm:leggings_core>,
		<conarm:polishing_kit>,
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
		//Stage pattern/cast
		mods.ItemStages.addItemStage(partStage, <tconstruct:pattern>.withTag({PartType: part.definition.id}));
		mods.ItemStages.addItemStage(partStage, <tconstruct:cast>.withTag({PartType: part.definition.id}));
		mods.ItemStages.addItemStage(partStage, <tconstruct:clay_cast>.withTag({PartType: part.definition.id}));

		//Stage part materials
		for subItem in part.definition.subItems {
			if (!isNull(subItem.tag) & !isNull(subItem.tag.Material)) {
				var subItemMaterial as string = subItem.tag.Material.asString();
				var materialStage as string = scripts.staging.tinkers.getMaterialStage(subItemMaterial);
				var stage = scripts.utils.getHighestStage(partStage, materialStage);

				mods.ItemStages.addItemStage(stage, subItem);
			}
		}
	}
}

mods.ItemStages.addItemStage(STAGES.two, <tconstruct:arrow_shaft>.withTag({Material: "nagascale"}));
