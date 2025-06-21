#> menu:magic/select/ui/main/icon
#
# @within function menu:magic/select/ui/main/loop

## アイテムを移動
    data modify storage temp: Items append from block 0 -64 0 Items[0]

## slotを設定
    data modify storage temp: Items[-1].slot set from storage temp: slots[-1]

## 魔法のIDを設定
    data modify storage temp: Items[-1].components."minecraft:custom_data".menu.Magic.ID set from storage asset:magic ID
