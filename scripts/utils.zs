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

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

function capitalize(str as string) as string {
	return str.substring(0, 1).toUpperCase() + str.substring(1);
}

//Add item to oreDict if it does not exist already
function ensureOreDict(itemOreDict as IOreDictEntry, item as IItemStack) {
	if (!(itemOreDict in item)) {
		itemOreDict.add(item);
	}
}
