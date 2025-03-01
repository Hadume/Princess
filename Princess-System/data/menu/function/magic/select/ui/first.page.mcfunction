#> menu:magic/select/ui/first.page
#
# @within function menu:magic/select/ui/

## 魔法を解除するコマンド
	data modify block 0 -64 0 Items append value {id:"minecraft:barrier",count:1b,Slot:1b,components:{"minecraft:custom_name":'{"text":"解除","color":"red"}',"minecraft:custom_data":'{Menu:{Magic:{ID:0}}}'}}

## Slotを消す
	data remove storage temp: Slots[-1]
