#> menu:communicate/select_action/trade/
# トレードを申請
# @within function menu:communicate/select_action/

## 相手にトレード申請をする
    execute store result score #ID temp run data get storage dat: _.menu.Communicate.SelectedPlayer.components."minecraft:custom_data".ID
    execute as @a if score @s ID = #ID temp run tag @s add trader

## 実行者tagを付ける
    tag @s add this

## トレード相手にチャット
    execute store result storage temp: ID int 1 run scoreboard players get @s ID
    execute as @a[tag=trader] run function menu:communicate/select_action/trade/notify with storage temp:

## 自分にチャット
    tellraw @s ["\n",{"selector": "@a[tag=trader]"},"にトレードの申請をしました。"]

## tagを削除
    tag @a[tag=trader] remove trader
    tag @s remove this

## 一時使用scoreHolderをリセット
    scoreboard players reset #ID temp

## 一時使用storageを削除
    data remove storage temp: ID
