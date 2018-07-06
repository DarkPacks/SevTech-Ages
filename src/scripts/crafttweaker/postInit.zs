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
initSpecificStaging();
initItemsAndRecipesStaging();
initEvents();
initItemModifiers();
initRecipes();
initIntegration();

// ==================================
// Build the Stages
ZenStager.buildAll();

// ==================================
// Init Functions
function initSpecificStaging() {
	// Staging Specific Scripts
	scripts.crafttweaker.staging.containers.init();
	scripts.crafttweaker.staging.dimensions.init();
	scripts.crafttweaker.staging.journeymap.init();
	scripts.crafttweaker.staging.liquidAndGas.init();
	scripts.crafttweaker.staging.mobs.init();
	scripts.crafttweaker.staging.tinkers.init();
	scripts.crafttweaker.staging.waila.init();
}

function initItemsAndRecipesStaging() {
	// ==================================
	// Staging Items and Recipes
	scripts.crafttweaker.staging.itemsAndRecipes.modId.init();
	scripts.crafttweaker.staging.itemsAndRecipes.oredict.init();
	scripts.crafttweaker.staging.itemsAndRecipes.stages.init();

	// ==================================
	// Staging Mod's Items and Recipes
	scripts.crafttweaker.staging.itemsAndRecipes.mods.abyssalcraft.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.actuallyadditions.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.advancedmortars.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.animalium.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.antiqueatlas.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.appliedenergistics2.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.astikoor.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.astralsorcery.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.beneath.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.betterbuilderswands.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.betterwithaddons.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.betterwithmods.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.bibliocraft.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.bloodmagic.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.bonsaitrees.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.buildcraft.init();
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
	scripts.crafttweaker.staging.itemsAndRecipes.mods.primalchests.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.primalTech.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.progressiontweaks.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.prospectors.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.quantumstorage.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.quark.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.rangedpumps.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.rebornstorage.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.refinedstorage.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.refinedstorageaddons.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.rustic.init();
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
	scripts.crafttweaker.staging.itemsAndRecipes.mods.tombmanygraves.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.totemic.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.translocators.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.traverse.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.trumpetskeleton.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.twilightforest.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.valkyrielib.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.waterstrainer.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.weirdinggadget.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.witherskelefix.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.wopper.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.xnet.init();
	scripts.crafttweaker.staging.itemsAndRecipes.mods.yoyos.init();
}

function initRecipes() {
	scripts.crafttweaker.recipes.mods.extraplanets.init();
	scripts.crafttweaker.recipes.mods.minecraft.init();
}

function initIntegration() {
	scripts.crafttweaker.modIntegrations.abyssalcraft.init();
	scripts.crafttweaker.modIntegrations.actuallyAdditions.init();
	scripts.crafttweaker.modIntegrations.appliedenergistics2.init();
	scripts.crafttweaker.modIntegrations.astralsorcery.init();
	scripts.crafttweaker.modIntegrations.bloodmagic.init.init();
	scripts.crafttweaker.modIntegrations.chisel.init();
	scripts.crafttweaker.modIntegrations.galacticcraftAndExtraplanets.init();
	scripts.crafttweaker.modIntegrations.horsepower.init();
	scripts.crafttweaker.modIntegrations.immersive.engineering.init.init();
	scripts.crafttweaker.modIntegrations.immersive.petroleum.init();
	scripts.crafttweaker.modIntegrations.tinkers.init.init();
	scripts.crafttweaker.modIntegrations.loottweaker.init();
	scripts.crafttweaker.modIntegrations.mekanism.init();
	scripts.crafttweaker.modIntegrations.pneumaticcraft.init();
	scripts.crafttweaker.modIntegrations.primalCore.init();
	scripts.crafttweaker.modIntegrations.primalTech.init();
	scripts.crafttweaker.modIntegrations.refinedStorage.init();
	scripts.crafttweaker.modIntegrations.rustic.init();
}

function initEvents() {
	scripts.crafttweaker.events.blockBreak.init();
}

function initItemModifiers() {
	scripts.crafttweaker.item_modifiers.burnTime.init();
	scripts.crafttweaker.item_modifiers.descriptions.init();
	scripts.crafttweaker.item_modifiers.durability.init();
	scripts.crafttweaker.item_modifiers.hardness.init();
	scripts.crafttweaker.item_modifiers.harvestLevel.init();
	scripts.crafttweaker.item_modifiers.rename.init();
	scripts.crafttweaker.item_modifiers.tooltips.init();
}
