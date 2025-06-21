#> menu:magic/select/ui/first.page
#
# @within function menu:magic/select/ui/

## 魔法を解除するコマンド
    data modify storage temp: Items append value {id:"minecraft:barrier",count:1b,slot:1b,components:{"minecraft:custom_name":'{"text":"解除","color":"red"}',"minecraft:custom_data":'{menu:{Magic:{ID:0}}}'}}

## slotを消す
    data remove storage temp: slots[-1]
