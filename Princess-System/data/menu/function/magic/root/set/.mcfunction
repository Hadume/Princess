#> menu:magic/root/set/
#
# @within function menu:magic/root/

## 杖をセットしてなかったら
	execute unless data storage api: {Inventory:[{Slot:22b,components:{"minecraft:custom_data":{Category:"Wand"}}}]} run return run function menu:magic/root/set/no_wand

## 魔法を設定
	function menu:magic/select/open
