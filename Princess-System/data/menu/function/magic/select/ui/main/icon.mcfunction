#> menu:magic/select/ui/main/icon
#
# @within function menu:magic/select/ui/main/loop

## アイテムを移動
	data modify storage temp: Items append from block 0 -64 0 Items[0]

## Slotを設定
	data modify storage temp: Items[-1].Slot set from storage temp: Slots[-1]

## 魔法のIDを設定
	data modify storage temp: Items[-1].components."minecraft:custom_data".Menu.Magic.ID set from storage asset:magic ID
