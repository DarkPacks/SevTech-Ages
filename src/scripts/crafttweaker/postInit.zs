#priority -100

/*
	SevTech: Ages Run (postInit) Script

	This script is the main runner for the pack. This file should ONLY be
	modified if you know what you are doing. Changing anything in here could cause
	potential script failures and game breaking issues.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import mods.zenstages.ZenStager;

// ==================================
// Initialize Scripts
initResources();
initSpecificStaging();
initItemsAndRecipesStaging();
initEvents();
initItemModifiers();
initRecipes();
initIntegrations();

// ==================================
// Build the Stages
ZenStager.buildAll();

initOverrides();

// ==================================
// Init Functions
function initResources() {
	var resources as scripts.crafttweaker.classes.resources.resources.Resources = scripts.crafttweaker.classes.resources.resources.Resources();

	for metalName, metal in metals {
		resources.processMetal(metalName, metal);
	}
	for metal, cluster in clusters {
		resources.processCluster(metal, cluster);
	}

	// Init the custom resources script.
	scripts.crafttweaker.resources.custom.init();
}

function initSpecificStaging() {
	// Staging Specific Scripts
	scripts.crafttweaker.staging.containers.init();
	scripts.crafttweaker.staging.dimensions.init();
	scripts.crafttweaker.staging.enchantments.init();
	scripts.crafttweaker.staging.journeymap.init();
	scripts.crafttweaker.staging.liquidAndGas.init();
	scripts.crafttweaker.staging.mobGear.init();
	scripts.crafttweaker.staging.mobs.init();
	scripts.crafttweaker.staging.multiblock.immersiveEngineering.init();
	scripts.crafttweaker.staging.ores.init();
	scripts.crafttweaker.staging.tinkers.init();
	scripts.crafttweaker.staging.waila.init();
}

function initItemsAndRecipesStaging() {
	// ==================================
	// Staging Items and Recipes
	scripts.crafttweaker.staging.itemsAndRecipes.misc.init();
	scripts.crafttweaker.staging.itemsAndRecipes.modId.init();
	scripts.crafttweaker.staging.itemsAndRecipes.oredict.init();
	scripts.crafttweaker.staging.itemsAndRecipes.stages.init();

	// ==================================
	// Staging Mod's Items and Recipes
	scripts.crafttweaker.staging.itemsAndRecipes.mods.abyssalcraft.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.actuallyadditions.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.animalium.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.antiqueatlas.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.appliedenergistics2.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.astikorCarts.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.astralsorcery.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.beneath.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.betterbuilderswands.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.betterwithaddons.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.betterwithmods.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.bibliocraft.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.bloodmagic.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.bonsaitrees.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.buildcraft.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.buildinggadgets.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.car.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.ceramics.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.chargers.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.chisel.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.chiselsandbits.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.conarm.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.contenttweaker.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.cookingforblockheads.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.cyclicmagic.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.darkutils.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.deathCompass.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.dungpipe.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.emberroot.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.enderstorage.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.enderutilities.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.environmentaltech.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.extendedcrafting.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.extraplanets.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.farmingforblockheads.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.fatCat.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.ferdinandsflowers.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.galacticraft.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.geolosys.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.guideapi.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.horsepower.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.huntingdim.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.immcraft.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.immersiveengineering.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.immersivepetroleum.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.immersivetech.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.improvedbackpacks.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.indlog.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.industrialforegoing.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.infoaccessories.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.ironbackpacks.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.ironchest.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.ironjetpacks.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.jaff.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.jarm.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.mekanism.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.minecraft.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.mobGrindingUtils.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.modularmachinery.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.mundaneredstone.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.mysticalagradditions.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.mysticalagriculture.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.natura.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.naturescompass.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.nex.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.oeintegration.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.overloaded.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.pickletweaks.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.pneumaticcraft.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.poweradapters.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.primal.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.primalTech.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.primalchests.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.progressiontweaks.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.prospectors.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.quantumstorage.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.quark.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.rangedpumps.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.rebornstorage.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.refinedstorage.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.refinedstorageaddons.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.rftools.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.rustic.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.simpletomb.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.simplyarrows.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.spartanshields.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.stevescarts.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.storagedrawers.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.supersoundmuffler.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.tallgates.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.tcomplement.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.tconstruct.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.teslacorelib.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.thebetweenlands.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.totemic.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.translocators.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.traverse.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.trumpetskeleton.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.twilightforest.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.valkyrielib.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.vc.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.waterstrainer.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.weirdinggadget.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.witherskelefix.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.wopper.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.xnet.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.yoyos.init();
}

function initRecipes() {
	// ==================================
	// Core Recipe Script
	scripts.crafttweaker.recipes.remove.init();
	scripts.crafttweaker.recipes.resources.init();

	// ==================================
	// Mod Recipes
	scripts.crafttweaker.recipes.mods.abyssalcraft.init();
	scripts.crafttweaker.recipes.mods.actuallyadditions.init();
	scripts.crafttweaker.recipes.mods.animalium.init();
	scripts.crafttweaker.recipes.mods.antiqueatlas.init();
	scripts.crafttweaker.recipes.mods.appliedenergistics.init();
	scripts.crafttweaker.recipes.mods.astikorCarts.init();
	scripts.crafttweaker.recipes.mods.astralsorcery.init();
	scripts.crafttweaker.recipes.mods.betterbuilderswands.init();
	scripts.crafttweaker.recipes.mods.betterwithaddons.init();
	scripts.crafttweaker.recipes.mods.betterwithmods.init();
	scripts.crafttweaker.recipes.mods.bibliocraft.init();
	scripts.crafttweaker.recipes.mods.bloodmagic.init();
	scripts.crafttweaker.recipes.mods.buildcraft.init();
	scripts.crafttweaker.recipes.mods.buildinggadgets.init();
	scripts.crafttweaker.recipes.mods.car.init();
	scripts.crafttweaker.recipes.mods.ceramics.init();
	scripts.crafttweaker.recipes.mods.chisel.init();
	scripts.crafttweaker.recipes.mods.chiselsandbits.init();
	scripts.crafttweaker.recipes.mods.contenttweaker.init();
	scripts.crafttweaker.recipes.mods.cookingforblockheads.init();
	scripts.crafttweaker.recipes.mods.cyclicmagic.init();
	scripts.crafttweaker.recipes.mods.darkutils.init();
	scripts.crafttweaker.recipes.mods.deathCompass.init();
	scripts.crafttweaker.recipes.mods.dungpipe.init();
	scripts.crafttweaker.recipes.mods.enderutilities.init();
	scripts.crafttweaker.recipes.mods.extendedcrafting.init();
	scripts.crafttweaker.recipes.mods.extraplanets.init();
	scripts.crafttweaker.recipes.mods.farmingforblockheads.init();
	scripts.crafttweaker.recipes.mods.ferdinandsflowers.init();
	scripts.crafttweaker.recipes.mods.galacticraft.init();
	scripts.crafttweaker.recipes.mods.geolosys.init();
	scripts.crafttweaker.recipes.mods.guideapi.init();
	scripts.crafttweaker.recipes.mods.horsepower.init();
	scripts.crafttweaker.recipes.mods.huntingdim.init();
	scripts.crafttweaker.recipes.mods.immcraft.init();
	scripts.crafttweaker.recipes.mods.immersiveengineering.init();
	scripts.crafttweaker.recipes.mods.improvedbackpacks.init();
	scripts.crafttweaker.recipes.mods.indlog.init();
	scripts.crafttweaker.recipes.mods.industrialforegoing.init();
	scripts.crafttweaker.recipes.mods.infoaccessories.init();
	scripts.crafttweaker.recipes.mods.integrateddynamics.init();
	scripts.crafttweaker.recipes.mods.ironbackpacks.init();
	scripts.crafttweaker.recipes.mods.ironchest.init();
	scripts.crafttweaker.recipes.mods.ironjetpacks.init();
	scripts.crafttweaker.recipes.mods.mekanism.init();
	scripts.crafttweaker.recipes.mods.minecraft.init();
	scripts.crafttweaker.recipes.mods.mobgrindingutils.init();
	scripts.crafttweaker.recipes.mods.modularmachinery.init();
	scripts.crafttweaker.recipes.mods.modularrouters.init();
	scripts.crafttweaker.recipes.mods.mysticalagriculture.init();
	scripts.crafttweaker.recipes.mods.natura.init();
	scripts.crafttweaker.recipes.mods.naturescompass.init();
	scripts.crafttweaker.recipes.mods.oeintegration.init();
	scripts.crafttweaker.recipes.mods.overloaded.init();
	scripts.crafttweaker.recipes.mods.pickletweaks.init();
	scripts.crafttweaker.recipes.mods.pneumaticcraft.init();
	scripts.crafttweaker.recipes.mods.poweradapters.init();
	scripts.crafttweaker.recipes.mods.primal.core.init();
	scripts.crafttweaker.recipes.mods.primal.stones.init();
	scripts.crafttweaker.recipes.mods.primalchests.init();
	scripts.crafttweaker.recipes.mods.primaltech.init();
	scripts.crafttweaker.recipes.mods.progressiontweaks.init();
	scripts.crafttweaker.recipes.mods.prospectors.init();
	scripts.crafttweaker.recipes.mods.quantumstorage.init();
	scripts.crafttweaker.recipes.mods.quark.init();
	scripts.crafttweaker.recipes.mods.rebornstorage.init();
	scripts.crafttweaker.recipes.mods.refinedstorage.init();
	scripts.crafttweaker.recipes.mods.refinedstorageaddons.init();
	scripts.crafttweaker.recipes.mods.rftools.init();
	scripts.crafttweaker.recipes.mods.rustic.init();
	scripts.crafttweaker.recipes.mods.spartanshields.init();
	scripts.crafttweaker.recipes.mods.stevescarts.init();
	scripts.crafttweaker.recipes.mods.storagedrawers.init();
	scripts.crafttweaker.recipes.mods.storagenetwork.init();
	scripts.crafttweaker.recipes.mods.supersoundmuffler.init();
	scripts.crafttweaker.recipes.mods.tcomplement.init();
	scripts.crafttweaker.recipes.mods.tconstruct.init();
	scripts.crafttweaker.recipes.mods.totemic.init();
	scripts.crafttweaker.recipes.mods.traverse.init();
	scripts.crafttweaker.recipes.mods.twilightforest.init();
	scripts.crafttweaker.recipes.mods.uppers.init();
	scripts.crafttweaker.recipes.mods.valkyrielib.init();
	scripts.crafttweaker.recipes.mods.vc.init();
	scripts.crafttweaker.recipes.mods.waterstrainer.init();
	scripts.crafttweaker.recipes.mods.weirdinggadget.init();
	scripts.crafttweaker.recipes.mods.wopper.init();
	scripts.crafttweaker.recipes.mods.xnet.init();
	scripts.crafttweaker.recipes.mods.yoyos.init();
}

function initIntegrations() {
	// ==================================
	// Other
	scripts.crafttweaker.integrations.dye.init();
	scripts.crafttweaker.integrations.wood.init();

	// ==================================
	// Mods Integrations
	scripts.crafttweaker.integrations.mods.abyssalcraft.init();
	scripts.crafttweaker.integrations.mods.actuallyAdditions.init();
	scripts.crafttweaker.integrations.mods.appliedenergistics2.init();
	scripts.crafttweaker.integrations.mods.astralsorcery.init();
	scripts.crafttweaker.integrations.mods.betterwithmods.init();
	scripts.crafttweaker.integrations.mods.bloodmagic.init.init();
	scripts.crafttweaker.integrations.mods.bonsai.init();
	scripts.crafttweaker.integrations.mods.chisel.init();
	scripts.crafttweaker.integrations.mods.cyclicmagic.init();
	scripts.crafttweaker.integrations.mods.extendedCrafting.init.init();
	scripts.crafttweaker.integrations.mods.galacticcraftAndExtraplanets.init();
	scripts.crafttweaker.integrations.mods.horsepower.init();
	scripts.crafttweaker.integrations.mods.immersive.engineering.init.init();
	scripts.crafttweaker.integrations.mods.immersive.petroleum.init();
	// scripts.crafttweaker.integrations.mods.loottweaker.init();
	scripts.crafttweaker.integrations.mods.mekanism.init();
	scripts.crafttweaker.integrations.mods.modularMachinery.init.init();
	scripts.crafttweaker.integrations.mods.pneumaticcraft.init();
	scripts.crafttweaker.integrations.mods.primalCore.init();
	scripts.crafttweaker.integrations.mods.primalTech.init();
	scripts.crafttweaker.integrations.mods.rustic.init();
	scripts.crafttweaker.integrations.mods.tinkers.init.init();
	scripts.crafttweaker.integrations.mods.zenloot.init();
}

function initEvents() {
	scripts.crafttweaker.events.blockBreak.init();
	scripts.crafttweaker.events.playerLoggedIn.init();
}

function initItemModifiers() {
	scripts.crafttweaker.itemModifiers.burnTime.init();
	scripts.crafttweaker.itemModifiers.descriptions.init();
	scripts.crafttweaker.itemModifiers.durability.init();
	scripts.crafttweaker.itemModifiers.hardness.init();
	scripts.crafttweaker.itemModifiers.harvestLevel.init();
	scripts.crafttweaker.itemModifiers.rename.init();
	scripts.crafttweaker.itemModifiers.tooltips.init();
}

function initOverrides() {
	scripts.crafttweaker.staging.itemsAndRecipes.mods.mysticalagradditions.initOverride();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.mysticalagriculture.initOverride();
}
