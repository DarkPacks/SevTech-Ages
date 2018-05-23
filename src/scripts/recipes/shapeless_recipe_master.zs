//==================================
//Vanilla
recipes.remove(<minecraft:clay>);

// Storage Blocks
recipes.removeByRecipeName("minecraft:emerald");
recipes.removeByRecipeName("chisel:emerald");
recipes.removeByRecipeName("minecraft:lapis_lazuli");
recipes.removeByRecipeName("minecraft:redstone");
recipes.removeByRecipeName("chisel:redstone");

//Fleece to String
recipes.addShapeless(<minecraft:string> * 4, [<betterwithaddons:wool:*>, <ore:toolShears>.transformNew(scripts.transformers.shearsTransformFunction)]);
recipes.addShapeless(<minecraft:string> * 4, [<betterwithaddons:wool:*>, <ore:toolWorkBlade>]);

//Pickle Tweaks Mesh
recipes.addShapeless(<minecraft:flint>, [<pickletweaks:reinforced_mesh:*>, <betterwithmods:gravel_pile>]);

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
