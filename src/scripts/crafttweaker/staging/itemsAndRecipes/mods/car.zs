import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageDisabled;

static stagedItems as IIngredient[][string] = {
	stageFour.stage: [
		<car:arrow_cross_yellow:0>,
		<car:arrow_cross:0>,
		<car:arrow_front_left_long_yellow:0>,
		<car:arrow_front_left_long:0>,
		<car:arrow_front_left_right_long_yellow:0>,
		<car:arrow_front_left_right_long:0>,
		<car:arrow_front_left_right_yellow:0>,
		<car:arrow_front_left_right:0>,
		<car:arrow_front_left_yellow:0>,
		<car:arrow_front_left:0>,
		<car:arrow_front_right_long_yellow:0>,
		<car:arrow_front_right_long:0>,
		<car:arrow_front_right_yellow:0>,
		<car:arrow_front_right:0>,
		<car:arrow_left_dia_short_yellow:0>,
		<car:arrow_left_dia_short:0>,
		<car:arrow_left_dia_yellow:0>,
		<car:arrow_left_dia:0>,
		<car:arrow_left_right_long_yellow:0>,
		<car:arrow_left_right_long:0>,
		<car:arrow_left_right_yellow:0>,
		<car:arrow_left_right:0>,
		<car:arrow_left_short_yellow:0>,
		<car:arrow_left_short:0>,
		<car:arrow_left_yellow:0>,
		<car:arrow_left:0>,
		<car:arrow_long_yellow:0>,
		<car:arrow_long:0>,
		<car:arrow_no_parking_yellow:0>,
		<car:arrow_no_parking:0>,
		<car:arrow_p_yellow:0>,
		<car:arrow_p:0>,
		<car:arrow_right_dia_short_yellow:0>,
		<car:arrow_right_dia_short:0>,
		<car:arrow_right_dia_yellow:0>,
		<car:arrow_right_dia:0>,
		<car:arrow_right_short_yellow:0>,
		<car:arrow_right_short:0>,
		<car:arrow_right_yellow:0>,
		<car:arrow_right:0>,
		<car:arrow_yellow:0>,
		<car:arrow_zebras_yellow:0>,
		<car:arrow_zebras:0>,
		<car:arrow:0>,
		<car:axle:0>,
		<car:backmix_reactor:0>,
		<car:battery:0>,
		<car:blastfurnace:0>,
		<car:cable_insulator:0>,
		<car:cable:0>,
		<car:canister:0>,
		<car:canola_seeds:0>,
		<car:canola:0>,
		<car:car_body_part_wood:1>,
		<car:car_body_part_wood:2>,
		<car:car_body_part_wood:3>,
		<car:car_body_part_wood:4>,
		<car:car_body_part_wood:5>,
		<car:car_body_part_wood:0>,
		<car:car_seat:0>,
		<car:car_tank:0>,
		<car:car_workshop_outter:0>,
		<car:car_workshop:0>,
		<car:container:0>,
		<car:control_unit:0>,
		<car:crank:0>,
		<car:crash_barrier:0>,
		<car:dynamo:0>,
		<car:engine_3_cylinder:0>,
		<car:engine_6_cylinder:0>,
		<car:engine_piston:0>,
		<car:fluid_extractor:0>,
		<car:fluid_pipe:0>,
		<car:fuelstation:0>,
		<car:generator:0>,
		<car:hammer:0>,
		<car:line_corner_yellow:0>,
		<car:line_corner:0>,
		<car:line_double_end_yellow:0>,
		<car:line_double_end:0>,
		<car:line_double_middle_yellow:0>,
		<car:line_double_middle:0>,
		<car:line_double_yellow:0>,
		<car:line_double:0>,
		<car:line_end_yellow:0>,
		<car:line_end:0>,
		<car:line_long_yellow:0>,
		<car:line_long:0>,
		<car:line_middle_edge_yellow:0>,
		<car:line_middle_edge:0>,
		<car:line_middle_yellow:0>,
		<car:line_middle:0>,
		<car:line_side_end_yellow:0>,
		<car:line_side_end:0>,
		<car:line_side_long_left_front_yellow:0>,
		<car:line_side_long_left_front:0>,
		<car:line_side_long_left_yellow:0>,
		<car:line_side_long_left:0>,
		<car:line_side_long_yellow:0>,
		<car:line_side_long:0>,
		<car:line_side_middle_yellow:0>,
		<car:line_side_middle:0>,
		<car:line_side_start_yellow:0>,
		<car:line_side_start:0>,
		<car:number_plate:0>,
		<car:oilmill:0>,
		<car:painter_yellow:0>,
		<car:painter:0>,
		<car:rapecake:0>,
		<car:repair_kit:0>,
		<car:screw_driver:0>,
		<car:sign_post:0>,
		<car:sign:0>,
		<car:split_tank:0>,
		<car:tank:0>,
		<car:tar_slab:0>,
		<car:tar_slope_flat_lower:0>,
		<car:tar_slope_flat_upper:0>,
		<car:tar_slope:0>,
		<car:tar:0>,
		<car:wheel:0>,
		<car:windshield:0>,
		<car:wrench:0>
	]
};

static hiddenRemove as IIngredient[] = [
	<car:canola_seeds:0>,
	<car:canola:0>
];

function init() {
	var modId as string = stagedItems.entrySet[0].value[0].items[0].definition.owner;

	var modStage as string = scripts.crafttweaker.staging.itemsAndRecipes.modId.containsMod(modId);
	var doOverride as bool = modStage != "";

	for stageName, items in stagedItems {
		if (doOverride && stageName != modStage) {
			ZenStager.addModItemOverrides(modId, items);
		}

		ZenStager.getStage(stageName).addIngredients(items);
	}
	ZenStager.getStage(stageFour.stage).addIngredient(<car:key:0>, false);
	recipeUtil.hideItems(hiddenRemove as IIngredient[], true);
}
