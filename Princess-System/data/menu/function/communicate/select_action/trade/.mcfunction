#> menu:communicate/select_action/trade/
# トレードを申請
# @within function menu:communicate/select_action/

#> ID
# @private
    #declare score_holder #ID

## 相手にトレード申請をする
    execute store result score #ID Temp run data get storage dat: _.Menu.Communicate.SelectedPlayer.components."minecraft:custom_data".ID
    execute as @a if score @s ID = #ID Temp run tag @s add Trader

## 実行者tagを付ける
    tag @s add This

## トレード相手にチャット
    execute store result storage temp: ID int 1 run scoreboard players get @s ID
    execute as @a[tag=Trader] run function menu:communicate/select_action/trade/notify with storage temp:

## 自分にチャット
    tellraw @s ["\n",{"selector": "@a[tag=Trader]"},"にトレードの申請をしました。"]

## tagを削除
    tag @a[tag=Trader] remove Trader
    tag @s remove This

## 一時使用ScoreHolderをリセット
    scoreboard players reset #ID Temp

## 一時使用Storageを削除
    data remove storage temp: ID
