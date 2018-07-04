//==================================
// Storage Blocks
recipes.removeByRecipeName("minecraft:emerald");
recipes.removeByRecipeName("chisel:emerald");
recipes.removeByRecipeName("minecraft:lapis_lazuli");
recipes.removeByRecipeName("minecraft:redstone");
recipes.removeByRecipeName("chisel:redstone");

//==================================
//Primal Core
recipes.addShapeless(<primal:leather_strip> * 9, [leather, <ore:toolWorkBlade>]);

recipes.addShapeless(<primal:plant_cloth>, [cordage, cordage, cordage, cordage, cordage, cordage, cordage, cordage, cordage]);

//==================================
//Primal Tech
recipes.addShapeless(
	"primal_tech_fire_sticks",
	<primal_tech:fire_sticks>,
	[stick, stick],
	function(out, ins, cInfo) {
		return out.withTag({
			"rubbingCount": 0,
			"animate": false
		});
	},
	null
);
