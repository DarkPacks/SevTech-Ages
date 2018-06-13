#priority 2000

/*
           `.:+osyo++:.     `.:++oo+:`
        `:shhyssssssssyo/:+syyysssssyhs:`
      `/yyo-+ssssyyyyssoshdsssssssss+:+yy-
     .sysssoshhhhyyyyhhhhsyhosyyyyyyysyssy+`
    -yysssyhyssssssssssssydmdhyyysyyyyyhhhdh:`
   :yys+sssssssssyyysssoooosyyyssyyyyyyssssyhy/`
 `odys+-yssssyyyo:.`         `:hs:..``     `.-oy/
+yhhss.-yssyy/.`       `+hd+`  -o        -yds- .s/
ysyyssossshds/.        :mhMd-  :o        hdmm+  /y
ossssssssssssyhho-.`    `:-.`-/ds-...````.:/--:oh:
.sssssssssssssyhhhhysooooosyhhhdyyhhyyyyyyyyyyhh:
osssssssssssssssssyyyyyyysyddyssssssssssssssys:`
ssssssssssssssssssssssyhhhyssssssyhhhhhhhyhh-
sssssssssssssssssssssyyssssssssssssshysssssyy:
sssssssssssssssssssssssssssssssssssssssssssssy:
sssssssssssssyyyyyyyssssssssssssssssssssssssoyh-
ssssssssssydhyyyyyyyhhhhhhhyyyyssssssssyhhddhhd+`
ssssssssshdsssyyyhhyyyyyssyyyyhhhhhhhhyhysssyhs-
sssssssyssdhyhhyhyyyyyssyyyyyyyyyyyyyyyyyyyyho`
sssssssshhysssssssyyyyhhhhhhhhyyhhyyyyyyyyys+.
ssssssssssyysssssssssssssssssssssssssshhs:`
ddhdhhyyssssssssssssssssssssssssssyys+-
hddhhhhhhhhhhhhyyyyyhhyyyyyssyhdms-`
hhhhhhhhddddhhhdhhhhhhyhhhdddddhhdy/`
hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhdy-
*/

import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

function capitalize(str as string) as string {
	return str.substring(0, 1).toUpperCase() + str.substring(1);
}

function squareNum(number as int, timesToSquare as int) as int {
	var returnNumber = number;

	for i in 0 to timesToSquare {
		returnNumber = returnNumber * 2;
	}

	return returnNumber;
}

//Add item to oreDict if it does not exist already
function ensureOreDict(itemOreDict as IOreDictEntry, item as IItemStack) {
	if (!(itemOreDict in item)) {
		itemOreDict.add(item);
	}
}

//Formats a bucket with liquid NBT
function formatBucket(bucket as IItemStack, liquidName as string) as IItemStack {
	var data as IData = null;

	if (bucket.matches(<ceramics:clay_bucket>)) {
		data = {
			fluids: {
				FluidName: liquidName,
				Amount: 1000
			}
		};
	} else if (bucket.matches(<thebetweenlands:bl_bucket:1>) | bucket.matches(<thebetweenlands:bl_bucket>)) {
		data = {
			Fluid: {
				FluidName: liquidName,
				Amount: 1000
			}
		};
	} else {
		data = {
			FluidName: liquidName,
			Amount: 1000
		};
	}

	//Minecraft unique buckets
	if (bucket.definition.owner == "forge") {
		if (liquidName == "lava") {
			return <minecraft:lava_bucket>;
		} else if (liquidName == "milk") {
			return <minecraft:milk_bucket>;
		} else if (liquidName == "water") {
			return <minecraft:water_bucket>;
		}
	}

	//Cyclic unique buckets
	if (liquidName == "milk") {
		if (bucket.definition.owner == "ceramics") {
			return <ceramics:clay_bucket:1>;
		} else if (bucket.definition.owner == "thebetweenlands") {
			//No support for betweenlands bucket
			return null;
		}
	}

	return bucket.withTag(data);
}

function formatBucketIngredient(bucket as IItemStack, liquidName as string) as IIngredient {
	return formatBucket(bucket, liquidName) as IIngredient;
}

//Compares two stages and returns whichever is "higher"
function getHighestStage(firstStage as string, secondStage as string) as string {
	//Stages, "higher" is first
	var stagesTierArray as string[] = [
		STAGES.disabled,
		STAGES.creative,
		STAGES.five,
		STAGES.four,
		STAGES.three,
		STAGES.two,
		STAGES.one,
		STAGES.zero,
		STAGES.tutorial
	];

	for i, stage in stagesTierArray {
		if (firstStage == stage) {
			return firstStage;
		}
		if (secondStage == stage) {
			return secondStage;
		}
	}

	return firstStage;
}
