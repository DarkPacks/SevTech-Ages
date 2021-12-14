/*
	SevTech: Ages Enchantments Staging Script

	This script handles the staging of Enchantments.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.enchantments.IEnchantment;
import crafttweaker.enchantments.IEnchantmentDefinition;

import mods.zenstages.Stage;
import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageTwo;

static stagedEnchants as IEnchantmentDefinition[][string] = {
	stageTwo.stage: [
		<enchantment:abyssalcraft:coralium>,
		<enchantment:abyssalcraft:dread>,
		<enchantment:abyssalcraft:iron_wall>,
		<enchantment:abyssalcraft:light_pierce>,
		<enchantment:abyssalcraft:multi_rend>,
		<enchantment:abyssalcraft:sapping>,
		<enchantment:astralsorcery:enchantment.as.nightvision>,
		<enchantment:astralsorcery:enchantment.as.smelting>,
		<enchantment:bibliocraft:bibliocraft.deathcompassench>,
		<enchantment:bibliocraft:bibliocraft.readingench>,
		<enchantment:cyclicmagic:enchantment.autosmelt>,
		<enchantment:cyclicmagic:enchantment.beheading>,
		<enchantment:cyclicmagic:enchantment.expboost>,
		<enchantment:cyclicmagic:enchantment.lifeleech>,
		<enchantment:cyclicmagic:enchantment.quickdraw>,
		<enchantment:cyclicmagic:enchantment.reach>,
		<enchantment:cyclicmagic:enchantment.waterwalking>,
		<enchantment:jaff:roasting>,
		<enchantment:minecraft:aqua_affinity>,
		<enchantment:minecraft:bane_of_arthropods>,
		<enchantment:minecraft:binding_curse>,
		<enchantment:minecraft:blast_protection>,
		<enchantment:minecraft:depth_strider>,
		<enchantment:minecraft:efficiency>,
		<enchantment:minecraft:feather_falling>,
		<enchantment:minecraft:fire_aspect>,
		<enchantment:minecraft:fire_protection>,
		<enchantment:minecraft:flame>,
		<enchantment:minecraft:fortune>,
		<enchantment:minecraft:frost_walker>,
		<enchantment:minecraft:infinity>,
		<enchantment:minecraft:knockback>,
		<enchantment:minecraft:looting>,
		<enchantment:minecraft:luck_of_the_sea>,
		<enchantment:minecraft:lure>,
		<enchantment:minecraft:mending>,
		<enchantment:minecraft:power>,
		<enchantment:minecraft:projectile_protection>,
		<enchantment:minecraft:protection>,
		<enchantment:minecraft:punch>,
		<enchantment:minecraft:respiration>,
		<enchantment:minecraft:sharpness>,
		<enchantment:minecraft:silk_touch>,
		<enchantment:minecraft:smite>,
		<enchantment:minecraft:sweeping>,
		<enchantment:minecraft:thorns>,
		<enchantment:minecraft:unbreaking>,
		<enchantment:minecraft:vanishing_curse>,
		<enchantment:oeintegration:oreexcavation>,
		<enchantment:spartanshields:ssenchspikes>,
		<enchantment:yoyos:collecting>
	]
};

function init() {
	for stageName, enchantmentDefinitions in stagedEnchants {
		var stage as Stage = ZenStager.getStage(stageName);

		stage.addEnchantments(enchantmentDefinitions);
	}
}
