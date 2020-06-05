import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageCreativeUnused;
import scripts.crafttweaker.stages.stageDisabled;

static stagedItems as IIngredient[][string] = {
	stageTwo.stage: [
		<stevescarts:cartmodule:0> //Steves Carts Stage 3 Trigger Item
	],

	stageThree.stage: [
		<stevescarts:blockactivator:0>,
		<stevescarts:blockadvdetector:0>,
		<stevescarts:blockcargomanager:0>,
		<stevescarts:blockcartassembler:0>,
		<stevescarts:blockdetector:1>,
		<stevescarts:blockdetector:2>,
		<stevescarts:blockdetector:3>,
		<stevescarts:blockdetector:4>,
		<stevescarts:blockdetector:0>,
		<stevescarts:blockdistributor:0>,
		<stevescarts:blockjunction:0>,
		<stevescarts:blockliquidmanager:0>,
		<stevescarts:cartmodule:2>,
		<stevescarts:cartmodule:3>,
		<stevescarts:cartmodule:4>,
		<stevescarts:cartmodule:5>,
		<stevescarts:cartmodule:6>,
		<stevescarts:cartmodule:7>,
		<stevescarts:cartmodule:8>,
		<stevescarts:cartmodule:9>,
		<stevescarts:cartmodule:10>,
		<stevescarts:cartmodule:11>,
		<stevescarts:cartmodule:12>,
		<stevescarts:cartmodule:13>,
		<stevescarts:cartmodule:14>,
		<stevescarts:cartmodule:15>,
		<stevescarts:cartmodule:16>,
		<stevescarts:cartmodule:18>,
		<stevescarts:cartmodule:19>,
		<stevescarts:cartmodule:20>,
		<stevescarts:cartmodule:21>,
		<stevescarts:cartmodule:22>,
		<stevescarts:cartmodule:23>,
		<stevescarts:cartmodule:24>,
		<stevescarts:cartmodule:25>,
		<stevescarts:cartmodule:26>,
		<stevescarts:cartmodule:27>,
		<stevescarts:cartmodule:28>,
		<stevescarts:cartmodule:29>,
		<stevescarts:cartmodule:30>,
		<stevescarts:cartmodule:31>,
		<stevescarts:cartmodule:32>,
		<stevescarts:cartmodule:33>,
		<stevescarts:cartmodule:34>,
		<stevescarts:cartmodule:36>,
		<stevescarts:cartmodule:37>,
		<stevescarts:cartmodule:38>,
		<stevescarts:cartmodule:39>,
		<stevescarts:cartmodule:40>,
		<stevescarts:cartmodule:41>,
		<stevescarts:cartmodule:42>,
		<stevescarts:cartmodule:43>,
		<stevescarts:cartmodule:44>,
		<stevescarts:cartmodule:49>,
		<stevescarts:cartmodule:51>,
		<stevescarts:cartmodule:53>,
		<stevescarts:cartmodule:57>,
		<stevescarts:cartmodule:58>,
		<stevescarts:cartmodule:59>,
		<stevescarts:cartmodule:62>,
		<stevescarts:cartmodule:63>,
		<stevescarts:cartmodule:64>,
		<stevescarts:cartmodule:65>,
		<stevescarts:cartmodule:66>,
		<stevescarts:cartmodule:67>,
		<stevescarts:cartmodule:68>,
		<stevescarts:cartmodule:69>,
		<stevescarts:cartmodule:70>,
		<stevescarts:cartmodule:71>,
		<stevescarts:cartmodule:73>,
		<stevescarts:cartmodule:75>,
		<stevescarts:cartmodule:77>,
		<stevescarts:cartmodule:78>,
		<stevescarts:cartmodule:79>,
		<stevescarts:cartmodule:80>,
		<stevescarts:cartmodule:81>,
		<stevescarts:cartmodule:82>,
		<stevescarts:cartmodule:83>,
		<stevescarts:cartmodule:84>,
		<stevescarts:cartmodule:85>,
		<stevescarts:cartmodule:86>,
		<stevescarts:cartmodule:89>,
		<stevescarts:cartmodule:91>,
		<stevescarts:cartmodule:93>,
		<stevescarts:cartmodule:94>,
		<stevescarts:cartmodule:95>,
		<stevescarts:cartmodule:99>,
		<stevescarts:cartmodule:101>,
		<stevescarts:modulecomponents:0>,
		<stevescarts:modulecomponents:1>,
		<stevescarts:modulecomponents:2>,
		<stevescarts:modulecomponents:3>,
		<stevescarts:modulecomponents:4>,
		<stevescarts:modulecomponents:5>,
		<stevescarts:modulecomponents:6>,
		<stevescarts:modulecomponents:10>,
		<stevescarts:modulecomponents:11>,
		<stevescarts:modulecomponents:12>,
		<stevescarts:modulecomponents:13>,
		<stevescarts:modulecomponents:14>,
		<stevescarts:modulecomponents:15>,
		<stevescarts:modulecomponents:16>,
		<stevescarts:modulecomponents:17>,
		<stevescarts:modulecomponents:18>,
		<stevescarts:modulecomponents:19>,
		<stevescarts:modulecomponents:20>,
		<stevescarts:modulecomponents:21>,
		<stevescarts:modulecomponents:23>,
		<stevescarts:modulecomponents:24>,
		<stevescarts:modulecomponents:25>,
		<stevescarts:modulecomponents:26>,
		<stevescarts:modulecomponents:27>,
		<stevescarts:modulecomponents:28>,
		<stevescarts:modulecomponents:29>,
		<stevescarts:modulecomponents:30>,
		<stevescarts:modulecomponents:31>,
		<stevescarts:modulecomponents:32>,
		<stevescarts:modulecomponents:33>,
		<stevescarts:modulecomponents:34>,
		<stevescarts:modulecomponents:35>,
		<stevescarts:modulecomponents:36>,
		<stevescarts:modulecomponents:37>,
		<stevescarts:modulecomponents:38>,
		<stevescarts:modulecomponents:39>,
		<stevescarts:modulecomponents:40>,
		<stevescarts:modulecomponents:41>,
		<stevescarts:modulecomponents:42>,
		<stevescarts:modulecomponents:43>,
		<stevescarts:modulecomponents:45>,
		<stevescarts:modulecomponents:46>,
		<stevescarts:modulecomponents:48>,
		<stevescarts:modulecomponents:59>,
		<stevescarts:modulecomponents:60>,
		<stevescarts:modulecomponents:61>,
		<stevescarts:modulecomponents:62>,
		<stevescarts:modulecomponents:63>,
		<stevescarts:modulecomponents:64>,
		<stevescarts:modulecomponents:65>,
		<stevescarts:modulecomponents:80>,
		<stevescarts:modulecomponents:81>,
		<stevescarts:modulecomponents:82>,
		<stevescarts:modulecomponents:83>,
		<stevescarts:modulecomponents:84>,
		<stevescarts:upgrade:1>,
		<stevescarts:upgrade:2>,
		<stevescarts:upgrade:3>,
		<stevescarts:upgrade:4>,
		<stevescarts:upgrade:5>,
		<stevescarts:upgrade:6>,
		<stevescarts:upgrade:7>,
		<stevescarts:upgrade:8>,
		<stevescarts:upgrade:9>,
		<stevescarts:upgrade:10>,
		<stevescarts:upgrade:11>,
		<stevescarts:upgrade:12>,
		<stevescarts:upgrade:13>,
		<stevescarts:upgrade:14>,
		<stevescarts:upgrade:15>,
		<stevescarts:upgrade:16>,
		<stevescarts:upgrade:17>,
		<stevescarts:upgrade:18>,
		<stevescarts:upgrade:0>
	],

	stageFour.stage: [
		<stevescarts:cartmodule:1>,
		<stevescarts:cartmodule:45>,
		<stevescarts:cartmodule:56>,
		<stevescarts:modulecomponents:44>,
		<stevescarts:modulecomponents:58>,
		<stevescarts:upgrade:19>
	],

	stageCreativeUnused.stage: [
		<stevescarts:cartmodule:61>,
		<stevescarts:cartmodule:72>,
		<stevescarts:cartmodule:76>,
		<stevescarts:cartmodule:96>,
		<stevescarts:cartmodule:97>,
		<stevescarts:upgrade:14>
	]
};

static hiddenItems as IIngredient[] = [
	<stevescarts:modularcart>
];

static hiddenRemove as IIngredient[] = [
	<stevescarts:cartmodule:87>,
	<stevescarts:cartmodule:92>,
	<stevescarts:modulecomponents:9>,

	// Easter event - the config option is just for show
	<stevescarts:modulecomponents:66>,
	<stevescarts:modulecomponents:67>,
	<stevescarts:modulecomponents:68>,
	<stevescarts:modulecomponents:69>,
	<stevescarts:modulecomponents:70>,
	<stevescarts:modulecomponents:71>,
	<stevescarts:cartmodule:74>.withTag({Data: 1 as byte})

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
	recipeUtil.hideItems(hiddenItems as IIngredient[]);
	recipeUtil.hideItems(hiddenRemove as IIngredient[], true);
}
