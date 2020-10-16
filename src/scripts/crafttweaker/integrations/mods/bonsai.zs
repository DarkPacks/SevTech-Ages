/*
	SevTech: Ages Bonsai Trees Script

	This script handles custom integration control to a mod.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import mods.bonsaitrees.TreeDrops;

function init() {
	TreeDrops.addTreeDrop("twilightforest:canopy", <twilightforest:liveroot>, 0.1);
	TreeDrops.addTreeDrop("twilightforest:darkcanopy", <twilightforest:liveroot>, 0.1);
	TreeDrops.addTreeDrop("twilightforest:mangrove", <twilightforest:liveroot>, 0.1);
	TreeDrops.addTreeDrop("twilightforest:minerstree", <twilightforest:liveroot>, 0.1);
	TreeDrops.addTreeDrop("twilightforest:oak", <twilightforest:liveroot>, 0.1);
	TreeDrops.addTreeDrop("twilightforest:rainbow_oak", <twilightforest:liveroot>, 0.1);
	TreeDrops.addTreeDrop("twilightforest:sortingtree", <twilightforest:liveroot>, 0.1);
	TreeDrops.addTreeDrop("twilightforest:treeoftime", <twilightforest:liveroot>, 0.1);
	TreeDrops.addTreeDrop("twilightforest:treeoftransformation", <twilightforest:liveroot>, 0.1);
}
